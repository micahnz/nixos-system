{ config, pkgs, ... }:

{
  imports = [
    ./aliases.nix
    ./packages.nix
    ./services.nix
    ./settings.nix
  ];

  home = {
    username = "micah";
    homeDirectory = "/home/micah";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
  };

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
