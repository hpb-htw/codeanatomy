LATEX = lualatex
LATEX_OPT := -interaction=nonstopmode
ENV_VAR := export max_print_line=1000;

.PHONY: clean
clean:
	l3build clean
	rm -rf build
	rm -f *.zip
	rm -rf *.idx

.PHONY: doc
doc:
	$(ENV_VAR) l3build doc

.PHONY: ctan
ctan:
	l3build ctan

.PHONY: dryinstall
dryinstall:
	l3build install --dry-run


	