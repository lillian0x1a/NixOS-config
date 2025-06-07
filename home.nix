{
  home = rec { # recでAttribute Set内で他の値を参照できるようにする
    username="lillian";
    homeDirectory = "/home/${username}"; # 文字列に値を埋め込む
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true; # home-manager自身でhome-managerを有効化
  home.packages = with pkgs; [
    vscode
  ];
}
