SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         COUNT(o.Order_ID) AS Total_Orders,
  4         NVL(SUM(o.Total_Amount), 0) AS Total_Purchase,
  5         NVL(AVG(o.Total_Amount), 0) AS Average_Order
  6  FROM Customer c
  7  LEFT JOIN Orders o
  8  ON c.Customer_ID = o.Customer_ID
  9  GROUP BY c.Customer_ID, c.Full_Name
 10  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER
------------ -------------- -------------
        108
Divya Iyer
           1           1800          1800

        103
Rahul
           1           1500          1500

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER
------------ -------------- -------------

        106
Meera
           1           1100          1100

        104
Mithra

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER
------------ -------------- -------------
           1            950           950

        101
Vijay Kumar
           1            850           850

        109

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER
------------ -------------- -------------
Mazhai Megan
           1            750           750

        107
Karthikeyan
           1            700           700


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER
------------ -------------- -------------
        105
Arjun Das
           1            450           450


8 rows selected.

SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         a.Price,
  4         NVL(SUM(od.Quantity), 0) AS Quantity_Sold,
  5         NVL(SUM(od.Quantity * od.Price), 0) AS Total_Revenue
  6  FROM Artisan a
  7  LEFT JOIN Order_Details od
  8  ON a.Product_ID = od.Product_ID
  9  GROUP BY a.Product_ID, a.Product_Name, a.Price
 10  ORDER BY Total_Revenue DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE QUANTITY_SOLD TOTAL_REVENUE
---------- ------------- -------------
       108
Decorative Painting
      1800             1          1800

       103
Wall Painting
      1500             1          1500

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE QUANTITY_SOLD TOTAL_REVENUE
---------- ------------- -------------

       106
Terracotta Pot
       550             2          1100

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE QUANTITY_SOLD TOTAL_REVENUE
---------- ------------- -------------
       950             1           950

       101
Beaded Necklace
       950             1           850

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE QUANTITY_SOLD TOTAL_REVENUE
---------- ------------- -------------
Traditional Earrings
       700             1           700

       102
Clay Vase
       650             1           650


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE QUANTITY_SOLD TOTAL_REVENUE
---------- ------------- -------------
       105
Wooden Candle Holder
       450             1           450


8 rows selected.

SQL> SELECT COUNT(*) AS Total_Orders,
  2         SUM(Total_Amount) AS Total_Revenue,
  3         AVG(Total_Amount) AS Average_Order_Value,
  4         MIN(Total_Amount) AS Minimum_Order,
  5         MAX(Total_Amount) AS Maximum_Order
  6  FROM Orders;

TOTAL_ORDERS TOTAL_REVENUE AVERAGE_ORDER_VALUE MINIMUM_ORDER MAXIMUM_ORDER
------------ ------------- ------------------- ------------- -------------
           8          8100              1012.5           450          1800