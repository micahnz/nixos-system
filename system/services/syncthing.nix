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
  };

  # syncthing folders
  services.syncthing.settings.folders = {
    "Documents" = {
      path = "/home/micah/Documents";
      devices = [ "em780" ];
    };
    "Obsidian" = {
      path = "/home/micah/Obsidian";
      devices = [ "em780" ];
    };
    "Home" = {
      path = "/home/micah/";
      devices = [ "em780" ];
    };
  };
}
