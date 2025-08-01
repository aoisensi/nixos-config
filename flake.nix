{
  description = "aoisensi's NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
   flake-utils.lib.eachDefaultSystem (system: {
     nixosConfigurations = {
       hydrogenium = nixpkgs.lib.nixosSystem {
         inherit system;
         modules = [ ./hosts/hydrogenium/configuration.nix ];
       };
     };
   });
}
