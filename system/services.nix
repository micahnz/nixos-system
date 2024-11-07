{ config, pkgs, ... }:

{
  imports = [
    ./services/syncthing.nix
  ];

  # requried for sddm
  services.xserver.enable = true;

  # kde plasma 6
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # input remapper
  services.input-remapper.enable = true;

  # tailscale
  services.tailscale.enable = true;

  # keyboard loayout for x11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # audio
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # printing
  services.printing.enable = true;

  # docker
  virtualisation.docker.enable = true;

  # waydroid
  virtualisation.waydroid.enable = true;
}
