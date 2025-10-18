-- build script for codeanatomy.dtx
module = "codeanatomy"
bundle = ""

-- Typeset configuration
typesetexe = "lualatex"
typesetopts = "-interaction=nonstopmode --recorder"
typesetdemofiles = {
    "codeanatomy.usage.tex",
    "codeanatomy.lstlisting.tex"         -- Done
}

docfiles = {
    --"codeanatomy.lstlisting.tex"         -- Done
}



uploadconfig = {
    pkg          = "codeanatomy",
    version      = "0.5-Beta",
    author       = "Hồng-Phúc Bùi",
    uploader     = "Hồng-Phúc Bùi",
    email        = "hong-phuc.bui@htwsaar.de",
    license      = "lppl1.3c",
    summary      = "draw code anatomy",
    ctanPath     = "/graphics/pgf/contrib/codeanatomy",
    home         = "https://github.com/hpb-htw/codeanatomy.git",
    repository   = "https://github.com/hpb-htw/codeanatomy.git",
    bugtracker   = "https://github.com/hpb-htw/codeanatomy/issues",
    note         = [[Uploaded automatically by l3build]]
  }

