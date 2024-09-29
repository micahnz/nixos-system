{ config, pkgs, inputs, ... }:
let
  # google cloud with auth plugin
  gcloud = pkgs.google-cloud-sdk.withExtraComponents [
    pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin
  ];
in
{
  home.packages = [
    # custom
    gcloud

    #
    pkgs.argocd
    pkgs.awscli2
    pkgs.azure-cli
    pkgs.biome
    pkgs.bitwarden-desktop
    pkgs.buildah
    pkgs.bun
    pkgs.delve
    pkgs.discord
    pkgs.doctl
    pkgs.firefox
    pkgs.fzf
    pkgs.gh
    pkgs.go
    pkgs.jq
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
    pkgs.ungoogled-chromium
    pkgs.vscode
    pkgs.zsh-powerlevel10k
  ];
}
