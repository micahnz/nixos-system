{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    discord
    bitwarden-desktop
    nixd
    nixpkgs-fmt
    ungoogled-chromium
    vscode
  ];
}
