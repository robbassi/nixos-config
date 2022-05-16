{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.bat = {
    enable = true;
    config = {
      theme = "base16";
    };
  };
}
