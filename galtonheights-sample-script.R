set.seed(0)
R <- sample_n(galton_heights, 25, replace = TRUE) %>%
  summarize(cor(father, son))