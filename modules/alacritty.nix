{ config, lib, pkgs, ...}:
{
  programs = {
    alacritty = {
      enable = true;
      settings = {
        general.import = [ "${pkgs.alacritty-theme}/tokyo_night.toml" ];
        env.term = "screen-256color";
        window = {
          startup_mode = "Maximized";
          opacity = 0.85;
        };
        font = {
          size = 9;
          normal = {
            family = "JetBrainsMonoNL Nerd Font Mono";
            style = "Normal";
          };
        };
      };
      package = (config.lib.nixGL.wrap pkgs.alacritty);
    };
  };
}
