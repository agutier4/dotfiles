{ pkgs, ...}:
{
  home = {
    # add the package
    packages = [
      pkgs.neovim-unwrapped
    ];

    # copy in exising config
    file.".config/nvim" = {
      source = ../.config/nvim;
      recursive = true;
    };
  };
} 
