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
      wireless.enable = true;
      firewall = {
        enable = false;
        allowedTCPPorts = [ ];
        allowedUDPPorts = [ ];
      };
    };
  };
}
