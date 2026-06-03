import sqlite3
import pandas as pd

df = pd.read_csv("data/cleaned_sales.csv")

print("Rows in CSV:", len(df))   # check rows

conn = sqlite3.connect("sales.db")

df.to_sql("sales", conn, if_exists="replace", index=False)

# verify rows in database
cursor = conn.cursor()
cursor.execute("SELECT COUNT(*) FROM sales")
count = cursor.fetchone()[0]

print("Rows in DB:", count)

conn.close()