{ config, lib, ... }:

with lib;

{
  options = {
    nixos-config.user.name = mkOption {
      type = types.str;
      default = "rob";
    };
    nixos-config.user.fullname = mkOption {
      type = types.str;
      default = "Rob Bassi";
    };
    nixos-config.user.email = mkOption {
      type = types.str;
      default = "rob.bassi.89@gmail.com";
    };
  };

  config = {
    users.extraUsers.${config.nixos-config.user.name} = {
      isNormalUser = true;
      home = "/home/${config.nixos-config.user.name}";
      description = "${config.nixos-config.user.fullname}";
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
}
