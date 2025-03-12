{ config, pkgs, ... }:

{
  networking.hosts = {
    "3.148.114.72" = [
      "api.tradeify.dev.k8s.local"
      "api.internal.tradeify.dev.k8s.local"
    ];
  };
}
