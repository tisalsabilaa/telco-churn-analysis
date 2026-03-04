-- Q1 : What is the overall churn rate? --
select
count(customerID) as total_customers,
sum(Churn_Binary) as total_churn,
round(avg(Churn_Binary) * 100, 2) as churn_rate_pct
from telco;

-- Q2 : Churn rate by contract type --
select
contract,
count(customerID) as total_customer,
sum(Churn_Binary) as total_churn,
round(avg(Churn_Binary) * 100, 2) as churn_rate_pct
from telco
group by Contract
order by churn_rate_pct desc;

-- Q3 : Churn rate by PaymentMethod type --
select
PaymentMethod,
count(customerID) as total_customer,
sum(Churn_Binary) as total_churn,
round(avg(Churn_Binary) * 100, 2) as churn_rate_pct
from telco
group by PaymentMethod
order by churn_rate_pct desc;

-- Q4: Average MonthlyCharges for churned vs non-churned customers --
select 
churn,
round(avg(MonthlyCharges), 2) as Avg_Monthly_Charges,
round(avg(tenure), 2) as Avg_Tenure_Months
from telco
group by churn
order by churn desc;

-- Q5: Rank customers by TotalCharges within each Contract type
SELECT 
    customerID,
    Contract,
    TotalCharges,
    RANK() OVER (PARTITION BY Contract ORDER BY TotalCharges DESC) AS rank_within_contract
FROM telco;

-- Q6 : Which combination of InternetService and Contract type produces the highest churn rate? --
select
InternetService,
Contract,
round(avg(Churn_Binary) * 100, 2) as churn_rate_pct
from telco
group by InternetService, Contract
order by churn_rate_pct desc