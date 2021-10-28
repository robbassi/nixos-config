import ./make-system.nix {
  hardwareConfig = ./machines/laptop/hardware-configuration.nix;
  imports = [
    ./machines/laptop/boot
    ./machines/laptop/networking
    ./machines/laptop/nix
    ./machines/laptop/services
  ];
}
