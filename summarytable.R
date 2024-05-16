# Install dplyr package if not already installed
if(!require(dplyr)) {
  install.packages("dplyr")
}

# Load the dplyr package
library(dplyr)
# Create a sample data frame
data <- read.csv("dataset.csv")


summary_data <- data %>%
  group_by(track_genre) %>%
  summarize(
    avg_popularity = round(mean(popularity, na.rm = TRUE), 0),
    avg_duration_min = round (mean(duration_ms, na.rm = TRUE) / 60000, 0),
    avg_danceability = round(mean(danceability, na.rm = TRUE), 0),
    avg_energy = round(mean(energy, na.rm = TRUE), 0),
    avg_loudness = round(mean(loudness, na.rm = TRUE), 0),
    avg_tempo = round(mean(tempo, na.rm = TRUE), 0),
    track_count = n()
  ) %>%
  arrange(desc(avg_popularity))
print(summary_data)