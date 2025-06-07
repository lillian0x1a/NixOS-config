{ config, pkgs, ... }:

{
  imports = [
    ./wofi.nix
    ./mako.nix
    ./swaylock.nix
    ./swayidle.nix
    ./hyprpaper.nix
    ./hyprlock.nix
  ];
}
