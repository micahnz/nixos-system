{ config, pkgs, lib, ... }:

{
  imports = [
    ./environment.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./virtualisation.nix
  ];

  # bootloader
  boot.loader.grub.device = "/dev/nvme0n1";

  # media drive
  fileSystems."/mnt/media" = {
    device = "/dev/disk/by-uuid/7870c256-066c-44f6-a9d1-ab79892bab4e";
    fsType = "btrfs";
  };

  # nvidia for kde plasma
  services.xserver.videoDrivers = [ "nvidia" ];

  # nvidia drivers
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
}
