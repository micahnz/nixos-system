{ config, pkgs, inputs, ... }:
let
  # unstable packages channel
  upkgs = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};

  # google cloud with auth plugin
  gcloud = pkgs.google-cloud-sdk.withExtraComponents [
    pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin
  ];
in
{
  home.packages = [
    # custom
    gcloud

    # stable
    pkgs.argocd
    pkgs.awscli2
    pkgs.azure-cli
    pkgs.bitwarden-desktop
    pkgs.buildah
    pkgs.delve
    pkgs.discord
    pkgs.doctl
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
    pkgs.screen
    pkgs.slack
    pkgs.talosctl
    pkgs.terraform
    pkgs.ungoogled-chromium
    pkgs.vscode

    # zsh
    # pkgs.zshmarks
    # pkgs.zsh-vi-mode
    pkgs.zsh-powerlevel10k

    # unstable/latest
    upkgs.bun
    upkgs.firefox
  ];
}
