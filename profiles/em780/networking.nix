{ config, pkgs, ... }:

{
  networking.hosts = {
    "3.148.114.72" = [
      "api.tradeify.dev.k8s.local"
      "api.internal.tradeify.dev.k8s.local"
    ];
    "172.18.0.2" = [
      "frontend.thegotham.tpv.k8s"
      "storybook.thegotham.tpv.k8s"
      "payments.thegotham.tpv.k8s"
      "subscriptions.thegotham.tpv.k8s"
      "filmmakermagazine.tpv.k8s"
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
  };
}
