# 📊 UPI Transaction Analysis | Python, SQL & Power BI

## 📌 Project Overview

The UPI Transaction Analysis Project is an end-to-end data analytics project designed to analyze the growth and performance of India's Unified Payments Interface (UPI) ecosystem from April 2016 to September 2026 using Python, SQL, and Power BI.

The project focuses on understanding UPI transaction volume, transaction value, monthly and yearly growth patterns, and the expansion of banks participating in the UPI network.

The analysis follows a complete data analytics workflow:

Data Collection → Data Cleaning → Data Transformation → Exploratory Data Analysis → SQL Analysis → Data Visualization → Business Insights

## 🎯 Objectives

The main objectives of this project are:

- Analyze the overall growth of UPI transactions in India.
- Examine monthly and yearly transaction volumes.
- Analyze monthly and yearly transaction values.
- Identify transaction growth trends over time.
- Calculate Month-on-Month (MoM) transaction growth.
- Calculate Year-on-Year (YoY) transaction growth.
- Analyze the expansion of banks participating in the UPI network.
- Identify peak months based on transaction volume and value.
- Understand seasonal patterns in UPI transactions.
- Examine the relationship between bank participation and transaction growth.
- Create interactive Power BI dashboards.
- Develop data-driven insights into India's digital payment ecosystem.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| 🐍 Python | Data cleaning and exploratory data analysis |
| 🐼 Pandas | Data manipulation and preprocessing |
| 🔢 NumPy | Numerical operations and calculations |
| 📊 Matplotlib | Data visualization |
| 📈 Seaborn | Statistical visualization |
| 🗄️ MySQL | SQL analysis and querying |
| 📊 Power BI | Interactive dashboards and KPI reporting |
| 📐 DAX | Analytical measures and calculations |
| 📓 Jupyter Notebook | Python analysis environment |
| 📗 CSV | Dataset storage |
| 🐙 GitHub | Project version control and portfolio presentation |

## 📂 Dataset

The project uses UPI transaction statistics containing monthly aggregated data about India's UPI ecosystem.

### Dataset Details

- **Dataset:** UPI Statistics
- **Coverage:** April 2016 – September 2026
- **Frequency:** Monthly
- **Records:** 126 monthly observations
- **Format:** CSV

### Main Dataset

- `UPI_Statistics.csv`

### Dataset Columns

- Year
- Month_Number
- Month_Name
- Month_Date
- No. of Banks live on UPI
- Volume (In Mn.)
- Value (In Cr.)

### Key Metrics

| Metric | Description |
|---|---|
| Transaction Volume | Total number of UPI transactions in millions |
| Transaction Value | Total transaction amount in crore rupees |
| Banks Live on UPI | Number of banks participating in the UPI network |
| Month-on-Month Growth | Percentage change compared with the previous month |
| Year-on-Year Growth | Percentage change compared with the previous year |

# 🔄 Project Workflow

```text
                  UPI Statistics Dataset
                            │
                            ▼
                     Data Collection
                            │
                            ▼
                       Data Cleaning
                            │
                            ▼
                   Data Transformation
                            │
                            ▼
                Exploratory Data Analysis
                            │
                ┌───────────┴───────────┐
                ▼                       ▼
          Python Analysis          SQL Analysis
                │                       │
                └───────────┬───────────┘
                            ▼
                    Power BI Dashboard
                            │
                            ▼
                     Business Insights
                            │
                            ▼
                   Analytical Findings
```

# 🧹 Data Cleaning

Python was used to prepare the raw UPI statistics dataset for analysis.

### Cleaning Operations Included

- Inspected dataset dimensions and column information.
- Checked missing values across all columns.
- Identified and removed duplicate records.
- Checked duplicate monthly observations.
- Converted the `Month_Date` column into a proper datetime format.
- Standardized column names by removing unnecessary spaces.
- Checked numerical columns for appropriate data types.
- Created a chronological structure for time-series analysis.
- Created Month-on-Month transaction growth calculations.
- Prepared yearly summaries for further analysis.
- Exported the cleaned dataset separately.

### Cleaned Dataset

`output/UPI_Statistics_Cleaned.csv`

# 🔍 Exploratory Data Analysis (EDA)

