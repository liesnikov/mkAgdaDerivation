{
  description = "a derivation to build Agda libraries";

  inputs.nixpkgs.url = github:NixOS/nixpkgs;
  inputs.flake-utils.url = github:numtide/flake-utils;

  outputs = {self, nixpkgs, flake-utils}:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {inherit system;};
      in {
        lib = {
          mkAgdaDerivation = pkgs.callPackage ./mkAgdaDerivation.nix {};
        };
      });
}
