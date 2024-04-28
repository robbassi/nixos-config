{ pkgs, ... }:

with {
	vim-gotham= pkgs.vimUtils.buildVimPlugin {
    name = "vim-gotham";
    src = pkgs.fetchFromGitHub {
      owner = "whatyouhide";
      repo = "vim-gotham";
      rev = "9e42c1072f044f1c1c43dbf5b5e957437d946d7e";
      hash = "sha256-A2QHnCkSnnrEN/lbl/p1fQSjojtOwoK7CyH/RAwucac=";
    };
  };
};

{
  nixos-config.programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      haskell-vim
      vim-nix
      nerdcommenter
      rainbow_parentheses
      airline
      fzf-vim
      nord-vim
      YouCompleteMe
      vim-lsp
      solidity
      vim-gotham
      vim-colorschemes
      vim-airline-themes
      base16-vim
      zig-vim
    ];

    extraConfig = builtins.readFile ./vimrc;
  };
}
