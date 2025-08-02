{ config, pkgs, username, ... }: {

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "America/Toronto";
  i18n.defaultLocale = "en_CA.UTF-8";

  nixpkgs.config.allowUnfree = true;

  users.groups.${username} = {};

  users.users.${username} = {
    isNormalUser = true;
    description = "Primary user";
    extraGroups = [ "networkmanager" "wheel" ];
    group = username;
    packages = with pkgs; [];
  };

  networking.networkmanager.enable = true;

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xkb.layout = "us";
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;
  services.printing.enable = true;

  system.stateVersion = "25.05";
}
