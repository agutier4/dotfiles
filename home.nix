{ config, lib, pkgs, ...}:
let 
  username = "andrew";
  homeDirectory = "/home/andrew";
  dotfilesDirectory = "${homeDirectory}/dotfiles";
in
{
  home = {
    inherit username homeDirectory;

    packages = with pkgs; [
      hello
      tmux

      # clu tools
      neofetch
      htop
      ripgrep
      tree
      sl
      curl
      lazygit
      jq
    ];

    stateVersion = "24.11";
  };

  # manualy configured files
  xdg.configFile = {
    "nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${dotfilesDirectory}/.config/nvim";
      recursive = true;
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
