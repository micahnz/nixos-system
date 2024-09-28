{ config, pkgs, ... }:

{
  # pulse audio
  hardware.pulseaudio.enable = false;

  # bluetooth settings
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
