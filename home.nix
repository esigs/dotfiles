{ config, pkgs, inputs, userConfig, ... }:
{
  home.stateVersion = "25.05"; # required for home-manager
  home.sessionVariables.EDITOR = "nvim";
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
    ./modules/i3.nix
  ];

  programs.home-manager.enable = true;

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
      gpg.format = "ssh";
      commit.gpgsign = true;
      gpg.ssh.allowedSignersFile = "/home/${userConfig.username}/.ssh/allowed_signers";
    };
  };

  programs.tmux = {
    enable = true;

    extraConfig = ''
      # Open new windows in specific directories
      bind h new-window -c "~/"
      bind c new-window -c "#{pane_current_path}"

      # {pane_current_path} is the current pane’s directory (from tmux)
      # git -C <path> rev-parse --show-toplevel gives the git root for that directory
      # The fallback echo "#{pane_current_path}" makes sure you still open a new window in the current directory if it's not a git repo.

      bind g run-shell 'tmux new-window -c "$(git -C "#{pane_current_path}" rev-parse --show-toplevel 2>/dev/null || echo "#{pane_current_path}")"'

      # Set vi mode
      set-window-option -g mode-keys vi

      # Copy mode keybindings (Vi style)
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle \; send -X begin-selection
      bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip -in -selection clipboard"
      '';
  }; 
}
