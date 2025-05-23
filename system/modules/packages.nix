
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adwaita-icon-theme # default gnome cursors
    lazygit
    gh
    fcitx5
    fcitx5-configtool
    fcitx5-mozc
    easyeffects
    bat
    btop
    eza
    fzf
    git
    gnumake
    lm_sensors
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
    neofetch
    neovim
    ripgrep
    tldr
    unzip
    openssl
    openssl.dev
    pkg-config
    wget
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide
    home-manager
    hyprshot
  ];
}
