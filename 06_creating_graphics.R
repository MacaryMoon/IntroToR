#Creating Graphics
#Author: Macary Mu
#Date: 24 January 2018

#To use ggplot2:
install.packages("ggplot2")
#To use it
library("ggplot2")
gapdata <- read.csv(file ='data/gapminder-FiveYearData.csv')
ggplot(data = gapdata, aes(x= gdpPercap, y = lifeExp)) + geom_point()
ggplot(data = gapdata, aes(x= year, y = lifeExp)) + geom_point()

#Challenge 2
ggplot(data=gapdata, aes(x= year, y= lifeExp, color = continent)) + geom_point()

#Layers
ggplot(data=gapdata, aes(x= year, y= lifeExp, by = country)) + 
  geom_line(aes(color=continent))+ geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method="lm")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method="lm", size=1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color= continent)) +
  geom_point(shape=12, size = 1) + scale_x_log10() + geom_smooth(method="lm", size=1.5)

