# recipecards

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
