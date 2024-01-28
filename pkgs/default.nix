{ callPackage
, callPackages
, stdenv
, stdenvNoCC
, lib
, runCommand
, fetchurl
, bzip2_1_1
, dpkg
, pkgs
, dtc
, python3
, runtimeShell
, writeShellApplication
}:

{
  sunshine_patched = callPackage ./sunshine { };
}