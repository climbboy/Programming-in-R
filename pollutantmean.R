pollutantmean <- function(directory, pollutant, id = 1:332) {

        filenames <- list.files(path = directory, pattern = "csv")
        myfiles <- filenames [id]
        
        resultdata <- data.frame()
        
        for(i in myfiles){
                vector1 <-read.csv(paste(getwd(),directory,i, sep="/"))
                resultdata <- rbind(vector1,resultdata)
        }
        
        finalresult <- colMeans(resultdata[pollutant], na.rm = TRUE)
        print (finalresult)
}
