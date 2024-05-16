library(readr)
library(ggplot2) 

dataset <- read.csv("dataset.csv")

bar_plot <- ggplot(dataset, aes(x = reorder(artist_name, popularity), y = popularity)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Popularity of Artists",
       x = "Artist Name",
       y = "Popularity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(bar_plot)
