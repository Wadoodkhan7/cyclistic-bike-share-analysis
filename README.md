# 🚴 Cyclistic Bike-Share Analysis
End-to-end data analysis project using SQL and Power BI to analyze user behavior and provide business recommendations

---

## 📋 Project Overview
This project analyzes 12 months of Cyclistic bike-share trip data (~5.5 million records) to understand how annual members and casual riders use the service differently.

The goal is to generate data-driven insights and provide actionable recommendations to help convert casual riders into annual members.

---

## ❓ Business Question
**How do annual members and casual riders use Cyclistic bikes differently?**

---

## 🎯 Project Objectives

1. Identify behavioral differences between members and casual riders  
2. Analyze ride patterns across time (hour, day, month)  
3. Discover seasonal trends affecting usage  
4. Understand bike type preferences  
5. Provide business recommendations to increase membership conversions  

---

## 🛠️ Tools & Technologies Used

- **SQL (MySQL)** → Data cleaning, transformation, analysis  
- **Power BI** → Dashboard & visualization  
- **Excel** → Initial data inspection  

---

## 🔍 The Analysis

### 1. Overall Usage Summary

- **Total Rides:** ~5.5 million  
- **Members:** ~3.5M rides (high frequency)  
- **Casual Riders:** ~2.0M rides  

- **Avg Ride Length:**
  - Members → ~11.7 minutes  
  - Casual → ~19.4 minutes  

👉 **Insight:**  
Members ride more frequently, while casual riders take longer trips (leisure vs commuting behavior)

---

### 2. Day of Week Patterns

- **Members:** Consistent usage Monday–Friday  
- **Casual Riders:** Higher activity on weekends  

👉 **Insight:**  
- Members → Work-related commuting  
- Casual → Leisure/weekend usage  

---

### 3. Hourly Usage Patterns

- **Members peak:** 8 AM & 5 PM  
- **Casual peak:** Midday (12 PM – 5 PM)  

👉 **Insight:**  
- Members follow **commute schedules**  
- Casual riders follow **free-time patterns**

---

### 4. Seasonal Trends

- Usage increases significantly during **summer months**  
- Both groups peak around **July–August**

👉 **Insight:**  
Strong seasonal demand, especially from casual riders

---

### 5. Bike Type Preferences

- **Electric bikes** are most used by both groups  
- Casual riders show slightly higher preference  

👉 **Insight:**  
Electric bikes play a key role in user experience

---

## 📊 Dashboard Preview

![Dashboard](images/dashboard_overview.png)

---

## 💡 Key Insights

- Members generate the majority of rides (~65%)  
- Casual riders ride longer (≈65% longer duration)  
- Members show strong weekday + commute patterns  
- Casual riders dominate weekends and midday usage  
- Bike usage peaks in summer  
- Electric bikes are the most preferred  

---

## 🎯 Business Recommendations

### 1. Target Weekend & Summer Riders
Casual riders are most active during weekends and summer.

👉 Strategy:
- Launch seasonal promotions  
- Offer limited-time membership discounts  

---

### 2. Introduce Flexible Membership Plans
Casual riders are leisure users, not daily commuters.

👉 Strategy:
- Offer weekend-only or monthly memberships  
- Reduce commitment barriers  

---

### 3. Time-Based Digital Marketing
Casual riders peak during midday and weekends.

👉 Strategy:
- Run targeted ads during peak hours  
- Highlight cost savings vs single rides  

---
## 📖 What I Learned

- Built an end-to-end data analysis pipeline (data loading → cleaning → analysis → visualization)  
- Worked with large-scale datasets (~5M+ records) using SQL  
- Applied feature engineering to extract time-based behavioral insights  
- Designed interactive dashboards in Power BI for business storytelling  
- Translated analytical findings into actionable business recommendations  

---

## 📂 Project Structure

```
cyclistic-bike-share-analysis/
│
├── sql/
│   ├── 01_data_loading.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_feature_engineering.sql
│   └── 04_exploratory_analysis.sql
│
├── powerbi/
│   └── cyclistic_dashboard.pbix
│
├── images/
│   └── dashboard_overview.png
│
└── README.md
```

---

## 📌 Conclusion

This analysis revealed clear behavioral differences between casual riders and members. Members exhibit frequent, short, commute-based usage, while casual riders demonstrate longer, leisure-oriented and seasonal behavior.

By aligning marketing strategies with these patterns—particularly targeting weekend and summer users—Cyclistic can effectively convert casual riders into long-term members and drive sustainable growth.

---

## 👤 Author

**Wadood Khan**  
Aspiring Data Analyst  
