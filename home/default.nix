{ config, pkgs, lib, ... }:

with {
  homeManager = builtins.fetchTarball {
    url = "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
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
    ./virtualbox
  ];

  home-manager.users.rob = {
    nixpkgs.config = {
      allowUnfree = true;
    };

    home = {
      stateVersion = "21.05";
      packages = with pkgs; [
        fd
        htop
        tree
        ripgrep
        silver-searcher
        wget
        google-chrome
        fixedsys-excelsior
        nerdfonts
      ];
    };
  };
}
