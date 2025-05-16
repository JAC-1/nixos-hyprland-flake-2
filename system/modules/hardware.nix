{ config, pkgs, ... }:


{
 hardware = {
    bluetooth.enable = true;

    # # Enable IOMMU
    # enableAllFirmware = true;
    # ace.enable = true;
    #
    # # CPU hardware options
    # cpu.intel.updateMicrocode = true;

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

 # Enable IOMMU support and other things for virtualization
 # boot.kernelParams = [
 #   "intel_iommu=on"
 #   "iommu=pt"
 #   "pcie_aspm=off"
 #   # Find GPU id using lspci -nn | grep VGA and REPLACEME
 #   "vfio-pci.ids=REPLACEME" # You'll need to add your GPU IDs here
 # ];
 #
 # # Load VFIO-related modules
 # boot.kernelModules = [
 #   "vfio"
 #   "vfio_iommu_type1"
 #   "vfio_pci"
 #   "vfio_virqfd"
 # ];
 #
 # # Early loading of VFIO
 # boot.initrd.kernelModules = [
 #   "vfio"
 #   "vfio_iommu_type1"
 #   "vfio_pci"
 #   "vfio_virqfd"
 # ];
}
