{ pkgs, lib, ... }:
let
  minimal-tmux-status = pkgs.tmuxPlugins.mkTmuxPlugin
    {
      pluginName = "minimal-tmux-status";
      version = "unstable-2024-11-03";
      rtpFilePath = "minimal.tmux";
      src = pkgs.fetchFromGitHub {
        owner = "niksingh710";
        repo = "minimal-tmux-status";
        rev = "d7188c1aeb1c7dd03230982445b7360f5e230131";
        sha256 = "sha256-JtbuSxWFR94HiUdQL9uIm2V/kwGz0gbVbqvYWmEncbc=";
      };
    };
in 

{
  programs.tmux = {
    enable = true;
    sensibleOnTop = false;
    prefix = "C-s";
    mouse = true;
    keyMode = "vi";
    extraConfig = ''
      set-option -ga terminal-overrides ",alacritty:Tc"
      set -g default-terminal "alacritty"
      set-environment -g COLORTERM "truecolor"
      set -g allow-rename on
      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R
    '';

    plugins = [
      {
        plugin = pkgs.tmuxPlugins.yank;
      }
      {
        plugin = minimal-tmux-status;
        extraConfig = ''
          set -g @minimal-tmux-use-arrow true   
          set -g @minimal-tmux-right-arrow ""
          set -g @minimal-tmux-left-arrow ""
          set -g @minimal-tmux-status "top"
        '';
      }
    ];
  };
}