Python was used to explore transaction behavior and identify growth patterns in the UPI ecosystem.

### Analysis Included

- Dataset dimensions and data types.
- Missing-value analysis.
- Duplicate-record analysis.
- Descriptive statistical analysis.
- Monthly transaction volume trends.
- Monthly transaction value trends.
- Year-wise transaction volume analysis.
- Year-wise transaction value analysis.
- Monthly average transaction patterns.
- Month-on-Month transaction volume growth.
- Year-on-Year transaction volume growth.
- Peak transaction volume analysis.
- Peak transaction value analysis.
- Growth in banks live on UPI.
- Correlation analysis between banks, transaction volume, and transaction value.

### Visualizations Created

- Monthly UPI Transaction Volume Trend.
- Monthly UPI Transaction Value Trend.
- Year-wise Transaction Volume.
- Year-wise Transaction Value.
- Growth in Banks Live on UPI.
- Average Monthly Transaction Volume.
- Correlation Heatmap.
- Year-on-Year Transaction Volume Growth.

# 🗄️ SQL Analysis

MySQL was used to analyze UPI transaction statistics and answer important business questions.

### Database Details

- **Database:** `upi_statistics`
- **Table:** `upi_statistics`
- **SQL File:** `upi_statistics.sql`

### SQL Concepts Used

- SELECT Statements
- WHERE Conditions
- Aggregate Functions
- GROUP BY
- ORDER BY
- MIN() and MAX()
- SUM() and AVG()
- COUNT()
- ALTER TABLE
- UPDATE
- STR_TO_DATE()
- Common Table Expressions (CTEs)
- LAG() Window Function
- Percentage Growth Calculations

### Example Business Questions

1. How many monthly records are available in the dataset?
2. What is the first and last month covered by the dataset?
3. What is the total UPI transaction volume?
4. What is the total UPI transaction value?
5. How has UPI transaction volume changed year by year?
6. How has transaction value increased over the years?
7. How many banks were participating in UPI each year?
8. Which 10 months recorded the highest transaction volume?
9. Which 10 months recorded the highest transaction value?
10. What is the average monthly transaction volume?
11. Which months have the highest average transaction activity?
12. What is the Month-on-Month transaction growth percentage?
13. What is the Year-on-Year transaction growth percentage?
14. How has bank participation changed over time?

# 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to analyze India's UPI transaction growth and banking network expansion.

The dashboard focuses on transaction performance, historical growth, and the development of the UPI banking ecosystem.

## 📌 Dashboard 1: UPI Transaction Overview

### Key Performance Indicators (KPIs)

- Total Transaction Volume
- Total Transaction Value
- Number of Banks Live on UPI
- Monthly Transaction Performance

### Dashboard Analysis

- Overall UPI transaction performance.
- Transaction volume trends.
- Transaction value trends.
- Historical transaction growth.
- Monthly and yearly comparisons.

## 📌 Dashboard 2: Growth & Trends

### Key Performance Indicators (KPIs)

- Transaction Volume
- Transaction Value
- Monthly Growth
- Yearly Growth

### Dashboard Analysis

- Monthly transaction volume growth.
- Monthly transaction value growth.
- Year-wise transaction performance.
- Month-on-Month growth patterns.
- Year-on-Year growth patterns.
- Peak transaction months.

## 📌 Dashboard 3: Banking Network

### Key Performance Indicators (KPIs)

- Total Banks Live on UPI
- Average Bank Participation
- Maximum Bank Participation
- Banking Network Growth

### Dashboard Analysis

- Growth in participating banks.
- Year-wise bank participation.
- Monthly banking network expansion.
- Relationship between bank participation and UPI transaction growth.

### 🖼️ Dashboard Screenshots

#### Dashboard 1

![UPI Dashboard 1](Dashboard%201.png)

#### Dashboard 2

![UPI Dashboard 2](Dashboard%202.png)

#### Dashboard 3

![UPI Dashboard 3](Dashboard%203.png)

# 📐 Key Analytical Measures

The analysis focuses on the following metrics:

