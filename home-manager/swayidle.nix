{ config, pkgs, ... }:

{
  services.swayidle = {
    enable = true;
    timeouts = [
      { timeout = 300; command = "${pkgs.swaylock}/bin/swaylock"; }
      { timeout = 600; command = "systemctl suspend"; }
    ];
  };
}
