{
  description = "System flake";

  inputs = {
    # package repos
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-24_11.url = "github:NixOS/nixpkgs/nixos-24.11";

    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # claude-desktop
    claude-desktop = {
      url = "github:micahnz/claude-desktop-linux-flake/29e8665";
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

            # latest stable packages
            nixpkgs-24_11 = import inputs.nixpkgs-24_11 {
              inherit system;
              config.allowUnfree = true;
            };
          };
          modules = [
            profiles.${profile}
            ./pkgs/user
            ./pkgs/flakes
            ./system
            ./system/home-manager
          ];
        };
      };
    };
}
