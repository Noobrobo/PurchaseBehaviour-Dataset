-- ==============================================================
-- SQL Practice Project: PurchaseBehaviour Dataset
-- Table Name: PurchaseBehaviour
-- Purpose: Understand the Purchase Behaviour of the buyer
-- ==============================================================

-- ================================
-- LEVEL 1: BASIC QUERIES
-- ================================

-- 1. Retrieve all customer details from PurchaseBehaviour
SELECT *
FROM PurchaseBehaviour;

-- 2. List only CustomerID, Age, and Location
SELECT 
    Customer_ID,
    Age,
    Location
FROM PurchaseBehaviour;

-- 3. Find all unique product categories
SELECT DISTINCT
    Category
FROM PurchaseBehaviour;

-- 4. Show all purchases made during the 'Winter' season
SELECT *
FROM PurchaseBehaviour
WHERE Season = 'winter';

-- 5. List customers who spent more than 70 USD
SELECT *
FROM PurchaseBehaviour
WHERE Purchase_Amount_USD > 70;

-- 6. Identify all customers who used PayPal for payment
SELECT *
FROM PurchaseBehaviour
WHERE Payment_Method = 'PAYPAL';

-- 7. Find purchases where both a discount and a promo code were applied
SELECT *
FROM PurchaseBehaviour
WHERE Discount_Applied = 'YES' AND Promo_Code_Used = 'YES';

-- 8. List customers who gave a review rating above 4
SELECT *
FROM PurchaseBehaviour
WHERE Review_Rating > 4;

-- 9. Find customers with more than 20 previous purchases
SELECT *
FROM PurchaseBehaviour
WHERE Previous_Purchases > 20;

-- 10. Retrieve purchases where the amount is between 50 and 80 USD
SELECT *
FROM PurchaseBehaviour
WHERE Purchase_Amount_USD BETWEEN 50 AND 80;

-- ================================
-- LEVEL 2: AGGREGATIONS & GROUPING
-- ================================

-- 11. Find the total number of purchases in each category
SELECT 
    Category,
    COUNT(*) AS TotalAmount
FROM PurchaseBehaviour
GROUP BY Category;

-- 12. Calculate the average purchase amount per category
SELECT 
    Category,
    AVG(Purchase_Amount_USD) AS AvgAmount
FROM PurchaseBehaviour
GROUP BY Category;

-- 13. Count the total number of purchases made by each gender
SELECT 
    Gender,
    COUNT(*) AS TotalNumber
FROM PurchaseBehaviour
GROUP BY Gender;

-- 14. Find the average purchase amount by payment method
SELECT 
    Payment_Method,
    AVG(Purchase_Amount_USD) AS AvgAmount
FROM PurchaseBehaviour
GROUP BY Payment_Method;

-- 15. Show the average review rating for each season
SELECT 
    Season,
    ROUND(AVG(Review_Rating), 2) AS AvgRating
FROM PurchaseBehaviour
GROUP BY Season;

-- 16. Calculate the total purchase amount by location
SELECT 
    Location,
    AVG(Purchase_Amount_USD) AS AvgAmount
FROM PurchaseBehaviour
GROUP BY Location;

-- 17. Find the maximum and minimum purchase amount within each category
SELECT
    Category,
    MAX(Purchase_Amount_USD) AS MaxAmount,
    MIN(Purchase_Amount_USD) AS MinAmount
FROM PurchaseBehaviour
GROUP BY Category;

-- 18. Count how many purchases had discounts applied per category
SELECT
    Category,
    COUNT(*) AS CountofPurchase
FROM PurchaseBehaviour
WHERE Discount_Applied = 'YES'
GROUP BY Category;

-- 19. Find total purchases grouped by season and category
SELECT 
    Season,
    Category,
    COUNT(*) AS TotalPurchases
FROM PurchaseBehaviour
GROUP BY Season, Category;

-- 20. Count how many orders were shipped using each shipping type
SELECT 
    Shipping_Type,
    COUNT(*) AS TotalShipments
