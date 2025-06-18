{ config, pkgs, lib, ... }:

{
  imports = [
    ./services/syncthing.nix
  ];

  # required for sddm
  services.xserver.enable = true;

  # kde plasma 6
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # https://askubuntu.com/questions/1432154/unable-to-set-scrolling-speed-of-touchpad-ubuntu-22-10-wayland
  services.udev.extraHwdb = ''
    # Laptop model description (e.g. Apple Touch Pad)
    evdev:input:b0003v05ACp0324*
     EVDEV_ABS_00=::31
     EVDEV_ABS_01=::28
     EVDEV_ABS_35=::31
     EVDEV_ABS_36=::28
  '';

  # input remapper
  services.input-remapper.enable = true;

  # zero tier
  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "af415e486f306da7"
    ];
  };

  services.cloudflare-warp = {
    enable = true;
  };

  # keyboard layout for x11
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

  # pulse audio
  services.pulseaudio.enable = false;

  # printing
  services.printing.enable = true;

  # docker
  virtualisation.docker.enable = true;

  # waydroid
  virtualisation.waydroid.enable = true;

  # code-server
  services.code-server = {
    enable = true;
    port = 8080;
    user = "micah";
    group = "users";
    host = "0.0.0.0";
    hashedPassword = "$argon2id$v=19$m=65536,t=3,p=4$RCfq5kCT5iMdYoCJoLuvnw$K/t/O6Pcp/peqIXN1MEqZbxvp1Ni+V4mrBf9hVx2xQM";
    disableTelemetry = true;
  };
}
