{ pkgs ? import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/f26cd3771f7291e49c8678a350f9ed4e3043b091.tar.gz";
    sha256 = "sha256:0vph7zng3xri3ay54hnqsd6jybynrzada05rafdgn64n7zriy9r3";
}) {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.tcl
    pkgs.readline
    pkgs.ncurses
    pkgs.libffi
    pkgs.zlib
    (pkgs.python3.withPackages (pp: with pp; [
        click
    ]))
    pkgs.abc-verifier
    pkgs.llvmPackages.clang
    pkgs.pkg-config
    pkgs.bison
    pkgs.flex 
    pkgs.abc-verifier
  ];

  shellHook = ''
  '';
  

    /*
    cmake ../ -DARCH=all -DCMAKE_BUILD_TYPE=Debug \
      -DTRELLIS_INSTALL_PREFIX=$TRELLIS_INSTALL_PREFIX \
      -DICESTORM_INSTALL_PREFIX=$ICESTORM_INSTALL_PREFIX \
      -DBUILD_PYTHON=OFF
    */
}
