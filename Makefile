template_figs := figure/template/*
figs := figure/*.*
deps := slides.tex ${template_figs} ${figs}
tmp_files := *.aux *.log *.nav *.out *.snm *.toc

# Macros
compile_slides = xelatex "$(1)" && xelatex "$(1)"

.PHONY: slides
slides: slides.pdf

slides.pdf: ${deps}
	$(call compile_slides,slides)

.PHONY: clean
clean:
	-rm -f ${tmp_files}
	-rm -f slides.pdf
