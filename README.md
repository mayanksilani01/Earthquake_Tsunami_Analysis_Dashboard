# Earthquake_Tsunami_Analysis_Dashboard
# 🌍 Earthquake & Tsunami Data Analysis | Power BI + MySQL

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![MySQL](https://img.shields.io/badge/MySQL-Database-blue?logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Analysis-orange)
![DAX](https://img.shields.io/badge/DAX-Measures-green)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

# 📌 Project Overview

This project analyzes **782 global earthquake events** recorded between **2001 and 2022** to identify patterns behind tsunami occurrences.

Using **MySQL** for data cleaning and querying and **Power BI** for visualization, the project explores how earthquake characteristics such as magnitude, depth, intensity, and location influence tsunami generation.

The dashboard provides an interactive view of earthquake activity across years, geographical regions, and seismic characteristics to help understand disaster trends and identify high-risk areas.

---

# 🎯 Problem Statement

Earthquakes occur frequently around the world, but not every earthquake generates a tsunami.

The objective of this project is to answer questions such as:

- Which earthquakes are most likely to trigger tsunamis?
- How do magnitude and depth affect tsunami occurrence?
- Which regions experience the highest seismic activity?
- Are there yearly or monthly trends in earthquake frequency?
- Which variables are the strongest predictors of tsunami generation?

---

# 🎯 Objectives

- Analyze yearly earthquake trends
- Identify earthquake hotspots around the globe
- Study relationships between magnitude, depth, and MMI
- Compare tsunami vs non-tsunami earthquakes
- Build an interactive dashboard for decision making
- Extract business-style insights from geological data

---

# 🗂 Dataset

The dataset contains **782 earthquake records** with **13 attributes**.

## Features

| Column | Description |
|---------|-------------|
| Magnitude | Earthquake magnitude |
| CDI | Community Determined Intensity |
| MMI | Modified Mercalli Intensity |
| SIG | Significance Score |
| NST | Number of seismic stations |
| DMIN | Distance from nearest station |
| GAP | Azimuthal gap |
| Depth | Earthquake depth (km) |
| Latitude | Geographic latitude |
| Longitude | Geographic longitude |
| Year | Year of occurrence |
| Month | Month of occurrence |
| Tsunami | Tsunami indicator (0 = No, 1 = Yes) |

---

# 🛠 Tech Stack

- Microsoft Power BI
- MySQL
- SQL
- DAX
- Power Query
- Microsoft Excel

---

# 📊 Dashboard Features

The Power BI dashboard includes:

### 📈 Earthquake Trend Analysis

- Year-wise earthquake count
- Monthly distribution
- Trend analysis

### 🌊 Tsunami Analysis

- Tsunami vs Non-tsunami earthquakes
- Percentage contribution
- Distribution analysis

### 🌍 Geographic Visualization

- Global earthquake locations
- High-risk tsunami regions
- Earthquake hotspot mapping

### 📉 Magnitude Analysis

- Magnitude distribution
- Magnitude vs tsunami occurrence
- Magnitude trends

### ⛰ Depth Analysis

- Depth distribution
- Depth vs tsunami generation
- Shallow vs deep earthquakes

### 📌 Intensity Analysis

- MMI distribution
- CDI analysis
- Significance comparison

---

# 🔍 Data Cleaning

The raw dataset was processed before visualization.

Cleaning steps included:

- Missing value inspection
- Data type validation
- Removing inconsistencies
- Formatting date attributes
- Feature engineering (Year & Month)
- Data modeling in Power BI

---

# 📈 Key Insights

## 🌊 Tsunami Generation

- Most tsunami-generating earthquakes had magnitudes above **6.5**.
- Shallower earthquakes (less than 70 km) showed a significantly higher probability of generating tsunamis.

---

## 📈 Earthquake Trends

- Earthquake frequency fluctuated throughout 2001–2022.
- Certain years experienced notable spikes in high-magnitude seismic events.

---

## 🌍 Geographic Patterns

High concentrations of earthquakes were observed around:

- Japan
- Indonesia
- Chile
- Pacific Ring of Fire

These regions also showed the highest tsunami occurrences.

---

## 📊 Intensity

Higher MMI values generally corresponded with:

- Higher magnitude
- Shallower depth
- Greater surface impact

---

## 🔥 Strongest Predictors

The analysis indicates that the two strongest indicators of tsunami occurrence are:

- Earthquake Magnitude
- Earthquake Depth

---

# 💡 Business Intelligence Approach

Although based on geological data, this project demonstrates core Business Intelligence concepts including:

- Data cleaning
- ETL workflow
- KPI creation
- Interactive dashboards
- Geographic analytics
- Trend analysis
- Predictive insight generation
- Decision-support visualization

---

# 📊 KPIs Used

Examples of dashboard KPIs include:

- Total Earthquakes
- Total Tsunami Events
- Average Magnitude
- Average Depth
- Maximum Magnitude
- Average MMI
- Earthquakes by Year
- Earthquakes by Month
- Tsunami Percentage

---

# 📁 Repository Structure

```
Earthquake-Tsunami-Analysis/
│
├── Dataset/
│   └── earthquake_data_tsunami.csv
│
├── Dashboard/
│   └── Earthquake_Analysis_PowerBI.pbix
│
├── Documentation/
│   └── Earthquake Tsunami Data Analysis.pdf
│
├── Images/
│   ├── dashboard-overview.png
│   ├── map.png
│   └── insights.png
│
└── README.md
```

---

# 🚀 Future Improvements

- Machine Learning model for tsunami prediction
- Time-series forecasting
- Real-time earthquake API integration
- Azure SQL implementation
- Python-based EDA
- Risk scoring model
- Automated Power BI refresh

---

# 📷 Dashboard Preview

> Add screenshots of your Power BI dashboard here.

Example:

```
Images/dashboard-overview.png
```

---

# 🎯 Skills Demonstrated

- SQL
- MySQL
- Power BI
- DAX
- Data Cleaning
- Power Query
- Data Visualization
- Business Intelligence
- Dashboard Design
- Exploratory Data Analysis
- Geographic Analysis
- Analytical Thinking

---

# 📌 Project Outcome

The project successfully transformed raw earthquake data into an interactive Business Intelligence dashboard capable of identifying seismic trends, tsunami indicators, and geographic hotspots. The analysis demonstrates how data analytics can support disaster preparedness and improve understanding of natural hazard patterns.

---

## 👤 Author

**Mayank Silani**

B.Tech Chemical Engineering (DTU)

Aspiring Data Analyst | Business Analyst

Skills:
SQL • Power BI • Excel • DAX • MySQL • Data Visualization • Dashboard Development
