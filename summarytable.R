# Install dplyr package if not already installed
if(!require(dplyr)) {
  install.packages("dplyr")
}

# Load the dplyr package
library(dplyr)
# Create a sample data frame
data <- read.csv("dataset.csv")


# View the first few rows of the data frame
head(data)
# Group by track_genre and artists
grouped_data <- data %>%
  group_by(track_genre, artists)

# Summarize the grouped data to see the results
summary_data <- grouped_data %>%
  summarize(
    avg_popularity = mean(popularity, na.rm = TRUE),
    avg_duration = mean(duration_ms, na.rm = TRUE),
    avg_danceability = mean(danceability, na.rm = TRUE),
    avg_energy = mean(energy, na.rm = TRUE),
    avg_loudness = mean(loudness, na.rm = TRUE),
    avg_tempo = mean(tempo, na.rm = TRUE),
    track_count = n()
  )

# View the summarized data
print(summary_data)
