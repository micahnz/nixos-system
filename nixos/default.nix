{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./hardware-extra.nix
    ./locale.nix
    ./networking.nix
    ./packages.nix
    ./security.nix
    ./services.nix
    ./users.nix
  ];

  system.stateVersion = "24.05";

  #
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

}
