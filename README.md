
# **BRIGHT MOTORS SALES PERFORMANCE & MARKET ANALYSIS**

## **README / PROJECT OVERVIEW**

## ** Project Background**

Bright Motors is a vehicle dealership seeking to improve sales performance, optimize inventory management, and identify opportunities for business growth. This project analyzes historical vehicle sales data to uncover actionable insights that support strategic decision-making.

The analysis focuses on understanding revenue drivers, customer purchasing behavior, regional sales performance, vehicle pricing trends, and profitability indicators.

## ** Project Objectives**

* Identify the car makes and models generating the highest revenue.
* Analyze the relationship between vehicle price, mileage, and age.
* Evaluate regional sales performance across states.
* Understand customer preferences for different vehicle types.
* Assess pricing efficiency using market valuation benchmarks.
* Develop recommendations to improve profitability and operational efficiency.

## ** Dataset Overview**

The dataset contains historical vehicle sales records with information including:

* Vehicle Identification Number (VIN)
* Vehicle Make and Model
* Vehicle Year
* Vehicle Body Type
* Transmission Type
* Odometer Reading (Mileage)
* Vehicle Condition
* Seller Information
* State/Region
* Selling Price
* Manheim Market Report (MMR) Value

## ** Data Preparation**

Data was cleaned and transformed using SQL in Databricks to improve quality and usability.

### Key Data Cleaning Activities:

* Removal of invalid and incomplete records.
* Standardization of text fields (make, model, body type, seller, and state).
* Filtering of unrealistic vehicle years and mileage values.
* Removal of pricing outliers.
* Validation of selling price and market value fields.

### Feature Engineering:

The following analytical fields were created:

* **Market Gap** = Selling Price − MMR
* **Market Gap Percentage**
* **Pricing Position** (Above Market, At Market, Below Market)
* **Price Segment** (Budget, Mid Market, Premium)
* **Mileage Segment** (Low, Medium, High Mileage)
* **Vehicle Age Group** (Used, Old)
* **Condition Rating** (Excellent, Good, Fair, Poor)

## ** Dashboard Components**

The interactive dashboard was developed in Looker Studio and includes:

### **Executive KPIs**

* Total Revenue
* Total Vehicles Sold
* Average Selling Price
* Average Market Gap

### **Sales Performance Analysis**

* Revenue by Vehicle Make
* Revenue by Vehicle Model
* Sales Volume by State
* Top Performing Sellers

### **Pricing & Profitability Analysis**

* Pricing Position Distribution
* Market Gap by State
* Average Selling Price by Vehicle Year

### **Customer Preference Analysis**

* Top 5 Vehicle Body Types by Customer Preference
* Price vs Mileage Relationship
* Vehicle Year vs Selling Price Analysis

## ** Key Business Questions Answered**

* Which vehicle makes and models generate the highest revenue?
* Which regions contribute the most sales volume?
* How does mileage affect vehicle selling price?
* What vehicle categories are most preferred by customers?
* Are vehicles being sold above or below market value?
* Which inventory segments should receive greater investment?

## ** Strategic Recommendations**

* Prioritize inventory for high-demand vehicle makes and body types.
* Expand operations in high-performing regions.
* Review pricing strategies in underperforming markets.
* Focus marketing efforts on the most profitable vehicle segments.
* Improve inventory turnover by aligning stock with customer preferences.
* Monitor market gap trends to enhance pricing competitiveness.

## ** Tools & Technologies Used**

* **Databricks SQL** – Data Cleaning & Transformation
* **Microsoft Excel (CSV Export)** – Data Extraction
* **Looker Studio** – Interactive Dashboard Development
* **PowerPoint** – Executive Presentation & Reporting

## **Expected Business Value**

This analysis provides Bright Motors with data-driven insights to improve sales performance, enhance pricing decisions, optimize inventory allocation, and support future dealership expansion strategies. By leveraging historical sales data, management can make informed decisions that increase profitability and operational efficiency.
