{ config, pkgs, ... }:

{
environment.shellAliases = {
  ll = "lsd -lha";
  ls = "lsd --color=auto";
  lt = "lsd --tree";
  copy = "xsel --clipboard --input";
  paste = "xsel --clipboard --output";
  shutdown = "shutdown -h now";
  restart = "reboot";

  shellie = "/home/nix/scripts/shellie.sh";
  seb = "/home/nix/seb/seb.sh";
};



}
