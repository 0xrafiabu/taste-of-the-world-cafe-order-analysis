# Restaurant Order Analysis | MySQL

**Tool:** MySQL | **Dataset:** Taste of the World Café | **Source:** Maven Analytics

## Overview

Taste of the World Café introduced a new menu at the start of 2023. This project analyses customer order data across Q1 2023 to evaluate menu performance, identify ordering trends, and provide data-driven recommendations to support business decisions.

## Objectives

1. Explore and analyse the menu items table
2. Explore and analyse the order details table
3. Combine both tables to analyse customer purchasing behaviour

## Objective 1: Menu Items Analysis

| Question | Finding |
|---|---|
| Total items on the menu | 32 |
| Least expensive item | Edamame (Asian) at £5.00 |
| Most expensive item | Shrimp Scampi (Italian) at £19.95 |
| Number of Italian dishes | 9 |
| Least expensive Italian dish | Spaghetti at £14.50 |
| Most expensive Italian dish | Shrimp Scampi at £19.95 |

**Category Breakdown:**

| Category | Total Dishes | Average Price |
|---|---|---|
| American | 6 | £10.07 |
| Asian | 8 | £13.48 |
| Italian | 9 | £16.75 |
| Mexican | 9 | £11.80 |

**Insight:** Italian is the most stocked category and carries the highest average price at £16.75, positioning it as the premium tier of the menu.

## Objective 2: Order Details Analysis

| Question | Finding |
|---|---|
| Date range | 1 January 2023 to 31 March 2023 |
| Total orders placed | 5,370 |
| Total items ordered | 12,234 |
| Highest number of items in a single order | 14 items (7 orders tied) |
| Orders containing more than 12 items | 20 orders |

**Insight:** The average order size was approximately 2.3 items. The 20 orders exceeding 12 items likely represent group dining or catering occasions, which could be a segment worth targeting commercially.

## Objective 3: Customer Behaviour Analysis

**Most and Least Ordered Items:**

| Rank | Item | Category | Total Orders |
|---|---|---|---|
| 1st | Hamburger | American | 622 |
| 2nd | Edamame | Asian | 620 |
| 3rd | Korean Beef Bowl | Asian | 588 |
| 2nd Last | Potstickers | Asian | 205 |
| Last | Chicken Tacos | Mexican | 123 |

Note: 137 records contained a NULL item value, indicating a data quality issue worth investigating.

**Top 5 Highest Spend Orders:**

| Order ID | Total Spend |
|---|---|
| 440 | £192.15 |
| 2075 | £191.05 |
| 1957 | £190.10 |
| 330 | £189.70 |
| 2675 | £185.10 |

**Breakdown of Highest Spend Order (Order 440):**

| Category | Items Ordered |
|---|---|
| Italian | 8 |
| Mexican | 2 |
| Asian | 2 |
| American | 2 |

**Breakdown of Top 5 Highest Spend Orders:**

| Order ID | Italian | Asian | Mexican | American |
|---|---|---|---|---|
| 440 | 8 | 2 | 2 | 2 |
| 2075 | 6 | 3 | 3 | 1 |
| 1957 | 5 | 3 | 3 | 3 |
| 330 | 3 | 6 | 4 | 1 |
| 2675 | 4 | 3 | 4 | 3 |

**Key Insight:** Italian dishes consistently dominated the highest-spending orders across all five transactions. Despite being the most expensive category, high-value customers ordered Italian items the most. This strongly supports retaining and potentially expanding the Italian menu offering to drive revenue.

## SQL Concepts Applied

`SELECT` `WHERE` `GROUP BY` `ORDER BY` `HAVING` `MIN` `MAX` `COUNT` `AVG` `SUM` `LEFT JOIN` `Subqueries` `Aliases`

## Repository Structure

| File | Description |
|---|---|
| `create_restaurant_db.sql` | Database and table setup |
| `Q1.sql` | Objective 1: Menu items analysis |
| `Q2.sql` | Objective 2: Order details analysis |
| `Q3.sql` | Objective 3: Customer behaviour analysis |


## Author
Rafi Abu | BSc Computing Systems, Ulster University
