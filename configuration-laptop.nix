import ./make-system.nix {
  imports = [
    ./machines/laptop/boot
    ./machines/laptop/networking
    ./machines/laptop/nix
    ./machines/laptop/services
  ];
}
