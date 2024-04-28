{ config, lib, ... }:

with lib;

{
  options = {
    nixos-config.nix.cores = mkOption {
      type = types.ints.positive;
    };
  };

  config = {
    nixpkgs.config.allowUnfree = true;
    nix.settings = {
      cores = config.nixos-config.nix.cores;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
}
