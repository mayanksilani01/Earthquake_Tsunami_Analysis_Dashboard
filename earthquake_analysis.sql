-- creating a database 'Earthquake'
CREATE DATABASE earthquake;

-- using database 'Earthquake' 
USE earthquake;

-- This show the imported table data 'earthquake_data_tsunami'
SHOW TABLES;

select count(magnitude) from earthquake_data_tsunami;

-- shows all the data present in the table
SELECT * FROM earthquake_data_tsunami;

-- shows all the data where magnitude of earthquake and tsunami are in range of 6 and 8 
SELECT magnitude, tsunami FROM earthquake_data_tsunami 
WHERE magnitude BETWEEN 6 and 8;

-- Total Earthquake per Year: See whether earthquake occurrences are rising or falling over time.
SELECT year, COUNT(*) AS total_eq 
FROM earthquake_data_tsunami 
GROUP BY year 
ORDER BY year;

-- Average Magnitude per Year: Detect years with unusually strong quakes.
SELECT year, ROUND(AVG(magnitude),2) AS avg_magnitude 
FROM earthquake_data_tsunami 
GROUP BY year;

-- Tsunami Frequency:Find which years saw the highest number of tsunami-triggering quakes.
SELECT tsunami, COUNT(*) FROM earthquake_data_tsunami 
GROUP BY tsunami;

-- Top 5 Strongest Earthquakes
SELECT * FROM earthquake_data_tsunami 
ORDER BY magnitude DESC 
LIMIT 5;

-- Depth Distribution:Determine which depth category most often leads to tsunamis.
SELECT CASE 
WHEN depth < 70 THEN 'Shallow' 
WHEN depth BETWEEN 70 AND 300 THEN 'Intermediate' 
ELSE 'Deep' 
END AS depth_category, COUNT(*) FROM earthquake_data_tsunami 
GROUP BY depth_category;

-- Average Depth & Magnitude (Tsunami vs Non-Tsunami):Check if tsunami-triggering earthquakes are typically stronger and shallower.
SELECT tsunami, Round(AVG(magnitude),2) AS avg_mag, round(AVG(depth),2) AS avg_depth 
FROM earthquake_data_tsunami 
GROUP BY tsunami;

-- Most Active Month:Identify if certain months or seasons are more earthquake-prone.
SELECT month, COUNT(*) AS earthquake_count FROM earthquake_data_tsunami 
GROUP BY month 
ORDER BY COUNT(*) DESC 
LIMIT 1;

-- Build SQL Views for Dashboard Integration
CREATE VIEW yearly_summary AS
SELECT 
    year,
    COUNT(*) AS total_quakes,
    ROUND(AVG(magnitude),2) AS avg_magnitude,
    SUM(tsunami) AS total_tsunamis
FROM earthquake_data_tsunami
GROUP BY year;

select * from yearly_summary;

-- Years with the Most Tsunamis:Find which years saw the highest number of tsunami-triggering quakes.
SELECT year, SUM(tsunami) AS total_tsunamis
FROM earthquake_data_tsunami
GROUP BY year
ORDER BY total_tsunamis DESC;

-- Correlation approximation:See if deeper earthquakes tend to have lower or higher magnitudes.
SELECT 
  (AVG(magnitude * tsunami) - AVG(magnitude) * AVG(tsunami)) / 
  (STDDEV(magnitude) * STDDEV(tsunami)) AS correlation_mag_tsunami
FROM earthquake_data_tsunami;

-- most tsunami-prone regions: Discover global hotspots that produce the most tsunamis.
SELECT 
ROUND(latitude,1) AS lat, ROUND(longitude,1) AS lon, COUNT(*) AS tsunami_count
FROM earthquake_data_tsunami
WHERE tsunami = 1
GROUP BY lat, lon
ORDER BY tsunami_count DESC
LIMIT 10;

-- Probability of Tsunami by Magnitude Range:Quantify how likely a tsunami is for different earthquake strengths.
SELECT 
  CASE 
    WHEN magnitude < 6.5 THEN 'Low ( <6.5 )'
    WHEN magnitude BETWEEN 6.5 AND 7.5 THEN 'Moderate (6.5–7.5)'
    WHEN magnitude > 7.5 THEN 'High ( >7.5 )'
  END AS magnitude_range,
  COUNT(*) AS total_quakes,
  SUM(tsunami) AS tsunamis,
  ROUND(SUM(tsunami)/COUNT(*)*100,2) AS tsunami_probability
FROM earthquake_data_tsunami
GROUP BY magnitude_range;

-- Average MMI & CDI for Tsunami Events:Compare damage intensity between tsunami and non-tsunami quakes.
SELECT tsunami, ROUND(AVG(mmi),2) AS avg_mmi, ROUND(AVG(cdi),2) AS avg_cdi
FROM earthquake_data_tsunami
GROUP BY tsunami;

-- Earthquake Clustering by Region: Identify the most earthquake-prone areas geographically.
SELECT ROUND(latitude,1) AS lat, ROUND(longitude,1) AS lon, COUNT(*) AS total_quakes
FROM earthquake_data_tsunami
GROUP BY lat, lon
ORDER BY total_quakes DESC
LIMIT 10;

-- Depth Distribution Categories: Determine which depth category most often leads to tsunamis.
SELECT 
  CASE 
    WHEN depth < 70 THEN 'Shallow (<70km)'
    WHEN depth BETWEEN 70 AND 300 THEN 'Intermediate (70–300km)'
    ELSE 'Deep (>300km)'
  END AS depth_category,
  COUNT(*) AS quake_count,
  SUM(tsunami) AS tsunami_count
FROM earthquake_data_tsunami
GROUP BY depth_category;

-- Relationship Between Station Count and Significance:Evaluate if more seismic stations correlate with higher accuracy or event significance.
SELECT 
  CASE 
    WHEN nst < 50 THEN 'Low Coverage'
    WHEN nst BETWEEN 50 AND 200 THEN 'Medium Coverage'
    ELSE 'High Coverage'
  END AS coverage_level,
  ROUND(AVG(sig),2) AS avg_significance
FROM earthquake_data_tsunami
GROUP BY coverage_level;

-- Feature Importance Proxy (via correlation): Determine which features (magnitude, depth, or significance) are most associated with tsunami events
SELECT 
  round((AVG(magnitude * tsunami) - AVG(magnitude)*AVG(tsunami)) / 
  (STDDEV(magnitude)*STDDEV(tsunami)),5) AS corr_mag_tsunami,
  round((AVG(depth * tsunami) - AVG(depth)*AVG(tsunami)) / 
  (STDDEV(depth)*STDDEV(tsunami)),5) AS corr_depth_tsunami,
  round((AVG(sig * tsunami) - AVG(sig)*AVG(tsunami)) / 
  (STDDEV(sig)*STDDEV(tsunami)),5) AS corr_sig_tsunami
FROM earthquake_data_tsunami;