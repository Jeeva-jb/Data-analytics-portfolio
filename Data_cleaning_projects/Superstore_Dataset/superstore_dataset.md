# Retail Sales Data Cleaning – Superstore Dataset

## Objective:
To clean a real-world Superstore Sales dataset by handling missing values, duplicates, standardizing formats, and removing invalid entries.

## Process:
1. Loaded raw dataset using pandas.
2. Handled missing values by filling Discount and dropping rows missing Customer ID.
3. Removed duplicates to ensure data integrity.
4. Standardized text fields (Region, Product Name).
5. Converted date columns and Postal Code to correct types.
6. Filtered out invalid Quantity/Sales and extreme outliers in Profit.
7. Visualized Profit distribution to inspect outliers.
8. Saved a clean dataset ready for analysis and visualization projects.

## Tools Used:
- Python (Pandas, NumPy)
- Matplotlib & Seaborn for visualizations