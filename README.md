# recipecards

A simple set of scripts and stylesheets for converting a text format for
writing recipes into nicely formatted PDF files suitable for printing. It
inserts such typographical niceties as vulgar fractions, en dashes for
numerical ranges, and degree and inch symbols instead of textual abbreviations.

## Prerequisites

* FOP
* DejaVu TTF Fonts
* XSLTProc

The following works on a fresh install of Ubuntu Xenial Xerus:

```
sudo apt-get install fop ttf-dejavu xsltproc
```

## Running

Currently must be run in the directory containing the font.cfg file.

```
./mkrecipe recipe-file
# creates a file named recipe-file.pdf
```
