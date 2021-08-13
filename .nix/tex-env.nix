# Generated with tex2nix 0.0.0
{ texlive, extraTexPackages ? {} }:
(texlive.combine ({
    inherit (texlive) scheme-small;
    "amsmath" = texlive."amsmath";
    "siunitx" = texlive."siunitx";
    "physics" = texlive."physics";
    "mathtools" = texlive."mathtools";

} // extraTexPackages))
