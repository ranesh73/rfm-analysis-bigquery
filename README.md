\# Customer Segmentation using RFM Analysis (BigQuery)



\## 📌 Project Overview



This project analyzes customer purchasing behavior using the RFM (Recency, Frequency, Monetary) model. It helps identify high-value customers and supports better marketing and retention strategies.



\---



\## 🛠️ Tech Stack



\* Google BigQuery (SQL analysis)

\* SQL (Standard SQL)

\* Power BI (Dashboard \& Visualization)



\---



\## 📊 Dataset



The dataset includes:



\* Customer ID

\* Order Date

\* Order Value



Used to calculate:



\* Recency (last purchase)

\* Frequency (number of orders)

\* Monetary (total spend)



\---



\## ⚙️ Methodology



\### 1. Data Preparation



\* Combined monthly sales data using UNION ALL



\### 2. RFM Calculation



\* Recency → DATE\_DIFF

\* Frequency → COUNT

\* Monetary → SUM



\### 3. Scoring



\* Used NTILE(10) to assign scores



\### 4. Segmentation



Customers grouped into:



\* Champions

\* Loyal VIP

\* Potential Loyalists

\* Promising

\* Engaged

\* Requires Attention

\* At Risk

\* Lost



\---



\## 📊 Dashboard (Power BI)



\* Customer count

\* Segment distribution

\* Customer-level insights



\---



\## 📈 Key Insights



\* Loyal VIP customers contribute highest value

\* Many customers fall under Promising/Engaged

\* At Risk customers need attention



\---



\## 💡 Business Recommendations



\* Reward high-value customers

\* Re-engage at-risk users

\* Use personalized marketing



\---



\## 📄 Report



Check the full report in the repository.



\---



\## 👨‍💻 Author



Ranesh Karthik



