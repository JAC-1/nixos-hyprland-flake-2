{ config, pkgs, ... }:

{
  networking = {
	hostName = "nixnix";
	networkmanager.enable = true;
	enableIPv6 = false;
	firewall.enable = true;
  };
}
