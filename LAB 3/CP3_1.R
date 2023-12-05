#Importar dados ficheiro excel
library(readxl)
CP3 <- read_excel("G:/My Drive/IPS/Mestrado/UCs/Fund-Est/LAB 3/CP3.xlsx")
View(CP3)


#package dplyr
library(dplyr)

#Identificar o nº observações, nº variáveis
glimpse(CP3)

#<int> nºs inteiros
#<fact> factor (variável nominal)
#<dbl> nºs com casas decimais
#<ord> variável ordinal

#Identificar a classe a que pretence o objecto
class(CP3$Sexo)
class(CP3$Idade)


#Transformar variáveis qualitativas nominais em factor
CP3$Sexo<- factor(CP3$Sexo,
                  labels = c("Masculino", "Feminino"), 
                  levels = 1:2)

#Transformar variáveis qualitativas ordinais em factor 
CP3$Idade<- factor(CP3$Idade, 
                    labels = c("18-34 anos", "35-54 anos", "55 ou mais"), 
                    levels = 1:3, ord=T)

class(CP3$Sexo)
class(CP3$Idade)

#Tabela frequências
table(CP3$Idade)                    #Tabela frequências absolutas
prop.table(table(CP3$Idade))        #Tabela frequências relativas
prop.table(table(CP3$Idade))*100    #Tabela %

#Tabela frequências absolutas em coluna
data.frame(Categoria = names(table(CP3$Idade)),
           Frequencia_Absoluta = as.numeric(table(CP3$Idade)))

#Tabela frequências absolutas e relativas em coluna
data.frame(Categoria = names(table(CP3$Idade)),
           Frequencia_Absoluta = as.numeric(table(CP3$Idade)),
           Frequencia_Relativa = as.numeric(prop.table(table(CP3$Idade))))

#Tabela frequências absolutas e % em coluna
data.frame(Categoria = names(table(CP3$Idade)),
           Freq_Absoluta = as.numeric(table(CP3$Idade)),
           Percentagem = as.numeric(prop.table(table(CP3$Idade)))*100)

#===========================================================================
#Gráfico de barras frequências absolutas
Bar <- barplot(table(CP3$Idade), 
               main = "Gráfico de Barras Escalão Etário",
               ylab = "Frequência Absoluta",
               col = "skyblue",
               names.arg = names(table(CP3$Idade)),
               ylim = c(0, 260))

#Inclui as frequências
text(x = Bar , y = table(CP3$Idade) , 
     labels = table(CP3$Idade), pos = 3 ,
     col = "darkblue")

#Gráfico de barras frequências relativas
Bar <- barplot(prop.table(table(CP3$Idade)), 
               main = "Gráfico de Barras Escalão Etário ",
               ylab = "Frequência Relativa",
               col = "skyblue",
               names.arg = names(prop.table(table(CP3$Idade))),
               ylim = c(0, 0.6))

#Inclui as frequências
text(x = Bar , y = prop.table(table(CP3$Idade)) , 
     labels = prop.table(table(CP3$Idade)), pos = 3 ,
     col = "darkblue")

#Gráfico de barras percentagens
Bar <- barplot(prop.table(table(CP3$Idade))*100, 
               main = "Gráfico de Barras Escalão Etário (%) ",
               ylab = "Percentagem",
               col = "skyblue",
               names.arg = names(prop.table(table(CP3$Idade))*100),
               ylim = c(0, 60))

#Inclui as %
text(x = Bar , y = prop.table(table(CP3$Idade))*100 , 
     labels = prop.table(table(CP3$Idade))*100, , pos = 3 ,
     col = "darkblue")
#==============================================================
#Variável Sexo ...

#==============================================================
#Tabela contingência Escalão x Sexo
table(CP3$Idade, CP3$Sexo)
prop.table(table(CP3$Idade, CP3$Sexo))
prop.table(table(CP3$Idade, CP3$Sexo))*100

#Tabela contingência Escalão x Sexo
#com freqs. absolutas e relativas

data.frame(Categoria1 = rep(rownames(table(CP3$Idade, CP3$Sexo)), each = ncol(table(CP3$Idade, CP3$Sexo))),
           Categoria2 = rep(colnames(table(CP3$Idade, CP3$Sexo)), times = nrow(table(CP3$Idade, CP3$Sexo))),
           Frequencia_Absoluta = as.vector(table(CP3$Idade, CP3$Sexo)),
           Frequencia_Relativa = as.vector(prop.table(table(CP3$Idade, CP3$Sexo))))

#Gráfico barras com título e legenda
barplot(table(CP3$Idade, CP3$Sexo), beside = TRUE, 
        legend = rownames(table(CP3$Idade, CP3$Sexo)), 
        main = "Gráfico de Barras", 
        xlab = "", 
        ylab = "Frequency")

#Aumentar o eixo vertical
barplot(table(CP3$Idade, CP3$Sexo), 
        beside = TRUE, 
        legend = rownames(table(CP3$Idade, CP3$Sexo)), 
        main = "Gráfico de Barras", 
        xlab = "", 
        ylab = "Frequency", 
        ylim = c(0,140))

#Alterar cores das barras
barplot(table(CP3$Idade, CP3$Sexo), 
        beside = TRUE, 
        legend = rownames(table(CP3$Idade, CP3$Sexo)),
        main = "Gráfico de Barras",
        xlab = "",
        ylab = "Frequência Absoluta",
        col = c("skyblue", "lightgreen", "salmon"),
        ylim = c(0,140))

#===============================================================
#Gráfico barras
barplot(table(CP3$Sexo, CP3$Idade), beside = TRUE, 
        col = c("lightblue", "lightgreen"),
        legend.text = rownames(table(CP3$Sexo, CP3$Idade)), 
        args.legend = list(x = "topright"),
        ylim = c(0,145),
        main = "Gráfico de Barras",
        xlab = "Idade",
        ylab = "Freq. absoluta")

#Gráfico barras
text(x = barplot(table(CP3$Sexo, CP3$Idade), beside = TRUE, 
                 col = c("lightblue", "lightgreen"),
                 legend.text = rownames(table(CP3$Sexo, CP3$Idade)), 
                 args.legend = list(x = "topright"),
                 ylim = c(0,145),
                 main = "Gráfico de Barras",
                 xlab = "Idade",
                 ylab = "Freq. absoluta"), 
                 y = table(CP3$Sexo, CP3$Idade), 
                 label = table(CP3$Sexo, CP3$Idade), 
                 pos = 3, cex = 0.9, col = "black")

#Incluir frequências
text(x = barplot(table(CP3$Idade, CP3$Sexo), beside = TRUE, 
                 col = c("lightblue", "lightgreen"),
                 legend.text = rownames(table(CP3$Idade, CP3$Sexo)), 
                 args.legend = list(x = "topright"),
                 ylim = c(0,140),
                 main = "Gráfico de Barras",
                 xlab = "",
                 ylab = "Freq. absoluta"), 
                 y = table(CP3$Idade, CP3$Sexo), 
                 label = table(CP3$Sexo, CP3$Idade), 
                 pos = 3, cex = 0.9, col = "black")

