{ pkgs }:

{
  "Mod4+Return" = "exec alacritty";
  "Mod4+d" = "exec rofi -show run";
  "Mod4+Shift+q" = "kill";
  "Mod4+Shift+r" = "restart";

  # Workspace switching (you can extend as needed)
  "Mod4+1" = "workspace 1";
  "Mod4+2" = "workspace 2";

  # Vim-style window focus movement
  "Mod4+h" = "focus left";
  "Mod4+l" = "focus right";
  "Mod4+k" = "focus up";
  "Mod4+j" = "focus down";

  # Optional: Move focused window
  "Mod4+Shift+h" = "move left";
  "Mod4+Shift+l" = "move right";
  "Mod4+Shift+k" = "move up";
  "Mod4+Shift+j" = "move down";
}
