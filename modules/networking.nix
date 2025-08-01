{ config, pkgs, lib, ... }: {
  networking.wireless.enable = true;
  networking.networkmanager.enable = true;
}
