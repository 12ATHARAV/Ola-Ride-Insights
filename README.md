# 🚖 Ola Ride Insights: End-to-End Data Analysis

## 📌 Project Overview
This project provides a comprehensive analysis of **Ola's ride-sharing data** to improve operational efficiency and customer satisfaction. By analyzing booking patterns, cancellation reasons, and revenue metrics, this project offers data-driven solutions for urban mobility challenges.

The project demonstrates a full data lifecycle: **SQL-based extraction**, **Streamlit-driven interface**, and **Power BI visual storytelling**.

---

## 🛠️ Tech Stack
- **SQL:** PostgreSQL (Core business logic and view creation)
- **Python:** Streamlit & Pandas (Web application and data manipulation)
- **BI Tool:** Power BI (Interactive reporting dashboards)
- **Documentation:** Microsoft Word (Technical documentation)

---

## 📂 Repository Structure & Files
* **`Dataset/ola_bookings.csv`**: The primary data source containing ride-level details.
* **`ola_queries.sql`**: Contains 10+ professional SQL queries used for data extraction and business KPI monitoring.
* **`ola_dashboard.py`**: A Streamlit web application that allows users to run SQL queries and view analysis results interactively.
* **`ola powerbi.pbix`**: The master Power BI file containing advanced data visualizations.
* **`OLA project output.docx`**: Technical document containing the final analysis outputs and query results.
* **`OLA RIDE.docx`**: Project guidelines and problem statement details.

---

## 🔍 Key Business Insights
The analysis focused on solving specific business problems:
* **Cancellation Analysis:** Identified that **"Driver not moving towards pickup"** is the leading cause for customer-side cancellations.
* **Revenue Performance:** Calculated the total booking value for successful rides and segmented it by vehicle type.
* **Payment Behavior:** Analyzed the popularity of **UPI vs. Cash** payments in the ride-sharing ecosystem.
* **Customer Satisfaction:** Derived average ratings for different vehicle segments (Prime Sedan, SUV, etc.) to evaluate service quality.

---

## 🚀 How to Use This Project

### 1. Database Setup
Execute the scripts in `ola_queries.sql` within your SQL environment to generate the necessary views for "Successful Bookings," "Top 5 Customers," and "Revenue Trends."

### 2. Run the Streamlit Web App
The `ola_dashboard.py` script provides a user interface to interact with the SQL data. Run it locally using:
```bash
pip install streamlit pandas psycopg2
streamlit run ola_dashboard.py
