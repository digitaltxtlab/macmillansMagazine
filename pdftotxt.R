### function to convert OCR pdf to txt in separate folder
# input is data directory containing pdf files
### Use:
#dd = "C:/Users/KLN/Documents/projects/laura/1859_1_nov"
#pdftotxt(dd)
pdftotxt <- function(dd){
setwd(dd)
filenames <- dir()
# convert OCR pdf to txt
for (i in 1:length(filenames)){
  filename <- paste0('\"',dd,"/",filenames[i],'\"')
  system(paste('"C:/Program Files/xpdfbin-win-3.04/bin64/pdftotext.exe"', 
             filename), wait=FALSE)}
# creat directory
dirtxt <- paste0(getwd(),"/txtvers")
dir.create(dirtxt)
filenamestxt <- list.files(pattern = ".txt")
file.copy(filenamestxt, dirtxt)
file.remove(filenamestxt)
}
