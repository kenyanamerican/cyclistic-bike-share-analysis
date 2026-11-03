# Cyclistic Bike-Share Analysis

## Project Overview

This project is part of the Google Data Analytics Professional Certificate. The objective was to analyze historical bike-share data to understand how casual riders and annual members use Cyclistic bikes differently.

The findings were used to develop marketing recommendations aimed at converting casual riders into annual members.

## Tools Used

- **Google BigQuery:** Data storage and querying
- **SQL:** Data cleaning, transformation, and analysis
- **Google Sheets:** Pivot tables and data visualizations
- **Google Docs:** Case study documentation

## Dataset

- **Source:** Divvy historical bike-share data
- **Period:** October 2025 – September 2026
- **Original records:** 6,171,785
- **Cleaned records:** 6,007,154

The dataset was cleaned by removing duplicate ride IDs, filtering invalid ride durations, and restricting records to the selected analysis period.

## Key Findings

1. **Ridership:** Annual members accounted for 64.9% of rides, while casual riders accounted for 35.1%.
2. **Ride Duration:** Casual riders averaged 18.16 minutes per trip, compared with 12.17 minutes for annual members.
3. **Weekly Patterns:** Casual ridership peaked on Saturdays, while members demonstrated stronger weekday activity.
4. **Seasonal Trends:** Casual ridership peaked in July 2026, while member ridership peaked in August 2026.
5. **Hourly Patterns:** Members showed pronounced morning and evening peaks, suggesting routine transportation usage.

## Business Recommendations

1. Launch seasonal membership campaigns targeting periods of increased casual ridership.
2. Promote annual membership benefits to the weekend-rider segment.
3. Highlight the convenience of annual memberships for everyday transportation.

## Repository Contents

- `data_cleaning.sql` — SQL used to clean and prepare the dataset.
- `analysis.sql` — SQL queries used to analyze ridership patterns.
- Cyclistic Case Study PDF — Full report containing methodology, visualizations, findings, and recommendations.

## Limitations

The dataset does not identify individual customer behavior or trip purposes. Therefore, recommendations are based on aggregate riding patterns rather than confirmed customer motivations.

## Author

Brian Ondiegi
