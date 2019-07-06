LATEX = lualatex
LATEX_OPT := -interaction=nonstopmode
ENV_VAR := export max_print_line=1000;

.PHONY: clean
clean:
	l3build clean
	rm -rf build
	rm -f *.zip

.PHONY: doc
doc:
	l3build doc

.PHONY: ctan
ctan:
	l3build ctan

.PHONY: dryinstall
dryinstall:
	l3build install --dry-run

.PHONY: example
example: doc
	cp support/example.tex build/local
	cd build/local; \
	$(ENV_VAR) $(LATEX) $(LATEX_OPT) example.tex; \
	$(ENV_VAR) $(LATEX) $(LATEX_OPT) example.tex; \
	$(ENV_VAR) $(LATEX) $(LATEX_OPT) example.tex
	