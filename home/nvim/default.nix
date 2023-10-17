{ config, pkgs, lib, ... }:

{
  home-manager.users.rob.programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
      playground
      telescope-nvim
      fugitive
      rhubarb
      git-messenger-vim
      rose-pine        
    ];

    extraConfig = ''
      set runtimepath+=${./runtime}
      luafile ${./runtime/init.lua}
    '';

    extraPackages = [
      pkgs.xclip
    ];
  };
}
