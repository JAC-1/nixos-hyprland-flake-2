{ config, pkgs, ... }:

{
 hardware = {
    bluetooth.enable = true;

 # Nvidia?
#   hardware.nvidia = {
#    modesetting.enable = true;
#    powerManagement.enable = false;
#    powerManagement.finegrained = false;
#    open = false;
#    nvidiaSettings = true;
#    package = config.boot.kernelPackages.nvidiaPackages.stable;
#   }

 };
}
