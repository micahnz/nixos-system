{ config, pkgs, ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  networking.hosts = {
    "172.18.0.2" = [
      "frontend.thegotham.tpv.k8s"
      "storybook.thegotham.tpv.k8s"
      "payments.thegotham.tpv.k8s"
      "subscriptions.thegotham.tpv.k8s"

      "filmmakermagazine.tpv.k8s"
    ];
  };
}
