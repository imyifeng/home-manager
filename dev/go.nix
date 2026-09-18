{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    go
  ];

  home.sessionVariables = {
    GOPROXY = "https://goproxy.cn,direct";
  };
}
