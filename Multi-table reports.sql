SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         COUNT(o.Order_ID) AS Total_Orders,
  4         NVL(SUM(o.Total_Amount), 0) AS Total_Purchase
  5  FROM Customer c
  6  LEFT JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.Full_Name
  9  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
        108
Divya Iyer
           1           1800

        103
Rahul
           1           1500

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------

        106
Meera
           1           1100

        104
Mithra

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
           1            950

        101
Vijay Kumar
           1            850

        109

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
Mazhai Megan
           1            750

        107
Karthikeyan
           1            700


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
        105
Arjun Das
           1            450


8 rows selected.

SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         SUM(od.Quantity) AS Total_Quantity_Sold,
  4         SUM(od.Quantity * od.Price) AS Total_Sales
  5  FROM Artisan a
  6  JOIN Order_Details od
  7  ON a.Product_ID = od.Product_ID
  8  GROUP BY a.Product_ID, a.Product_Name
  9  ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       108
Decorative Painting
                  1        1800

       103
Wall Painting
                  1        1500

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------

       106
Terracotta Pot
                  2        1100

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
                  1         950

       101
Beaded Necklace
                  1         850

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
Traditional Earrings
                  1         700

       102
Clay Vase
                  1         650


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       105
Wooden Candle Holder
                  1         450


8 rows selected.

SQL> SELECT o.Order_ID,
  2         c.Full_Name,
  3         o.Total_Amount,
  4         p.Payment_Mode,
  5         p.Payment_Status
  6  FROM Orders o
  7  JOIN Customer c
  8  ON o.Customer_ID = c.Customer_ID
  9  LEFT JOIN Payment p
 10  ON o.Order_ID = p.Order_ID
 11  ORDER BY o.Order_ID;

  ORDER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
------------ ------------------------------ --------------------
       201
Vijay Kumar
         850 UPI                            Successful

       202
Rahul
        1500 Credit Card                    Successful

  ORDER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
------------ ------------------------------ --------------------

       203
Mithra
         950 Debit Card                     Failed

       204
Arjun Das

  ORDER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
------------ ------------------------------ --------------------
         450 Cash on Delivery               Successful

       205
Meera
        1100 UPI                            Successful

       206

  ORDER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
------------ ------------------------------ --------------------
Karthikeyan
         700 Credit Card                    Successful

       207
Divya Iyer
        1800 Debit Card                     Successful


  ORDER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
------------ ------------------------------ --------------------
       208
Mazhai Megan
         750 UPI                            Successful


8 rows selected.
