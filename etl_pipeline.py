import pandas as pd
import sqlite3

# Load dataset
df = pd.read_csv("ecommerce_sales.csv")

# Clean data
df['OrderDate'] = pd.to_datetime(df['OrderDate'])
df['Revenue'] = df['Quantity'] * df['Price']

# Save to SQLite
conn = sqlite3.connect("ecommerce.db")
df.to_sql("sales", conn, if_exists="replace", index=False)

print("ETL pipeline complete. Data saved to ecommerce.db")
