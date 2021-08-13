# Generated with tex2nix 0.0.0
{ texlive, extraTexPackages ? {} }:
(texlive.combine ({
    inherit (texlive) scheme-small;
    "minted" = texlive."minted";
    "physics" = texlive."physics";
    "xstring" = texlive."xstring";
    "fvextra" = texlive."fvextra";
    "kvsetkeys" = texlive."kvsetkeys";
    "mathtools" = texlive."mathtools";
    "ltxcmds" = texlive."ltxcmds";
    "kantlipsum" = texlive."kantlipsum";
    "finstrut" = texlive."finstrut";
    "xcolor" = texlive."xcolor";
    "framed" = texlive."framed";
    "fancyvrb" = texlive."fancyvrb";
    "lineno" = texlive."lineno";
    "etexcmds" = texlive."etexcmds";
    "etoolbox" = texlive."etoolbox";
    "catchfile" = texlive."catchfile";
    "ifplatform" = texlive."ifplatform";
    "kvoptions" = texlive."kvoptions";
    "upquote" = texlive."upquote";
    "float" = texlive."float";
    "siunitx" = texlive."siunitx";
    "amsmath" = texlive."amsmath";
    "pdftexcmds" = texlive."pdftexcmds";

} // extraTexPackages))
