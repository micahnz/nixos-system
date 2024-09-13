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
    "k" = "kubectl";
    "kcns" = "kubens";
    "ktx" = "kubectx";
    "nixin" = "sudo nixos-rebuild switch --flake /home/micah";
    "nixref" = "sudo nixos-rebuild switch --recreate-lock-file --upgrade --flake /home/micah";
    "nixup" = "sudo nixos-rebuild switch --recreate-lock-file --flake /home/micah";
    "tf" = "terraform";
  };

  programs.home-manager.enable = true;
}
