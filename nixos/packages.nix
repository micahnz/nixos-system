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

  virtualisation.docker.enable = true;

  programs.zsh.enable = true;
}
