#CP3_Exercício 6
#E-Envolvimento (medido numa escala ordinal 
#de 1=nada envolvido até 7=completamente envolvido)
E<- c(4,3,5,2,6,4,5,3,6,5,4,3,6,4,5,2,5,3,6,4,3,5,2,6,4,5,
       3,6,4,3,5,2,6,4,5,3,6,4,3,5,2,6,4,5,3,6,4,3,5,2)


#Absentismo (nº faltas ao trabalho-últimos 6 meses)
A<- c(2,4,1,5,0,3,1,2,0,1,2,4,0,3,1,5,1,2,0,2,4,1,5,0,3,1,2,
      0,2,4,1,5,0,3,1,2,0,2,4,1,5,0,3,1,2,0,2,4,1,5)


#Coeficiente de Spearman
cor(A,E, method = "spearman")

#Gráfico de dispersão
plot(A,E)
plot(E,A)

#Gráfico de dispersão com título e legendas nos eixos
plot(A,E, main = "Gráfico dispersão", 
     xlab = "Envolvimento (de 1=Nada envolvido a 7=Completamente envolvido)", 
     ylab = "Absentismo",
     ylim = c(0,7))

#ajusta uma regressão linear simples 
#(Absentismo como variável dependente 
# e Envolvimento como variável independente)
lm_model <- lm(A~E)

#adiciona a recta de regressão ao gráfico
abline(lm_model, col = "red")
abline(lm_model, col = "blue")
abline(lm_model, col = "green")
abline(lm_model)

