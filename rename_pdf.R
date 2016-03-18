install.packages("pdftools")
library(pdftools)

##set the folder path (Make this path you PDF file)
setwd("F:/Dropbox New/Dropbox/Life long study/Ph.D/TRR Paper")
##Retrieve the PDF file names
file.name<-list.files(pattern="\\.pdf$")
myPDF<-file.name[1]
##Write the function for the name swapping
renamePDF<-function(myPDF){
  subject<-(pdf_info(myPDF)$keys$Subject)
  newsubject<-gsub("…","-",subject) #substitute the weird stuff in file name
  file.rename(from=myPDF,to=paste0(newsubject,".pdf"))
}

## Run the rename to all files
sapply(file.name,renamePDF)

##Done Yeah!!!!! Ling, give me five!~~~~

