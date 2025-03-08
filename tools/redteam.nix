{ config, pkgs, lib, ... }: #

{

environment.systemPackages = with pkgs; [
# ESCs stuff
    msfpc
    retdec
    ida-free
    lldb_19
    cutter
    # snort
    socat
    proxychains
    zap
    angryipscanner
    burpsuite
    file # to determine file type of a file


# hexfiend

  ## Exploitation ##
  metasploit
  sqlmap

  ## PASSWORDS ##
  hashcat
  hashcat-utils
  hcxtools

  ## Reverse Engineering ##
  ghidra
  binwalk
  pwntools
  pwndbg

  ## Network Exploitation ##
  wireshark
  tshark
  tcpdump

  ## APK Reverse Engineering ##
  apktool


  ];
}


