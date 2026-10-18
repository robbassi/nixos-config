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
      nameservers = [ "1.1.1.1" "8.8.8.8" ];
      firewall = {
        enable = false;
        allowedTCPPorts = [ ];
        allowedUDPPorts = [ ];
      };
    };
  };
}
