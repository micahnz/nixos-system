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

  outputs = { self, nixpkgs, nixpkgs-24_05, hardware-configuration, ... } @ inputs:
    let
      system = "x86_64-linux";
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
          inherit system;
          specialArgs = {
            inherit inputs;

            # stable packages
            nixpkgs-24_05 = import nixpkgs-24_05 {
              inherit system;
              config.allowUnfree = true;
            };
          };
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
