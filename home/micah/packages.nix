{ config, pkgs, nur, ... }:
let
  # google cloud with auth plugin
  gcloud = pkgs.google-cloud-sdk.withExtraComponents [
    pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin
  ];

  # https://github.com/AtaraxiaSjel/nur/tree/master/pkgs/waydroid-script
  waydroid-script = pkgs.writeShellScriptBin "waydroid-script" ''
    exec ${nur.repos.ataraxiasjel.waydroid-script}/bin/waydroid-script
  '';
in
{
  home.packages = [
    # custom
    gcloud
    waydroid-script

    #
    pkgs.argocd
    pkgs.awscli2
    pkgs.azure-cli
    pkgs.biome
    pkgs.bitwarden-desktop
    pkgs.buildah
    pkgs.bun
    pkgs.cpu-x
    pkgs.delve
    pkgs.discord
    pkgs.doctl
    pkgs.firefox
    pkgs.fzf
    pkgs.gh
    pkgs.go
    pkgs.jq
    pkgs.go-jsonnet
    pkgs.k9s
    pkgs.kubectl
    pkgs.kubectx
    pkgs.kubernetes-helm
    pkgs.nixd
    pkgs.nixpkgs-fmt
    pkgs.prismlauncher
    pkgs.screen
    pkgs.slack
    pkgs.syncthingtray
    pkgs.talosctl
    pkgs.terraform
    pkgs.jan
    pkgs.ungoogled-chromium
    pkgs.vscode
    pkgs.zsh-powerlevel10k
    pkgs.wl-clipboard
  ];
}
