🚀 CUSTOMER SEGMENTATION USING RFM ANALYSIS (BIGQUERY)

📌 PROJECT OVERVIEW
This project focuses on analyzing customer purchasing behavior using the RFM (Recency, Frequency, Monetary) model. The objective is to segment customers based on their transaction patterns and identify high-value groups. The insights derived from this analysis help businesses improve customer retention, optimize marketing strategies, and drive revenue growth.

🛠️ TECHNOLOGY STACK
• Google BigQuery – Data warehousing and large-scale query processing
• SQL (Standard SQL) – Data transformation and analytical computations
• Power BI – Data visualization and interactive dashboard creation

📊 DATASET DESCRIPTION
The dataset consists of transactional records containing:
• Customer ID
• Order Date
• Order Value

These attributes are used to derive:
• Recency – Number of days since the last purchase
• Frequency – Total number of purchases made by a customer
• Monetary – Total amount spent by the customer

⚙️ METHODOLOGY

🔹 Data Preparation
• Combined multiple monthly sales tables using UNION ALL
• Created a consolidated dataset for analysis

🔹 RFM Metric Calculation
• Recency calculated using DATE_DIFF function
• Frequency calculated using COUNT of transactions
• Monetary calculated using SUM of order values

🔹 Scoring Mechanism
• Applied NTILE function to assign scores on a scale (1–10)
• Higher scores indicate better customer value

🔹 Customer Segmentation
Customers were categorized into the following segments:
• Champions
• Loyal VIP
• Potential Loyalists
• Promising
• Engaged
• Requires Attention
• At Risk
• Lost / Inactive

📈 DASHBOARD (POWER BI)
An interactive Power BI dashboard was developed to visually represent customer insights. The dashboard includes:
• Total number of customers
• Distribution of customers across segments
• Detailed customer-level view with RFM scores
• Clear visualization of high-value and at-risk customers

💡 KEY INSIGHTS
• Loyal VIP and Champions contribute significantly to overall revenue
• A large portion of customers fall under Promising and Engaged segments
• At Risk and Requires Attention segments highlight potential churn
• Customer behavior varies significantly based on purchase frequency and recency

🎯 BUSINESS RECOMMENDATIONS
• Provide exclusive offers and loyalty rewards to high-value customers
• Implement targeted campaigns to re-engage at-risk customers
• Nurture promising customers through personalized marketing strategies
• Continuously monitor customer segments using dashboards

📄 PROJECT OUTPUT
• Complete SQL-based RFM analysis using BigQuery
• Customer segmentation model for business decision-making
• Interactive Power BI dashboard for visualization
• Detailed analytical report with insights and recommendations

👨‍💻 AUTHOR
Ranesh Karthik
🔗 GitHub: https://github.com/ranesh73
