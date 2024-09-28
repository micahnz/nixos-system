{ config, pkgs, ... }:

{
  environment.shells = with pkgs; [
    bash
    zsh
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    wget
    vim
  ];

  programs.zsh.enable = true;
}
