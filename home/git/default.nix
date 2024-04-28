{ config, ... }:

{
  nixos-config.programs.git = {
    enable = true;
    userName = config.nixos-config.user.fullname;
    userEmail = config.nixos-config.user.email;
  };
}
