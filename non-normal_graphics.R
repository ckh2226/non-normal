library(tidyverse)

tabulated_data <- read.csv("~/Documents/GitHub/non-normal/data/tabulated_data(with error rates).csv")

# Plotting type 1 error rate for L1 when N = 250
l1_n1 <- tabulated_data |>
  filter(param1 == "L_1", str_detect(condition, "N1"))

ggplot(data = l1_n1, aes(x = condition, y = type1_error_rate)) +  aes(fill = skew) +
  geom_col(color = "black", position = position_dodge2(width = 0.5, padding = 0.15)) + theme_bw() + scale_fill_brewer(palette = "Set2") +
  scale_x_discrete(name = "Condition", labels = c("G1, B1", "G1, B2", "G2, B1", "G2, B2", "G3, B1", "G3, B2")) +
  guides(fill=guide_legend(title="Skew")) + labs(title = "Type I Error Rates for L1 for N = 250", 
                                                 y = "Type I Error Rate" )


# Plotting type 1 error rate for L1 when N = 500
l1_n2 <- tabulated_data |>
  filter(param1 == "L_1", str_detect(condition, "N2"))

ggplot(data = l1_n2, aes(x = condition, y = type1_error_rate)) +  aes(fill = skew) +
  geom_col(color = "black", position = position_dodge2(width = 0.5, padding = 0.15)) + theme_bw() + scale_fill_brewer(palette = "Set2") +
  scale_x_discrete(name = "Condition", labels = c("G1, B1", "G1, B2", "G2, B1", "G2, B2", "G3, B1", "G3, B2")) +
  guides(fill=guide_legend(title="Skew")) + labs(title = "Type I Error Rates for L1 for N = 500", 
                                                 y = "Type I Error Rate" )

# Plotting type 1 error rate for L1 when N = 1000
l1_n3 <- tabulated_data |>
  filter(param1 == "L_1", str_detect(condition, "N3"))

ggplot(data = l1_n3, aes(x = condition, y = type1_error_rate)) +  aes(fill = skew) +
  geom_col(color = "black", position = position_dodge2(width = 0.5, padding = 0.15)) + theme_bw() + scale_fill_brewer(palette = "Set2") +
  scale_x_discrete(name = "Condition", labels = c("G1, B1", "G1, B2", "G2, B1", "G2, B2", "G3, B1", "G3, B2")) +
  guides(fill=guide_legend(title="Skew")) + labs(title = "Type I Error Rates for L1 for N = 1000", 
                                                 y = "Type I Error Rate" )
