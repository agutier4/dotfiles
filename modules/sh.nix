{ pkgs, lib, ... }:
let 
  aliases = {
    sl = "sl -e"; 
    lg = "lazygit";
    python = "python3";
    vim = "nvim";
  };
  
in {
  programs.zsh = {
    enable = true;
    shellAliases = aliases;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ../.config/p10k;
        file = "p10k.zsh";
      }
      {
        name = "ros2-zsh";
        src = ../.config/ros2-zsh;
        file = "ros2.zsh";
      }
    ];
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = aliases;
  };
}
