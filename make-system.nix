{ imports ? []
}@args:

{ ... }:

{
  imports = [
    ./hardware
    ./home
    ./nix
    ./services
    ./locale
    ./time
    ./users
  ] ++ (args.imports or []);
}
