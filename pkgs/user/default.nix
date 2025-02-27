{ config, pkgs, lib, ... }:

{
  options.userpkgs = lib.mkOption {
    type = with lib.types; attrsOf unspecified;
    default = { };
  };

  config.userpkgs = {
    zshmarks = pkgs.callPackage ./zshmarks { };
  };
}
