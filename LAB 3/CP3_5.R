#CP3,exercício5

produt <- c(15,12,14,18,13,10,16,11,17,19,14,12,15,11,13,16,17,9,12,14)
tempo <- c(10,5,7,12,4,3,8,5,9,14,6,4,8,3,5,10,11,2,5,7)

#Criar um data frame
dados <- data.frame(tempo, produt)

#verificar se é um data frame
is.data.frame(dados)

#Gráfico de dispersão (scatter plot)
plot(dados)

#ou
plot(tempo, produt)

#Gráfico com título e legendas
plot(tempo, produt, main = "Scatter Plot", xlab = "Tempo formação (horas)", 
     ylab = "Produtividade")

#ajusta uma regressão linear simples (tempo como variável dependente 
# e produtividade como variável independente)
lm_model <- lm(produt~tempo)

#adiciona a recta de regressão ao gráfico
abline(lm_model, col = "red")
abline(lm_model, col = "blue")

#Coeficiente de correlação de Pearson (variáveis 2 quantitativas)
cor(produt, tempo)
cor(tempo, produt)
round(cor(produt, tempo),2)


#Coeficiente de correlação de Spearman (variáveis 2 quantitativas,
# ou 2 ordinais, ou 1 quantitativa e outra ordinal)

cor(produt, tempo, method = "spearman")




