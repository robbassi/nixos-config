{
  services.xserver = {
    enable = true;
    layout = "us";
    libinput.enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.gnome.desktop.input-sources]
        xkb-options=['caps:ctrl_modifier']
      '';
    };
  };
}
