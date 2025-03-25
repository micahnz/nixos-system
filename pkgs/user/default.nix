{ config, pkgs, lib, ... }:

{
  options.userpkgs = lib.mkOption {
    type = with lib.types; attrsOf unspecified;
    default = { };
  };

  config.userpkgs = {
    linkerd = pkgs.callPackage ./linkerd { };
    linkerd_edge = pkgs.callPackage ./linkerd/edge.nix { };
    zshmarks = pkgs.callPackage ./zshmarks { };
  };
}
