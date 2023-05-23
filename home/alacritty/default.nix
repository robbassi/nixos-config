{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.alacritty = {
    enable = true;
    settings = {
      env = {
        TERM = "xterm";
      };
      window = {
        gtk_theme_variant = "dark";
        opacity = 0.9;
      };
      key_bindings = [
        { key = "N"; mods = "Control|Shift"; action = "SpawnNewInstance"; }
      ];
      font = {
        normal = {
          family = "Fixedsys Excelsior 3.01";
          style = "Regular";
        };
        bold = {
          family = "Fixedsys Excelsior 3.01";
          style = "Regular";
        };
       };
		# Colors (Gotham)
    colors =
      # https://wiki.archlinux.org/title/Color_output_in_console#Terminal_emulators
      let
        color0 = "#c97a53";
        color1 = "#de8e5d";
        color2 = "#eba073";
        color3 = "#48393e";
        color4 = "#4c485f";
        color5 = "#303958";
        color6 = "#162b4e";
        color7 = "#b98b7d";
        color8 = "#8a6364";
        color9 = "#f0b192";
        color10 = "#99767a";
        color11 = "#6d5257";
        color12 = "#d2a39d";
        color13 = "#696179";
        color14 = "#f89c51";
        color15 = "#ffb266";
      in {
			# Default colors
			primary = {
				background = "0x0a0f14";
				foreground = "0x98d1ce";
			};
			# Normal colors
			normal = {
				black = color0;
				red = color1;
				green = color2;
				yellow = color3;
				blue = color4;
				magenta = color5;
				cyan = color6;
				white = color7;
			};
			# Bright colors
			bright = {
				black = color8;
				red = color9;
				green = color10;
				yellow = color11;
				blue = color12;
				magenta = color13;
				cyan = color14;
				white = color15;
			};
		};
#    s = {
#        primary = {
#          background = "#2e3440";
#          foreground = "#d8dee9";
#          dim_foreground = "#a5abb6";
#        };
#        cursor = {
#          text = "#2e3440";
#          cursor = "#d8dee9";
#        };
#        vi_mode_cursor = {
#          text = "#2e3440";
#          cursor = "#d8dee9";
#        };
#        selection = {
#          text = "CellForeground";
#          background = "#4c566a";
#        };
#        search = {
#          matches = {
#            foreground = "CellBackground";
#            background = "#88c0d0";
#          };
#          bar = {
#            background = "#434c5e";
#            foreground = "#d8dee9";
#          };
#        };
#        normal = {
#          black = "#3b4252";
#          red = "#bf616a";
#          green = "#a3be8c";
#          yellow = "#ebcb8b";
#          blue = "#81a1c1";
#          magenta = "#b48ead";
#          cyan = "#88c0d0";
#          white = "#e5e9f0";
#        };
#        bright = {
#          black = "#4c566a";
#          red = "#bf616a";
#          green = "#a3be8c";
#          yellow = "#ebcb8b";
#          blue = "#81a1c1";
#          magenta = "#b48ead";
#          cyan = "#8fbcbb";
#          white = "#eceff4";
#        };
#        dim = {
#          black = "#373e4d";
#          red = "#94545d";
#          green = "#809575";
#          yellow = "#b29e75";
#          blue = "#68809a";
#          magenta = "#8c738c";
#          cyan = "#6d96a5";
#          white = "#aeb3bb";
#        };
#      };
    };
  };
}
