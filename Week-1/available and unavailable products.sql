SQL> SELECT
  2      Product_ID,
  3      Stock_Quantity,
  4      '[' || Availability || ']' AS Availability_Check
  5  FROM Inventory
  6  ORDER BY Product_ID;

PRODUCT_ID STOCK_QUANTITY AVAILABILITY_CHECK
---------- -------------- ----------------------
       101             20 [Available]
       102             15 [Available]
       103             10 [Available]
       104             30 [Available]
       105              0 [Unavailable]
       106             18 [Available]
       107             12 [Available]
       108              0 [Unavailable]

8 rows selected.

SQL> SELECT
  2      a.Product_ID,
  3      a.Product_Name,
  4      s.Seller_Name,
  5      i.Stock_Quantity,
  6      i.Availability
  7  FROM Artisan a
  8  JOIN Seller s
  9  ON a.Seller_ID = s.Seller_ID
 10  JOIN Inventory i
 11  ON a.Product_ID = i.Product_ID
 12  WHERE i.Stock_Quantity > 0
 13  ORDER BY a.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       101
Beaded Necklace
Arun Crafts
            20 Available


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       102
Clay Vase
Meena Handicrafts
            15 Available


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       103
Wall Painting
Kavi Art Studio
            10 Available


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       104
Handmade Tote Bag
Ravi Handmade
            30 Available


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       106
Terracotta Pot
Anu Creations
            18 Available


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       107
Traditional Earrings
Karthik Arts
            12 Available


6 rows selected.

SQL> SELECT
  2      a.Product_ID,
  3      a.Product_Name,
  4      s.Seller_Name,
  5      i.Stock_Quantity,
  6      i.Availability
  7  FROM Artisan a
  8  JOIN Seller s
  9  ON a.Seller_ID = s.Seller_ID
 10  JOIN Inventory i
 11  ON a.Product_ID = i.Product_ID
 12  WHERE i.Stock_Quantity = 0
 13  ORDER BY a.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       105
Wooden Candle Holder
Priya Crafts
             0 Unavailable


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       108
Decorative Painting
Divya Handcrafts
             0 Unavailable


SQL> SELECT
  2      a.Product_ID,
  3      a.Product_Name,
  4      s.Seller_Name,
  5      i.Stock_Quantity,
  6      i.Availability
  7  FROM Artisan a
  8  JOIN Seller s
  9  ON a.Seller_ID = s.Seller_ID
 10  JOIN Inventory i
 11  ON a.Product_ID = i.Product_ID
 12  WHERE i.Stock_Quantity = 0
 13  ORDER BY a.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       105
Wooden Candle Holder
Priya Crafts
             0 Unavailable


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY AVAILABILITY
-------------- --------------------
       108
Decorative Painting
Divya Handcrafts
             0 Unavailable


SQL> SELECT
  2      a.Product_ID,
  3      a.Product_Name,
  4      s.Seller_Name,
  5      i.Stock_Quantity,
  6      i.Reorder_Level
  7  FROM Inventory i
  8  JOIN Artisan a
  9  ON i.Product_ID = a.Product_ID
 10  JOIN Seller s
 11  ON i.Seller_ID = s.Seller_ID
 12  WHERE i.Stock_Quantity <= i.Reorder_Level
 13  ORDER BY i.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL
-------------- -------------
       105
Wooden Candle Holder
Priya Crafts
             0             5


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL
-------------- -------------
       108
Decorative Painting
Divya Handcrafts
             0             3


SQL> SELECT
  2      s.Seller_ID,
  3      s.Seller_Name,
  4      COUNT(i.Product_ID) AS Total_Products,
  5      SUM(i.Stock_Quantity) AS Total_Stock
  6  FROM Seller s
  7  LEFT JOIN Inventory i
  8  ON s.Seller_ID = i.Seller_ID
  9  GROUP BY s.Seller_ID, s.Seller_Name
 10  ORDER BY s.Seller_ID;

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------
       201
Arun Crafts
             1          20

       202
Meena Handicrafts
             1          15

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------

       203
Kavi Art Studio
             1          10

       204
Ravi Handmade

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------
             1          30

       205
Priya Crafts
             1           0

       206

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------
Anu Creations
             1          18

       207
Karthik Arts
             1          12


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------
       208
Divya Handcrafts
             1           0

       209
Vijay Crafts
             0

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_PRODUCTS TOTAL_STOCK
-------------- -----------

       210
Nila Creations
             0


10 rows selected.