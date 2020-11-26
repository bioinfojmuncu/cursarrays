## Imatges. Veure si hi ha artefactes!
dir.create("./results/QC")
image(data1[,1],main=ph1@data$wafer[1])

image(data3,which=1)



png("./results/QC/data1_image_1.png")
image(data1,which=1,main=ph1@data$sample[1])
dev.off()

png("./results/QC/data3_image_1.png")
image(data3,which=1,main=ph1@data$sample[1])
dev.off()

##Histograms
hist(data1,xlab='Log2 intensities',main="RAW Data")
hist(data1_2,xlab='Log2 intensities',main="RAW Data")
hist(data2,xlab='Log2 intensities',main="RAW Data")
hist(data3,xlab='Log2 intensities',main="RAW Data")


## Boxplot
boxplot(data1,las=2)
boxplot(data1_2,las=2)
boxplot(data2,las=2)
boxplot(data3,las=2)


## Maplot

MAplot(data1,which=1)
MAplot(data1_2,which=2)
MAplot(data2,which=2)
MAplot(data3,which=2)
print(MAplot(data1,which=1))
for(i in 1:dim(data2)[2]){
  print(MAplot(data2,which=i))
}

## PCA DATA2
labels<-data2@phenoData@data$`molecular diagnosis:ch1`
color<-labels

color[grepl("DLBCL",color)]<-"red"
color[!grepl("red",color)]<-"green"

data.matrix<-exprs(data2)
data.PC = prcomp(t(data.matrix),scale=T)
loads<-round(data.PC$sdev^2/sum(data.PC$sdev^2)*100,1)
xlab<-c(paste("PC1",loads[1],"%"))
ylab<-c(paste("PC2",loads[2],"%"))


plot(data.PC$x[,1:2],col=color,xlab=xlab,ylab=ylab)
text(data.PC$x[,1],data.PC$x[,2],labels,pos = 1, cex=0.7  )


labels<-data2@phenoData@data$`tumor biopsy origin:ch1`
color<-labels

color[grepl("LN",color)]<-"red"
color[!grepl("red",color)]<-"green"

dev.off()
plot(data.PC$x[,1:2],col=color,xlab=xlab,ylab=ylab)
text(data.PC$x[,1],data.PC$x[,2],labels,pos = 1, cex=0.7  )


## PCA DATA1_1 ####

labels<-data1@phenoData@data$wafer
color<-labels


data.matrix<-exprs(data1)
data.PC = prcomp(t(data.matrix),scale=T)
loads<-round(data.PC$sdev^2/sum(data.PC$sdev^2)*100,1)
xlab<-c(paste("PC1",loads[1],"%"))
ylab<-c(paste("PC2",loads[2],"%"))


plot(data.PC$x[,1:2],col=color,xlab=xlab,ylab=ylab)
text(data.PC$x[,1],data.PC$x[,2],labels,pos = 1, cex=0.7  )







## PCA DATA1_2

labels<-data1_2@phenoData@data$wafer
color<-labels


data.matrix<-exprs(data1_2)
data.PC = prcomp(t(data.matrix),scale=T)
loads<-round(data.PC$sdev^2/sum(data.PC$sdev^2)*100,1)
xlab<-c(paste("PC1",loads[1],"%"))
ylab<-c(paste("PC2",loads[2],"%"))


plot(data.PC$x[,1:2],col=color,xlab=xlab,ylab=ylab)
text(data.PC$x[,1],data.PC$x[,2],labels,pos = 1, cex=0.7  )


labels<-data2@phenoData@data$`tumor biopsy origin:ch1`
color<-labels

color[grepl("LN",color)]<-"red"
color[!grepl("red",color)]<-"green"

dev.off()
plot(data.PC$x[,1:2],col=color,xlab=xlab,ylab=ylab)
text(data.PC$x[,1],data.PC$x[,2],labels,pos = 1, cex=0.7  )



# arrayQualityMetrics(expressionset = data1,
#                     outdir = "data1_report",
#                     force = TRUE,
#                     do.logtransform = TRUE)
