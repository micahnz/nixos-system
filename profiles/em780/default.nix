{ config, pkgs, lib, ... }:

{
  imports = [
    ./environment.nix
    ./hardware-configuration.nix
    ./networking.nix
  ];
}
