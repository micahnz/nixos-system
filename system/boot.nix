{ config, pkgs, ... }:

{
  boot.loader.efi.canTouchEfiVariables = true;

  # grub with efi support
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
    useOSProber = true;
  };
}
