{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      haskell-vim
      vim-nix
      nerdcommenter
      rainbow_parentheses
      airline
    ];

    extraConfig = builtins.readFile ./vimrc;
  };
}
