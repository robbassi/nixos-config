{ config, pkgs, lib, ... }:

with {
  homeManager = builtins.fetchTarball {
    url = "https://github.com/rycee/home-manager/archive/release-21.05.tar.gz";
  };
};

{
  imports = [
    "${homeManager}/nixos"
    ./bat
    ./vim
    ./nvim
    ./tmux
    ./git
    ./vscode
    ./alacritty
  ];

  home-manager.users.rob = {
    nixpkgs.config = {
      allowUnfree = true;
    };

    home = {
      packages = with pkgs; [
        htop
        tree
        ripgrep
        silver-searcher
        wget
        google-chrome
        fixedsys-excelsior
      ];
    };
  };
}
