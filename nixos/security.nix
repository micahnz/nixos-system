{ config, pkgs, ... }:

{
  security.rtkit.enable = true;

  security.sudo.extraRules = [
    {
      users = [ "micah" ];
      commands = [
        {
          command = "ALL";
          options = [ "NOPASSWD" ]; # "SETENV" # Adding the following could be a good idea
        }
      ];
    }
  ];

}
