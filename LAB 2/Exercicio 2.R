# Temperaturas máximas diárias registradas
temperaturas <- c(24.6, 25.2, 26.6, 25.9, 27.4, 28.5, 30.0, 30.4, 30.4, 28.9, 27.1, 27.8, 28.9, 29.1, 28.8, 27.2, 26.8, 27.9, 30.1, 27.1, 24.0, 23.1, 24.5, 25.2, 27.0, 27.2, 26.2, 25.6, 23.5, 24.0, 25.7)

# a) Quantas temperaturas foram registradas?
num_temperaturas <- length(temperaturas)
cat("a) Quantidade de temperaturas registradas:", num_temperaturas, "\n")

# b) Qual a temperatura máxima registada? E a mínima?
temp_maxima <- max(temperaturas)
temp_minima <- min(temperaturas)
cat("b) Temperatura máxima registrada:", temp_maxima, "\n")
cat("   Temperatura mínima registrada:", temp_minima, "\n")

# c) Qual a temperatura média?
temp_media <- mean(temperaturas)
cat("c) Temperatura média:", temp_media, "\n")

# d) A dispersão das temperaturas relativamente à temperatura média é medida pelo desvio padrão. # nolint: line_length_linter.
dispersao <- sd(temperaturas)
cat("d) A dispersão das temperaturas relativamente à temperatura média é", dispersao, "\n") # nolint

# e) Ordene a amostra
temperaturas_ordenadas <- sort(temperaturas)
cat("e) Amostra ordenada:", temperaturas_ordenadas, "\n")

# f) Obtenha a mediana e interprete o resultado
mediana <- median(temperaturas)
cat("f) Mediana:", mediana, "\n")
cat("   A mediana é o valor que divide a amostra ao meio, ou seja, 50% das temperaturas estão abaixo dela e 50% estão acima dela. No caso, a mediana representa o valor central da amostra ordenada.\n")

# g) Obtenha o histograma das temperaturas e analise-o
hist(temperaturas, main = "Histograma das Temperaturas", xlab = "Temperatura (°C)", ylab = "Frequência", col = "lightblue")
# Análise: O histograma mostra a distribuição das temperaturas em relação à frequência. Pode-se observar a forma da distribuição a partir do histograma.

# h) Obtenha a box-plot e analise-a
boxplot(temperaturas, main = "Box Plot das Temperaturas", ylab = "Temperatura (°C)")
# Análise: A box-plot fornece informações sobre a mediana, os quartis e os valores discrepantes (outliers). Pode ajudar a identificar a presença de valores extremos na amostra.

# i) Relativamente à simetria/assimetria, a distribuição das temperaturas é:
# Para avaliar a simetria/assimetria, você pode usar o gráfico de histograma ou uma medida de assimetria como a assimetria de Pearson ou a assimetria de Fisher. Não é possível determinar a simetria/assimetria sem ver a distribuição real.

# j) Obtenha a tabela de frequências das temperaturas
tabela_freq <- table(temperaturas)
print("j) Tabela de Frequências:")
print(tabela_freq)

# k) Agrupe os dados das temperaturas em 4 classes
classes_4 <- cut(temperaturas, breaks = 4, include.lowest = TRUE)
print("k) Dados agrupados em 4 classes:")
print(table(classes_4))

# l) Agrupe os dados das temperaturas em 5 classes
classes_5 <- cut(temperaturas, breaks = 5, include.lowest = TRUE)
print("l) Dados agrupados em 5 classes:")
print(table(classes_5))
