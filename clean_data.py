import pandas as pd

df = pd.read_csv("data/superstore.csv", encoding="latin1")

print(df.head())

df = df.drop_duplicates()
df = df.dropna()

df["Order Date"] = pd.to_datetime(df["Order Date"])

df.to_csv("data/cleaned_sales.csv", index=False)

print("Data cleaned successfully")