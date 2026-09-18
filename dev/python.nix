{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    python3
    python3Packages.pip
    pipx
    uv
  ];

  home.sessionVariables = {
    PIP_INDEX_URL = "https://mirrors.ustc.edu.cn/pypi/simple";
    UV_DEFAULT_INDEX = "https://pypi.tuna.tsinghua.edu.cn/simple";
  };
}
