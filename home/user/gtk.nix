{ pkgs, ... }:
{
  gtk = {
    enable = true;

    cursorTheme = {
        name = "Catppuccin-Macchiato-Blue";
        package = pkgs.catppuccin-cursors.macchiatoBlue;
    };

    theme = {
      name = "Catppuccin-Macchiato-Compact-Blue-dark";
      package = pkgs.catppuccin-gtk.override {
        size = "compact";
        accents = ["blue"];
        variant = "macchiato";
      };
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-folders;
    };

    gtk3.extraConfig = {
    };

    gtk4.extraConfig = {
    };
  };
}
