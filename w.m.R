
Dataset <- read.table("/home/excelvrn/Statistics/January/copy.in.20.out", header=FALSE, sep="\t", na.strings="NA", dec=".", strip.white=TRUE)
for (i in 0:50) {print(i);print(Dataset[i,1])}
editDataset(Dataset)
Dataset[i,1]
editDataset(Dataset)
dim(Dataset)
Dataset
prev<-1
l1<-c(1)
for (i in 1:dim(Dataset)[1]){
	#if (is.na(Dataset[i, 2])) print(i)
	#else  if (Dataset[i, 2] == 1) print("UNO")
	if (!is.na(Dataset[i, 2]) & (Dataset[i, 2] != prev) )  {l1<-c(l1,i); Dataset[i, 2] -> prev}
	#if (!is.na(Dataset[i, 2]))  l1<-c(l1,i)
	#else if (!is.na(Dataset[i, 2]) & (Dataset[i, 2] == 2) )  l2<-c(l2,i)
}
l1
for (i in 1:dim(Dataset)[1]){
	if (!is.na(Dataset[i, 2])) {prev<-Dataset[i, 2]}
	if (is.na(Dataset[i, 2])) {prev->Dataset[i, 2]}
	
}
print(Dataset[,2])
#Услуги для мужчин (2)
#men<-c()
women<-c()
for (i in 1:dim(Dataset)[1]){
	#if (!is.na(Dataset[i, 2]) & (Dataset[i, 2] == 2)) {men<-c(men, Dataset[i, 1]); print(Dataset[i, 1])}
	if (!is.na(Dataset[i, 2]) & (Dataset[i, 1] == 1)) {women<-c(women, Dataset[i, 1])}
	#else if (Dataset[i, 2] == 1) {women<-c(women, Dataset[i, 1]}
}
women


