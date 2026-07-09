import pandas as pd
import random
from faker import Faker

fake = Faker()

# -----------------------------
# Generate Customers
# -----------------------------
def generate_customers(num_customers=100000, path="customers.csv"):
    segments = ["Consumer", "Corporate", "Small Business"]
    customers = []
    for customer_id in range(1, num_customers + 1):
        customers.append({
            "customer_id": customer_id,
            "customer_name": fake.name(),
            "city": fake.city(),
            "state": fake.state(),
            "registration_date": fake.date_between(start_date="-10y", end_date="today"),
            "customer_segment": random.choice(segments)
        })
    df = pd.DataFrame(customers)
    df.to_csv(path, index=False)
    print(f"{path} created with {len(df)} rows")

# -----------------------------
# Generate Products
# -----------------------------
def generate_products(num_products=20000, path="products.csv"):
    categories = [
        "Electronics","Furniture","Clothing","Sports",
        "Beauty","Office Supplies","Home & Kitchen","Toys"
    ]
    products = []
    for product_id in range(1, num_products + 1):
        products.append({
            "product_id": product_id,
            "product_name": f"Product_{product_id}",
            "category": random.choice(categories),
            "price": round(random.uniform(10, 5000), 2)
        })
    df = pd.DataFrame(products)
    df.to_csv(path, index=False)
    print(f"{path} created with {len(df)} rows")

# -----------------------------
# Generate Order Items
# -----------------------------
def generate_order_items(num_order_items=1500000, path="order_items.csv"):
    order_items = []
    for item_id in range(1, num_order_items + 1):
        quantity = random.randint(1, 5)
        unit_price = random.uniform(10, 5000)
        sales = round(quantity * unit_price, 2)
        profit = round(sales * random.uniform(0.10, 0.30), 2)
        order_items.append({
            "order_item_id": item_id,
            "order_id": random.randint(1, 500000),
            "product_id": random.randint(1, 20000),
            "quantity": quantity,
            "sales": sales,
            "profit": profit
        })
    df = pd.DataFrame(order_items)
    df.to_csv(path, index=False)
    print(f"{path} created with {len(df)} rows")

# -----------------------------
# Generate Web Sessions
# -----------------------------
def generate_web_sessions(num_sessions=1000000, path="web_sessions.csv"):
    devices = ["Mobile","Desktop","Tablet"]
    sessions = []
    for session_id in range(1, num_sessions + 1):
        sessions.append({
            "session_id": session_id,
            "customer_id": random.randint(1, 100000),
            "session_date": fake.date_between(start_date="-2y", end_date="today"),
            "device_type": random.choice(devices),
            "session_duration": random.randint(30, 1800),
            "page_views": random.randint(1, 25)
        })
    df = pd.DataFrame(sessions)
    df.to_csv(path, index=False)
    print(f"{path} created with {len(df)} rows")

# -----------------------------
# Main Runner
# -----------------------------
def main():
    base_path = r"D:\python project files\Sql_Query_Optimization_Performance_Benchmarking\data\raw\\"
    generate_customers(path=base_path + "customers.csv")
    generate_products(path=base_path + "products.csv")
    generate_order_items(path=base_path + "order_items.csv")
    generate_web_sessions(path=base_path + "web_sessions.csv")

if __name__ == "__main__":
    main()
