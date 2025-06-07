{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/locale.nix
    ./modules/sound.nix
    ./modules/user.nix
    ./modules/input-method.nix
    ./modules/fonts.nix
    # 他に分割したい設定があればここに追加
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;
  
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Hyprlandを有効化
  programs.hyprland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs = {
    firefox.enable = true;
    git.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true; # $EDITOR=nvimに設定
      viAlias = true;
      vimAlias = true;
    };

    zsh.enable = true;
  };

  environment.systemPackages = with pkgs; [
    wofi           # ランチャー
    mako           # 通知デーモン
    wl-clipboard   # クリップボード
    grim           # スクリーンショット
    slurp          # 範囲選択
    swaybg         # 壁紙
    swaylock       # ロック画面
    swayidle       # 画面消灯・ロック
    hyprpaper      # Hyprland用壁紙
    hyprlock       # Hyprland用ロック
    networkmanagerapplet # ← 追加: ネットワーク管理アプレット
  ];

  system.stateVersion = "25.05"; # Did you read the comment?
  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true; # Nix storeの最適化
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs.config.allowUnfree = true;
}

