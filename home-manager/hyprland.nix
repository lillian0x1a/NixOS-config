{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = ",preferred,auto,1";
      input = {
        kb_layout = "us";
      };
      bind = [
        "SUPER+Q,killactive,"
        "SUPER+RETURN,exec,alacritty"
        "SUPER+D,exec,wofi --show drun"
        "SUPER+SHIFT+E,exit,"
        "SUPER+1,workspace,1"
        "SUPER+2,workspace,2"
        "SUPER+3,workspace,3"
        "SUPER+4,workspace,4"
        "SUPER+5,workspace,5"
      ];
      bindm = [
        "SUPER,moveactive"
        "SUPER+SHIFT,resizeactive"
      ];
      decoration = {
        rounding = 8;
        blur = true;
        blur_size = 8;
        blur_passes = 2;
        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        col = {
          shadow = "rgba(1a1a1aee)";
        };
      };
      exec-once = [
        "nm-applet"
        "mako"
        "fcitx5"
        "waybar"
        "hyprpaper"
        "hyprlock"
        # 必要なら他の自動起動アプリもここに追加
      ];
    };
  };
}
