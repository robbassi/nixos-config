{ ... }:

{
  networking = {
    hostName = "nixos";
    wireless.enable = false; # don't enable wpa_supplicant

    useDHCP = false;
    interfaces.enp6s0.useDHCP = true;

    firewall = {
      enable = false;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };
}
