{ config, pkgs, inputs, userConfig, ... }:
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

    extraConfig = {
      user.name = userConfig.username;
      user.email = userConfig.email;
      init.defaultBranch = "main";
      user.signingKey = userConfig.sshPublicKey;
      core.editor = "nvim";
    };
  };
}
