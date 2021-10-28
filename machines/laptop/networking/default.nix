{ ... }:

{
  networking = {
    hostName = "nixos-laptop";
    wireless.enable = false;

    useDHCP = false;
    interfaces.wlp3s0.useDHCP = true;

    firewall = {
      enable = false;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };
}