FROM PurchaseBehaviour
GROUP BY Shipping_Type;

-- ================================
-- LEVEL 3: HAVING CLAUSE & CONDITIONS
-- ================================

-- 21. Show categories with average purchase amount greater than 50
SELECT 
    Category,
    AVG(Purchase_Amount_USD) AS AvgAmount	
FROM PurchaseBehaviour
GROUP BY Category
HAVING AVG(Purchase_Amount_USD) > 55;

-- 22. Find locations where total purchase amount exceeds 80
SELECT 
    Location,
    Purchase_Amount_USD
FROM PurchaseBehaviour
WHERE Purchase_Amount_USD > 80;

-- 23. Identify seasons with average review rating less than 3.55
SELECT 
    Season,
    ROUND(AVG(Review_Rating), 2) AS Ratings
FROM PurchaseBehaviour
GROUP BY Season
HAVING ROUND(AVG(Review_Rating), 2) < 3.55;

-- 24. Find categories that have more than 2 unique colors purchased
SELECT
    COUNT(DISTINCT(Color)) AS DistinctColor,
    Category
FROM PurchaseBehaviour
GROUP BY Category
HAVING COUNT(DISTINCT(Color)) > 2;

-- 25. List payment methods used by more than 5 customers
SELECT 
    Payment_Method,
    COUNT(DISTINCT(Customer_ID)) AS DistinctID
FROM PurchaseBehaviour
GROUP BY Payment_Method
HAVING COUNT(DISTINCT(Customer_ID)) > 5;

-- ================================
-- LEVEL 4: SUBQUERIES & LOGICAL ANALYSIS
-- ================================

-- 26. Retrieve customers whose purchase amount is higher than the overall average
WITH AMOUNTAVG AS
(
    SELECT 
        AVG(Purchase_Amount_USD) AS AvgAmount
    FROM PurchaseBehaviour
)
SELECT *
FROM PurchaseBehaviour
WHERE Purchase_Amount_USD > (SELECT AVG(Purchase_Amount_USD) FROM PurchaseBehaviour);

-- 27. Find the item with maximum purchase amount in each category
SELECT 
    Category,
    Item_Purchased,
    Purchase_Amount_USD
FROM PurchaseBehaviour AS p1
WHERE Purchase_Amount_USD = (
    SELECT MAX(Purchase_Amount_USD)
    FROM PurchaseBehaviour AS p2
    WHERE p1.Category = p2.Category
);

-- 28. List customers whose purchase amount is greater than their category average
SELECT 
    Customer_ID,
    Category,
    Purchase_Amount_USD 
FROM PurchaseBehaviour AS P1
WHERE Purchase_Amount_USD > (
    SELECT 
        AVG(Purchase_Amount_USD) AS CatAvg
    FROM PurchaseBehaviour AS P2
    WHERE P1.Category = P2.Category
);

-- 29. Identify the category with highest total purchase amount
SELECT TOP 1
    Category,
    SUM(Purchase_Amount_USD) AS TotalSum
FROM PurchaseBehaviour
GROUP BY Category
ORDER BY TotalSum DESC;

-- 30. Find top 3 locations with highest average purchase value
SELECT TOP 3
    Location,
    AVG(Purchase_Amount_USD) AS ValuePurchase
FROM PurchaseBehaviour
GROUP BY Location
ORDER BY ValuePurchase DESC;

-- ================================
-- LEVEL 5: CASE STATEMENTS & CONDITIONAL LOGIC
-- ================================

-- 31. Label customers as 'High Spender' if purchase amount > 70, else 'Regular'
SELECT 
    *,
    CASE 
        WHEN Purchase_Amount_USD > 70 THEN 'High Spender'
        ELSE 'Regular'
    END AS CustomerType
FROM PurchaseBehaviour;

-- 32. Categorize customers by age group: Youth (<25), Adult (25–45), Senior (>45)
SELECT 
    Age,
    CASE
        WHEN Age < 25 THEN 'Youth'
        WHEN Age BETWEEN 25 AND 45 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup
