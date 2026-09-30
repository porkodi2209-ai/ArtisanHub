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