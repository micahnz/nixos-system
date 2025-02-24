{
  description = "System flake";

  inputs = {
    # package repos
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-24_05.url = "github:NixOS/nixpkgs/nixos-24.05";

    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # default system generated hardware config
    hardware-configuration = {
      url = "path:///etc/nixos/hardware-configuration.nix";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, hardware-configuration, ... } @ inputs:
    let
      profiles = {
        em780 = ./profiles/em780;
        qemu = ./profiles/qemu;
        r5950x = ./profiles/r5950x;
        default = import hardware-configuration;
      };
    in
    {
      nixosModules = {
        nixosSystem = { profile ? "default" }: nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./userpkgs
            ./system
            ./system/home-manager
            profiles.${profile}
          ];
        };
      };
    };
}
