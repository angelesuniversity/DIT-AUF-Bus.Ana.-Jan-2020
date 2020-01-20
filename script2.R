# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Create the input data frame.
#input.dat <- readingSkills[c(1:105),]
input.dat <- read.csv("suicidedeaths.csv")
str(input.dat)

# Give the chart file a name.
#png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  Suicides ~ Year + Age, 
  data = sd)

# Plot the tree.
plot(output.tree)

