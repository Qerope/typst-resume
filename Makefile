resume.pdf: resume.typ data.typ
	typst compile resume.typ

watch:
	typst watch resume.typ

.PHONY: watch
