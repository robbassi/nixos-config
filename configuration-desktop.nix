import ./make-system.nix {
  imports = [
    ./machines/desktop/networking
    ./machines/desktop/nix
    ./machines/desktop/services
  ];
}
