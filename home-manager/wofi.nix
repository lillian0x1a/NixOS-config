{ config, pkgs, ... }:

{
  programs.wofi = {
    enable = true;
    settings = {
      width = 500;
      height = 400;
      location = "center";
      show = "drun";
      prompt = ">";
    };
    style = ''
      window {
        background-color: #222233ee;
      }
      #input {
        background-color: #333344ee;
      }
    '';
  };
}
