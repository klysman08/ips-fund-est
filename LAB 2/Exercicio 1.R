# Defina o vetor de notas
notas <- c(9, 15, 15, 17, 14, 16, 19, 10, 14, 15, 18, 16, 13, 17)

# 1) Tabela de frequências
tabela_freq <- table(notas)
print(tabela_freq)

# 2) Média
media <- mean(notas)
print(paste("Média:", media))

# Mediana
mediana <- median(notas)
print(paste("Mediana:", mediana))

# Desvio padrão
desvio_padrao <- sd(notas)
print(paste("Desvio Padrão:", desvio_padrao))

# Mínimo
minimo <- min(notas)
print(paste("Mínimo:", minimo))

# Máximo
maximo <- max(notas)
print(paste("Máximo:", maximo))

# Amplitude total
amplitude_total <- diff(range(notas))
print(paste("Amplitude Total:", amplitude_total))

# Quartis
quartis <- quantile(notas, probs = c(0.25, 0.5, 0.75))
print(paste("1º Quartil (Q1):", quartis[1]))
print(paste("2º Quartil (Mediana):", quartis[2]))
print(paste("3º Quartil (Q3):", quartis[3]))

# Quantil de 45%
quantil_45 <- quantile(notas, probs = 0.45)
print(paste("Quantil de 45%:", quantil_45))

# 3) Histograma
hist(notas, main = "Histograma de Notas", xlab = "Notas", ylab = "Frequência", col = "lightblue")

# Box-plot
boxplot(notas, main = "Box Plot de Notas", ylab = "Notas")


