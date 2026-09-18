{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    zig
  ];

  home.sessionVariables = {
    
  };
}