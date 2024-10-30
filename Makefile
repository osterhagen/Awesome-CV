.PHONY: examples

CC = /Library/TeX/texbin/xelatex
RESUME_DIR = resume
RESUME_SUB_DIR = resume/sections
RESUME_SRCS = $(shell find $(RESUME_SUB_DIR) -name '*.tex')

resume.pdf: $(RESUME_DIR)/resume.tex $(RESUME_SRCS)
	xelatex -output-directory=$(RESUME_DIR) $<

clean:
	rm -rf $(RESUME_DIR)/*.pdf
