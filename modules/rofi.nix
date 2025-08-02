{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    theme = "gruvbox-dark";
    extraConfig = {
      modi = "run,drun,ssh";
      show-icons = true;
      font = "Fira Code 12";
    };
  };
}
