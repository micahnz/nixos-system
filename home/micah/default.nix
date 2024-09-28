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

  programs.home-manager.enable = true;
}
