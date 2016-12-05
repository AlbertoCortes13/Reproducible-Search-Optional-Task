library(ggplot2)

##Read file
data <- read.csv("payments.csv")
##Filter NY data
NewYork <- data[grep("NY", data$Provider.State, ignore.case = TRUE),]


pdf(file = "plot1.pdf")
##Plotting the information
ggplot(NewYork, aes(log(Average.Total.Payments), log(Average.Covered.Charges))) + geom_point() + stat_smooth() + xlab("Average Total Payments") + ylab("Average Covered Charges") + ggtitle("Relationship between Average Total Payments & Average Covered Charges")
dev.off()
