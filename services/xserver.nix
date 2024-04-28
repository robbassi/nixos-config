{
  services.xserver = {
    enable = true;
    layout = "us";
    libinput.enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}
