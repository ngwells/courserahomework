
corr<-function(directory,threshold=0)
	{
		source("complete.R")
		listdata<-list.files(getwd())[1:332]
		fulldata<-complete("specdata",1:323)
		finaldata<-vector()
		if(threshold>max(fulldata$nobs))(finaldata<-as.numeric(finaldata))
			else{
				cordata<-fulldata[fulldata$nobs>=400,]
		
				for (i in 1:length(cordata$id))
				{
					tempdata<-read.csv(listdata[cordata$id[i]])
					tempdata<-na.omit(tempdata)
					finaldata[i]<-round(cor(tempdata[,2],tempdata[,3]),5)
				}
			}
		return(finaldata)	
	}
		
