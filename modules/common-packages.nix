{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # common tooling
    alacritty
    curl
    firefox
    git
    htop
    tree
    tmux
    unzip
    xclip
    zip

    # i3wm tooling
    dmenu
    feh
    lxappearance
    networkmanagerapplet
    brightnessctl
    xss-lock
    i3lock
    autorandr
    arandr
  ];

}
