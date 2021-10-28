import ./make-system.nix {
  hardwareConfig = ./machines/desktop/hardware-configuration.nix;
  imports = [
    ./machines/desktop/boot
    ./machines/desktop/networking
    ./machines/desktop/nix
  ];
}
