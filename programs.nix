{ pkgs, ... }:
{
  home.packages = with pkgs; [
    go
    deno
    python3
    flutter
  ];
}
