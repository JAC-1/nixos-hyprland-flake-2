{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];

  home.username = "jac-1";
  home.homeDirectory = "/home/jac-1";
  home.stateVersion = "24.11";
}
