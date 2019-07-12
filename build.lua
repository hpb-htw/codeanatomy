-- build script for codeanatomy.dtx
module = "codeanatomy"
bundle = ""

-- Typeset configuration
typesetexe = "lualatex"
typesetopts = "-interaction=nonstopmode --recorder"
typesetdemofiles = {
    "codeanatomy.usage.tex",             -- Done
    "codeanatomy.lstlisting.tex"         -- Done
}

-- Copy all files match pattern to build/doc
-- therefore use \input{java-program} instead of \input{demo-code/java-program.tex}
--[[
docfiles = {
    "demo-code/*"
}
]]--

uploadconfig = {
    pkg          = "codeanatomy",
    version      = "0.4-Alpha",
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