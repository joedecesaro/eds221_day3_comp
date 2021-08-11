# Practicing conditionals and loops ----
# -package required are below
library(tidyverse)
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



