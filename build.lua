-- build script for codeanatomy.dtx
module = "codeanatomy"
bundle = ""

-- Typeset configuration
typesetexe = "lualatex"
typesetopts = "-interaction=nonstopmode --recorder"
typesetfiles = {"*.dtx"}
typesetdemofiles = {
    "codeanatomy.usage.tex",
    "codeanatomy.lstlisting.tex"
}

installfiles = {"*.tex", "*.sty"}

docfiles = {
    "demo/*.tex"
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

function typeset_lstlisting_demo(file)
  local name = jobname(file)
  local dir = "build/doc"
  local errorlevel = 0;
  tex(file, dir)
  tex(file, dir)
  errorlevel = tex(file, dir)
  if errorlevel == 0 then
    errorlevel = (
      biber ( name, dir ) +
      tex ( file, dir )    +
      bibtex(name, dir)    +
      tex(name, dir)       +
      tex(name, dir)
    )
  end
  return errorlevel
end

specialtypesetting = specialtypesetting or {}
specialtypesetting["codeanatomy.lstlisting.tex"] = {
  func = typeset_lstlisting_demo
}

