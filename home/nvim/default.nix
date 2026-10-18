{ pkgs, ... }:

{
  nixos-config.programs.neovim = {
    enable = true;
    defaultEditor = true;
    withRuby = false;
    withPython3 = false;
    plugins = with pkgs.vimPlugins; [
      # Additional lua libraries.
      plenary-nvim

      # File icons.
      nvim-web-devicons

      # Better synatax highlighting + debug tools.
      nvim-treesitter.withAllGrammars

      # LSP
      nvim-lspconfig

      # Fuzzy search, for different things.
      telescope-nvim

      # Manage a set of "marked" files.
      harpoon

      # Git integration.
      vim-fugitive
      vim-rhubarb

      # Status line plugin.
      lualine-nvim
    ];

    extraConfig = ''
      set runtimepath+=${./runtime}
      luafile ${./runtime}/init.lua
    '';

    extraPackages = [
      pkgs.xclip
      pkgs.clang-tools
    ];
  };
}
