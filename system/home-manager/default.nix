{ config, pkgs, inputs, ... }:
let
  home-manager = inputs.home-manager;
  pkgs-24_05 = inputs.nixpkgs-24_05.legacyPackages.${pkgs.system};
in
{
  imports = [
    home-manager.nixosModules.home-manager
  ];

  # home-manager settings
  home-manager = {
    extraSpecialArgs = {
      pkgs-24_05 = pkgs-24_05;
      userpkgs = config.userpkgs;
      nur = config.nur;
    };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.micah = import ../../home/micah;
  };
}
