data <- subset(read.csv("dados_pandemia_alagoas.csv"), municipio_residencia == "Arapiraca")

labels <- unique(data$situacao_atual)

t <- table(data$situacao_atual)
print(t[labels[1]])
piepercent <- round(100*t/sum(t), 1)

par(mar=c(2,0,2,2))
pie(t,labels = piepercent, main="situação atual (porcentagem dos casos avaliados)", col = rainbow(length(t)), radius = 0.75, cex=.6)
legend("topright", labels, cex = 0.6, fill = rainbow(length(t)))
barplot(t, main="situação atual (porcentagem dos casos avaliados)", col=rainbow(length(t)))
legend("topleft", labels, cex=0.6, fill=(rainbow(length(t))))