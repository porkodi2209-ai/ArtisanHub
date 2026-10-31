SQL> SELECT c.Full_Name,
  2         o.Order_ID,
  3         o.Order_Date,
  4         a.Product_Name,
  5         od.Quantity,
  6         od.Price,
  7         o.Total_Amount,
  8         o.Order_Status,
  9         p.Payment_Mode,
 10         p.Payment_Date,
 11         p.Payment_Status
 12  FROM Customer c
 13  JOIN Orders o
 14  ON c.Customer_ID = o.Customer_ID
 15  JOIN Order_Details od
 16  ON o.Order_ID = od.Order_ID
 17  JOIN Artisan a
 18  ON od.Product_ID = a.Product_ID
 19  LEFT JOIN Payment p
 20  ON o.Order_ID = p.Order_ID
 21  ORDER BY o.Order_ID;

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Vijay Kumar
       201 01-OCT-26
Beaded Necklace

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1        850          850 Delivered
UPI                            01-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Rahul
       202 02-OCT-26
Wall Painting

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1       1500         1500 Shipped
Credit Card                    02-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Mithra
       203 03-OCT-26
Handmade Tote Bag

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1        950          950 Delivered
Debit Card                     03-OCT-26 Failed


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Arjun Das
       204 04-OCT-26
Wooden Candle Holder

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1        450          450 Delivered
Cash on Delivery               04-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Meera
       205 05-OCT-26
Terracotta Pot

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         2        550         1100 Pending
UPI                            05-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Karthikeyan
       206 06-OCT-26
Traditional Earrings

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1        700          700 Shipped
Credit Card                    06-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Divya Iyer
       207 07-OCT-26
Decorative Painting

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1       1800         1800 Delivered
Debit Card                     07-OCT-26 Successful


FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
Mazhai Megan
       208 08-OCT-26
Clay Vase

FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT
---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY      PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
PAYMENT_MODE                   PAYMENT_D PAYMENT_STATUS
------------------------------ --------- --------------------
         1        650          750 Processing
UPI                            08-OCT-26 Successful


8 rows selected.
