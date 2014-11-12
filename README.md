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

### Install 

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


[1]: https://github.com/greenore/initR/blob/master/init.R
[2]: https://github.com/greenore/systemR
