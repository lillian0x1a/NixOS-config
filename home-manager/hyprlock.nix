{ config, pkgs, ... }:

{
  xdg.configFile."hypr/hyprlock.conf".text = ''
    background = 222233
    font = Noto Sans
  '';
}
