{ config, pkgs, ... }:

{
  programs.swaylock = {
    enable = true;
    settings = {
      color = "222233";
      font-size = 24;
      indicator-idle-visible = true;
      indicator-caps-lock = true;
    };
  };
}
