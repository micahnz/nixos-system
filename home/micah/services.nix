{ config, nixosConfig, lib, pkgs, ... }:

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

  # autostart input remapper
  xdg.configFile."autostart/input-mapper-autoload.desktop" = lib.mkIf nixosConfig.services.input-remapper.enable {
    source = "${nixosConfig.services.input-remapper.package}/share/applications/input-remapper-autoload.desktop";
  };
}
