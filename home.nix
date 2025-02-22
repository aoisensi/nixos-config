{ pkgs, ... }:
{
  imports = [
    ./browser.nix
    ./apps.nix
    ./git.nix
    ./programs.nix
  ];

  home = rec {
    username = "aoisensi";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    wget
    curl
    docker
  ];
}
