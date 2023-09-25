{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      shell = {
        program = "${pkgs.fish}/bin/fish";
      };
      window = {
        opacity = 1;
        padding = {
          x = 3;
          y = 3;
        };
      };
      font = {
        normal = {
          family = "Ubuntu Mono Nerd Font";
        };
        size = 13;
      };
      colors = {
        primary = {
          background = "0x0d1117";
          foreground = "0xb3b1ad";
        };
        normal = {
          black = "0x484f58";
          red = "0xff7b72";
          green = "0x3fb950";
          yellow = "0xd29922";
          blue = "0x58a6ff";
          magenta = "0xbc8cff";
          cyan = "0x39c5cf";
          white = "0xb1bac4";
        };

        bright = {
          black = "0x6e7681";
          red = "0xffa198";
          green = "0x56d364";
          yellow = "0xe3b341";
          blue = "0x79c0ff";
          magenta = "0xd2a8ff";
          cyan = "0x56d4dd";
          white = "0xf0f6fc";
        };
      };
    };
  };
}
