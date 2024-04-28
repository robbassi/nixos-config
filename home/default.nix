{ config, pkgs, lib, ... }:

with lib;
with rec {
  homeManager = builtins.fetchTarball {
    url = "https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz";
  };
  pkgs-master = builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/master.tar.gz";
  };
  latest = import pkgs-master { 
    config = { 
      allowUnfree = true; 
    }; 
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
    ./kitty
    ./virtualbox
  ];

  options = {
    nixos-config.programs = mkOption {
      type = types.anything;
      default = {};
    };
  };

  config = {
    home-manager.users.${config.nixos-config.user.name} = {
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
          latest.google-chrome
          fixedsys-excelsior
          nerdfonts
        ];
      };
      programs = config.nixos-config.programs;
    };
  };
}
