{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    nodejs
    pnpm
  ];

  home.sessionVariables = {
    NPM_CONFIG_REGISTRY = "https://registry.npmmirror.com";
    PNPM_CONFIG_REGISTRY = "https://registry.npmmirror.com";
  };
}
