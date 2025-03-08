{ lib, config, pkgs, ... }: {
  imports = [ 

    ./modules/hardware-configuration.nix # standard auto generated hardware config

    ./modules/system.nix # Base System options ( bootloader, networking, audio, x11, keyboard, firewall, etc )
    ./modules/desktop.nix # Deskop Environments and Window Manager settings
    ./modules/nvidia.nix # Nvidia settings 
    ./modules/automount.nix # automount non boot drives
    ./modules/env.nix # environment packages and variables
    ./modules/user.nix # user packages and variables
    ./modules/bashrc.nix # bashrc aliases 
    ./modules/maintenance.nix # generic maintenance module, options selected in current file

    # tools ( collection of packages )
    ./tools/redteam.nix

  ];

  system.stateVersion = "24.11";
}

