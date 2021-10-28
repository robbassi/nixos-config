{ ... }:

{
  users.extraUsers.rob = {
    isNormalUser = true;
    home = "/home/rob";
    description = "Rob Bassi";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
