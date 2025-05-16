{ config, pkgs, ... }:

{
  services = {
  	dbus.enable = true;
	picom.enable = true;
	openssh.enable = false;
    spice-vdagentd.enable = true;

  displayManager = {
    sddm.theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
    sddm.enable = true; 
  };

	xserver = {
		enable = true;
		xkb.layout = "jp";
  };
  };
}
