{ config, pkgs, lib, ... }:
let
  miasma-nvim = pkgs.vimUtils.buildVimPluginFrom2Nix {
    name = "miasma-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "xero";
      repo = "miasma.nvim";
      rev = "fe75187d87461c1c83783b35c17f2be509126cf0";
      hash = "sha256-qEVQYZPlKt2b266W+14OlRP4TRT5z+vzyrOuuBeaQ9E=";
    };
  };
  fine-cmdline-nvim = pkgs.vimUtils.buildVimPluginFrom2Nix {
    name = "fine-cmdline-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "VonHeikemen";
      repo = "fine-cmdline.nvim";
      rev = "ead2b85e455eacde10469a8fcf1a717822d2bb9a";
      hash = "sha256-0aYHz6uRMVjctrDo8JKlTIUP2Oj+MrhBvgXRIwo/ueU=";
    };
  };
in 
  {
    home-manager.users.rob.programs.neovim = {
      enable = true;
      defaultEditor = true;
      plugins = with pkgs.vimPlugins; [
        # Additional lua libraries.
        plenary-nvim

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

        # Highlight word under cursor.
        vim-illuminate

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
