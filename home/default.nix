{ config, pkgs, lib, ... }:

with {
  homeManager = builtins.fetchTarball {
    url = "https://github.com/rycee/home-manager/archive/release-21.05.tar.gz";
  };
};

{
  imports = [
    "${homeManager}/nixos"
    ./vim
    ./git
    ./vscode
  ];

  home-manager.users.rob = {
    nixpkgs.config = {
      allowUnfree = true;
    };

    home = {
      packages = with pkgs; [
        htop
        tree
        wget
        google-chrome
      ];
    };
  };
}
