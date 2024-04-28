{
  imports = [
    ./nix
    ./time
    ./locale
    ./home
    ./networking
    ./services
    ./users
  ];

  config = {
    sound.enable = true;
    hardware = {
      pulseaudio.enable = false;
      bluetooth.enable = true;
    };
  };
}
