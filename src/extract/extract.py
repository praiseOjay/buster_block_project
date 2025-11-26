import os
from dotenv import load_dotenv
from sqlalchemy import create_engine
from pathlib import Path
import pandas as pd

# Load environment variables
load_dotenv(".env.dev")

DB_NAME = os.getenv("SOURCE_DB_NAME")
DB_USER = os.getenv("SOURCE_DB_USER")
DB_PASSWORD = os.getenv("SOURCE_DB_PASSWORD")
DB_HOST = os.getenv("SOURCE_DB_HOST")
DB_PORT = os.getenv("SOURCE_DB_PORT")

print("Loaded environment variables:")
print("DB_NAME:", DB_NAME)
print("DB_USER:", DB_USER)
print("DB_HOST:", DB_HOST)
print("DB_PORT:", DB_PORT)

# Connect to the database
try:
    engine = create_engine(
        f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
    )
    print("\nConnected to the database successfully")
except Exception as e:
    print("\n Database connection failed!")
    print(e)
    raise

# Load SQL file
sql_file_path = Path("src/sql/test.sql")

print("\nLoading SQL file:", sql_file_path)

with open(sql_file_path, "r") as file:
    sql_query = file.read()

# Execute SQL query
try:
    df = pd.read_sql(sql_query, engine)
    print("SQL query executed and data loaded into DataFrame")
except Exception as e:
    print("\n Error executing SQL query:")
    print(e)
    raise


# Save CSV file
output_path = Path("data/raw/test_saved.csv")
output_path.parent.mkdir(parents=True, exist_ok=True)

df.to_csv(output_path, index=False)

print("\nData saved to CSV file successfully at:", output_path.resolve())
