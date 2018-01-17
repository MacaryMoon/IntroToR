#Exploring data frames

#Load in the data
cats <- read.csv(file='data/feline-data.csv')

#Add a col to an existing dataframe
age <- c(2,3,5)

#Bind the cats dataframe to the new age vector
cbind(cats, age)

#What if the new column was longer the df?
age <- c(2,3,5,9)
cbind(cats, age)
#different dimentionality, doesn't work

age<-c(2,3,5)
cats <- cbind(cats,age)

#Add a new row
newRow <- list("Tortoishell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

#Factors
levels(cats$coat)
#Add another factor
levels(cats$coat) <- c(levels(cats$coat), 'tortoishell')
#Add the new row again
newRow <- list("tortoishell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

#Challenge 1
human.age <- cats$age *7
human.age <- factor(human.age)
as.numeric(human.age)

#Remove a row, in viewing
cats[-4,]
cats[-5,]

#The row to remove has a NA value
na.omit(cats)
#Overwrite the old cats dataframe with the new values
cats <- na.omit(cats)

#Fix the rowname indexing
cats
rownames(cats) <- NULL
cats

#Challenge 2
df <- data.frame(firstname = c('Macary'),
                 lastname = c('Mu'),
                 luckynumber= c('2'),
                 stringsAsFactors = FALSE)
df <- rbind(df, list('Demi','Xing','8'))
df <- cbind(df, coffeetime = c(TRUE,TRUE))

#Gapminder exercise
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

str(gapminder)
typeof(gapminder$year)
typeof(gapminder$country)
str(gapminder$country)
length(gapminder)
typeof(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
head(gapminder)
tail(gapminder)

#A sample
gapminder[sample(nrow(gapminder), 5),]
tail(gapminder, n=15)
gapminder[120:125,]

#challenge 4
source(file="scripts/load-gapminder.R")
