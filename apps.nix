{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    spotify
    vscode
    nixfmt-rfc-style
  ];
}
