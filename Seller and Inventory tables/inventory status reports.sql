SQL> SELECT
  2      i.Inventory_ID,
  3      a.Product_ID,
  4      a.Product_Name,
  5      s.Seller_Name,
  6      i.Stock_Quantity,
  7      i.Reorder_Level,
  8      i.Availability
  9  FROM Inventory i
 10  JOIN Artisan a
 11  ON i.Product_ID = a.Product_ID
 12  JOIN Seller s
 13  ON i.Seller_ID = s.Seller_ID
 14  ORDER BY i.Inventory_ID;

INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         301        101
Beaded Necklace
Arun Crafts
            20             5 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         302        102
Clay Vase
Meena Handicrafts
            15             5 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         303        103
Wall Painting
Kavi Art Studio
            10             3 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         304        104
Handmade Tote Bag
Ravi Handmade
            30             5 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         305        105
Wooden Candle Holder
Priya Crafts
             0             5 Unavailable


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         306        106
Terracotta Pot
Anu Creations
            18             5 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         307        107
Traditional Earrings
Karthik Arts
            12             3 Available


INVENTORY_ID PRODUCT_ID
------------ ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY REORDER_LEVEL AVAILABILITY
-------------- ------------- --------------------
         308        108
Decorative Painting
Divya Handcrafts
             0             3 Unavailable


8 rows selected.