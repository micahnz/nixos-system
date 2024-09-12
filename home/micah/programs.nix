{ config, pkgs, ... }:

{
  # zsh
  programs.zsh.enable = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.oh-my-zsh.theme = "robbyrussell";

  # git
  programs.git = {
    enable = true;
    userName = "Micah Mitchell";
    userEmail = "micah@topvine.co";
    extraConfig.init.defaultBranch = "main";
  };
}
