--GLOBAL SUPERSTORE PROJECT
--Author - Lalita Mehra

Select * from Global_Superstore;

Select Count(*) As TotalColumn From Global_Superstore;

Select top 10 * from Global_Superstore;

Select Count(*) As TotalColumns,
Count(Sales) As TotalSale_Count,
Count(Profit) As TotalProfit_Count,
Count(Order_ID) AS OrderID_Count,
Count(Customer_ID) As CustomerID_Count
From Global_Superstore;

Select * from Global_Superstore
where Profit is null;


Select Min(Order_date) As FirstOrderdate,
Max(Order_date) As LastOrderDate
from Global_Superstore;


--TotalSale
Select Sum(Sales) As TotalSale 
from Global_Superstore;

--Total Profit
Select Sum(Profit) As TotalProfit
from Global_Superstore;

--Total Orders
Select Count(Distinct Order_ID) As TotalOrders
from Global_Superstore;

--Total Customers
Select Count(Distinct Customer_ID) As TotalCustomers
from Global_Superstore;

--Average Shipping Days
Select Avg(Shipping_Days) As AverageSHippingDays
from Global_Superstore;


--SALES ANALYSIS:

--Sales By Market
Select 
	Market,
	Round(Sum(Sales),2) As TotalSale
from Global_Superstore
Group by Market
Order by TotalSale Desc;

--Sales By Region
Select 
	Region,
	Round(Sum(Sales),2) As TotalSale
from Global_Superstore
Group by Region
Order By TotalSale Desc;

--Sales by Category
Select 
	Category,
	Round(Sum(Sales),2) As TotalSale
From Global_Superstore
Group by Category
Order By TotalSale Desc; 

--Sales By Sub-Category
Select 
	Sub_Category,
	Round(Sum(Sales),2) As TotalSale
From Global_Superstore
Group by Sub_Category
Order by TotalSale Desc;

--PROFIT ANALYSIS:

--Profit By Market
Select 
	Market,
	Round(Sum(Profit),2) As TotalProfit
from Global_Superstore
Group by Market
Order by TotalProfit Desc;

--Profit Margin By Market
Select 
	Market,
	Round(Sum(Sales),2) As TotalSale,
	Round(Sum(Profit),2) As TotalProfit,
	Round((Sum(Profit)/Sum(Sales))*100,2) As ProfitMarginPercent
from Global_Superstore
Group by Market
Order by ProfitMarginPercent Desc;


--Profit By Region
Select 
	Region,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Region
Order by TotalProfit Desc:

--Profit by Category
Select 
	Category,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Category
Order By TotalProfit Desc;


--Profit By Sub-Category
Select 
	Sub_Category,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Sub_Category
Order by TotalProfit Desc;


--Top 10 Countries by Profit
Select Top 10
	Country,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Country
Order by TotalProfit Desc;

--PRODUCT ANALYSIS:


--Top 10 Products by Sales
Select Top 10 
	Product_Name,
	Round(Sum(Sales),2) As TotalSale
From Global_Superstore
Group by Product_Name
Order by TotalSale Desc;

--Top 10 Products by Profit
Select Top 10 
	Product_Name,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Product_Name
Order by TotalProfit Desc;

--Top 10 Loss-Making Products
Select Top 10 
	Product_Name,
	Round(Sum(Profit),2) As Total_Loss
From Global_Superstore
Group by Product_Name
Order by Total_Loss;

--CUSTOMER ANALYSIS

--Top 10 Customers by Sales
Select Top 10 
	Customer_Name,
	Round(Sum(Sales),2) As Totalsale
from Global_Superstore
Group by Customer_Name
Order by Totalsale desc;

--Top 10 Customers by Profit
Select Top 10 
	Customer_Name,
	Round(Sum(Profit),2) As TotalProfit
from Global_Superstore
Group by Customer_Name
Order by TotalProfit desc;

--Customers Generating Losses
Select Top 10
	Customer_Name,
	Round(Sum(Sales),2) As TotalSale
from Global_Superstore
Group by Customer_Name
Order by TotalSale Asc;

--SHIPPING ANALYSIS

--Average Shipping Days by Ship Mode
Select	
	Ship_Mode,
	Round(Avg(Shipping_Days),2) As AvgShippingDays
From Global_Superstore
Group by Ship_Mode
Order by AvgShippingDays;

--Profit by Ship Mode
Select 
	Ship_Mode,
	Round(Sum(Profit),2) As TotalProfit
From Global_Superstore
Group by Ship_Mode
Order By TotalProfit Desc;

--Sales by Ship Mode
Select 
	Ship_Mode,
	Round(Sum(Sales),2) As TotalSale
From Global_Superstore
Group by Ship_Mode
Order By TotalSale Desc;

--TIME SERIES ANALYSIS

--Yearly Sales Trend
Select
	Year(Order_Date) As Year_Order,
	Round(Sum(Sales),2) As TotalSale
from Global_Superstore
Group by Year(Order_Date) 
Order by Year_Order;

--Yearly Profit Trend
Select
	Year(Order_Date) As Year_Order,
	Round(Sum(Profit),2) As TotalProfit
from Global_Superstore
Group by Year(Order_Date) 
Order by Year_Order;

--Monthly Trend
Select 
	Year(Order_Date) As Year_Order,
	Month(Order_Date) As Month_Order,
	Round(Sum(Sales),2) As TotalSale
From Global_Superstore
Group by Month(Order_Date), Year(Order_Date)
Order by  Year_Order, Month_Order;


































