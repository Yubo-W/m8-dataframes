# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
my.breakfast <- c("fried rice", "bacon")

# Create a vector of everything you ate for lunch
my.lunch <- c("sausage", "eggs", "onions")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast=my.breakfast, lunch=my.lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner
meals$dinner <- c("Broccoli", "Stir fry")

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals[["dinner"]]

### Bonus ### 
# Create a list that has the number of items you ate for each meal
number <- list(lengths(meals))

# Write a function that adds pizza to every meal
add <- function(ls) {
  for (index in 1:length(ls)) {
    index <- c(ls[index], "pizza")
  }
  return(ls)
}

# Add pizza to every meal!
meals <- add(meals)