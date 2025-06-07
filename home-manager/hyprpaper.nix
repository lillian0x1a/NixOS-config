{ config, pkgs, ... }:

{
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/Pictures/wallpaper.jpg
    wallpaper = eDP-1,~/Pictures/wallpaper.jpg
  '';
}
