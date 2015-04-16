


##part2
#start<-Sys.time()
complete<-function(directory,id)
{
setwd(paste("C:/Users/Brian/Downloads/",directory,sep=""))


allfiles<-list.files(getwd())


col1<-vector()
col2<-vector()


for (i in 1:length(id))
	{
		tempdata<-read.csv(allfiles[id[i]])
		tempdata<-na.omit(tempdata)
		col1[i]<-id[i]
		col2[i]<-dim(tempdata)[1]
	}
masterdata<-cbind(col1,col2)
colnames(masterdata)<-c("id","nobs")
return(as.data.frame(masterdata))
}

#complete("specdata",id=c(2,4,8,10,12))

#end<-Sys.time()
#end-start


