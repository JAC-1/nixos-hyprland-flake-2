{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [

    # Dev

    # Notes
    pkgs.obsidian

    # Bluetooth
    pkgs.blueberry

   # Gaming
    # pkgs.steam
    # pkgs.steam-run
    # pkgs.yuzu-mainline
    # (pkgs.lutris.override {
    #   extraPkgs = pkgs: [
    #     pkgs.wineWowPackages.stable
    #     pkgs.winetricks
    #   ];
    # })

    # Downloads
    # pkgs.qbittorrent

    # Utils
    pkgs.viewnior
    pkgs-unstable.hyprshot
    pkgs.catppuccin-cursors.macchiatoBlue
    pkgs.catppuccin-gtk
    pkgs.papirus-folders
  ];
}
