{ config, pkgs, ... }:

{
  boot.loader.grub = {
    enable = true;
    useOSProber = true;
  };

  # efi support /etc/nixos/hardware-configuration.nix
  # boot.loader.grub.device = "nodev";
  # boot.loader.grub.efiSupport = true;
  # boot.loader.efi.canTouchEfiVariables = true;
}
