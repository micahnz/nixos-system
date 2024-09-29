{ config, pkgs, lib, ... }:

{
  system.stateVersion = "24.05";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
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
