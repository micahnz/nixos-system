{ config, pkgs, ... }:

{
  # bluetooth settings
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
