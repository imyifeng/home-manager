{
  config,
  pkgs,
  ...
}:

{
  home.username = "yifeng";
  home.homeDirectory = "/home/yifeng";

  home.stateVersion = "26.05";

  imports = [
    ./dotfile/zshrc.nix
    ./packages.nix
    ./environment.nix
  ];

  programs.home-manager.enable = true;
}
