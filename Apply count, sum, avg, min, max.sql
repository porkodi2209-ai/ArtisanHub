SQL> SELECT COUNT(*) AS Total_Customers
  2  FROM Customer;

TOTAL_CUSTOMERS
---------------
              8
SQL> SELECT COUNT(*) AS Total_Orders
  2  FROM Orders;

TOTAL_ORDERS
------------
           8

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES
-----------
       8100

SQL> SELECT AVG(Total_Amount) AS Average_Sales
  2  FROM Orders;

AVERAGE_SALES
-------------
       1012.5

SQL> SELECT MAX(Total_Amount) AS Maximum_Sales
  2  FROM Orders;

MAXIMUM_SALES
-------------
         1800