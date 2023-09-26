{
  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs:
  let
    inherit (self) outputs;
    inherit (nixpkgs.lib) nixosSystem;
  in
  {
    nixosConfigurations = {
      ltp-t480s = nixosSystem {
        specialArgs = {
          inherit inputs outputs;
          hostName = "ltp-t480s";
          userName = "3moya";
          userFullName = "Enrique Moya";
          userEmail = "enriquemoygar@gmail.com";
        };
        modules = [ ./hosts/ltp-t480s ];
      };
    };
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
