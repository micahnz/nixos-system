{ config, pkgs, userpkgs, ... }:

{
  # zsh
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh.enable = true;
    oh-my-zsh.theme = "robbyrussell";
  };

  programs.zsh.initExtraFirst = ''
    if [[ -r "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
      source "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
    fi
    
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

    source $HOME/.zshrc-extra-first
  '';

  programs.zsh.initExtra = ''
    source $HOME/.zshrc-extra
  '';

  programs.zsh.plugins = [
    {
      name = "vi-mode";
      src = pkgs.zsh-vi-mode;
      file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
    }
    {
      name = "zshmarks";
      src = userpkgs.zshmarks;
      file = "share/zshmarks/zshmarks.plugin.zsh";
    }
  ];

  programs.zsh.oh-my-zsh.plugins = [
    "colorize"
    "docker"
    "git"
    "kubectl"
  ];
}
