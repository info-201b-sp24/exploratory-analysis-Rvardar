
library(readr) 
library(ggplot2) 
dataset <- read.csv("https://github.com/info-201b-sp24/exploratory-analysis-Rvardar/blob/main/dataset.csv")

scatter_plot <- ggplot(dataset, aes(x = danceability, y = energy)) +
  geom_point() +
  labs(title = "Scatter Plot of Danceability vs. Energy",
       x = "Danceability",
       y = "Energy")

print(scatter_plot)