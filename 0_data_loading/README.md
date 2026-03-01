##  Step 0: Data Loading to MySQL

Before starting the SQL analysis, I needed to load 12 monthly CSV files into MySQL.

Instead of using the traditional MySQL import wizard (which is very slow and error-prone for handling multiple large files), I created a Python script to automate the process.

### Why I Used Python

- The import wizard requires manual uploads for each file and is very slow.
- It can fail with large datasets.
- Automation is more efficient and reliable and very fast

### What this Python Script Does
- Reads all CSV files using `pandas`
- Connects to MySQL
- Creates the `cyclistic` database (if not exists)
- Uploads each monthly dataset as a separate table

This step ensured a clean and repeatable data loading process before beginning data cleaning and analysis.

