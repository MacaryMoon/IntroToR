# Loops and IF statements in R
# Macary Mu
# 24 January 2018

# IF statements are used to take different routes
#through a program depending on values of variables

x<-8
if (x>= 10) {
  print("x is greater than 10")
}else{
  print("x is less than 10")
}

#To check for multiple conditions, use else if clauses.
x<- 4
if (x>=10){
  print("x is greater than or equal to 10")
}else if (x>5){
  print ("x is greater than 5, less than 10")
}else{
  print("x is less than or equal to 5")
}

#Challenge 1
gapdata <- read.csv(file ="data/gapminder-FiveYearData.csv")
gapminder[(gapminder$year == 2002),]

#count the number of rows in the year column where year is 2002
rows2002_number <- nrow (gapminder[(gapminder$year == 2002),])

if(nrow(gapminder[(gapminder$year == 2002),]) >= 1){
  print("Record(s) for the year 2002 found.")
}else{
  print("Records for 2002 are not found")
}

if(any(gapminder$year == 2002)){
  print("Record(s) for the year 2002 found.")
}

#Loops
#FOR loops repeat a fixed number of times
for (i in 1:10) {
  print(i)
}

#Nested loops- loops inside loops
for(i in 1:5){ 
   for(j in c('a','b','c','d','e')){ 
     print(paste(i,j))
   }
}

#WHILE loops repeat until some condition is met
z<- 1

while (z>0.1){ 
  z<- runif(1)
  print(z)
}
  
#Challenge 2
vec1<- c('a','b','c')
vec2<- c('a','b','c')
vec3<- c('c','a','d','b')

#are they the same? (same means same elements in the same order)
all(vec1 ==vec2)

#see whether one vector is contained within another
all(vec1 %in% vec3)
all(vec3 %in% vec1)

#Challenge 3
#Loop thru gapminder by continent, print out whether life exp is > or <50 years

#Get the data
gapdata<- read.csv(file = 'data/gapminder-FiveYearData.csv')
unique(gapdata$continent)

#How?
#1. Loop ove rthe unique continent names
#2. For each 'continent' create a temp variable that holds the liife expectancy
#3. Print the output

for (contname in unique(gapdata$continent)){
  tmplifeexp <-mean(subset(gapdata, continent == contname)$lifeExp)
  cat("Average life expectancy for", contname, "is", tmplifeexp,"\n")
  rm(tmplifeexp)
}




