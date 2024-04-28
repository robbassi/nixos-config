{
  nixos-config.dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/input-sources" = {
        xkb-options = ["caps:ctrl_modifier"];
      };
    };
  };
}
