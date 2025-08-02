{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    git
    htop
    tree
    tmux
    unzip
    xclip
    zip
    alacritty
  ];
}
