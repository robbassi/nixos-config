{
  nixos-config.programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./kitty.conf;
  };
}
