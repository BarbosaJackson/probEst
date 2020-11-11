data <- subset(read.csv("dados_pandemia_alagoas.csv"), municipio_residencia == "Arapiraca" & idade > 0)
situacao_atual <- table(data$situacao_atual)
sexo <- table(data$sexo)
par(mar=c(2,0,2,2))

barplot(sexo, main="infectados por gênero", col=rainbow(length(sexo)))

barplot(situacao_atual, main="situação atual (porcentagem dos casos avaliados)", col=rainbow(length(situacao_atual)), names="")
legend("topleft", names(situacao_atual), cex=0.6, fill=rainbow(length(situacao_atual)))