{ pkgs, lib, config, ... }:

with lib;
let
  nixPath = "/run/nixPath";

  cfg = config.arduano.networking;
in
{
  options = {
    arduano.networking =
      {
        enable = mkEnableOption "tailscale";
      };
  };

  config = mkIf cfg.enable
    {

    };
}
