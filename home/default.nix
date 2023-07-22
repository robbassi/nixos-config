{ config, pkgs, lib, ... }:

with {
  homeManager = builtins.fetchTarball {
    url = "https://github.com/nix-community/home-manager/archive/master.tar.gz";
  };
};

{
  imports = [
    "${homeManager}/nixos"
    ./bat
    ./vim
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
      ];
    };
  };
}
