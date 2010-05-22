# $Id: Makefile 2010 Helex$
#
# ---------------------------------------------------------------------------
#  Rules
# ---------------------------------------------------------------------------


pdfold: 
	latex master_thesis
	dvips master_thesis
	ps2pdf -dAutoFilterColorImages=false -sColorImageFilter=FlateEncode master_thesis.ps

bib:
	latex master_thesis
	# bibtex bu1
	latex master_thesis
	pdflatex master_thesis.tex

pdf:
	pdflatex master_thesis.tex
	
