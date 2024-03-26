{
  description = "a derivation to build Agda libraries";

  inputs.flake-utils.url = github:numtide/flake-utils;

  outputs = {self, flake-utils}:
    {
      lib = {
        mkAgdaDerivation = import ./mkAgdaDerivation.nix;
      };
    };
}
