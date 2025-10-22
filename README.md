# 🛍️ PurchaseBehaviour SQL Analysis Project

<div align="center">

[![GitHub Stars](https://img.shields.io/github/stars/yourusername/purchasebehaviour-sql?style=for-the-badge)](https://github.com/yourusername/purchasebehaviour-sql/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/yourusername/purchasebehaviour-sql?style=for-the-badge)](https://github.com/yourusername/purchasebehaviour-sql/network/members)
[![GitHub Issues](https://img.shields.io/github/issues/yourusername/purchasebehaviour-sql?style=for-the-badge)](https://github.com/yourusername/purchasebehaviour-sql/issues)

<img src="https://img.shields.io/badge/Microsoft_SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" />
<img src="https://img.shields.io/badge/T--SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" />
<img src="https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white" />
<img src="https://img.shields.io/badge/Data_Analysis-4285F4?style=for-the-badge&logo=google-analytics&logoColor=white" />

</div>

---

## 📋 Table of Contents
- [Overview](#-overview)
- [Key Features](#-key-features)
- [Technologies Used](#️-technologies-used)
- [Query Structure](#-query-structure)
- [Business Insights](#-business-insights)
- [Dataset Information](#-dataset-information)
- [Installation & Usage](#-installation--usage)
- [Sample Queries](#-sample-queries)
- [Learning Outcomes](#-learning-outcomes)

---

## 🎯 Overview

A comprehensive **SQL portfolio project** demonstrating advanced data analysis capabilities through **50+ progressive queries** analyzing customer purchase behavior. This project showcases proficiency in SQL fundamentals, advanced analytics, and business intelligence techniques.

**Perfect for:** Data Analyst, Business Analyst, SQL Developer, and Business Intelligence roles.

### 🌟 What Makes This Project Stand Out?
- ✅ **50+ Real-World Queries** across 7 difficulty levels
- ✅ **Advanced SQL Techniques** including Window Functions, CTEs, and Subqueries
- ✅ **Business-Focused Analysis** with actionable insights
- ✅ **Well-Documented Code** with clear explanations
- ✅ **Progressive Learning Path** from basic to advanced

---

## 🚀 Key Features

<table>
<tr>
<td width="50%">

### 📊 Data Analysis
- Customer Segmentation
- Revenue Analysis
- Trend Identification
- Cohort Analysis
- RFM Analysis Components

</td>
<td width="50%">

### 🔧 Technical Skills
- Complex Joins & Subqueries
- Window Functions (RANK, ROW_NUMBER)
- Common Table Expressions (CTEs)
- Aggregations & Grouping
- CASE Statements & Conditional Logic

</td>
</tr>
</table>

---

## 🛠️ Technologies Used

<div align="center">

| Technology | Purpose |
|------------|---------|
| ![SQL Server](https://img.shields.io/badge/Microsoft_SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white) | Database Management & Query Execution |
| ![T-SQL](https://img.shields.io/badge/T--SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white) | Advanced Query Language |
| ![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white) | Data Storage & Initial Analysis |
| ![SSMS](https://img.shields.io/badge/SSMS-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white) | SQL Server Management Studio |

</div>

---

## 📂 Query Structure

```
📦 SQL Queries (50+ Queries Organized by Complexity)
│
├── 🟢 LEVEL 1: Basic Queries (Q1-Q10)
│   ├── SELECT statements
│   ├── WHERE conditions
│   └── Basic filtering
│
├── 🟡 LEVEL 2: Aggregations & Grouping (Q11-Q20)
│   ├── COUNT, SUM, AVG, MAX, MIN
│   ├── GROUP BY operations
│   └── Multiple aggregations
│
├── 🟠 LEVEL 3: HAVING Clause & Conditions (Q21-Q25)
│   ├── Filtered aggregations
│   └── Complex conditions
│
├── 🔴 LEVEL 4: Subqueries & Logical Analysis (Q26-Q30)
│   ├── Correlated subqueries
│   ├── Nested queries
│   └── Comparative analysis
│
├── 🟣 LEVEL 5: CASE Statements (Q31-Q35)
│   ├── Conditional logic
│   ├── Customer categorization
│   └── Dynamic labeling
│
├── 🔵 LEVEL 6: Window Functions (Q36-Q40)
│   ├── RANK, ROW_NUMBER
│   ├── Running totals
│   └── Partitioned calculations
│
└── ⚫ LEVEL 7: Business Insights (Q41-Q50)
    ├── Revenue optimization
    ├── Customer loyalty metrics
    └── Strategic recommendations
```

---

## 💡 Business Insights

### Key Findings from Analysis:

<details>
<summary>🎯 Customer Segmentation</summary>

- **High Spenders**: Customers spending >$70 (Premium segment)
- **Age Groups**: Youth (<25), Adult (25-45), Senior (>45)
- **Loyalty Tiers**: Based on purchase frequency and history
- **Behavioral Patterns**: Promo users vs. Non-promo users

</details>

<details>
<summary>💰 Revenue Optimization</summary>

- Identified **most profitable seasons** for targeted campaigns
- Analyzed **discount effectiveness** by category
- Determined **optimal payment methods** for customer convenience
- Calculated **revenue contribution** by product category

</details>

<details>
<summary>📈 Performance Metrics</summary>

- **Customer Retention Rate** calculation
- **Category Performance** benchmarking
- **Shipping Type** analysis for operational efficiency
- **Review Rating** patterns for quality assurance

</details>

<details>
<summary>🎨 Product Analytics</summary>

- **Most popular colors** per category
- **Top-performing products** by revenue
- **Category comparisons** with industry averages
- **Seasonal trends** in product preferences

</details>

---

## 📊 Dataset Information

### Table: `PurchaseBehaviour`

**Size**: 3,900 records

**Key Columns**:
- `Customer_ID` - Unique customer identifier
- `Age` - Customer age
- `Gender` - Customer gender
- `Item_Purchased` - Product name
- `Category` - Product category
- `Purchase_Amount_USD` - Transaction value
- `Location` - Customer location
- `Season` - Purchase season
- `Review_Rating` - Customer rating (1-5)
- `Subscription_Status` - Active/Inactive
- `Payment_Method` - Payment type
- `Shipping_Type` - Delivery method
- `Discount_Applied` - Yes/No
- `Promo_Code_Used` - Yes/No
- `Previous_Purchases` - Purchase history count
- `Frequency_of_Purchases` - Purchase frequency

---

## 💻 Installation & Usage

### Prerequisites
- **Microsoft SQL Server** (2016 or later)
- **SQL Server Management Studio (SSMS)**
- **Microsoft Excel** (for dataset)

### Steps to Run

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/purchasebehaviour-sql.git

# 2. Navigate to project directory
cd purchasebehaviour-sql
```

### Database Setup in SSMS

1. **Open SQL Server Management Studio (SSMS)**
2. **Create a new database**
   ```sql
   CREATE DATABASE PurchaseBehaviourDB;
   USE PurchaseBehaviourDB;
   ```
3. **Import Excel data**
   - Right-click on database → Tasks → Import Data
   - Select Excel file as source
   - Follow the Import Wizard to create `PurchaseBehaviour` table
   
4. **Run the analysis**
   - Open `PurchaseBehaviour_Analysis.sql` in SSMS
   - Execute queries individually or in sections
   - View results in the Results pane

### Alternative: Import using SQL Script
```sql
-- If you have the .sql file with INSERT statements
USE PurchaseBehaviourDB;
-- Execute the script to populate the table
```

---

## 🔍 Sample Queries

### Example 1: Customer Segmentation
```sql
-- Categorize customers by spending behavior
SELECT 
    Customer_ID,
    Purchase_Amount_USD,
    CASE 
        WHEN Purchase_Amount_USD > 70 THEN 'High Spender'
        ELSE 'Regular'
    END AS CustomerType
FROM PurchaseBehaviour;
```

### Example 2: Revenue by Category
```sql
-- Calculate revenue contribution by category
SELECT
    Category,
    SUM(Purchase_Amount_USD) AS Category_Revenue,
    ROUND(SUM(Purchase_Amount_USD) * 100.0 / 
        (SELECT SUM(Purchase_Amount_USD) FROM PurchaseBehaviour), 2) 
        AS Revenue_Contribution_Percent
FROM PurchaseBehaviour
GROUP BY Category
ORDER BY Revenue_Contribution_Percent DESC;
```

### Example 3: Window Function for Ranking
```sql
-- Rank customers by purchase amount within each category
SELECT 
    Customer_ID,
    Category,
    Purchase_Amount_USD,
    RANK() OVER(
        PARTITION BY Category
        ORDER BY Purchase_Amount_USD DESC
    ) AS CategoryRank
FROM PurchaseBehaviour;
```

---

## 🎓 Learning Outcomes

By completing this project, I've demonstrated proficiency in:

- ✅ Writing complex SQL queries for business analysis
- ✅ Data aggregation and statistical analysis
- ✅ Advanced SQL techniques (Window Functions, CTEs, Subqueries)
- ✅ Customer behavior analysis and segmentation
- ✅ Revenue optimization and profitability analysis
- ✅ Business intelligence and data-driven decision making
- ✅ Code documentation and project organization

---

<div align="center">

### 👀 Profile Views Counter

![Profile Views](https://komarev.com/ghpvc/?username=yourusername&style=for-the-badge&color=blueviolet)

![Visitor Count](https://visitor-badge.laobi.icu/badge?page_id=yourusername.purchasebehaviour-sql)

</div>

---

<div align="center">

**Made with ❤️ and SQL**

*"Data is the new oil, but analytics is the combustion engine."*

⬆️ [Back to Top](#️-purchasebehaviour-sql-analysis-project)

</div>
