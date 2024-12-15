{ lib, pkgs, ...}:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    username = "andrew";
    homeDirectory = "/home/andrew";
    stateVersion = "24.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
