{
  services.xserver = {
    enable = true;
    xkb.layout = "us";
  };
  services.libinput.enable = true;
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
}
