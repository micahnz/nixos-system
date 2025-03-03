{ lib, config, pkgs, ... }:

{
  home.activation = {
    # fixes permissions for Jan
    janFolderPermissions = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      chmod 0755 -: $HOME/.config/Jan
    '';
  };
}