FROM PurchaseBehaviour;

-- 33. Classify shipping type as 'Fast' (Express/Next Day Air) or 'Standard'
SELECT 
    Customer_ID,
    Shipping_Type,
    CASE 
        WHEN Shipping_Type IN ('Express', 'Next Day Air') THEN 'Fast'
        ELSE 'Standard'
    END AS Categorisation
FROM PurchaseBehaviour;

-- 34. Indicate if a customer is 'Promo User' or 'Non-Promo User'
SELECT
    Customer_ID,
    Promo_Code_Used,
    CASE 
        WHEN Promo_Code_Used = 'Yes' THEN 'PROMO USER'
        ELSE 'Non-Promo User'
    END AS UserClassification
FROM PurchaseBehaviour;

-- 35. Categorize review ratings as Poor (<3), Average (3–4), Excellent (>4)
SELECT 
    Customer_ID,
    Review_Rating,
    CASE
        WHEN Review_Rating < 3 THEN 'Poor'
        WHEN Review_Rating BETWEEN 3 AND 4 THEN 'Average'
        ELSE 'Excellent'
    END AS RatingsCust
FROM PurchaseBehaviour;

-- ================================
-- LEVEL 6: WINDOW FUNCTIONS & RANKING
-- ================================

-- 36. Rank customers by purchase amount within each category
SELECT 
    Customer_ID,
    Purchase_Amount_USD,
    Category,
    RANK() OVER(
        PARTITION BY Category
        ORDER BY Purchase_Amount_USD DESC
    ) AS RankwithinCategory
FROM PurchaseBehaviour;

-- 37. Find top 3 customers per location based on purchase amount
SELECT *
FROM (
    SELECT
        Customer_ID,
        Location,
        Purchase_Amount_USD,
        RANK() OVER (
            PARTITION BY Location
            ORDER BY Purchase_Amount_USD DESC
        ) AS rnk
    FROM PurchaseBehaviour
) ranked
WHERE rnk <= 3;

