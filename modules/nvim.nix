{ pkgs, ...}:
{
  home = {
    # add the package
    packages = [
      pkgs.neovim-unwrapped
      pkgs.wl-clipboard
      pkgs.xclip
    ];

    # copy in exising config
    file.".config/nvim" = {
      source = ../.config/nvim;
      recursive = true;
    };
  };
} 
