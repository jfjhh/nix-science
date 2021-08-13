{
  sources ? import ./sources.nix
, pkgs ? import sources.nixpkgs {}
}:

with pkgs;

let
  nixfiles = builtins.toString ./.;
  tex2nix = callPackage ./tex2nix.nix {};
  julia = callPackage ../julia/.nix {};
in mkShell {
  buildInputs = [
    tex2nix
    julia
    pandoc
    hello
    (callPackage ../tex/.nix/tex-env.nix {
      extraTexPackages = {
        inherit (texlive)
        latexmk
        ;
      };
    })
    glibcLocales
  ];
  JULIA_PROJECT = "${nixfiles}/../julia";
  JULIA_DEPOT_PATH = "${nixfiles}/julia-depot";
}
