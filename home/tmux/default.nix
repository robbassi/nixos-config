{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = nord;
        extraConfig = "set -g @plugin 'arcticicestudio/nord-tmux'";
      }
    ];
    # fix missing colors for fzf in vim
    extraConfig = ''
      set -g default-terminal 'screen-256color'
      set -ga terminal-overrides ',*256col*:Tc' 
    '';
  };
}
