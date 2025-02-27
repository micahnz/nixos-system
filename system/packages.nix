{ config, pkgs, ... }:

{
  environment.shells = [
    pkgs.bash
    pkgs.zsh
  ];

  environment.systemPackages = [
    pkgs.curl
    pkgs.git
    pkgs.wget
    pkgs.vim
    pkgs.alsa-lib
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
