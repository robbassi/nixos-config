{ ... }:

{
  services.xserver = {
    enable = true;

    # Enable the GNOME Desktop Environment.
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    # Configure keymap in X11
    layout = "us";
    # xkbOptions = "eurosign:e";
    # libinput.enable = true;
  };
}
