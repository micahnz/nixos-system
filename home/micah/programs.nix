{ config, pkgs, userpkgs, ... }:

{
  imports = [
    ./programs/zsh.nix
  ];

  # git
  programs.git = {
    enable = true;
    userName = "Micah Mitchell";
    userEmail = "micah@topvine.co";
    extraConfig.init.defaultBranch = "main";
  };

  programs.librewolf = {
    enable = true;
    # Enable WebGL, cookies and history
    settings = {
      "webgl.disabled" = false;
    };
  };
}
