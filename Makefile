LATEX = lualatex
LATEX_OPT := -interaction=nonstopmode
ENV_VAR := export max_print_line=1000;


.PHONY: doc
doc:
	$(ENV_VAR) l3build doc

.PHONY: clean
clean:
	l3build clean
	rm -rf build
	rm -f *.zip
	rm -fv *.idx *.aux *.glo *.hd *.out *.bcf *.dvi *.run.xml *.toc
	rm -fv codeanatomy.sty codeanatomy-ctan.curlopt
	rm -fv codeanatomy.*.pdf

.PHONY: ctan
ctan:
	make clean doc
	l3build ctan

.PHONY: dryinstall
dryinstall:
	l3build install --dry-run

.PHONY: install
install:
	make clean
	l3build install
	

.PHONY: upload
upload:
	make clean doc ctan
	l3build upload	