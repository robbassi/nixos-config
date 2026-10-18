{ config, ... }:

{
  nixos-config.programs.git = {
    enable = true;
    settings.user = {
      name = config.nixos-config.user.fullname;
      email = config.nixos-config.user.email;
    };
  };
}
