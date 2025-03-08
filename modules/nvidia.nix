{ config, pkgs, ... }: {
  hardware.graphics.enable = true;
  services.xserver = {
  	videoDrivers = ["nvidia"];
	screenSection = ''
      Option "metamodes" "DP-0: 1920x1080_144 +1920+0, DP-2: 1920x1080_144 +0+0"
     '';
    };


  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    nvidiaSettings = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    forceFullCompositionPipeline = true;
 
  };
}

