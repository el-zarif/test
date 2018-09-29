red <- read.csv("reddit.csv")

head(red)


library(ggplot2)

levels(red$age.range)

red$age.range <- ordered(red$age.range, levels=c( "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above", "Under 18"))

qplot(data = red, x = age.range)
ggsave(filename = "myPlot.jpg", plot = last_plot())