{ config, pkgs, ... }:

{
  users.users.micah = {
    isNormalUser = true;
    description = "micah";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
