with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "hello";
  src = ./hello.hs;
  buildCommand = ''
    ghc -Wall -O2 -o hello $src
    install -Dt $out hello
  '';
}
