{ config, pkgs, ... }:

{
  # fix for syncthing tray service
  systemd.user.targets.tray = {
    Unit = {
      Description = "Home Manager System Tray";
      Requires = [ "graphical-session-pre.target" ];
    };
  };

  # syncthing tray
  services.syncthing.tray = {
    enable = true;
    command = "syncthingtray --wait";
    package = pkgs.syncthingtray;
  };
}
