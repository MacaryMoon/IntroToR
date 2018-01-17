# Author: Macary
# Date: 10 January 2018
#Purpose: Script to create and analyse data frames

#Read the data file from disk
cats <- read.csv(file="data/feline-data.csv")

cats

#address a particular column with $
cats$weight
cats$coat

#add 2kg to each weight
cats$weight+2

#data types
typeof (cats$weight)
typeof (cats$coat)

class(cats)

#vectors
my_vector <-vector(length=3)
my_vector

my_vector <- vector(mode="character", length=3)
my_vector

#make a vector
combine_vector <- c(2,4,8)
combine_vector

#this is wrong because all elements in a vector need to be in the same data type
combine_vector <-c(2,4,"eight")

char_vector <-c("2" , "4" , "8")
num_vector <-as.numeric(char_vector)

#exercise
MK <-1:26
MK<-MK *2
names(MK)<-letters
MK

#Factors and levels
coats<-c("tabby", "tortoiseshell", "tortoiseshell","black","tabby")
coats

#structure
str(coats)

#look at a vector, and if there are repeating units, factor them into categories
categories <-factor(coats)
class(categories)

typeof(categories)

str(categories)

