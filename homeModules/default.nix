{ config, lib, pkgs, ... }: {
  imports = [
    ./anydesk
    ./shell
    ./trayTargetFix
  ];
}
