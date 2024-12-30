{ pkgs, ...}:
{
  home = {
    # copy in exising hypr configs
    file.".config/hypr" = {
      source = ../.config/hypr;
      recursive = true;
    };

    # copy in exising fuzzel configs
    file.".config/fuzzel" = {
      source = ../.config/fuzzel;
      recursive = true;
    };

  };
} 
