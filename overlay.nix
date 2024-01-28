{ ... }:
{
  nixpkgs.overlays = [
    (final: prev: {
      arduano = final.callPackage ./pkgs/default.nix { };
    })
  ];
}
