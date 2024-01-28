{
  description = "Arduano's overrides";

  inputs = { };

  # The output is your built and working system configuration
  outputs = { self, ... }@inputs:
    let
      overlay = {
        nixpkgs.overlays = [
          (import ./overlay.nix)
        ];
      };
    in
    {
      nixosModules = _: {
        imports = [
          ./nixModules
          overlay
        ];
      };

      homeModules = _: {
        imports = [
          overlay
        ];
      };

      overlay = import ./overlay.nix;
    };
}
