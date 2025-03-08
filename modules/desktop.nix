{ config, pkgs, ... }: {

  services = {
    displayManager.sddm.enable = true;
  };

  services.xserver = {
    enable = true;
    windowManager = {
      awesome.enable = true;
    };
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}

