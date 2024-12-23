{ config, lib, pkgs, ...}:
let 
  username = "andrew";
  homeDirectory = "/home/${username}";
in
{
  imports = [
    modules/sh.nix
  ];

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

      # fonts
      (nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" "IosevkaTerm" "Meslo"]; })
    ];

    file.".config/nvim" = {
      source = ./.config/nvim;
      recursive = true;
    };

    stateVersion = "24.11";
  };

  programs = {
    home-manager.enable = true;
    btop = {
      enable = true;
      settings.color_theme = "tokyo-night";
    };
  };

  fonts.fontconfig.enable = true;

}
