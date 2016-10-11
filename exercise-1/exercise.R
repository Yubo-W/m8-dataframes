# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
my.breakfast <- list("fried rice", "bacon")

# Create a vector of everything you ate for lunch
my.lunch <- list("sausage", "eggs", "onions")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast.meal=my.breakfast, lunch.meal=my.lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner
meals$dinner.meal <- c("Broccoli", "Stir fry")

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals[["dinner.meal"]]

### Bonus ### 
# Create a list that has the number of items you ate for each meal


# Write a function that adds pizza to every meal


# Add pizza to every meal!