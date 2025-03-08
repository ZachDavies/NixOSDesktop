{ ... }: 

{

  boot.supportedFilesystems = [ "ntfs" ];

  # chung automount
  fileSystems."/home/nix/Big Chung" = {
  device = "/dev/disk/by-uuid/2244146744143FC9";
  fsType = "ntfs-3g";
  options = [ "rw" "uid=1000" "gid=100" "exec" "nofail" ];
  };

  fileSystems."/home/nix/Endy" = {
   device = "/dev/disk/by-uuid/e3db8e75-e642-43d9-ab5a-add1d209577f";
   fsType = "ext4";
   options = [ "defaults" ];
  };

}
