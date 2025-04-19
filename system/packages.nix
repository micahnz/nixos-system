{ config, pkgs, ... }:

{
  environment.shells = [
    pkgs.bash
    pkgs.zsh
  ];

  environment.systemPackages = [
    pkgs.alsa-lib
    pkgs.curl
    pkgs.devenv
    pkgs.git
    pkgs.libinput
    pkgs.libinput-gestures
    pkgs.vim
    pkgs.wget
  ];

  programs.zsh.enable = true;
  programs.java.enable = true;
  programs.nix-ld.enable = true;
  programs.partition-manager.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
}
