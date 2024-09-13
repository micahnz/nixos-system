{ config, pkgs, ... }:
{
  users.users.micah = {
    isNormalUser = true;
    description = "micah";
    shell = pkgs.zsh;
    extraGroups = [ "docker" "networkmanager" "wheel" ];
  };
}
