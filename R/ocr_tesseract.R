#' @title OCR with tesseract
#' @export
#'
#' @description \code{ocrTesseract}
#'
#' @param canvas
#'

ocrTesseract <- function(canvas){
  # Write canvas to tiff
  writeTiff('prog_captcha/canvas.tiff', canvas)

  # OCR trough tesseract
  system("tesseract C:/Users/CIB/Documents/R/web-scraping/prog_captcha/canvas.tiff C:/Users/CIB/Documents/R/web-scraping/prog_captcha/canvas letters", wait = T)
  result <- paste(readLines("prog_captcha/canvas.txt"), collapse = "")

  # Gsub
  result <- tolower(result)
  result <- gsub(' ', '', result)
  count <- sapply(letters, function(x){x <- sum(x == unlist(strsplit(result, "")))})
  count
  names(count)[count == max(count)]
}
