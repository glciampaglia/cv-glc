cv-glc
======

This repository contains the curriculum vitae (CV) of Giovanni Luca Ciampaglia
([glciampaglia.com](//glciampaglia.com)). It is based on [the template by Dario
Taraborelli](https://nitens.org/w/cvtex/).

## Contents

Main contents:
- **[cv-glc.tex](./cv-glc.tex)**: This is the main CV;
- **[personal.bib](./personal.bib)**: BibTeX database of all pubs of Giovanni;
- **[publist.tex](./publist.tex)**: Stand-alone document with just the list of
  publications section from the main CV;
- **[sectionbiblio.tex](./sectionbiblio.tex)**: code for the list of
  publication sourced directly by the main CV and the standalone list of pubs;

Old, unmaintained versions / documents:
- **[cv-glc-it.tex](./cv-glc-it.tex)**: the italian version of the CV;
- **[sectionbiblio-it.tex](./sectionbiblio-it.tex)**: same as above but for the
  italian CV;
* **[eu.tex](./eu.tex)**: an english version circa 2010 done with the
  `europecv` class to reproduce [the Europass
  style](https://europa.eu/europass/en);
- **[portfolio.tex](./portfolio.tex)**: project portfolio circa 2011;
- **[cover/](./cover/)**: old cover letters for 2010 academic job search for a
  postdoc;
- **[img/](./img/)**: image files;


## Requirements

The main requirements to compile **cv-glc.tex** are:

* [XeTeX](https://tug.org/xetex/);
* [Biblatex](https://biblatex.org/) with [Biber](https://github.com/plk/biber) as the backend;
* git and awk to be able to run the [VC bundle](https://ctan.org/pkg/vc).

## Compiling

### Via provided Makefile

Use the provided `Makefile` to compile the CV:

    make cv-glc.pdf

To compile all documents just run:

    make

To clean up any intermediate files run:

    make clean

### Via latexmk

Alternatively, it is possible to use [latexmk](https://ctan.org/pkg/latexmk/) to compile documents.

    latexmk -xelatex cv-glc.tex

To clean up any intermediate files run:

    latexmk -CA

## Editing setup

The best way to edit the CV is to use VIM with the
[vimtex](//github.com:lervag/vimtex.git) plugin, latexmk for real-time
compilation, and [SVED](https://github.com/peder2tm/sved.git) for
synchronization between the text editor (VIM) and the PDF viewer (evince). 
