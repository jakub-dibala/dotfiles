{
  config,
  pkgs,
  user,
  inputs,
  ...
}: {
  imports = [
	../apps/alacritty/alacritty.nix
	../apps/git/git.nix
	../apps/vscode/vscode.nix
	../apps/fish/fish.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = user;
  home.homeDirectory = "/home/${user}";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    brave
    gnome.gnome-keyring
    rsync
    ncdu
    htop
    gnome.gnome-system-monitor
    gnome.gnome-keyring
    xfce.thunar
    nitrogen
    slack
    thunderbird
    whatsapp-for-linux
    tmux
    wmctrl
    xorg.xprop
    fd
    picom
    polybar
    pavucontrol
    kubectl
    docker-compose
    (google-cloud-sdk.withExtraComponents [google-cloud-sdk.components.gke-gcloud-auth-plugin])
    insomnia
  ];
}
