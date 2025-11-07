# Extended Data Wrangling 
library(tidyverse)
msleep %>% 
  filter(order=="Carnivora" | order =="Primates" & sleep_total > 8) %>% 
  select(name,order,sleep_total) %>% 
  arrange(-sleep_total)

# Change observations (mutate)
msleep %>% 
  select(name,bodywt) %>% 
  mutate(bodywt = 1000*bodywt) %>% 
  View

msleep %>% 
  select(name,vore,brainwt) %>% 
  mutate(brainwt = 1000*brainwt) %>% 
  rename(brainwt_grams = brainwt) %>% 
    drop_na()

msleep_1 <- msleep %>% 
  select(name,vore,brainwt) %>% 
  mutate(Brain_size = if_else(brainwt > 0.01,"Large","Small")) %>% 
  drop_na()

 msleep_2 <- msleep %>% 
  select(name,vore,awake,bodywt) %>% 
  mutate(body_size = if_else(bodywt > 10 ,"Big","Small")) %>% 
  arrange(-awake) %>% 
  drop_na()
 
 # Recoding observations
 msleep_1 %>% 
   mutate(Brain_size = recode(Brain_size,"Large"=2,"Small"=1))
 
 msleep_2 %>% 
   mutate(body_size = recode(body_size,"Small"=1,"Big" = 2))
 
 # Reshape data from wide to long or long to wide
 library(gapminder)
 View(gapminder)
 data <- select(gapminder,country,year,lifeExp)
 
 # Wide Data is one which has been split into various classification(years)
 wide_data <- data %>% 
   pivot_wider(names_from = "year",values_from = "lifeExp") %>% 
   View()
 
 
 
 