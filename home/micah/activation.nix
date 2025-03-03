{ lib, config, pkgs, ... }:

{
  home.activation = {
    # fixes permissions for Jan
    setJanFolderPermissions = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      chmod 0755 -R $HOME/.config/Jan
    '';
  };
}
