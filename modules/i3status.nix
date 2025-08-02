{ config, pkgs, ... }:

{
  programs.i3status = {
    enable = true;
    enableDefault = false;
    general = {
      colors = true;
      interval = 5;
    };
    modules = {
      "disk /" = {
        format = "% %avail";
      };
      "wireless _first_" = {
        format_up = "📶 %quality";
        format_down = "⛔";
      };
      "battery 0" = {
        format = "🔋 %status %percentage";
      };
      "time" = {
        format = "🕒 %Y-%m-%d %H:%M";
      };
    };
  };
}
