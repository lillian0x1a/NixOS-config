{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [
        "nm-applet"
        "mako"
        # 必要なら他の自動起動アプリもここに追加
      ];
    };
  };
}
