
#________RECODIFICACION DE VARIABLES___________

# Se trabaja con la matriz "escuela.xslx"

# 1.- Importacion de la matriz


#------------------------------------------
#    Exploracion de la matriz
#------------------------------------------
Escuela
dim(Escuela)
str(Escuela)
summary(Escuela)


#-------------------------------------------
#      Configuracion de variables
#--------------------------------------------


Escuela$genero<-factor(Escuela$genero,
                     levels=c("Femenino","Masculino"))
Escuela$grupo<-factor(Escuela$grupo,
                       levels=c("A","B","C"))

Escuela$Matematicas<-factor(Escuela$Matematicas,
                       levels=c("4","5","6","7","8","9","10"))

Escuela$Español<-factor(Escuela$Español,
                            levels=c("2","5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                            levels=c("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                            levels=c("6","7","8","9","10"))
summary(Escuela)

color=c("aquamarine","aquamarine1""aquamarine3","antiquewhite","antiquewhite1","antiquewhite2","antiquewhite3","antiquewhite4","lightsalmon2","lightsteelblue1")

BX<-ggplot(Escuela, aes(x=genero, y=Español))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("Genero")+
  ylab("Promedio")+
  theme_bw()

BX
