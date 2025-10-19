LATEX = lualatex
LATEX_OPT := -interaction=nonstopmode
ENV_VAR := export max_print_line=1000;
#FILECONTENTS = recursive-with-bug* using-a-library* java-* anatomy-of-*
FILECONTENTS = tmp-gen*

.PHONY: ctan
ctan:
	l3build ctan


.PHONY: clean
clean:
	l3build clean
	rm -rf build
	rm -f *.zip
	rm -fv *.idx *.aux *.fls *.glo *.hd *.out *.bcf *.dvi *.run.xml *.toc
	rm -fv *.bbl *.blg *.synctex.gz
	rm -fv codeanatomy.sty codeanatomy-ctan.curlopt
	rm -fv codeanatomy.*.pdf
	rm -fv $(FILECONTENTS)

.PHONY: debug
debug:
	make clean;
	make doc;
	$(LATEX) codeanatomy.ins
	

.PHONY: dryinstall
dryinstall:
	l3build install --dry-run

.PHONY: install
install:
	make clean
	l3build install
	

.PHONY: upload
upload:
	make clean ctan
	l3build upload	
