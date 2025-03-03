{ config, pkgs, ... }:

{
  # enable syncthing
  services.syncthing = {
    enable = true;
    dataDir = "/home/micah";
    openDefaultPorts = true;
    configDir = "/home/micah/.config/syncthing";
    user = "micah";
    group = "users";
    overrideDevices = true;
    overrideFolders = true;
  };

  # syncthing devices
  services.syncthing.settings.devices = {
    "em780" = { id = "A7YQZLC-LWZT52Q-OQPGFYL-VIBIDNF-CBBWMS6-EQ7N65B-SEWANOW-S3HSYAA"; };
    "r5950x" = { id = "O35IQ77-BXKVBA4-GPDCEFV-JJBPMS4-3ZAYRGY-A66YSIM-ANGA2TB-Y6IFIQ2"; };
  };

  # syncthing folders
  services.syncthing.settings.folders = {
    "Documents" = {
      path = "/home/micah/Documents";
      devices = [ "em780" "r5950x" ];
    };
    "Pictures" = {
      path = "/home/micah/Pictures";
      devices = [ "em780" "r5950x" ];
    };
    "Sync" = {
      path = "/home/micah/Sync";
      devices = [ "em780" "r5950x" ];
    };
    "Obsidian" = {
      path = "/home/micah/Obsidian";
      devices = [ "em780" "r5950x" ];
    };
    "Librewolf" = {
      path = "/home/micah/.librewolf";
      devices = [ "em780" "r5950x" ];
    };
  };
}
