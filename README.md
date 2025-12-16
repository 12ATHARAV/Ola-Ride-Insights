# Ola Ride Analytics 🚗📊
End-to-end Ola ride analytics using Python, SQL, PostgreSQL, Power BI & Streamlit. From raw bookings data to interactive dashboards and web app.

📌 What it does
Analyzes 5K+ Ola ride bookings to uncover:

Peak hours & busiest days

Vehicle trends (Bike, Mini, Prime Sedan/SUV)

Cancellation patterns (customer vs driver reasons)

Revenue by payment method (Cash/UPI/Card)

Ratings by vehicle type & distance

Top customers by rides & value

🧠 4-Stage Pipeline
EDA → Clean data, time features, visualizations​

SQL → PostgreSQL table + 10 analytics views​

Power BI → Interactive KPI dashboard​

Streamlit → Run SQL queries + embed live BI​

🚀 Quick Start
bash
pip install -r requirements.txt
# Setup PostgreSQL: sql/ola_queries.sql
streamlit run app/ola_dashboard.py
🛠 Tech Stack
Python (Pandas/Streamlit) | PostgreSQL/SQL | Power BI | Jupyter ​​

✨ Key Insights Delivered
10 production SQL views (top customers, avg distance/vehicle, UPI rides, etc.)

Full-stack: CSV → DB → BI → Web app

Business-ready dashboard for stakeholders
