{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;
    backgroundColor = "#222233ee";
    borderColor = "#8888cc";
    textColor = "#ffffff";
    defaultTimeout = 5000;
    font = "Noto Sans 12";
    extraConfig = ''
      [urgency=critical]
      border-color=#ff5555
    '';
  };
}
