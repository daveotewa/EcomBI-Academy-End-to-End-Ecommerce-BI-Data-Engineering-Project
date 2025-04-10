import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os

# Step 1: Load environment variables
load_dotenv()
DATABASE_URL = os.getenv("DATABASE_URL")


# Step 2: Connect to PostgreSQL
engine = create_engine(DATABASE_URL)

# Step 3: Load CSVs from the data folder
df_customers = pd.read_csv("../data/customers.csv")
df_products = pd.read_csv("../data/products.csv")
df_orders = pd.read_csv("../data/orders.csv")
df_payments = pd.read_csv("../data/payments.csv")

# Optional: Quick data validation
print("Customers:")
print(df_customers.head())
print("Orders:")
print(df_orders.head())

# Step 4: Load data into PostgreSQL (replace existing tables)
df_customers.to_sql("customers", engine, if_exists="replace", index=False)
df_products.to_sql("products", engine, if_exists="replace", index=False)
df_orders.to_sql("orders", engine, if_exists="replace", index=False)
df_payments.to_sql("payments", engine, if_exists="replace", index=False)

print("✅ All data loaded successfully into PostgreSQL.")

