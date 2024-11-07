{ config, pkgs, ... }:

{
  boot.loader.efi.canTouchEfiVariables = true;

  # grub with efi support
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    useOSProber = true;
  };

  # put in /etc/nixos/hardware-configuration.nix
  # boot.loader.grub.device = "nodev";

}
