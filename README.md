# Sales-Trend-Analysis-Using-Aggregations
Here's a detailed explanation and learnings section you can include in your project report or submission:

---

📘 Explanation and Learnings from the Project

🔍 Objective

The goal of this project was to analyze monthly revenue and order volume from transactional data using MySQL Workbench. The analysis involved two primary datasets:

Orders.csv – containing order metadata like date, customer, and location.
Details.csv – containing line-item information such as revenue (amount), product category, and payment mode.

---

🔧 Key Tasks Performed

1. Data Cleaning & Formatting:

   * Identified that the `order_date` column was stored as a string in `dd-mm-yyyy` format.
   * Used MySQL’s `STR_TO_DATE()` function to convert it to a valid `DATE` type.

2. Joining Tables:

    Used a `JOIN` operation on `order_id` to bring together order-level and line-item data.

3. Extracting Time Components:

   * Used `EXTRACT(YEAR FROM ...)` and `EXTRACT(MONTH FROM ...)` to derive the year and month from the order date.

4. Aggregation:

   * Calculated monthly revenue using `SUM(Amount)`.
   * Counted unique orders per month using `COUNT(DISTINCT order_id)` to determine order volume.

5. Sorting and Presentation:

   * Applied `GROUP BY year, month` and sorted the results using `ORDER BY` to present a chronological summary.

---

 🧠 Key Learnings

 1. Data Type Handling is Critical

* Even if data looks like a date, SQL operations like `EXTRACT` won't work unless the data type is truly `DATE`.
* This required the use of `STR_TO_DATE()` to parse date strings properly.

2. JOINs Enable Holistic Analysis
   
* Joining datasets is powerful — it allowed us to enrich order metadata with financial data (like revenue).
* Understanding primary keys like `order_id` is key to merging data correctly.

3. Effective Use of SQL Functions

* SQL aggregation functions (`SUM`, `COUNT`) and date functions (`EXTRACT`, `STR_TO_DATE`) are crucial tools for business reporting.

4. Temporal Analysis Gives Business Insights

* By grouping and analyzing data monthly, we can track seasonal trends, identify high-performing months, and plan business strategies accordingly.

---

✅ Outcome

The final result gave a clear monthly breakdown of:

* Total revenue generated.
* Total unique orders placed.

This analysis enables the business to:

* Track performance over time.
* Identify peak and low sales months.
* Make informed decisions on inventory, staffing, and promotions.

---

Let me know if you need this exported as a PDF or formatted as a presentation slide or report.

