{ lib, config, pkgs, ... }:

{
  imports = [
    ./activation.nix
    ./aliases.nix
    ./packages.nix
    ./services.nix
    ./programs.nix
  ];

  home = {
    username = "micah";
    homeDirectory = "/home/micah";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
  };

  programs.home-manager.enable = true;
}
