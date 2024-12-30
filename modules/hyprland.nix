{ pkgs, ...}:
{
  home = {
    # copy in exising config
    file.".config/hypr" = {
      source = ../.config/hypr;
      recursive = true;
    };
  };
} 
