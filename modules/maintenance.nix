{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.system.maintenance;
in {
  options.system.maintenance = {
    enable = mkEnableOption "system maintenance";
    
    gc = {
      enable = mkEnableOption "automatic garbage collection";
      dates = mkOption {
        type = types.str;
        default = "weekly";
        description = "How often to run the garbage collector";
      };
      options = mkOption {
        type = types.str;
        default = "--delete-older-than 30d";
        description = "Options to pass to the garbage collector";
      };
    persistent = {
        enable = mkEnableOption "keeping persistent generations";
        generations = mkOption {
          type = types.int;
          default = 5;
          description = "Number of most recent generations to keep permanently";
        };
      };
    };
    
    diskSpace = {
      minFree = mkOption {
        type = types.int;
        default = 10;
        description = "Minimum free space in GiB";
      };
      warnLevel = mkOption {
        type = types.int;
        default = 5;
        description = "Warning level for free space in GiB";
      };
    };
  };

  config = mkIf cfg.enable {
    nix.gc = {
      automatic = cfg.gc.enable;
      dates = cfg.gc.dates;
      options = cfg.gc.options;
    };

    nix.settings.keep-outputs = cfg.gc.persistent.enable;
    nix.settings.keep-derivations = cfg.gc.persistent.enable;
    nix.extraOptions = mkIf cfg.gc.persistent.enable ''
      min-free = ${toString (5 * 1024 * 1024 * 1024)}
      max-free = ${toString (10 * 1024 * 1024 * 1024)}
      keep-generations = ${toString cfg.gc.persistent.generations}
    '';

  };
}

