data <- subset(read.csv("dados_pandemia_alagoas.csv"), municipio_residencia == "Arapiraca" & idade > 0)
situacao_atual <- table(data$situacao_atual)
sexo <- table(data$sexo)
labels <- unique(data$situacao_atual)
par(mar=c(2,0,2,2))

barplot(sexo, main="infectados por gênero", col=rainbow(length(sexo)))

barplot(situacao_atual, main="situação atual (porcentagem dos casos avaliados)", col=rainbow(length(t)))
legend("topleft", labels, cex=0.6, fill=(rainbow(length(t))))