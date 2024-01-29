{
  description = "Arduano's overrides";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    vscode-server = {
      url = "github:nix-community/nixos-vscode-server";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # The output is your built and working system configuration
  outputs = { self, vscode-server, ... }@inputs:
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
          vscode-server.nixosModules.default
          overlay
        ];
      };

      homeModules = _: {
        imports = [
          ./homeModules
          overlay
        ];
      };

      overlay = import ./overlay.nix;
    };
}
