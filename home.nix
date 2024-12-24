{ config, lib, pkgs, ...} @args:
let 
  username = "andrew";
  homeDirectory = "/home/${username}";
  nixgl = args.nixgl;
in
{
  imports = [
    ./modules/sh.nix
    ./modules/tmux.nix
    ./modules/nvim.nix
    ./modules/alacritty.nix
  ];

  nixGL = {
    packages = nixgl.packages;
    defaultWrapper = "mesa";
  };

  home = {
    inherit username homeDirectory;

    packages = with pkgs; [
      # cli tools
      neofetch
      htop
      ripgrep
      tree
      sl
      curl
      lazygit
      jq

      #dev
      rustup

      # fonts
      (nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" "IosevkaTerm" "Meslo"]; })
    ];

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
