SQL> SELECT COUNT(Order_ID) AS Total_Orders,
  2         SUM(Total_Amount) AS Total_Sales
  3  FROM Orders;

TOTAL_ORDERS TOTAL_SALES
------------ -----------
           8        8100

SQL> SELECT Order_Status,
  2         COUNT(Order_ID) AS Total_Orders,
  3         SUM(Total_Amount) AS Total_Sales
  4  FROM Orders
  5  GROUP BY Order_Status;

ORDER_STATUS         TOTAL_ORDERS TOTAL_SALES
-------------------- ------------ -----------
Delivered                       4        4050
Shipped                         2        2200
Pending                         1        1100
Processing                      1         750

SQL> SELECT Order_Date,
  2         COUNT(Order_ID) AS Total_Orders,
  3         SUM(Total_Amount) AS Daily_Sales
  4  FROM Orders
  5  GROUP BY Order_Date
  6  ORDER BY Order_Date;

ORDER_DAT TOTAL_ORDERS DAILY_SALES
--------- ------------ -----------
01-OCT-26            1         850
02-OCT-26            1        1500
03-OCT-26            1         950
04-OCT-26            1         450
05-OCT-26            1        1100
06-OCT-26            1         700
07-OCT-26            1        1800
08-OCT-26            1         750

8 rows selected.