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
    ./dev/go.nix
    ./dev/java.nix
    ./dev/nodejs.nix
    ./dev/python.nix
    ./dev/rust.nix
    ./dev/zig.nix
    ./dotfile/zshrc.nix
    ./packages.nix
    ./environment.nix
  ];

  programs.home-manager.enable = true;
}
