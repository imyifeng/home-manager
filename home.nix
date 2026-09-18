{ config, pkgs, ... }:

{
  home.username = "yifeng";
  home.homeDirectory = "/home/yifeng";

  home.stateVersion = "26.05";

  imports = [
    ./dotfile/zshrc.nix
  ];

  home.packages = with pkgs; [
    nh
    fastfetch
    mcp-nixos

    python3
    openjdk
    nodejs
    go
    rustc
    cargo
    zig
  ];

  programs.home-manager.enable = true;
}
