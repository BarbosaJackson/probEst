data <- subset(read.csv("dados_pandemia_alagoas.csv"), municipio_residencia == "Arapiraca" & idade > 0)
boxplot(idade ~ sexo, data = data, col = c("blue", "red"))