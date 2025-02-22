{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "aoisensi";
    userEmail = "me@aoisensi.info";
    extraConfig.init = {
      defaultBranch = "main";
    };
  };
}
