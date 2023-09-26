{ lib, pkgs, userName, ... }:

{
  imports = [
    ../modules/git.nix
    ../modules/nvim.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = [ "nix-command flakes" ];
    };
  };

  systemd.user.startServices = "sd-switch";

  programs.home-manager.enable = true;

  home = {
    username = userName;
    homeDirectory = "/home/${userName}";
    stateVersion = "23.05";
  };
}
