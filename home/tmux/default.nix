{ pkgs, ... }:

{
  nixos-config.programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [];
    extraConfig = ''
      set -g default-terminal "xterm"
    '';
  };
}
