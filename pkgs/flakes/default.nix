{ config, pkgs, lib, inputs, ... }:
let
  claude-desktop = inputs.claude-desktop.packages.${pkgs.system}.claude-desktop.overrideAttrs (final: prev: {
    meta.license = lib.licenses.free;
  });
in
{
  options.flakepkgs = lib.mkOption {
    type = with lib.types; attrsOf unspecified;
    default = { };
  };

  config.flakepkgs = {
    inherit claude-desktop;
  };
}
