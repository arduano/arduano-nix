{ config, lib, pkgs, ... }: {
  imports = [
    ./sunshine
    ./nix-channel
  ];
}
