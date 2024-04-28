{ pkgs, ... }:

with {
  miasma-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "miasma-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "xero";
      repo = "miasma.nvim";
      rev = "c672feec07d4e77ac485ee58e3432a96ebe51953";
      hash = "sha256-p+8coWDvX4Vy3SIK4f9teAivUSMM3RH/0XkUbV4Z7aA=";
    };
  };
};

{
  nixos-config.programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      # Additional lua libraries.
      plenary-nvim

      # File icons.
      nvim-web-devicons

      # Better synatax highlighting + debug tools.
      nvim-treesitter.withAllGrammars
      playground

      # Fuzzy search, for different things.
      telescope-nvim

      # Manage a set of "marked" files.
      harpoon

      # Git integration.
      fugitive
      rhubarb
      git-messenger-vim
      git-blame-nvim

      # Highlight word under cursor.
      vim-illuminate

      # Status line plugin.
      lualine-nvim

      # Color themes.
      rose-pine        
      miasma-nvim
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
