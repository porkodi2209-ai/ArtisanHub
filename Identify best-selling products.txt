SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         SUM(od.Quantity) AS Total_Quantity_Sold
  4  FROM Artisan a
  5  JOIN Order_Details od
  6  ON a.Product_ID = od.Product_ID
  7  GROUP BY a.Product_ID, a.Product_Name
  8  ORDER BY Total_Quantity_Sold DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       106
Terracotta Pot
                  2

       102
Clay Vase
                  1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------

       103
Wall Painting
                  1

       108
Decorative Painting

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
                  1

       105
Wooden Candle Holder
                  1

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
Traditional Earrings
                  1

       101
Beaded Necklace
                  1


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       104
Handmade Tote Bag
                  1


8 rows selected.

SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         SUM(od.Quantity) AS Total_Quantity_Sold
  4  FROM Artisan a
  5  JOIN Order_Details od
  6  ON a.Product_ID = od.Product_ID
  7  GROUP BY a.Product_ID, a.Product_Name
  8  ORDER BY Total_Quantity_Sold DESC
  9  FETCH FIRST 1 ROW ONLY;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       106
Terracotta Pot
                  2


SQL> SELECT a.Product_ID,
  2         a.Product_Name,
  3         SUM(od.Quantity * od.Price) AS Total_Revenue
  4  FROM Artisan a
  5  JOIN Order_Details od
  6  ON a.Product_ID = od.Product_ID
  7  GROUP BY a.Product_ID, a.Product_Name
  8  ORDER BY Total_Revenue DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_REVENUE
-------------
       108
Decorative Painting
         1800

       103
Wall Painting
         1500

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_REVENUE
-------------

       106
Terracotta Pot
         1100

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_REVENUE
-------------
          950

       101
Beaded Necklace
          850

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_REVENUE
-------------
Traditional Earrings
          700

       102
Clay Vase
          650


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_REVENUE
-------------
       105
Wooden Candle Holder
          450


8 rows selected.