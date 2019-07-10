LATEX = lualatex
LATEX_OPT := -interaction=nonstopmode
ENV_VAR := export max_print_line=1000;

.PHONY: clean
clean:
	l3build clean
	rm -rf build
	rm -f *.zip
	rm -fv *.idx *.aux *.glo *.hd *.out *.bcf *.dvi *.run.xml *.toc
	rm -fv codeanatomy.sty codeanatomy-ctan.curlopt
	rm -fv codeanatomy.*.pdf

.PHONY: doc
doc:
	$(ENV_VAR) l3build doc

.PHONY: ctan
ctan:
	l3build ctan

.PHONY: dryinstall
dryinstall:
	l3build install --dry-run


	