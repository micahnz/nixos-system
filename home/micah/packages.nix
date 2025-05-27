{ config, pkgs, pkgs-24_11, userpkgs, flakepkgs, ... }:
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

    # flakes
    # flakepkgs.claude-desktop

    # user
    userpkgs.linkerd

    # stable
    pkgs-24_11.azure-cli
    pkgs-24_11.slack
    pkgs-24_11.terraform
    pkgs-24_11.prismlauncher

    # unstable
    pkgs.argocd
    pkgs.awscli2
    pkgs.biome
    pkgs.bitwarden-cli
    pkgs.buildah
    pkgs.bun
    pkgs.bws
    pkgs.code-cursor
    pkgs.code-server
    pkgs.cpu-x
    pkgs.dbeaver-bin
    pkgs.delve
    pkgs.discord
    pkgs.doctl
    pkgs.eksctl
    pkgs.fzf
    pkgs.gh
    pkgs.go
    pkgs.go-jsonnet
    pkgs.google-chrome
    pkgs.gopls
    pkgs.hcloud
    pkgs.jan
    pkgs.jq
    pkgs.jwt-cli
    pkgs.k3d
    pkgs.k9s
    pkgs.kops_1_30
    pkgs.kubectl
    pkgs.kubectx
    pkgs.kubernetes-helm
    pkgs.kubeseal
    pkgs.libreoffice
    pkgs.librewolf
    pkgs.nickel
    pkgs.nixd
    pkgs.nixpkgs-fmt
    pkgs.nls
    pkgs.nodejs_20
    pkgs.obsidian
    pkgs.openssl
    pkgs.p7zip
    pkgs.pulumi
    pkgs.pulumiPackages.pulumi-language-go
    pkgs.s3cmd
    pkgs.screen
    pkgs.signal-desktop
    pkgs.syncthingtray
    pkgs.talosctl
    pkgs.topiary
    pkgs.ungoogled-chromium
    pkgs.vscode-fhs
    pkgs.wl-clipboard
    pkgs.yq
    pkgs.zsh-powerlevel10k
  ];
}
