{ config, pkgs, lib, ... }: #

{

# List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    vim
    neovim
    mullvad-vpn
    gsettings-desktop-schemas
    wget
    glib
    glibc
    python3
    git
    lsd # ls (list) but pretty
    flameshot # screenshot tool
    alacritty # terminal but pretty
    blueberry # bluetooth tool
    baobab # storage scanner
    yt-dlg # youtube downloader with gui
    xsel # x select for copy and paste via cli to clipboard
    btop # task manager basically
    tmux # terminal hyperplexer
    neofetch # sys info fetch
    barrier # cross computer keyboard and mouse
    mpv # music and video player but suckless
    qpwgraph # audio piping software
    fzf # cli fuzzy find util
    winetricks
    protontricks
    opentabletdriver
    flatpak
    kitty
    nemo
    floorp
    # awesome lua stuff
    luajit
    acpi
    lxappearance
    inotify-tools
    polkit_gnome
    xdotool
    xclip
    libnotify
    feh
    comma # most broken command ever (, <package> <params>) it runs the program once without installing the package
    devenv
    direnv

    pavucontrol
    gparted

    gtk2
    gtk3
    gtk4

    nix-health
    nix-update
    nix-index
    nix-tree
    nix-diff
    nil

    qemu_full

    docker


  ];

  fonts.packages = with pkgs; [
   ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);


  services.mullvad-vpn.enable = true;
  services.blueman.enable = true;

}
