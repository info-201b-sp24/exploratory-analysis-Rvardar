library(readr) 
library(dplyr) 
library(ggplot2) 

url <- "https://raw.githubusercontent.com/info-201b-sp24/exploratory-analysis-Rvardar/main/dataset.csv"
dataset <- read.csv(url)

genre_time_signature <- dataset %>%
  group_by(genre, time_signature) %>%
  summarise(count = n()) %>%
  mutate(proportion = count / sum(count))

stacked_bar_chart <- ggplot(genre_time_signature, aes(x = genre, y = proportion, fill = factor(time_signature))) +
  geom_bar(stat = "identity") +
  labs(title = "Proportion of Time Signatures within Genres",
       x = "Genre",
       y = "Proportion",
       fill = "Time Signature") +
  scale_fill_manual(values = c("1" = "blue", "3" = "red", "4" = "green", "5" = "orange")) + # Assign colors to time signatures
  theme(legend.position = "top") # Move legend to the top for better visibility


print(stacked_bar_chart)

