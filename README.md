# TelcoEdge Customer Churn Analysis & Retention Insights

## Business Problem
TelcoEdge has been experiencing increasing customer churn with no clear understanding of the underlying drivers. 
This project analyzes customer data to identify churn patterns, build a high-risk customer profile, and provide actionable retention recommendations.

## Dataset
- Source: Telco Customer Churn Dataset (Kaggle)
- Records: 7,032 customers after cleaning
- Features: 21 variables including demographics, services, contract type, payment method, and charges
- Link: https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## Tools Used
- Python (Pandas, NumPy) — data cleaning and exploratory analysis
- MySQL — business question analysis using SQL queries
- Microsoft Power BI — interactive dashboard and data visualization

## Data Cleaning Process
- Identified 11 rows with missing TotalCharges values, all had tenure = 0 indicating new customers with no billing history. Dropped these rows as they carry no churn signal.
- Converted TotalCharges from string to float after resolving hidden whitespace values
- Converted SeniorCitizen from integer (0/1) to categorical (No/Yes) for clarity
- Created Churn_Binary column (0/1) to enable numeric aggregation

## Key Findings
1. Overall churn rate is 26.58% (1,869 of 7,032 customers)
2. Month-to-month contracts have a 42.71% churn rate vs 2.85% for two-year contracts
3. Fiber optic customers churn at 41.89% (the highest of any internet service type)
4. The highest risk segment is Fiber optic + Month-to-month = 54.61% churn rate
5. Churned customers pay more on average ($74.44 vs $61.31 monthly) but leave sooner (17.98 vs 37.65 months tenure)
6. Electronic check payment method correlates with 45.29% churn rate
7. Customers without TechSupport or OnlineSecurity churn at ~42% vs ~15% for those with these services

## Business Recommendations
1. Investigate Fiber optic service quality and pricing. The data suggests a value perception problem,
customers are paying premium prices but leaving faster than lower-tier customers. 
TelcoEdge should audit service complaints and satisfaction scores for this segment specifically.

2. Implement an early tenure retention program targeting month-to-month customers in their first 12 months. 
This is the highest risk customer segment. Proactive outreach and incentives to upgrade to annual contracts during onboarding would directly decrease the largest churn segment.

## Dashboard Preview
![alt text](dashboard_preview.png)