{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  texmain = ../main.tex;

  withNix = attrs: attrs // {
    buildInputs = (attrs.buildInputs or []) ++ [ nix ];
    NIX_PATH    = if builtins.getEnv "NIX_PATH" == ""
                     then "nixpkgs=${toString <nixpkgs>}"
                     else builtins.getEnv "NIX_PATH";
    NIX_REMOTE  = if builtins.getEnv "NIX_REMOTE" == ""
                     then "daemon"
                     else builtins.getEnv "NIX_REMOTE";
  };

  src = fetchgit {
    url = "https://github.com/Mic92/tex2nix";
    rev = "74f6aa4c02617f9a375c66791b739472f1cf8011";
    sha256 = "1g0dbmlgsmy2qx0pipcwp9f9kw2nl0qglm29klb9sdjq9xrfi82g";
  };

in
  callPackage "${src}/default.nix" {}

