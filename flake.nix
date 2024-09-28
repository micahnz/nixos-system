{
  description = "System flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # nixos-hardware.url = "path:///home/micah/.flakes/nixos-hardware";
    nixos-hardware.url = "github:micahnz/nixos-hardware";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    let
      nixos-hardware = inputs.nixos-hardware;
    in
    {
      nixosModules = {
        nixosSystem = { hardware ? "default" }: nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./system
            ./system/home-manager
            nixos-hardware.nixosModules.${hardware}
          ];
        };
      };
    };
}
