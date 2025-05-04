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
    "172.20.0.2" = [
      "frontend.redhousei.tpv.k8s"
      "storybook.redhousei.tpv.k8s"
    ];
    "172.19.0.2" = [
      "tradeify.tpv.k8s"
      "pma.tradeify.tpv.k8s"
      "signoz.tradeify.tpv.k8s"
      "frontend.tradeify.tpv.k8s"
      "admin.tradeify.tpv.k8s"
      "storybook.tradeify.tpv.k8s"
      "rmq.tradeify.tpv.k8s"
    ];
    "178.128.162.120" = [
      "pulsehub.redhousei.com"
      "audithub.redhousei.com"
    ];
  };
}
