{
  pkgs,
  ...
}:

{
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
}
