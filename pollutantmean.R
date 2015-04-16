


##part1
start<-Sys.time()
pollutantmean<-function(directory,pollutant,id)
{
setwd(paste("C:/Users/Brian/Downloads/",directory,sep=""))


allfiles<-list.files(getwd())


masterdata<-data.frame()
for (i in 1:length(allfiles))
	{
		tempdata<-read.csv(allfiles[i])
		masterdata<-rbind(masterdata,tempdata)
	}

round(mean(masterdata[masterdata[,"ID"] %in% c(id),pollutant],na.rm=TRUE),3)

}

pollutantmean("specdata",pollutant="nitrate",id=70:72)
end<-Sys.time()

end-start


