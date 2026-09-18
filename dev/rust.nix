{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    rustc
    cargo
  ];

  # https://rsproxy.cn/
  programs.cargo = {
    enable = true;
    settings = {
      source = {
        crates-io.replace-with = "rsproxy-sparse";
        rsproxy.registry = "https://rsproxy.cn/crates.io-index";
        rsproxy-sparse.registry = "sparse+https://rsproxy.cn/index/";
      };
      registries.rsproxy.index = "https://rsproxy.cn/crates.io-index";
      net.git-fetch-with-cli = true;
    };
  };
}
