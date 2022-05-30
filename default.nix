with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "hello";
  src = ./hello.c;
  buildCommand = ''
    gcc -Wall -O2 -o hello $src
    install -Dt $out hello
  '';
}
