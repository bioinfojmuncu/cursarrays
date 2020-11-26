### Caractetristiques dels arrays

### Add Phenotype info
## Es crea un objecte ph (phenotype) per enmagatzemar la informació
dir.create("./results/pheno")

## Data1. Consultar taula i guardar
ph1 = data1@phenoData
ph1@data

## La informació està codificada

sns <- sampleNames(data1)
sns <- gsub('1521', '1251', sns)
sns <- gsub('r\\.CEL$', '\\.CEL', sns)
wafer <- substr(sns, 1, 4)
experiment <- substr(sns, 5, 5)
tmp <- substr(sns, 6, 7)
complex <- rep('+', length(tmp))
complex[tmp == '00'] <- '-'
info <- data.frame(wafer=wafer, experiment=experiment, complex=complex)
rownames(info) <- sns
metadata <- data.frame(labelDescription=c('wafer', 'experiment', 'complex'), channel=factor('_ALL_'))
sampleNames(data1) <- sns
pd <- new('AnnotatedDataFrame', data=info, varMetadata=metadata)
phenoData(data1) <- pd
rm(tmp, wafer, experiment, complex, pd, metadata)
ph1 = data1@phenoData
data1_2@phenoData<-data1@phenoData
ph1_2 = data1@phenoData
ph1@data
write.csv(ph1@data,"./results/pheno/ph1.csv")


### Data2. Consultar taula i guardar
ph2 = data2@phenoData
ph2@data
write.csv(ph2@data,"./results/pheno/ph2.csv")


### Data3. Consultar taula i guardar

ph3 = data3@phenoData
ph3@data
data3_info<-read.csv("/home/cels/GSE17189_description_all20patients.txt",sep="\t")
data3_info$Sample.name<-as.character(data3_info$Sample.name)
data3_info<-
  data3_info %>% 
  filter(Sample.name!="")
length(data3_info$Sample.name)
data3_info$Sample.name
# No hi es 1386  1389 1396

data3_info<-
  data3_info %>% 
  filter(Sample.name!= "1386" & Sample.name!="1389" & Sample.name!= "1396" )
dim(data3_info)
dim(ph3@data)
rownames(data3_info)<-colnames(data3)
ph3@data<-data3_info
write.csv(ph3@data,"./results/pheno/ph3.csv")

### Add featureData info
# Afegir informació sobre els noms d'affymetrix
featureData(data1)
featureData(data2)
featureData(data3)
### Add experimetnal data


## Consult annotation
annotation(data1)

