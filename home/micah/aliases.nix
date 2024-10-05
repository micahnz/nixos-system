{ config, pkgs, ... }:

{
  home.shellAliases = {
    # k8s aliases
    "k" = "kubectl";
    "kcns" = "kubens";
    "ktx" = "kubectx";

    #
    "tf" = "terraform";

    # nix aliases
    "nixsys" = "code /home/micah/.nixos/";
    "nixhome" = "code /home/micah/.nixos/home/micah/";
    "nixpkgs" = "code /home/micah/.nixos/home/micah/packages.nix";
    "nixin" = "sudo nixos-rebuild switch --flake /home/micah";
    "nixref" = "sudo nixos-rebuild switch --recreate-lock-file --upgrade --flake /home/micah";
    "nixup" = "sudo nixos-rebuild switch --recreate-lock-file --flake /home/micah";

    # zshmarks
    "g" = "jump";
    "s" = "bookmark";
    "d" = "deletemark";
    "l" = "showmarks";
  };
}
