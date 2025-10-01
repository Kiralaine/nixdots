{ config, pkgs, ... }:
let  
   unstable = import <nixpkgs-unstable> { system = pkgs.system; };
in 
{
  environment.systemPackages = with pkgs; [
   # System Level Packages here..

   # Instruments/utilities
     neovim
     kitty
     fastfetch
     ffmpeg
     git
   # Dependencies
     gettext
     ghostscript_headless
     ninja
     meson
     glib
     tree-sitter
     fd
     lazygit
     fzf
     qt6.qtmultimedia

   # Language Compilers/Tools/Runtimes
     dotnet-sdk
     dotnet-runtime 
     nodejs
     go
     lua
     luarocks
     rustup
   # System Level Applications
     (unstable.ayugram-desktop)
     home-manager
     mpv
  ];
}

