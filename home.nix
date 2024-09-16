{ pkgs, ...}:
{
    # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jjq";
  home.homeDirectory = "/home/jjq";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    sshuttle
    fastfetch
    jetbrains.pycharm-professional
    obs-studio
    evince
    insync
    okular
    zotero
    transmission-qt
    viber
    inkscape-with-extensions
    gimp-with-plugins
    gns3-gui
  ];

  home.stateVersion = "24.05";
  nixpkgs.config.allowUnfree = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  # manage fish shell
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nrs = "sudo nixos-rebuild switch";
      ta = "tmux a";
      tn = "tmux new";
    };
  };
  # manage git configuration
  programs.git = {
    enable = true;
    userName = "jjq";
    userEmail = "jeanjayquitayen@asti.dost.gov.ph";
  };
  
}
