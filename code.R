# putting the data
happiness <- read.csv("2019.csv")

# insecting it
nrow(happiness)
mean_score <- mean(happiness$Score)

# GDP vs. Happiness (Scatter Plot)
plot(happiness$GDP.per.capita, happiness$Score, 
     main="GDP: Wealth vs. Happiness", 
     xlab="GDP per Capita", ylab="Happiness Score", 
     col="blue", pch=19)

#life expectancy by tier 
happiness$Tier <- "Bottom"
happiness$Tier[happiness$Overall.rank <= 104] <- "Middle"
happiness$Tier[happiness$Overall.rank <= 52] <- "Top"

# seeing the gap in health
boxplot(Healthy.life.expectancy ~ Tier, data=happiness, 
        main="The Golden Years Gap", 
        col=c("red", "yellow", "green"), 
        ylab="Healthy Life Expectancy Score")

# using tapply to get the exact mean
tapply(happiness$Healthy.life.expectancy, happiness$Tier, mean)


# showing barely any correlation between generosity and happiness
plot(happiness$Generosity, happiness$Score, 
     main="The Generosity Engima", 
     xlab="Generosity Score", ylab="Happiness Score", 
     col="purple", pch=17)

#Categorical Table
table(happiness$Tier)

# (Second Categorical Column)
avg_gdp <- mean(happiness$GDP.per.capita)
happiness$Wealth_Status <- "Developing"
happiness$Wealth_Status[happiness$GDP.per.capita > avg_gdp] <- "Wealthy"

# mosaic plot to see if the wealthy are happier
mosaicplot(table(happiness$Wealth_Status, happiness$Tier), 
           main="Wealth Status vs Happiness Tier", color=TRUE)