| Measure | Description |
|---|---|
| Total Transaction Volume | Sum of monthly transaction volume |
| Total Transaction Value | Sum of monthly transaction value |
| Average Transaction Volume | Average monthly transaction volume |
| Average Transaction Value | Average monthly transaction value |
| Total Banks Live | Number of banks participating in UPI |
| MoM Growth % | Monthly transaction growth percentage |
| YoY Growth % | Yearly transaction growth percentage |
| Peak Transaction Volume | Highest monthly transaction volume |
| Peak Transaction Value | Highest monthly transaction value |

# 💡 Key Business Insights

The project is designed to identify important trends in India's digital payment ecosystem.

### Key Areas of Analysis

- UPI transaction volume has expanded significantly over the period covered by the dataset.
- Transaction value has increased alongside the growth of digital payments.
- Bank participation in the UPI network has expanded over time.
- Monthly transaction activity shows variations across different periods.
- Year-wise analysis helps identify long-term transaction growth patterns.
- MoM and YoY calculations help measure changes in transaction performance.
- Correlation analysis helps explore the relationship between bank participation, transaction volume, and transaction value.

These findings help understand the development of India's UPI ecosystem and its growing role in digital payments.

# 🎯 Business Recommendations

Based on the trends confirmed through the analysis, potential recommendations include:

1. **Strengthen Digital Payment Infrastructure:** Continue improving payment infrastructure to support increasing transaction volumes.
2. **Expand Banking Participation:** Encourage more banking institutions to participate in the UPI ecosystem.
3. **Monitor Transaction Growth:** Track monthly and yearly transaction trends to understand changes in payment activity.
4. **Improve Payment Reliability:** Focus on transaction success rates, system availability, and payment reliability.
5. **Analyze Seasonal Patterns:** Use historical monthly trends to understand periods of higher transaction activity.
6. **Support Data-Driven Decisions:** Use transaction volume and value metrics to monitor the overall performance of digital payments.

# 📁 Project Structure

```text
upi_statistics/
│
├── Dashboard 1.png
├── Dashboard 2.png
├── Dashboard 3.png
│
├── UPI_Statistics.csv
│
├── output/
│   └── UPI_Statistics_Cleaned.csv
│
├── upi_statistics.ipynb
│
├── upi_statistics.sql
│
├── upi_statistics.pbix
│
└── README.md
```

# 🚀 How to Run the Project

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/sudheerdogiparthi/upi_statistics.git
```

## 2️⃣ Navigate to the Project

```bash
cd upi_statistics
```

## 3️⃣ Install Python Libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

## 4️⃣ Run Python Analysis

Open Jupyter Notebook:

```bash
jupyter notebook upi_statistics.ipynb
```

Run the notebook cells sequentially.

Make sure the input CSV file is available at the path configured in the notebook.

## 5️⃣ Perform SQL Analysis

- Open MySQL Workbench.
- Execute `upi_statistics.sql`.
- Create and select the `upi_statistics` database.
- Import the dataset into the `upi_statistics` table.
- Execute the SQL queries to explore transaction trends and growth.

Ensure the imported table and column names match the SQL script.

## 6️⃣ Open the Power BI Dashboard

Open the following file using Power BI Desktop:

`upi_statistics.pbix`

Refresh the dataset if required and explore the dashboard pages.

# 📊 Skills Demonstrated

This project demonstrates practical skills in:

- Data Collection
- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Python Programming
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL
- MySQL
- Aggregate Functions
- Window Functions
- CTEs
- Time-Series Analysis
- Growth Analysis
- Data Visualization
- Power BI
- Dashboard Development
- Business Intelligence
- Analytical Thinking
- Data-Driven Decision Making
- Git and GitHub

# 🎓 Project Outcome

This project demonstrates how historical UPI transaction data can be transformed into meaningful analytical insights using Python, SQL, and Power BI.

Through data cleaning, exploratory data analysis, SQL querying, and interactive dashboard development, the project provides an overview of India's UPI transaction growth, transaction value trends, and banking network expansion.

The final dashboard helps users explore historical payment trends, monitor transaction performance, and understand the evolution of India's digital payment ecosystem.

---

**Developed by Sudheer Dogiparthi**

**Tools:** Python | SQL | MySQL | Power BI | Pandas | NumPy
