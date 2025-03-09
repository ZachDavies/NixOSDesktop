{ config, pkgs, ... }: {
  home.username = "nix";
  home.homeDirectory = "/home/nix";
  home.stateVersion = "24.05";
  
  home.packages = with pkgs; [
  adwaita-qt
  gtk-engine-murrine
  catppuccin-gtk    # or another theme you prefer
  ];

  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-frappe-blue-standard";    # or another dark theme
      package = pkgs.catppuccin-gtk;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    cursorTheme = {
    package = pkgs.catppuccin-cursors.mochaLavender;
    name = "catppuccin-mocha-lavender-cursors";
    size = 24;
  };
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "catppuccin-mocha-lavender-cursors";
    size = 24;
    package = pkgs.catppuccin-cursors.mochaLavender;
  };


  xdg.configFile = {
    "awesome" = {
      source = ./config/awesome;
      recursive = true;
    };
  };

  programs = {
    home-manager.enable = true;
    alacritty.enable = true;
    kitty.enable = true;
    rofi = {
      enable = true;
      plugins = with pkgs; [
        rofi-calc
      ];
    };
  };
}

