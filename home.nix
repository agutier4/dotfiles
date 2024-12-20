{ config, lib, pkgs, ...}:
let 
  username = "andrew";
  homeDirectory = "/home/andrew";
in
{
  home = {
    inherit username homeDirectory;

    packages = with pkgs; [
      tmux
      neovim-unwrapped

      # cli tools
      neofetch
      htop
      ripgrep
      tree
      sl
      curl
      lazygit
      jq
    ];

    file.".config/nvim" = {
      source = ./.config/nvim;
      recursive = true;
    };

    stateVersion = "24.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.btop = {
    enable = true;
    settings.color_theme = "tokyo-night";
  };
}
