{ ... }:
{

 # Auto Updates
 system.autoUpgrade = {
   enable = true;
   dates = "weekly";
   allowReboot = false;
 };

 # Auto Cleanup
 nix.gc.automatic = true;
 nix.gc.dates = "daily";
 nix.gc.options = "--delete-older-than 14d";
 nix.settings.auto-optimise-store = true;

}

