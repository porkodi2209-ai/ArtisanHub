SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Artisan
  3  WHERE Price BETWEEN 500 AND 1500;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       101
Beaded Necklace
       950

       102
Clay Vase
       650

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       103
Wall Painting
      1500

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       950

       106
Terracotta Pot
       550

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Traditional Earrings
       700


6 rows selected.

SQL> SELECT Product_ID, Product_Name, Category_ID
  2  FROM Artisan
  3  WHERE Category_ID = 1;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID
-----------
       101
Beaded Necklace
          1

       107
Traditional Earrings
          1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID
-----------


SQL> SELECT Product_ID, Product_Name, Stock
  2  FROM Artisan
  3  WHERE Stock > 0;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
       101
Beaded Necklace
        20

       102
Clay Vase
        15

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------

       103
Wall Painting
        10

       104
Handmade Tote Bag

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
        30

       105
Wooden Candle Holder
        30

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
Terracotta Pot
        18

       107
Traditional Earrings
        12


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
       108
Decorative Painting
         8


8 rows selected.

SQL> SELECT Product_ID, Product_Name, Stock
  2  FROM Artisan
  3  WHERE Stock < 15;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------
       103
Wall Painting
        10

       107
Traditional Earrings
        12

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     STOCK
----------

       108
Decorative Painting
         8

