# Generated with tex2nix 0.0.0
{ texlive, extraTexPackages ? {} }:
(texlive.combine ({
    inherit (texlive) scheme-small;
    "siunitx" = texlive."siunitx";
    "physics" = texlive."physics";
    "kantlipsum" = texlive."kantlipsum";
    "amsmath" = texlive."amsmath";
    "mathtools" = texlive."mathtools";

} // extraTexPackages))
