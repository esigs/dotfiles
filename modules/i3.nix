{ config, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = "Mod4";
      terminal = "alacritty";
      focus.followMouse = false;
      gaps.inner = 10;
      gaps.outer = 10;

      # Use separate keybindings module
      keybindings = import ./i3keybindings.nix { inherit pkgs; };

      startup = [
        { command = "xset r rate 300 50"; }
        { command = "feh --bg-scale ~/wallpapers/default.jpg"; }
        { command = "nm-applet"; }
      ];
    };
  };

  services.picom.enable = true;
  services.picom.fade = true;

  programs.dmenu.enable = true;
  programs.alacritty.enable = true;
}
