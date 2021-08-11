# Practicing conditionals and loops ----
# -package required are below
library(tidyverse)
library(tidyverse)
library(palmerpenguins)

# Refresh out memory on boolean operators ----

pinyon_pine <- 14
lodgepole_pine <- 46

pinyon_pine == 10

lodgepole_pine > pinyon_pine

pinyon_pine <= lodgepole_pine

pinyon_pine != 25

# Create some basic if statements ----
burrito <- 2.4

if (burrito > 2) {
  print("i love burritos")
}

if (burrito == 2.4) {
  print("burritos are great")
}

if (burrito == 1) {
  print("burritos are bad")
}

# gray whale, blue whale, whale ----
sbc_observations <- c("blue whale", "gray whale", "whale", "gray wale", "dolphin", "sea lion", "blue whale")

str_detect(sbc_observations, pattern = "whale")

# An example of string detect within a conditional statement ----
phrase <- "i really love tacos"

if (str_detect(phrase, "data")) {
  print("cool me too")
}

# if-else statements----
pika <- 89

if (pika > 60) {
  print("large pika")
} else{
  print("small pika")
}

# Create a string 'food <- "I love enchiladas!"' ----
# write an if-else statement that prints "yay burritos" if the string "burritos" is detected in 'food', or print "what about burritos?" otherwise
food <- "I love veggie burritos and enchiladas!"

if (str_detect(food, "burritos")) {
  print("yay burritos!")
} else {
  print("what about burritos?")
}
# string patterns do not need to be full words

# Create a new stored object named 'marmot' with a value of 2.8. Write a if-else-if-else statement that returns: "small marmot" if marmot is less than 0.5, "medium marmot" if marmot is >= 0.5 AND < 3, and "large marmot" if marmot is >= 3 ----
marmot <- 2.8

if (marmot < 0.5) {
  print("Large marmot")
} else if(marmot >= 0.5 & marmot < 3) {
  print("Medium marmot")
} else if(marmot >= 3) {
  print("Large marmot")
}

# Switch statements----
species <- "lion"

switch(species,
       "cat" = print("meow"), 
       "lion" = print("ROAR"), 
       "owl" = print("screech"), 
       "fox" = print("obnoxious"))

# Using the summary function----
penguin_summary <- penguins %>% 
  group_by(species, island) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))

# Practicing data wrangling----
penguins_subset <- penguins %>% 
  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)


# For loops intro practice----
animal <- c("cats", "dog", "dog", "cat", "zebra", "elephant")

for (i in seq_along(animal)) {
  if (animal[i] == "dog"){
    print("I love dogs!!")
  } else{
    print("this is a different animal:(")
  }
}

# Example where you will store the output of a for loop. This is what you will usually want to do.----
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
age_human <- c(3, 8, 4, 6, 12, 18)

animal_ages <- vector(mode = "numeric", length = length(species))

for (i in seq_along(species)) {
  if (species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }
  animal_ages[i] <- animal_age
}

# Calculate the mean value of each column in a data.frame
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars[i] <- mean_val
}

mean_mtcars

# Same thing as above but with apply()
apply(X = mtcars, 2, mean, na.rm = TRUE)

# Same thing as above with the map()

map_df(.x = mtcars, .f = mean)


