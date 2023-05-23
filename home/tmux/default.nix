{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [];
    extraConfig = ''
      set -g default-terminal "xterm"
    '';
  };
}
