# `codeanatomy` -- Draw Code Anatomy

(C) 2019 Hồng-Phúc Bùi

The idea of this Package is to typeset illustrations of pieces of code with 
annotations on each single parts of code (Code Anatomy). The origin of this idea is
code illustrations in the texbook _Computer Science An Interdisciplinary Approach_
from Robert Sedgewick and Kevin Wayne.

This package just provides tools to draw those figures.

Some illustrations can be found here: 

https://introcs.cs.princeton.edu/java/home/ 

for example the origin illustation of static method in java: 
<img src="https://introcs.cs.princeton.edu/java/11cheatsheet/images/function.png">


## Licence

This package may be distributed and/or modified under the conditions of the
LaTeX Project Public License (LPPL), either version 1.3c of this
License or any later version.  The latest version
of this license is in the file https://www.latex-project.org/lppl.txt

## Build and Install (for Distributor)
* To build the style file `codeanatomy.sty` just run **one** of 

```
latex codeanatomy.ins
pdflatex codeanatomy.ins
xelatex codeanatomy.ins
lualatex codeanatomy.ins
```

then you can copy `codeanatomy.sty` to your local `texmf` tree, where latex can find it.

* To create PDF Document manual you must use `lualatex`

```
lualatex codeanatomy.dtx
lualatex codeanatomy.usage.tex
lualatex codeanatomy.lstlisting.tex
```

(`lualatex` because of my name, really ego right! It needs unicode to be typeset correctly.)

## Development
I try to use latex3 as much as posible. You can use 

```
l3build doc
```

to create the style file and documentation files at once. You can also (like I also do) use `make`
to call repeatly tasks.

