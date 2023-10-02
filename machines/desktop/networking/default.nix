{ ... }:

{
  networking = {
    hostName = "nixos";
    wireless.enable = true;

    #useDHCP = false;
    #interfaces.enp6s0.useDHCP = true;

    firewall = {
      enable = false;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };
}
