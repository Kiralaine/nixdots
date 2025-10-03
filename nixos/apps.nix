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
     ani-cli
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
     dotnet-ef
     qt6.qtmultimedia
     rocmPackages.llvm.clang-tools
   # Language Compilers/Tools/Runtimes
     dotnet-sdk
     dotnet-runtime 
     nodejs
     go
     lua
     luarocks
     rustup
     python3
     python3Packages.pip
   # System Level Applications
     (unstable.ayugram-desktop)
     home-manager
     mpv
  ];
}

