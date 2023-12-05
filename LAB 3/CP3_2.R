#Importar dados ficheiro Excel
library(readxl)
CP3 <- read_excel("C:/ caminho...")
View(CP3)

#package dplyr
library(dplyr)

#Identificar o nº observações, nº variáveis
glimpse(CP3)

#===============================================================
#Tabelas frequências
table(CP3$Sexo, CP3$Bebida)
round(prop.table(table(CP3$Sexo, CP3$Bebida))*100, 2)

gra<- barplot(table(CP3$Sexo, CP3$Bebida), beside = TRUE, 
        col = c("lightblue", "lightgreen"),
        legend.text = rownames(table(CP3$Sexo, CP3$Bebida)), 
        #args.legend = list(title = "Categorias", x = "topright"),
        ylim = c(0,40),
        main = "Gráfico de Barras",
        xlab = "Bebida",
        ylab = "Freq. absoluta")

#Incluir frequências
#text(x=..., y=..., label =.., pos =.., cex =.., col =..)

text(x = barplot(table(CP3$Sexo, CP3$Bebida), beside = TRUE, 
                 col = c("lightblue", "lightgreen"),
                 legend.text = rownames(table(CP3$Sexo, CP3$Bebida)), 
                 args.legend = list(x = "topright"),
                 ylim = c(0,40),
                 main = "Gráfico de Barras",
                 xlab = "Bebida",
                 ylab = "Freq. absoluta"), 
                 y = table(CP3$Sexo, CP3$Bebida), 
                 label = table(CP3$Sexo, CP3$Bebida), 
                 pos = 3, cex = 0,9, col = "black")


