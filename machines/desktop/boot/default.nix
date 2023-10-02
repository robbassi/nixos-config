{ pkgs, ... }:

{
  #boot.kernelPackages = pkgs.linuxPackages_latest;
  #boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.useOSProber = true;
  boot.initrd.luks.devices = {
    luksroot = {
      name = "luksroot";
      device = "/dev/disk/by-uuid/7eeac0e0-e3dd-4fb7-9beb-877be41fff8a";
      preLVM = true;
    };
  };
}
