
# 💳 Credit Card Financial Dashboard – Power BI Project

Welcome to the **Credit Card Financial Dashboard** project!  
This project analyzes customer and transaction data to uncover insights about spending behavior, income brackets, product activation, and more — all beautifully visualized in Power BI. 🚀📊

---

## 🧹 Data Cleaning

Data cleaning was performed before visualization to ensure accurate analysis:

- ✅ Removed nulls and duplicates
- ✂️ Trimmed extra whitespace
- 📅 Formatted date fields (`Week_Start_Date`)
- 🔄 Standardized categorical fields (e.g., gender, education, etc.)
- 🔢 Converted text-based numerics into integer/decimal formats

---

## 🛢️ SQL Queries (PostgreSQL)

Structured the data pipeline using SQL before loading into Power BI:

- 🏗️ Created `cc_detail` and `cust_detail` tables
- 📂 Imported `.csv` files using `COPY` or `\copy`
- 🧾 Sample fields include:
  - `Client_Num`, `Annual_Fees`, `Credit_Limit`, `Customer_Age`, `Income`, etc.
- 🛠️ Ensured proper types (`VARCHAR`, `INT`, `DECIMAL`, `DATE`) to optimize queries

```sql
CREATE TABLE cc_detail (...);
CREATE TABLE cust_detail (...);
\copy cc_detail FROM 'credit_card.csv' ...
\copy cust_detail FROM 'customer.csv' ...
```

---

## 🧠 DAX Measures and Calculated Columns

Used DAX to derive custom insights for the dashboard:

- 📊 `AgeGroup`: Classified customers by age ranges
- 💰 `IncomeGroupClass`: Grouped customers into income levels
- 📈 `Total_Revenue`: Combined interest, annual fees, and transactions
- 📆 `WeekNumCol`: Extracted week numbers from dates
- 🔁 Week-over-week revenue comparison using:
  - `Current_Week_Revenue`
  - `Previous_Week_Revenue`
  - `WeekOverWeekRevenue` (percentage change)



---

## 📊 Visualizations

Built dynamic and interactive visuals using Power BI:

- 🔄 **KPI Cards**: Show revenue growth, customer segments, chip usage
- 📈 **Line & Area Charts**: Trends over time (weekly, quarterly)
- 📊 **Bar & Column Charts**: Customer distribution by income, age, education
- 📍 **Maps**: Geographical spread of customers by `Zipcode` and `State_cd`
- 🎯 **Slicers and Filters**: Let users drill down by category, quarter, or week
- ✨ **Floating cards** with rounded edges and shadows for modern aesthetics

---

## 📁 Project Structure

```
📁 Credit_Card_Financial_Dashboard/
├── 📄 init_credit_card_db.sql         # SQL schema + import
├── 📄 Formatted_DAX_Queries.txt       # Cleaned DAX expressions
├── 📊 lakshyacreditcardproject.pbix   # Power BI Dashboard
└── 📄 README.md                        # You're reading it 😉
```

---

## 🚀 How to Use

1. 🔌 Import SQL tables using `init_credit_card_db.sql`
2. 📤 Load data into Power BI from PostgreSQL or CSV
3. 📐 Add calculated columns/measures from `DAX_Queries.txt`
4. 🎨 Customize visuals or publish to Power BI service

---

## 🙌 Credits

Made with 💡, 🧠, and 📈 by **Lakshya Shukla**  
Feel free to ⭐ this repo or contribute improvements!

---

