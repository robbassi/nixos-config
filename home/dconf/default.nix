{
  nixos-config.dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/input-sources" = {
        xkb-options = ["caps:ctrl_modifier"];
      };
      "org/gnome/shell" = {
        favorite-apps = [
          "google-chrome.desktop"
          "kitty.desktop"
          "org.gnome.Nautilus.desktop"
          "gnome-system-monitor.desktop"
        ];
      };
    };
  };
}
