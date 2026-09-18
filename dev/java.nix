{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    openjdk
  ];

  home.sessionVariables = {
    
  };
}