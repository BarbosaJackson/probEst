data <- subset(read.csv("dados_pandemia_alagoas.csv"), municipio_residencia == "Arapiraca" & idade > 0)
t <- table(data$idade)
hist(data$idade, col=rainbow(length(t)), xlab="idade", ylab="frequencia", main="casos de covid por idade", breaks=25, xlim=c(1,100))
write.csv(t, "idade_covid.csv")

pie(t,labels = piepercent, main="situação atual (porcentagem dos casos avaliados)", col = rainbow(length(t)), radius = 0.75, cex=.6)
legend("topright", labels, cex = 0.6, fill = rainbow(length(t)))