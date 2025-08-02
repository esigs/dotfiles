{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    tmux
    curl
    htop
    unzip
    zip
  ];
}
