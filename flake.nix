{
  description = "System flake";

  inputs = {
    # package repos
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-24_05.url = "github:NixOS/nixpkgs/nixos-24.05";
    # nur.url = "github:nix-community/NUR";

    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # hardware profiles
    # nixos-hardware.url = "path:///home/micah/.flakes/nixos-hardware";
    nixos-hardware.url = "github:micahnz/nixos-hardware";
  };

  outputs = { self, nixpkgs, nur, ... } @ inputs:
    let
      nixos-hardware = inputs.nixos-hardware.nixosModules;
    in
    {
      nixosModules = {
        nixosSystem = { hardware ? "default" }: nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./userpkgs
            ./system
            ./system/home-manager
            nixos-hardware.${hardware}
            # nur.nixosModules.nur
          ];
        };
      };
    };
}
