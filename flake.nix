{
  description = "Arduano's overrides";

  inputs = { };

  # The output is your built and working system configuration
  outputs = { self, ... }@inputs:
    {
      nixosModules = [{
        imports = [
          ./nixModules
          ./overlay.nix
        ];
      }];
    };
}
