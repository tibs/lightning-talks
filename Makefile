# This version of the Makefile assumes that pandoc and (enough of) TeX are
# available.

.PHONY: default
default: html slides

# We don't try to provide an HTML version of the slides in this version
# - use the PDF produces by 'slides' instead.
# For various reasons, pandoc won't render markup-history-extended-notes.rst
# as PDF, so we don't bother.
.PHONY: html
html:
	rst2html.py README.rst README.html
	rst2html.py apostrophe.rst apostrophe.html
	rst2html.py quotes.rst quotes.html
	rst2html.py string-and-repr.rst string-and-repr.html

# The available aspect ratio of slides (for beamer only) are 1610 for 16:10,
# 169 for 16:9, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is
# the default, and 32 # for 3:2. It's probably enough to go for the following
# pair of resolutions.

.PHONY: slides
slides:
	pandoc apostrophe.rst -t beamer -o apostrophe-4x3.pdf -V aspectratio:43
	pandoc quotes.rst -t beamer -o quotes-4x3.pdf -V aspectratio:43
	pandoc string-and-repr.rst -t beamer -o string-and-repr-4x3.pdf -V aspectratio:43

.PHONY: clean
clean:
	rm -f *.html

.PHONY: help
help:
	@echo 'make         same as: make html slides'
	@echo 'make slide   create the PDF slides'
	@echo 'make html    create HTML files using rst2html'
	@echo 'make clean   delete HTML files'
