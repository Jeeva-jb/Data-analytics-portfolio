# E-commerce Sales Data Analysis

## 🎯 Topic
Exploratory Data Analysis (EDA) on E-commerce Business

***

## 💡 Objective

The primary objectives of this EDA are to:

1.  **Ensuring Data Integrity:** Implementing robust data cleaning to handle missing values (especially in `CustomerID`), correct data types (e.g., converting `InvoiceDate` to datetime), and filter out invalid or cancelled transactions (negative `Quantity`).
2.  **Determine Key Relationships:** Use correlation analysis (heatmaps) to quantify the linear relationships between numerical variables. 
3.  **Identify Geographic Trends:** Visualize regional performance to highlight areas of high and low activity, suggesting where business focus should be directed.
4.  **Optimizing Inventory:** Determining top-selling and most profitable products to inform inventory management and procurement decisions.

***

## 📈 Findings

* **Data Distribution:** The data is distributed narrow for quantity and unit price which indicates that the the low quantity of products has high impact and the product with low unit price has high impact interms of orders.
* **Correlation Analysis:** The quantity and UnitPrice has very weak negative correlation which means that there is no linear relationship between quantity and UnitPrice.
* **Geographic Focus:** The **United Kingdom** is the dominant market, but **"Germany,France,Eire"** shows a significant average order value, indicating potential for focused international expansion.

***

## 🛠️ Tools and Libraries Used

The entire analysis pipeline was conducted using the following standard Python libraries:

* **Pandas:** Essential for data loading, cleaning, manipulation, and time-series analysis.
* **NumPy:** Used for high-performance numerical operations.
* **Seaborn & Matplotlib:** Core libraries for creating professional and informative data visualizations (heatmaps, histograms, bar plots).

