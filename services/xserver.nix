{ ... }:

{
  services.xserver = {
    enable = true;

    displayManager.gdm.enable = true;
    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.gnome.desktop.input-sources]
        xkb-options=['caps:ctrl_modifier']
      '';
    };

    layout = "us";
  };
}
