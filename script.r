data <- subset(read.csv("dados_pademia_alagoas.csv"), municipio_residencia == "Arapiraca")
labels <- unique(data$situacao_atual)
t <- table(data$situacao_atual)
piepercent <- round(100*t/sum(t), 1)
par(mar=c(2,0,2,2))
pie(t,labels = piepercent, main="situação atual (porcentagem dos casos avaliados)", col = rainbow(length(t)), radius = 0.75, cex=.6)
legend("topright", labels, cex = 0.6, fill = rainbow(length(t)))