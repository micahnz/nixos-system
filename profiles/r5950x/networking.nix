{ config, pkgs, ... }:

{
  networking.hosts = {
    "3.148.114.72" = [
      "api.tradeify.dev.k8s.local"
      "api.internal.tradeify.dev.k8s.local"
    ];
    "172.21.0.2" = [
      "frontend.topvine.tpv.k8s"
      "storybook.topvine.tpv.k8s"
    ];
  };
}
