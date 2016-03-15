library(pdftools)

##set the folder path
setwd("F:/Dropbox New/Dropbox/Life long study/Ph.D/TRR Paper")
##Retrieve PDF file name
file.name<-list.files()

##Write function for name swapping
renamePDF<-function(myPDF){
  subject<-(pdf_info(myPDF)$keys$Subject)
  newsubject<-gsub(".","-",subject) #substitute weird stuff in file name
  file.rename(from=myPDF,to=paste0(newsubject,".pdf"))
}

## Run the rename to all files
sapply(file.name,renamePDF)

##Done Yeah!!!!! Ling give me five!~~~~

