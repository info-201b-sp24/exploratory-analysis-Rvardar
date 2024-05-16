library(readr)
library(ggplot2) 

dataset <- read.csv("dataset.csv")

ggplot(dataset, aes(x = danceability, y = energy)) +
  geom_point() +
  labs(title = "Danceability vs. Energy",
       x = "Danceability", y = "Energy")
print (ggplot)
