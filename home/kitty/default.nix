{ config, pkgs, lib, ... }:
{
  home-manager.users.rob.programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./kitty.conf;
  };
}
