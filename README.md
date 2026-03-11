# Student Productivity Analysis

Behavioral data analysis of student productivity using **PostgreSQL**, **Metabase**, **Python**, and **Scikit-learn**.  
This project explores sleep patterns, digital distraction, and performance segmentation through SQL-based analysis, dashboard visualization, and machine learning.

**Dataset:** [Student Productivity and Behavior Dataset (20K)](https://www.kaggle.com/datasets/algozee/student-productivity-and-behavior-dataset-20k)

---

## Overview

This project analyzes behavioral patterns influencing student productivity using a dataset of **20,000 records**.  
The objective is to identify key factors associated with high and low productivity levels, with a focus on:

- Sleep duration
- Phone usage & digital distraction
- Stress levels
- Exercise habits & attendance

The analysis was done in two layers:
1. **SQL layer** — segmentation, aggregation, and pattern discovery using PostgreSQL + Metabase
2. **Python layer** — extended analysis using Pandas, Seaborn, K-Means Clustering, and Linear Regression

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| **PostgreSQL** | Data storage and querying |
| **Metabase** | Dashboard visualization |
| **Python (Pandas, NumPy)** | Data cleaning, EDA, feature engineering |
| **Seaborn / Matplotlib** | Statistical visualizations |
| **Scikit-learn** | K-Means Clustering, Linear Regression |

---

## Key Questions

1. Does sleep duration correlate with productivity?
2. How does phone usage impact performance?
3. What differentiates high productivity individuals from low productivity individuals?
4. How significant is total digital distraction across productivity segments?
5. Can we predict a student's productivity score from behavioral features?
6. Are there distinct behavioral clusters beyond rule-based segmentation?

---

## Methodology

Productivity was segmented into three groups:

| Segment | Score Range | Count |
|---------|------------|-------|
| **Low** | < 40 | 5,536 |
| **Medium** | 40–70 | 12,143 |
| **High** | > 70 | 2,321 |

Total digital distraction was calculated as:

```sql
phone_usage_hours +
social_media_hours +
youtube_hours +
gaming_hours
```

Aggregations and comparisons were performed using SQL queries in PostgreSQL and visualized through Metabase dashboards.

For the Python extension, K-Means clustering (k=3) was applied on standardized behavioral features, and a Linear Regression model was trained to predict productivity scores.

---

## Key Findings

- High performers sleep an average of **7.7 hours/day** vs **5.7 hours** for low performers.
- High productivity individuals spend **3.2 fewer hours/day** on total digital distractions.
- Lower stress levels are strongly associated with higher productivity (avg **4.6/10** vs **6.2/10**).
- High performers have noticeably better attendance (**75.7%** vs **66.4%**).
- K-Means clustering independently confirmed 3 distinct behavioral profiles aligned with the rule-based segments.

> **Note:** The Linear Regression model achieved R² = 1.0, suggesting `productivity_score` in this dataset is directly derived from its features — a known dataset limitation worth considering when interpreting the model.

---

## Dashboard Preview

<img width="806" height="837" alt="Screenshot From 2026-02-25 04-52-24" src="https://github.com/user-attachments/assets/63ebb836-936b-4dad-bf31-d598f21f4998" />

### Python Visualizations

| EDA & Correlations | Clustering Results |
|---|---|
| <img width="2075" height="1473" alt="productivity_visualizations" src="https://github.com/user-attachments/assets/4a0ffe46-0078-4fa2-b2bc-6cadcdbefb01" />
 | <img width="1925" height="721" alt="clustering_results" src="https://github.com/user-attachments/assets/5525fffb-3e90-48b0-8332-613ce27ead89" />
|

---

## Future Improvements

- [x] SQL-based segmentation and aggregation
- [x] Python EDA with Pandas & Seaborn
- [x] K-Means clustering
- [x] Linear Regression prediction
- [ ] Random Forest / XGBoost for better predictive accuracy
- [ ] SHAP analysis for model explainability
- [ ] Deploy interactive dashboard with Streamlit
