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
    version      = "0.1-Alpha",
    author       = "HPB",
    uploader     = "HPB",
    license      = "lppl1.3c",
    summary      = "draw code anatomy",
    ctanPath     = "/graphics/pgf/contrib/codeanatomy",
    repository   = "https://github.com/hpb-htw/codeanatomy.git",
    note         = [[Uploaded automatically by l3build]]
  }