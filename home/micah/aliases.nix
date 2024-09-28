{ config, pkgs, ... }:

{
  home.shellAliases = {
    "k" = "kubectl";
    "kcns" = "kubens";
    "ktx" = "kubectx";
    "nixin" = "sudo nixos-rebuild switch --flake /home/micah";
    "nixref" = "sudo nixos-rebuild switch --recreate-lock-file --upgrade --flake /home/micah";
    "nixup" = "sudo nixos-rebuild switch --recreate-lock-file --flake /home/micah";
    "tf" = "terraform";
  };
}
