{ config, pkgs, ... }:

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
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    source $HOME/.zshrc-extra-first
  '';

  programs.zsh.initExtra = ''
    source $HOME/.zshrc-extra
  '';

  programs.zsh.oh-my-zsh.plugins = [
    "colorize"
    "docker"
    "git"
    "kubectl"
  ];

  # git
  programs.git = {
    enable = true;
    userName = "Micah Mitchell";
    userEmail = "micah@topvine.co";
    extraConfig.init.defaultBranch = "main";
  };
}
