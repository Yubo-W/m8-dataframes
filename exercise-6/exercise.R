# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
setwd('~/Desktop/Info201/m8-dataframes/exercise-6') 
female.names <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- female.names$year

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- as.vector(female.names$name)

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[year == 2013]

# What was the most popular female name in 2013?
popular.name.2013 <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  temp.name <- name[year == my.year]
  temp.prop <- prop[year == my.year]
  temp.popular <- temp.name[temp.prop == max(temp.prop)]
  print(paste("The most popular name of", my.year, "is", temp.popular))
}

# What was the most popular female name in 1994?
MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(this.name, this.year) {
  temp.names <- name[year == this.year]
  temp.prop <- prop[year == this.year]
  desired.prop <- temp.prop[match(c(this.name), this.name)]
  print(paste("The name", this.name, "had a popularity of", desired.prop, "in the year", this.year))
}

# How popular was the name 'Laura' in 1995
HowPopular('Laura', 1995)
match()









