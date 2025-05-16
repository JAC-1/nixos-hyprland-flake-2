{ pkgs, ... }:
# Find gpu id with lspci -nn | grep VGA

{
  virtualisation = {
    spiceUSBRedirection.enable = true;

    libvirtd = {
      enable = true;
      onBoot = "ignore";
      onShutdown = "shutdown";

      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
        runAsRoot = true;
      };
    };

    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  # Add additional system packages
  environment.systemPackages = with pkgs; [
    podman-compose
    qemu
    qemu_kvm
    spice
    spice-gtk
    spice-protocol
    virt-manager
    virt-viewer
    win-spice
    win-virtio
    # looking-glass-client # For GPU passthrough
    # virtio-win # Windows drivers
  ];

  # Enable service for looking-glass
  # systemd.tmpfiles.rules = [
  #   "f /dev/shm/looking-glass 0660 YOURUSERNAME qemu-libvirtd -"
  # ];
}
