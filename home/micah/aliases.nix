{ config, pkgs, ... }:

{
  home.shellAliases = {
    # k8s aliases
    "k" = "kubectl";
    "kcns" = "kubens";
    "ktx" = "kubectx";

    #
    "tf" = "terraform";

    # quick edit nixos system config
    "nixsys" = "code /home/micah/.nixos/";

    # quick edit home config
    "nixhome" = "code /home/micah/.nixos/home/micah/";

    # quick exit home packages
    "nixpkgs" = "code /home/micah/.nixos/home/micah/packages.nix";

    # switch nixos system
    "nixsw" = ''
      nix flake update nixos-system --flake /home/micah && \
      sudo nixos-rebuild switch --flake /home/micah
    '';

    # upgrade nixos system
    "nixupg" = ''
      nix flake update --flake /home/micah/.nixos && \
      nix flake update --flake /home/micah && \
      sudo nixos-rebuild switch --upgrade --flake /home/micah
    '';

    # update nixos system
    "nixup" = ''
      nix flake update --flake /home/micah/.nixos && \
      nix flake update --flake /home/micah && \
      sudo nixos-rebuild switch --flake /home/micah
    '';

    # zshmarks
    "g" = "jump";
    "s" = "bookmark";
    "d" = "deletemark";
    "l" = "showmarks";
  };
}
