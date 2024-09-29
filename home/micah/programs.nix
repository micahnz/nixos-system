{ config, pkgs, userpkgs, ... }:

{
  imports = [
    ./programs/zsh.nix
  ];

  # git
  programs.git = {
    enable = true;
    userName = "Micah Mitchell";
    userEmail = "micah@topvine.co";
    extraConfig.init.defaultBranch = "main";
  };
}
