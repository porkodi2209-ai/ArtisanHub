SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Artisan
  3  WHERE Price > (
  4      SELECT AVG(Price)
  5      FROM Artisan
  6  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Beaded Necklace
       950

       103
Wall Painting
      1500

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       104
Handmade Tote Bag
       950

       108
Decorative Painting

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
      1800


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Artisan
  3  WHERE Price = (
  4      SELECT MAX(Price)
  5      FROM Artisan
  6  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       108
Decorative Painting
      1800


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Artisan
  3  WHERE Price < (
  4      SELECT AVG(Price)
  5      FROM Artisan
  6  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       102
Clay Vase
       650

       105
Wooden Candle Holder
       450

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       106
Terracotta Pot
       550

       107
Traditional Earrings

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       700
