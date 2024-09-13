{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
  ];

  home.username = "micah";
  home.homeDirectory = "/home/micah";
  home.stateVersion = "24.05";

  home.shellAliases = {
    "nixup" = "sudo nixos-rebuild switch";
  };

  programs.home-manager.enable = true;
}
