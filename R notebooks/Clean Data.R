library(tidyverse)
data("starwars")
glimpse(starwars)
#Variable Type
class(starwars$gender)
unique(starwars$gender)
starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)
levels(starwars$gender)

starwars %>% 
  select(name,height,ends_with("color")) %>% 
  filter(hair_color %in% c("blond","brown") &
  height < 180 )

# datacleaning
mean(starwars$height, na.rm=TRUE)

starwars %>%
  select(name,gender,hair_color,height) %>% 
  filter(complete.cases(.))

starwars %>% 
  select(name,gender,hair_color,height)%>%
  filter(!complete.cases(.))

starwars %>% 
  select(name,gender,hair_color,height) %>% 
  filter(!complete.cases(.)) %>% 
  mutate(hair_color=replace_na(hair_color,"none"))

# Duplicates 
names <- c ( "peter","john","lucas","peter")
age <- c(40,30,35,40)
friends <- data.frame(names,age)
View(friends)
duplicated(friends)
friends[duplicated(friends),]

friends[!duplicated(friends),]
#Another way
friends %>% 
  distinct() %>% 
  View()

#recode variables 
starwars %>%
  select(name,gender) %>% 
  mutate(gender=recode(gender,"masculine"=1,"feminine"=2)) %>%
  View()