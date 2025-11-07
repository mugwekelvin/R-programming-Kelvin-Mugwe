#Week 3 Learning R programming

  # A dataframe is a collection of coloumns
  # When working with data frames name your coloumns
  # Data stored in data frames can be in any data type
  #Each coloumn should ld contain the same number of items

#TIBBLES
  #Never change the data types of the inputs
  #Never change the names of your variables
  #Never create row names
  #Make printing easier

#Data frames and tibbles are the building blocks of data anlyisis in R
#Tibbles is efficient while working with large sets of data

#Tidy data standards
  #Variables are organized into coloumns
  #observations are organized into rows
  #Each cell must have its own value
library(ggplot2)
data(diamonds)
View(diamonds)
# To view the coloumn names we use:
colnames(diamonds)
# To view the structure of our data frames we use:
str(diamonds)
#To add a coloumn in our data frame we use :
library(tidyverse)
mutate(diamonds,carat_2=carat*10)
#Alternatively you can view data using glimpse
glimpse(diamonds)
#Creating tibbles in R
as_tibble(diamonds)
  #tibbles returns the first ten entries

#Data importation in R
data("mtcars")
View(mtcars)
filtered_gear <- filter(mtcars,gear==4)
view(filtered_gear)
head(mtcars)
# Readr Package
# Readr is an important software to read rectangular data.Rectangular data is
#one that fits into rows and coloumns

#File Types that store rectangular data
  #csv
  #.tsv stores a data table in which coloumns are seperated by tabs
  #.fwf it is a file that has a specific format that allows for saving of textual
  #.log is a computer generated file that records events from OS and other prograams
 id <- c(1:5)
 name <- c('Kelvin Mugwe','Shaddai Ndale','Victoria Zoe','Susan Nemacha','Brian Akinfemwa')
 age <- c(18:23)
 job <- c('Designer','Doctor','Engineer','Chef','Lawyer')

datab <- data.frame(id, name, job)
 
View(datab)
#Separate coloumns
 separate(datab,name,into=c('First_Name','Last_Name'),sep=' ')
# TO store data
 datab2 <- separate(datab,name,into=c('First_Name','Last_Name'),sep=' ')
print(datab2)
#Uniting Coloumns
unite(datab2,'name',First_Name,Last_Name,sep=' ')

#Mutate Function
library(palmerpenguins)
data(penguins)
View(penguins)

#To lengthen your data  pivot_longer() there will be more rows few coloumns
# pivot_wider() function increases the coloumns and reduces the rows
#Packages to be installed Tmisc,datasauRus,Sim Design Pacakge


