{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
    starship
    bat
    eza
  ];

  home.file.".zshrc".text = ''
    if [[ -e "/etc/profile.d/nix.sh" ]]; then
      source "/etc/profile.d/nix.sh"
    fi
    typeset -U path fpath
    path=("$HOME/.nix-profile/bin" "$HOME/.nix-profile/sbin" $path)
    fpath=("$HOME/.nix-profile/share/zsh/site-functions" $fpath)

    HISTFILE=~/.zsh_history
    HISTSIZE=1000
    SAVEHIST=1000

    setopt HIST_IGNORE_DUPS
    setopt HIST_IGNORE_SPACE
    setopt SHARE_HISTORY
    setopt APPEND_HISTORY
    setopt EXTENDED_HISTORY

    source "$HOME/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)

    source "$HOME/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

    zstyle ':completion:*' menu select
    autoload -Uz compinit
    compinit

    if [[ -o interactive ]]; then
      alias ls='eza --icons=always --group-directories-first'
      alias ll='eza -lha --icons=always --group-directories-first'
      alias la='eza -a --icons=always --group-directories-first'
      alias lt='eza --tree --icons=always'

      alias cat='bat'
    fi

    eval "$(starship init zsh)"
  '';
}
