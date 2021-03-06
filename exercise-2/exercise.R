# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
points.scored <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
points.allowed <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
scoreboard <- data.frame(points.scored, points.allowed)

# Create a new column "diff" that is the difference in points
# score.diff <- points.scored - points.allowed
# scoreboard <- data.frame(scoreboard, score.diff)
scoreboard$diff <- scoreboard$points.scored - scoreboard$points.allowed

# Create a new column "won" which is TRUE if the Seahawks wom
# outcome <- score.diff > 0
# scoreboard <- data.frame(scoreboard, outcome)
scoreboard$won <- scoreboard$diff > 0

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
# scoreboard <- data.frame(scoreboard, opponents)
rownames(scoreboard) <- opponents

