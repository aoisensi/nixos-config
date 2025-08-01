{ config, lib, pkgs, ... }:

let hostname = config.networking.hostName;
in {
  imports = [
    ../hosts/${hostname}/hardware-configuration.nix
    ./boot.nix
    ./kernel.nix
    ./i18n.nix
    ./networking.nix
    ./desktop.nix
  ]
}
