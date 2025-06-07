{ config, pkgs, ... }:

{
  users.users.lillian = {
    isNormalUser = true;
    description = "lillian";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      kdePackages.kate
      # thunderbird
    ];
  };
}
