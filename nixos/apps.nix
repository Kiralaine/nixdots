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
     (writeShellScriptBin "prime-run" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec "$@"
    '')

    mesa-demos
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
     gcc
     python3
     python3Packages.pip
   # System Level Applications
     (unstable.ayugram-desktop)
     home-manager
     mpv
  ];
}

