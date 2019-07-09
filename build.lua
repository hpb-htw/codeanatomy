-- build script for codeanatomy.dtx
module = "codeanatomy"
bundle = ""

-- Typeset configuration
typesetexe = "lualatex"
typesetopts = "-interaction=nonstopmode -recorder"
typesetdemofiles = {
    --"codeanatomy.usage.tex",             -- Done
    -- "codeanatomy.lstlisting.tex",
    --"codeanatomy.example.tex"
}

-- Copy all files match pattern to build/doc
-- therefore use \input{java-program} instead of \input{demo-code/java-program.tex}
--[[
docfiles = {
    "demo-code/*"
}
]]--

