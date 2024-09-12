{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    git
    wget
    vim
  ];

  programs.zsh.enable = true;
}
