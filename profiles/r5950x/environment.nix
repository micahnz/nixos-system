{ config, pkgs, lib, ... }:

{
  # kde bug
  environment.variables.KWIN_DRM_DISABLE_TRIPLE_BUFFERING = 1;
}
