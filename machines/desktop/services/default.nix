{ config, pkgs, ... }:

{
  imports = [
    ./xserver.nix
    ./pipewire
  ];
}
