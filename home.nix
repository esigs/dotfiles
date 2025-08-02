{ config, pkgs, inputs, ... }:
{
  home.stateVersion = "25.05"; # required for home-manager
  home.sessionVariables.EDITOR = "nvim";
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
    plugins.treesitter.enable = true;
    plugins.nix.enable = true;


    clipboard = {
      register = "unnamedplus"; # Uses system clipboard
      providers.xclip.enable = true; 
      };

    };

    programs.git = {
      enable = true;
      userName = "Eric Sigurdson";
      userEmail = "eric.sigurdson@example.com";
    };
  }
