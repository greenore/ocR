ocR
===

R bindings to Tesseract. Tesseract is probably the most accurate open source OCR
engine available. Combined with the Leptonica Image Processing Library it can
read a wide variety of image formats and convert them to text in over 60 languages.
It was one of the top 3 engines in the 1995 UNLV Accuracy test. Between 1995
and 2006 it had little work done on it, but since then it has been improved
extensively by Google. It is released under the Apache License 2.0.


## Introduction
__ocR__ is an open source packages to interact with the OCR Tesseract engine.

### Install ocR
Installing directly from Github requires some helper packages. The easiest way to setup __ocR__ is to source the following «[init.R][1]» script and then install and run the package with the packagesGithub function. Furthermore, it also utilizes some functions from the «[systemR][2]» package. The package is not on CRAN and has to be installed directly from Bioconductor. Running the following lines of code installs and loads everything for captchaSolveR to work:

#### Windows:
```
source("https://rawgit.com/greenore/initR/master/init.R")
packagesGithub(c("systemR", "ocR"), repo_name="greenore")
```

#### Linux:
```
source(pipe(paste("wget -O -", "https://rawgit.com/greenore/initR/master/init.R")))
packagesGithub(c("systemR", "ocR"), repo_name="greenore")
```

### Install Tesseract

#### Linux:
Tesseract is available directly from many Linux distributions. The package is generally called 'tesseract' or 'tesseract-ocr' - search your distribution's repositories to find it. Packages are also generally available for language training data (search the repositories,) but if not you will need to download the appropriate training data, unpack it, and copy the .traineddata file into the 'tessdata' directory, probably /usr/share/tesseract-ocr/tessdata or /usr/share/tessdata.

```
# On Ubuntu the following command will install tesseract
sudo apt-get update
sudo apt-get install tesseract-ocr
```

#### Mac OS X
The easiest way to install Tesseract is with MacPorts. Once it is installed, you can install Tesseract by running the command sudo port install tesseract, and any language with sudo port install tesseract-<langcode>. List of available langcodes can be found on MacPorts tesseract page.

#### Windows
An installer is available for Windows on the [Tesseract-OCR][3] project page. This includes the English training data.

[1]: https://github.com/greenore/initR/blob/master/init.R
[2]: https://github.com/greenore/systemR
[3]: https://code.google.com/p/tesseract-ocr/
