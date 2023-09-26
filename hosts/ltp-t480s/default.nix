{ hostName, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../base
    ../modules/user.nix

    ../modules/networkmanager.nix
    ../modules/systemd-boot.nix
    ../modules/pipewire.nix
  ];

  networking.hostName = hostName;

  system.stateVersion = "23.05";
}
