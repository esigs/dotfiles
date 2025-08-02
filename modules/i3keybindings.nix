{ pkgs, modifier }:

{
  "${modifier}+Return" = "exec alacritty";
  "${modifier}+Shift+q" = "kill";
  "${modifier}+Shift+r" = "restart";
  "${modifier}+d" = "exec dmenu_run";

  # Workspace switching
  "${modifier}+1" = "workspace 1";
  "${modifier}+2" = "workspace 2";
  "${modifier}+3" = "workspace 3";
  "${modifier}+4" = "workspace 4";
  "${modifier}+5" = "workspace 5";
  "${modifier}+6" = "workspace 6";
  "${modifier}+7" = "workspace 7";
  "${modifier}+8" = "workspace 8";
  "${modifier}+9" = "workspace 9";
  "${modifier}+0" = "workspace 10";

  # Move focused container to workspace
  "${modifier}+Shift+1" = "move container to workspace 1";
  "${modifier}+Shift+2" = "move container to workspace 2";
  "${modifier}+Shift+3" = "move container to workspace 3";
  "${modifier}+Shift+4" = "move container to workspace 4";
  "${modifier}+Shift+5" = "move container to workspace 5";
  "${modifier}+Shift+6" = "move container to workspace 6";
  "${modifier}+Shift+7" = "move container to workspace 7";
  "${modifier}+Shift+8" = "move container to workspace 8";
  "${modifier}+Shift+9" = "move container to workspace 9";
  "${modifier}+Shift+0" = "move container to workspace 10";

  # Vim-style window focus movement
  "${modifier}+h" = "focus left";
  "${modifier}+l" = "focus right";
  "${modifier}+k" = "focus up";
  "${modifier}+j" = "focus down";

  # Optional: Move focused window
  "${modifier}+Shift+h" = "move left";
  "${modifier}+Shift+l" = "move right";
  "${modifier}+Shift+k" = "move up";
  "${modifier}+Shift+j" = "move down";
}
