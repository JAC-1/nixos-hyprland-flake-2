{ config, pkgs, ... }:

{
users.users.justin = {
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
