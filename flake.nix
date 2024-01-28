{
  description = "Arduano's overrides";

  inputs = { };

  # The output is your built and working system configuration
  outputs = { self, ... }@inputs:
    {
      nixosModules = _: {
        imports = [
          ./nixModules
          ./overlay.nix
        ];
      };

      homeModules = _: {
        imports = [
          ./overlay.nix
        ];
      };
    };
}
