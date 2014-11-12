#' @title OCR with tesseract
#' @export
#'
#' @description \code{Optical character recognition (OCR) trough tesseract}
#'
#' @param dir_path Path to the directory where the input and output files are.
#' @param image_name The name of the input image. Most image file formats are supported.
#' @param output_base The basename of the output file (to which the appropriate extension will be appended).
#' @param lang The language to use. If none is specified, English is assumed. Multiple languages may be specified, separated by plus characters. Tesseract uses 3-character ISO 639-2 language codes:
#' \describe{
#'  \item{}{ara (Arabic), aze (Azerbauijani), bul (Bulgarian), cat (Catalan), ces (Czech), chi_sim (Simplified Chinese), chi_tra (Traditional Chinese), chr (Cherokee), dan (Danish), dan-frak (Danish (Fraktur)), deu (German), ell (Greek), eng (English), enm (Old English), epo (Esperanto), est (Estonian), fin (Finnish), fra (French), frm (Old French), glg (Galician), heb (Hebrew), hin (Hindi), hrv (Croation), hun (Hungarian), ind (Indonesian), ita (Italian), jpn (Japanese), kor (Korean), lav (Latvian), lit (Lithuanian), nld (Dutch), nor (Norwegian), pol (Polish), por (Portuguese), ron (Romanian), rus (Russian), slk (Slovakian), slv (Slovenian), sqi (Albanian), spa (Spanish), srp (Serbian), swe (Swedish), tam (Tamil), tel (Telugu), tgl (Tagalog), tha (Thai), tur (Turkish), ukr (Ukrainian), vie (Vietnamese)}
#'  }
#' @param psm Set Tesseract to only run a subset of layout analysis and assume a certain form of image. The options for N are:
#' \itemize{
#'  \item{0}{ = Orientation and script detection (OSD) only.}
#'  \item{1}{ = Automatic page segmentation with OSD.}
#'  \item{2}{ = Automatic page segmentation, but no OSD, or OCR.}
#'  \item{3}{ = Fully automatic page segmentation, but no OSD. (Default)}
#'  \item{4}{ = Assume a single column of text of variable sizes.}
#'  \item{5}{ = Assume a single uniform block of vertically aligned text.}
#'  \item{6}{ = Assume a single uniform block of text.}
#'  \item{7}{ = Treat the image as a single text line.}
#'  \item{8}{ = Treat the image as a single word.}
#'  \item{9}{ = Treat the image as a single word in a circle.}
#'  \item{10}{ = Treat the image as a single character.}
#' }
#'

ocrTesseract <- function(dir_path, image_name, output_base, lang="eng", psm=5){
  command <- paste0("tesseract ", dir_path, "/", image_name, " ", dir_path, "/",
                    output_base, " -l " ,lang ," -psm ", psm)
  system(command, wait=TRUE)
  result <- readLines(paste0(dir_path, "/", output_file, ".txt"))
  result
}
