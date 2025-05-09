{ config, pkgs, ... }:

{
users.users.jac-1 = {
     isNormalUser = true;
     shell = pkgs.zsh;
     extraGroups = [
     	"wheel"
        "qemu"
        "kvm"
        "libvirtd"
        "networkmanager"
     ];
   };
}
