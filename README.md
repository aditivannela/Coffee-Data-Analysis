# Coffee Data Analysis

This project analyzes coffee purchase data to examine trends in spending across different types of coffee and time of day.

## Tools
- R
- tidyverse (dplyr, ggplot2, readr)

## What it does
- Reads coffee purchase data
- Computes summary statistics
- Filters Latte purchases and summarizes by weekday
- Generates scatter, bar, and boxplots

## Output
Plots are generated in RStudio. The script can also be modified to save them
as PNG files.

## Data
The `coffee.csv` dataset is included. Each row represents a single purchase 
and contains columns:
- `coffee_name`: type of coffee purchased
- `money`: amount spent
- `hour_of_day`: hour of purchase
- `Weekday`: day of the week
