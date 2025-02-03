{ config, pkgs, lib, ... }:

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
  # services.tailscale.enable = true;

  # zero tier
  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "af415e486f306da7"
    ];
  };

  # keyboard loayout for x11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # ssh
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = [ "micah" ]; # Allows all users by default. Can be [ "user1" "user2" ]
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "no"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
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
