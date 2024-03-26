{
  description = "a derivation to build Agda libraries";

  outputs = {self}:
    {
      lib = {
        mkAgdaDerivation = import ./mkAgdaDerivation.nix;
      };
    };
}
