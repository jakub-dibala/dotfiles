{pkgs, ...}: {

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
    defaultCommand = "fd --type file --ignore-case --hidden --follow --exclude .git";
    fileWidgetCommand = "fd --type file --ignore-case --hidden --follow --exclude .git";
    changeDirWidgetCommand = "fd --ignore-case --hidden -t d";
    tmux.enableShellIntegration = true;
  };

  programs.fish = {
    enable = true;
    shellAliases = {
      vim = "nvim";
      gd = "git diff";
      gs = "git status";
      k = "kubectl";
    };

    shellInit = ''
      export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
      if test -n "$DESKTOP_SESSION" | test -n "$WAYLAND_DISPLAY"
        set (gnome-keyring-daemon --start | string split "=")
      end
    '';

    plugins = [
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "85f863f20f24faf675827fb00f3a4e15c7838d76";
          sha256 = "+FUBM7CodtZrYKqU542fQD+ZDGrd2438trKM0tIESs0=";
        };
      }
      {
        name = "bobthefish";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "theme-bobthefish";
          rev = "2dcfcab653ae69ae95ab57217fe64c97ae05d8de";
          sha256 = "jBbm0wTNZ7jSoGFxRkTz96QHpc5ViAw9RGsRBkCQEIU=";
        };
      }
      {
       name="fzf.fish";
       src = pkgs.fetchFromGitHub {
         owner = "PatrickF1";
         repo = "fzf.fish";
         rev = "63c8f8e65761295da51029c5b6c9e601571837a1";
         sha256 = "i9FcuQdmNlJnMWQp7myF3N0tMD/2I0CaMs/PlD8o1gw=";
       };
      }
    ];

    functions = {
      fish_greeting = "";
    };
  };
}