library(tidyverse) #load tidyverse for commands i'm used to
library(dslabs) #load dslabs for similar reasons
install.packages("Lahman") #install the Lahman package to access the library
library(Lahman) #load he Lahman library, with Teams data.frame
ds_theme_set()
?Teams #call Help on Teams object for information

# compute the LM model
lm_model <- Teams %>% 
  filter(yearID %in% 1961:2001) %>%
  mutate(HR_per_game = HR / G, R_per_game = R / G, BB_per_game = BB / G) %>%
  lm(R_per_game ~ BB_per_game + HR_per_game, data = .)

# print the lm_model object
lm_model