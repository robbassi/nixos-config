{
  nixos-config.programs.alacritty = {
    enable = true;
    settings = {
      env = {
        TERM = "xterm";
      };
      window = {
        gtk_theme_variant = "dark";
        opacity = 0.95;
      };
      key_bindings = [
        { key = "N"; mods = "Control|Shift"; action = "SpawnNewInstance"; }
      ];
      font = {
        normal = {
          family = "Liberation Mono";
          style = "Regular";
        };
        bold = {
          family = "Liberation Mono";
          style = "Regular";
        };
       };
      # Colors (Gotham)
      colors = {
        # Default colors
        primary = {
          background = "0x222222";
          foreground = "0xc2c2b0";
        };
        # Normal colors
        normal = {
          black = "#222222";
          red = "#685742";
          green = "#5f875f";
          yellow = "#b36d43";
          blue = "#78824b";
          magenta = "#bb7744";
          cyan = "#c9a554";
          white = "#d7c483";
        };
        # Bright colors
        bright = {
          black = "#666666";
          red = "#685742";
          green = "#5f875f";
          yellow = "#b36d43";
          blue = "#78824b";
          magenta = "#bb7744";
          cyan = "#c9a554";
          white = "#d7c483";
        };
        indexed_colors = [
          { index = 16;
            color = "0x222222";
          }
        ];
      };
    };
  };
}
