{ config, lib, ... }:

with lib;

{
  options = {
    nixos-config.networking.hostname = mkOption {
      type = types.str;
    };
  };

  config = {
    networking = {
      hostName = config.nixos-config.networking.hostname;
      networkmanager.enable = true;
      wireless.enable = false;
      firewall = {
        enable = false;
        allowedTCPPorts = [ ];
        allowedUDPPorts = [ ];
      };
    };
  };
}
