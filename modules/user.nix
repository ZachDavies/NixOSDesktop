{ config, pkgs, ... }:

{
  users.users.nix = {
    isNormalUser = true;
    description = "nix";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [


      r2modman
      kdePackages.kate
      thunderbird
      vesktop
      nextcloud-client
      realvnc-vnc-viewer
      keepassxc # password manager
      rustdesk-flutter
      vscode # visual studio code
      filezilla # ftp p2p
      gimp # free photoshop
      jellyfin # local video sharing client
      obsidian # note taking app
      warp-terminal # pretty terminal
      protonup-qt

      figlet # funny ascii

      # file retrieval tools
      ddrescue
      multipath-tools
      ext4magic
      testdisk
      parted
      extundelete

      ncdu # cli storage anaylser

  #    quickgui  # wait until upstream fix merges with nixpkgs


      rnote # paint for linux
      ntfs3g # for mounting ntfs drive
      rofi # rofi <3
      rofi-calc # calc for rofi

      signal-desktop # signal messenger
      unityhub # unity version manager

      veracrypt # encryption
      weechat # irc client

  #   browsers
      mullvad-browser
      brave
      librewolf # privacy firefox browser


      lshw
      pciutils
      powertop # power management btop
      lutris # game launcher
      heroic # epic store 
      winePackages.base
      zulu8
      gsettings-desktop-schemas
      gsettings-qt
      libreoffice-qt6-still # office for linux
      wofi
      obs-studio # video recording
      stremio # video streaming

      #plank
      #picom
      qbittorrent # torrent client
      mumble # og voip


    # python apps
      jupyter
      pyenv

      rpi-imager # rasperry pi sd card imager

      bisq2 # p2p crypto exchange

      #games
      ppsspp
      superTuxKart

      home-manager

      #For keychron launcher
      ungoogled-chromium

      # Dev stuff for automated planning
      stdenv.cc.cc.lib
      python3
      python3Packages.numpy
      libgcc
      rocmPackages_5.llvm.clang

     ];
  };

  programs.steam.enable = true;

  programs.steam.extraPackages = with pkgs; [
    gamescope
  ];

  # Thunar and extras
  programs.thunar.enable = true;
  services.dbus.enable = true;
  services.gvfs.enable = true;
  services.tumbler.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  programs.xfconf.enable = true;
  services.udisks2.enable = true;
  programs.dconf.enable = true;

}


