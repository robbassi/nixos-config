{ hardwareConfig
, imports ? []
}@args:

{ ... }:

{
  imports = [
    hardwareConfig

    ./hardware
    ./home
    ./nix
    ./services
    ./locale
    ./time
    ./users
  ] ++ (args.imports or []);
}
