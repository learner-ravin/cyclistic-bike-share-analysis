# 🚴‍♀️ Cyclistic Bike-Share Analysis
### SQL & Power BI Data Analytics Portfolio Project

---

## Project Overview

In this project, I performed an end-to-end data analysis using a real bike-share dataset to understand how **annual members** and **casual riders** uses bikes differently.

The goal of this project was to go through the full analytics workflow — starting from raw data exploration, cleaning and transforming the dataset using SQL, and finally building a Power BI dashboard to communicate insights.

This project shows how I approach a real-world data analysis problem: understand the data,clean and prepare it properly, analyze patterns, and translate findings into business insights.

---

## Project Objective

The main objective of this project is:

**To analyze behavioral differences between annual members and casual riders and generate insights that can help to convert the causal riders into annual members.**

---

## Dataset

For this project, I used New Jersey Citi Bike trip data from the Citi Bike Open Data Website 'https://citibikenyc.com/system-data'.  
The dataset covers 12 months of trip data that contains contains ride-level information describing when, where, and how riders used the bike-share system.
After combining all monthly files, the final dataset contained nearly one million ride records, which allowed for meaningful behavioral analysis across different time periods and seasons.

**Source:** Citi Bike Open Data  
https://s3.amazonaws.com/tripdata/index.html

### Dataset Columns

- ride_id  
- rideable_type  
- started_at  
- ended_at  
- start_station_name  
- start_station_id  
- end_station_name  
- end_station_id  
- start_lat  
- start_lng  
- end_lat  
- end_lng  
- member_casual  

---

## Tools Used

- **MySQL** : I used MySQL for:
  - Data exploration
  - Data cleaning
  - Feature engineering
  - Descriptive & Behavioral analysis

- **Power BI** :  I used Power BI to: 
  - Build an interactive dashboard
  - Create visual comparisons between rider types  
  - Communicate key insights in a business-friendly format  

---


## Project Workflow

1. **Data Exploration**     `01_data_introduction   .sql`
   - Validated structure and schema consistency  
   - Performed initial quality checks  

2. **Data Combination**     `02_data_combination.sql`
   - Merged 12 monthly datasets into a master table  

3. **Data Cleaning**        `03_data_cleaning.sql`
   - Standardized datetime formats     
   - Removed invalid and null records  

4. **Feature Engineering**    `04_feature_engineering.sql`
   - Ride duration (minutes)  
   - Weekday and month  
   - Start hour  

5. **Descriptive Analysis**     `05_descriptive_analysis.sql`
   - Rider distribution comparison  
   - Average ride duration analysis  
   - Hourly and weekly usage trends  
   - Seasonal patterns  
   - Bike type preferences  

6. **Power BI Dashboard**
    - Interactive dashboard to visualize rider behavior.

---

## Power BI Dashboard

**Final Dashboard highlights:**
  - Total rides 
  - Rider distribution comparison  
  - Average ride duration comparison
  - Hourly and Weekly riding trends
  - Seasonal usage trends

---

## Key Insights

- Members account for about **78% of total rides**.
- Casual riders take **longer rides on average**, indicating leisure usage.
- Member rides peak during **commute hours (8 AM and 5–6 PM)**.
- Casual riders ride more during afternoons and weekends.
- Ride activity increases in warmer months and drops during winter.
- Both rider types take longer rides on weekends.

---

## Recommendations

- Run **weekend membership promotion campaigns** targeting casual riders.
- Introduce commuter-focused incentives to convert leisure riders into regular users.

