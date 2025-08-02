{ config, pkgs, ... }:

let
  modkey = "Mod4";
in
{
  programs.i3status.enable = true;
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = modkey;
      focus.followMouse = false;
      gaps.inner = 10;
      gaps.outer = 10;

      # Use separate keybindings module
      keybindings = import ./i3keybindings.nix { inherit pkgs; modifier = modkey;};

      startup = [
        { command = "xset r rate 300 50"; }
        { command = "feh --bg-scale ~/wallpapers/default.jpg"; }
        { command = "autorandr --change";}
      ];
    };
  };

}
