library(ggplot2)

##Read file
data <- read.csv("payments.csv")

pdf(file = "plot2.pdf", 15, 7)
qplot(Average.Covered.Charges, Average.Total.Payments, data = data, geom = c("point", "smooth"), facets = ~Provider.State, colour = DRG.Definition, xlab = "Average Covered Charges", ylab = "Average Total Payments", main = "Relationship between Average Covered Charges & Average Total Payments per Medical Condition") + theme(legend.position = "bottom")
dev.off()
