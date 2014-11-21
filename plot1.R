 ####Plot 1


#  Read Data 
NEI <- readRDS("./exdata-data-NEI_data/summarySCC_PM25.rds")

#  Create Plot-Data
pd <- aggregate(NEI[c("Emissions")], list(year = NEI$year), sum)

#  Create Plot 1

png('plot1.png', width=480, height=480)
plot(pd$year, pd$Emissions, type = "l", 
     main = "Total Emissions from PM2.5 in the US",
     xlab = "Year", ylab = "Emissions")


dev.off()
