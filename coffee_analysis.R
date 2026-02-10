#############################################
# Coffee Data Analysis
# Author: Aditi Vannela
# Date: 2025-11-16
# Description: Analyze coffee purchase data
#############################################

# -----------------------------
# Load libraries
# -----------------------------
library(tidyverse)  # includes dplyr, ggplot2, readr, etc.

# -----------------------------
# 1. Import and Read the Data
# -----------------------------
# Reading dataset using read_csv() from readr and viewing first few rows.
coffee <- read_csv("/Users/aditivannela/Desktop/coffe.csv")
head(coffee)

# -----------------------------
# 2. Summary Statistics
# -----------------------------
# Basic summary of dataset and number of rows (purchases)
summary(coffee)
nrow(coffee)

# Count how many times each type of coffee was purchased
table(coffee$coffee_name)

# -----------------------------
# 3. Data Manipulation
# -----------------------------

## 3A. Filter Latte
# Keep only Latte purchases
latte_data <- coffee %>%
  filter(coffee_name == "Latte")

head(latte_data)
summary(latte_data$money)

## 3B. Group by Weekday
# Compute average money spent per weekday
weekday_summary <- coffee %>%
  group_by(Weekday) %>%
  summarise(avg_money = mean(money))

summary(weekday_summary)
weekday_summary

# -----------------------------
# 4. Plots
# -----------------------------

## Plot 1: Scatterplot of money spent by hour
ggplot(coffee, aes(x = hour_of_day, y = money)) +
  geom_point() +
  labs(title="Money Spent by Hour of Day", x="Hour of Day", y="Money")

## Plot 2: Bar plot of coffee type counts
ggplot(coffee, aes(x = coffee_name)) +
  geom_bar() +
  labs(title="Count of Coffee Types", x="Coffee Type", y="Count")

## Plot 3: Boxplot of money spent by coffee type
ggplot(coffee, aes(x = coffee_name, y = money)) +
  geom_boxplot() +
  labs(title="Money Spent for Each Coffee Type", x="Coffee Type", y="Money")
