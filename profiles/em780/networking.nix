{ config, pkgs, ... }:

{
  networking.hosts = {
    "172.19.0.2" = [
      "hub.redhousei.tpv.k8s"
      "docs.redhousei.tpv.k8s"
      "frontend.redhousei.tpv.k8s"
      "storybook.redhousei.tpv.k8s"
    ];
  };
}
