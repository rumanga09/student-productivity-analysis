# Student Productivity Analysis

Behavioral data analysis of student productivity using **PostgreSQL** and **Metabase**.  
This project explores sleep patterns, digital distraction, and performance segmentation through SQL-based analysis and dashboard visualization.

---

## Overview

This project analyzes behavioral patterns influencing student productivity using a dataset of **20,000 records**.  

The objective is to identify key factors associated with high and low productivity levels, with a focus on:

- Sleep duration
- Phone usage
- Digital distraction
- Stress levels

---

##  Tools & Technologies

- **PostgreSQL** — Data storage and querying  
- **Metabase** — Dashboard visualization  
- **SQL** — Segmentation, aggregation, and analysis   

---

## Key Questions

1. Does sleep duration correlate with productivity?
2. How does phone usage impact performance?
3. What differentiates high productivity individuals from low productivity individuals?
4. How significant is total digital distraction across productivity segments?

---

## Methodology

Productivity was segmented into three groups:

- **Low**: < 40  
- **Medium**: 40–70  
- **High**: > 70  

Total digital distraction was calculated as:

```sql
phone_usage_hours +
social_media_hours +
youtube_hours +
gaming_hours
```
Aggregations and comparisons were performed using SQL queries in PostgreSQL and visualized through Metabase dashboards.

---

## Key Findings
- Productivity increases consistently with longer sleep duration.

- Productivity decreases as phone usage increases.

- High productivity individuals spend approximately 3 fewer hours per day on total digital distractions compared to low productivity individuals.

- Lower stress levels are associated with higher productivity.

---

## Dashboard Preview
<img width="806" height="837" alt="Screenshot From 2026-02-25 04-52-24" src="https://github.com/user-attachments/assets/63ebb836-936b-4dad-bf31-d598f21f4998" />

---

## Future Improvements

- Add regression modeling

- Perform correlation matrix analysis

- Implement productivity classification model

- Deploy public dashboard instance
