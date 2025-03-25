{ config, pkgs, nixpkgs-24_05, nixpkgs-24_11, inputs, ... }:
let
  home-manager = inputs.home-manager;
in
{
  imports = [
    home-manager.nixosModules.home-manager
  ];

  # home-manager settings
  home-manager = {
    extraSpecialArgs = {
      pkgs-24_11 = nixpkgs-24_11;
      userpkgs = config.userpkgs;
      flakepkgs = config.flakepkgs;
    };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.micah = import ../../home/micah;
  };
}
