{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "julia2nix";

  src = fetchgit {
    url = "https://github.com/codedownio/julia2nix";
    rev = "c294458759dfdc2d90674bfe8779649ebb9f5ed6";
    sha256 = "1xak80f82ixjln0a6ly99xr53ar02b6812vzn8m8h7yb5rrjl3sh";
  };

  installPhase = ''
    mkdir -p "$out"
    ln -s "$src" "$out/bin"
  '';
}

