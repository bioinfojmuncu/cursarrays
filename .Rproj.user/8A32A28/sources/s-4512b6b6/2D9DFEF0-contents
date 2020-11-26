### Lectura de dades

# Opció 1. Lectura de dades demostració paquet oligo


data(affyExpressionFS);data1<-affyExpressionFS;rm(affyExpressionFS)
ls()
data(affyExpressionFS);data1_2<-affyExpressionFS;rm(affyExpressionFS);exprs(data1_2)[,1]<-exprs(data1)[,1]*3
ls()


# Opció 2. Lectura de dades de GEO
## getGEO Permet accedir a NCBI!
data2 <- getGEO("GSE17189", GSEMatrix =TRUE, getGPL=FALSE);data2<-data2$GSE17189_series_matrix.txt.gz                
ls()


# Opció 3. Lectura de dades locals

## list.celfiles: Identifica els arxius cel
## list.files: Funció generica per llistar els arxius. Amb la opció pattern es pot filtrar quin tipus d'arxiu es vol

data3<-list.files("/home/cels/celfiles/",full.names=T,pattern = "CEL.gz")
data3<-read.celfiles(data3)

ls()

## Que hem fet???
class(data1)
class(data1_2)
class(data2)
class(data3)