-- 38. Calculate running total of purchase amount ordered by CustomerID
SELECT 
    Customer_ID,
    Purchase_Amount_USD,
    SUM(Purchase_Amount_USD) 
        OVER (ORDER BY Customer_ID 
              ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RunningTotal
FROM PurchaseBehaviour;

-- 39. Find difference between each customer's purchase and category average
SELECT
    Customer_ID,
    Category,
    Purchase_Amount_USD,
    AVG(Purchase_Amount_USD) OVER (PARTITION BY Category) AS Category_Avg,
    Purchase_Amount_USD - AVG(Purchase_Amount_USD) OVER (PARTITION BY Category) AS Diff_From_Avg
FROM PurchaseBehaviour;

-- 40. Rank colors based on purchase frequency
SELECT
    Color,
    COUNT(*) AS Purchase_Count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS Color_Rank
FROM PurchaseBehaviour
GROUP BY Color
ORDER BY Color_Rank;

-- ================================
-- LEVEL 7: BUSINESS INSIGHTS
-- ================================

-- 41. Identify most profitable season based on total purchase amount
SELECT TOP 1
    Season,
    SUM(Purchase_Amount_USD) AS Totalsales
FROM PurchaseBehaviour
GROUP BY Season
ORDER BY Totalsales DESC;

-- 42. Find most loyal customers using previous purchases and frequency
SELECT
    Customer_ID,
    Previous_Purchases,
    Frequency_of_Purchases,
    CASE
        WHEN Previous_Purchases >= 20 
             AND Frequency_of_Purchases IN ('Weekly', 'Fortnightly') THEN 'Most Loyal'
        WHEN Previous_Purchases BETWEEN 10 AND 19 THEN 'Moderately Loyal'
        ELSE 'Less Loyal'
    END AS Loyalty_Status
FROM PurchaseBehaviour
ORDER BY Previous_Purchases DESC;

-- 43. Determine which category benefits most from discounts
WITH CategoryAverages AS (
    SELECT 
        Category,
        AVG(CASE WHEN Discount_Applied = 'Yes' THEN Purchase_Amount_USD END) AS avg_with_discount,
        AVG(CASE WHEN Discount_Applied = 'No' THEN Purchase_Amount_USD END) AS avg_without_discount,
        COUNT(CASE WHEN Discount_Applied = 'Yes' THEN 1 END) AS count_with_discount,
        COUNT(CASE WHEN Discount_Applied = 'No' THEN 1 END) AS count_without_discount
    FROM PurchaseBehaviour
    GROUP BY Category
    HAVING COUNT(CASE WHEN Discount_Applied = 'Yes' THEN 1 END) > 0 
       AND COUNT(CASE WHEN Discount_Applied = 'No' THEN 1 END) > 0
)
SELECT TOP 1
    Category,
    COALESCE(avg_with_discount, 0) AS avg_with_discount,
    COALESCE(avg_without_discount, 0) AS avg_without_discount,
    (COALESCE(avg_with_discount, 0) - COALESCE(avg_without_discount, 0)) AS benefit_difference,
    ROUND(((COALESCE(avg_with_discount, 0) / COALESCE(avg_without_discount, 0) - 1) * 100), 2) AS percent_increase
FROM CategoryAverages
ORDER BY benefit_difference DESC;

-- 44. Calculate overall subscription (retention) rate
SELECT
    CAST(SUM(CASE WHEN Subscription_Status = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
    / COUNT(*) * 100 AS Retention_Rate_Percent
FROM PurchaseBehaviour;

-- 45. Find which gender contributes most to total revenue
SELECT
    Gender,
    SUM(Purchase_Amount_USD) AS Total_Revenue
FROM PurchaseBehaviour
GROUP BY Gender
ORDER BY Total_Revenue DESC;

-- 46. Identify payment method with highest total purchase value
SELECT
    Payment_Method,
    SUM(Purchase_Amount_USD) AS Total_Purchase_Value
FROM PurchaseBehaviour
GROUP BY Payment_Method
ORDER BY Total_Purchase_Value DESC;

-- 47. Find average purchase amount by age group
SELECT
    CASE
        WHEN Age < 25 THEN 'Youth'
        WHEN Age BETWEEN 25 AND 45 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group,
    AVG(Purchase_Amount_USD) AS Average_Purchase_Amount
FROM PurchaseBehaviour
GROUP BY 
    CASE
        WHEN Age < 25 THEN 'Youth'
        WHEN Age BETWEEN 25 AND 45 THEN 'Adult'
        ELSE 'Senior'
    END
ORDER BY Average_Purchase_Amount DESC;

-- 48. Determine most common color purchased per category
WITH Color_Count AS (
    SELECT
        Category,
        Color,
        COUNT(*) AS Color_Frequency
    FROM PurchaseBehaviour
    GROUP BY Category, Color
)
SELECT
    Category,
    Color,
    Color_Frequency
FROM (
    SELECT
        Category,
        Color,
        Color_Frequency,
        ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Color_Frequency DESC) AS rn
    FROM Color_Count
) AS RankedColors
WHERE rn = 1
ORDER BY Category;

-- 49. Calculate revenue contribution percentage by each category
SELECT
    Category,
    SUM(Purchase_Amount_USD) AS Category_Revenue,
    SUM(Purchase_Amount_USD) * 100.0 / (SELECT SUM(Purchase_Amount_USD) FROM PurchaseBehaviour) AS Revenue_Contribution_Percent
FROM PurchaseBehaviour
GROUP BY Category
ORDER BY Revenue_Contribution_Percent DESC;

-- 50. Create season-wise summary showing total customers, average purchase, and average rating
SELECT
    Season,
    COUNT(Customer_ID) AS Total_Customers,
    AVG(Purchase_Amount_USD) AS Average_Purchase_Amount,
    AVG(Review_Rating) AS Average_Review_Rating
FROM PurchaseBehaviour
GROUP BY Season
ORDER BY Season;