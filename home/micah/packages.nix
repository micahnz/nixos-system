{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    bitwarden-desktop
    nil
    nixpkgs-fmt
    ungoogled-chromium
    vscode
  ];
}
