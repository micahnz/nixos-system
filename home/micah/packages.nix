{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    bitwarden-desktop
    nixd
    nixpkgs-fmt
    ungoogled-chromium
    vscode
  ];
}
