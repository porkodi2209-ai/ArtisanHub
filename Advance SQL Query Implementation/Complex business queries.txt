SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         c.Category_Name,
  4         NVL(SUM(od.Quantity), 0) AS Total_Quantity
  5  FROM Artisan a
  6  JOIN Cate_gory c
  7  ON a.Category_ID = c.Category_ID
  8  LEFT JOIN Order_Details od
  9  ON a.Product_ID = od.Product_ID
 10  GROUP BY a.Product_ID, a.Product_Name, c.Category_Name;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                      TOTAL_QUANTITY
-------------------------------------------------- --------------
       101
Beaded Necklace
Jewellery                                                       1

       102
Clay Vase
Pottery                                                         1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                      TOTAL_QUANTITY
-------------------------------------------------- --------------

       103
Wall Painting
Paintings                                                       1

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                      TOTAL_QUANTITY
-------------------------------------------------- --------------
Handmade Bags                                                   1

       105
Wooden Candle Holder
Home Decor                                                      1

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                      TOTAL_QUANTITY
-------------------------------------------------- --------------
Terracotta Pot
Pottery                                                         2

       107
Traditional Earrings
Jewellery                                                       1


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                      TOTAL_QUANTITY
-------------------------------------------------- --------------
       108
Decorative Painting
Paintings                                                       1


8 rows selected.

SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         o.Order_ID,
  4         o.Total_Amount,
  5         p.Payment_Mode,
  6         p.Payment_Status
  7  FROM Customer c
  8  JOIN Orders o
  9  ON c.Customer_ID = o.Customer_ID
 10  LEFT JOIN Payment p
 11  ON o.Order_ID = p.Order_ID;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
---------- ------------ ------------------------------ --------------------
        101
Vijay Kumar
       201          850 UPI                            Successful

        103
Rahul
       202         1500 Credit Card                    Successful

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
---------- ------------ ------------------------------ --------------------

        104
Mithra
       203          950 Debit Card                     Failed

        105
Arjun Das

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
---------- ------------ ------------------------------ --------------------
       204          450 Cash on Delivery               Successful

        106
Meera
       205         1100 UPI                            Successful

        107

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
---------- ------------ ------------------------------ --------------------
Karthikeyan
       206          700 Credit Card                    Successful

        108
Divya Iyer
       207         1800 Debit Card                     Successful


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT PAYMENT_MODE                   PAYMENT_STATUS
---------- ------------ ------------------------------ --------------------
        109
Mazhai Megan
       208          750 UPI                            Successful


8 rows selected.

SQL> SELECT Product_ID, Product_Name
  2  FROM Artisan a
  3  WHERE NOT EXISTS (
  4      SELECT 1
  5      FROM Order_Details od
  6      WHERE od.Product_ID = a.Product_ID
  7  );

no rows selected

SQL> SELECT c.Category_ID,
  2         c.Category_Name,
  3         SUM(od.Quantity * od.Price) AS Total_Revenue
  4  FROM Cate_gory c
  5  JOIN Artisan a
  6  ON c.Category_ID = a.Category_ID
  7  JOIN Order_Details od
  8  ON a.Product_ID = od.Product_ID
  9  GROUP BY c.Category_ID, c.Category_Name
 10  HAVING SUM(od.Quantity * od.Price) > (
 11      SELECT AVG(Category_Revenue)
 12      FROM (
 13          SELECT SUM(od2.Quantity * od2.Price) AS Category_Revenue
 14          FROM Artisan a2
 15          JOIN Order_Details od2
 16          ON a2.Product_ID = od2.Product_ID
 17          GROUP BY a2.Category_ID
 18      )
 19  );

CATEGORY_ID CATEGORY_NAME                                      TOTAL_REVENUE
----------- -------------------------------------------------- -------------
          5 Pottery                                              1750
          4 Paintings                                            3300