{ config, pkgs, pkgs-24_05, ... }:
let
  # google cloud with auth plugin
  gcloud = pkgs.google-cloud-sdk.withExtraComponents [
    pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin
  ];

  # https://github.com/AtaraxiaSjel/nur/tree/master/pkgs/waydroid-script
  # waydroid-script = pkgs.writeShellScriptBin "waydroid-script" ''
  #   exec ${nur.repos.ataraxiasjel.waydroid-script}/bin/waydroid-script
  # '';
in
{
  home.packages = [
    # custom
    gcloud
    # waydroid-script

    # nixos-24.05

    # unstable
    pkgs.argocd
    pkgs.awscli2
    pkgs.azure-cli
    pkgs.biome
    pkgs.buildah
    pkgs.bun
    pkgs.cpu-x
    pkgs.google-chrome
    pkgs.dbeaver-bin
    pkgs.delve
    pkgs.discord
    pkgs.doctl
    pkgs.eksctl
    pkgs.firefox
    pkgs.fzf
    pkgs.gh
    pkgs.go
    pkgs.go-jsonnet
    pkgs.jan
    pkgs.jq
    pkgs.k3d
    pkgs.k9s
    pkgs.kubectl
    pkgs.kubectx
    pkgs.kubernetes-helm
    pkgs.libreoffice
    pkgs.nickel
    pkgs.nixd
    pkgs.nixpkgs-fmt
    pkgs.nls
    pkgs.nodejs_20
    pkgs.obsidian
    pkgs.openssl
    pkgs.prismlauncher
    pkgs.screen
    pkgs.signal-desktop
    pkgs.slack
    pkgs.syncthingtray
    pkgs.talosctl
    pkgs.terraform
    pkgs.topiary
    pkgs.ungoogled-chromium
    pkgs.vscode
    pkgs.wl-clipboard
    pkgs.zsh-powerlevel10k
  ];
}
