SQL> SELECT *
  2  FROM Artisan
  3  WHERE Price > 1000;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       103
Wall Painting
         3           4       1500         10

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Handmade artistic wall painting
All                                   4.7 10-AUG-28        203


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       108
Decorative Painting
         3           4       1800          8

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Decorative handmade painting
All                                   4.8 30-JUN-28        208


SQL> SELECT *
  2  FROM Artisan
  3  WHERE Category_ID IN (1, 5);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       101
Beaded Necklace
         1           1        950         20

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Handmade beaded necklace
All                                   4.5 15-DEC-27        201


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       102
Clay Vase
         2           5        650         15

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Traditional handmade clay vase
All                                   4.2 20-OCT-28        202


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       106
Terracotta Pot
         2           5        550         18

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Handmade terracotta pot
All                                   4.3 25-DEC-28        206


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       107
Traditional Earrings
         1           1        700         12

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Traditional handmade earrings
All                                   4.6 18-JUL-28        207


SQL> SELECT *
  2  FROM Artisan
  3  WHERE Product_Name LIKE '%Handmade%';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
       104
Handmade Tote Bag
         4           3        950         30

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA  SELLER_ID
------------------------------ ---------- --------- ----------
Eco-friendly handmade tote bag
All                                   4.4 05-NOV-28        204


SQL> SELECT *
  2  FROM Orders
  3  WHERE Order_Status = 'Delivered';

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
       201         101 01-OCT-26          850 Delivered
       203         104 03-OCT-26          950 Delivered
       204         105 04-OCT-26          450 Delivered
       207         108 07-OCT-26         1800 Delivered

SQL> SELECT *
  2  FROM Orders
  3  WHERE Total_Amount BETWEEN 500 AND 1500;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
       201         101 01-OCT-26          850 Delivered
       202         103 02-OCT-26         1500 Shipped
       203         104 03-OCT-26          950 Delivered
       205         106 05-OCT-26         1100 Pending
       206         107 06-OCT-26          700 Shipped
       208         109 08-OCT-26          750 Processing

6 rows selected.
