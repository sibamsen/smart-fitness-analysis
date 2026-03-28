# 🏋️‍♂️ Smart Fitness Tracker Data Analysis

A data-driven analysis of fitness tracker data to understand user behavior patterns related to activity, sleep, calories, and BMI, with the goal of improving business decision-making and user engagement strategies.

---

## 📌 Project Overview
This project analyzes smart fitness tracker (Strava/Bellabeat) data to uncover patterns in user activity, sleep behavior, calorie expenditure, and BMI trends.

The analysis is performed using Python for data cleaning and EDA, PostgreSQL for structured querying, and Power BI for interactive dashboard visualization.

---

## 🎯 Business Objective
- Understand user engagement and activity patterns  
- Analyze relationship between steps and calories burned  
- Study sleep behavior and efficiency  
- Evaluate BMI distribution across users  
- Provide actionable insights for marketing and product improvement  

---

## 🛠️ Tools & Technologies Used
- Python (Pandas, NumPy, Matplotlib, Seaborn)  
- PostgreSQL  
- Power BI  
- Git & GitHub  

---

## 📂 Dataset Overview
The dataset consists of multiple fitness-related tables:
- Daily Activity (steps, calories, distance)  
- Hourly Steps and Calories  
- Sleep Data (duration, efficiency)  
- Heart Rate Data  
- Weight and BMI Data  

---

## 🔄 Project Workflow
1. Data Cleaning and Preprocessing using Python  
2. Exploratory Data Analysis (EDA)  
3. Data Storage and Querying using PostgreSQL  
4. Dashboard Creation using Power BI  
5. Business Insights and Recommendations  

---

## 📊 Exploratory Data Analysis (Python)

### Key Analysis:
- Steps Distribution  
- Calories vs Steps Relationship  
- Activity Trends by Hour  
- Sleep Duration Distribution  
- Heart Rate Analysis  

### Insights:
- Most users walk between 5K–10K steps  
- Strong positive correlation between steps and calories  
- Peak activity occurs during daytime hours  
- Majority users sleep between 6–8 hours  
- Heart rate follows a normal distribution  

---

## 🗄️ SQL Analysis (PostgreSQL)

### Key Analysis Performed:
- Step distribution and activity frequency analysis  
- Hourly trends of steps and calorie burn  
- Sleep duration and efficiency evaluation  
- BMI category segmentation  
- Relationship analysis between activity, sleep, and calories  

### Insights:
- User activity peaks during mid-day and evening hours  
- Calorie burn follows similar patterns as physical activity  
- Majority of users fall into Normal and Overweight BMI categories  
- Sleep duration is relatively consistent across users  
- Weak correlation observed between activity levels and sleep  

---

## 📊 Power BI Dashboards

### 1️⃣ User Engagement Dashboard
- Average Daily Steps  
- Average Calories Burned  
- Steps Distribution  
- Steps vs Calories Relationship  
- Activity Intensity Levels  
- Average Steps by Hour  

### 2️⃣ Sleep Pattern Dashboard
- Average Sleep Duration  
- Sleep Distribution  
- Sleep Efficiency  
- Sleep Trend Over Time  
- Physical Activity vs Sleep Relationship  

### 3️⃣ BMI & Weight Analysis Dashboard
- Average BMI  
- BMI Category Distribution  
- Weight Distribution  
- Weight vs BMI Relationship  

---

## 💡 Business Insights
- Users are moderately active (5K–10K steps range)  
- Strong link between physical activity and calorie burn  
- Sleep duration is consistent but not strongly linked with activity  
- Majority users fall under Normal and Overweight categories  

---

## 🚀 Recommendations
- Target moderately active users with fitness challenges  
- Promote sleep tracking features to increase engagement  
- Provide personalized fitness plans based on BMI  
- Send notifications during peak activity hours  
- Design health-focused campaigns for overweight users  

---

## 📁 Project Structure
  smart-fitness-analysis/
  │
  ├── data/
  │   ├── raw/
  │   └── cleaned/
  │
  ├── python/
  │   └── STRAVA_EDA.ipynb
  │
  ├── sql/
  │   └── strava_bellabeat_sql_analysis.sql
  │
  ├── power bi/
  │   └── strava_fitness_analysis.pbix
  │
  ├── report/
  │   └── smart_fitness_tracker_analysis_report.pdf
  │
  └── README.md

---

## 🚀 How to Run the Project

### Python
pip install pandas numpy matplotlib seaborn

### PostgreSQL
- Create database  
- Import cleaned datasets  
- Run SQL queries  

### Power BI
- Open .pbix file  
- Connect to PostgreSQL  
- Refresh data  

---

## 👨‍💻 Author
Sibam Sen  
Aspiring Data Analyst  

---

## ⭐ Support
If you found this project useful, consider giving it a ⭐ on GitHub!
