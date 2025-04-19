{ config, pkgs, lib, ... }:

{
  system.stateVersion = "24.05";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nix.settings.trusted-users = [ "root" "micah" ];

  nix.settings.substituters = [
    "https://cache.nixos.org/"
    "https://devenv.cachix.org"
  ];

  nix.settings.trusted-public-keys = [
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
  ];

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./boot.nix
    ./environment.nix
    ./hardware.nix
    ./locale.nix
    ./networking.nix
    ./packages.nix
    ./security.nix
    ./services.nix
    ./users.nix
  ];
}
