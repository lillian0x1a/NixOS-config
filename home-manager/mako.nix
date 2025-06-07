{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;
    settings = {
      background-color = "#222233ee";
      border-color = "#8888cc";
      text-color = "#ffffff";
      default-timeout = 5000;
      font = "Noto Sans 12";
      "urgency=critical" = {
        border-color = "#ff5555";
      };
    };
  };
}
