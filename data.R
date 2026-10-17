library(tidyverse)

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.025, fill = "steelblue", color = "white") +
  scale_x_continuous(breaks = 1:5) +
  scale_y_continuous(breaks = seq(0, 6000, by = 1000)) +
  coord_cartesian(xlim = c(0, 5.1), ylim = c(0, 6000), expand = FALSE) +
  labs(
    title = "Histogram of Carat Among 50,000 Diamonds",
    subtitle = "The ggplot2 diamonds dataset contains 53,940 diamonds",
    x = "Carat",
    y = "Number of diamonds",
    caption = "diamonds dataset from ggplot2 package"
  ) +
  theme_minimal(base_size = 14)

ggsave(plot = hist_p, file = "diamonds.png")
