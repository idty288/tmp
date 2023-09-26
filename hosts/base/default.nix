{ specialArgs, ... }:

{
  imports = [
    specialArgs.inputs.home-manager.nixosModules.home-manager

    ../modules/locale.nix
    ../modules/openssh.nix
    ../modules/nix.nix
  ];

  home-manager.extraSpecialArgs = specialArgs;

  nixpkgs.config.allowUnfree = true;
}
