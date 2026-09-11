SQL> CREATE TABLE Artisan (
  2      Product_ID NUMBER PRIMARY KEY,
  3      Product_Name VARCHAR2(100) NOT NULL,
  4      Brand_ID NUMBER,
  5      Category_ID NUMBER,
  6      Price NUMBER(10,2),
  7      Stock NUMBER,
  8      Description CLOB,
  9      Skin_Type VARCHAR2(30),
 10      Rating NUMBER(2,1),
 11      Expiry_Date DATE,
 12      FOREIGN KEY (Category_ID) REFERENCES Cate_gory(Category_ID)
 13  );

Table created.

SQL> INSERT INTO Artisan VALUES
  2  (101, 'Beaded Necklace', 1, 1, 850, 20, 'Handmade beaded necklace', 'All', 4.5, TO_DATE('15-12-2027','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (102, 'Clay Vase', 2, 5, 650, 15, 'Traditional handmade clay vase', 'All', 4.2, TO_DATE('20-10-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (103, 'Wall Painting', 3, 4, 1500, 10, 'Handmade artistic wall painting', 'All', 4.7, TO_DATE('10-08-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (104, 'Handmade Tote Bag', 4, 3, 950, 25, 'Eco-friendly handmade tote bag', 'All', 4.4, TO_DATE('05-11-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (105, 'Wooden Candle Holder', 5, 2, 450, 30, 'Decorative wooden candle holder', 'All', 4.1, TO_DATE('12-09-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (106, 'Terracotta Pot', 2, 5, 550, 18, 'Handmade terracotta pot', 'All', 4.3, TO_DATE('25-12-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (107, 'Traditional Earrings', 1, 1, 700, 12, 'Traditional handmade earrings', 'All', 4.6, TO_DATE('18-07-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (108, 'Decorative Painting', 3, 4, 1800, 8, 'Decorative handmade painting', 'All', 4.8, TO_DATE('30-06-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (109, 'Jute Handbag', 4, 3, 750, 22, 'Eco-friendly handmade jute handbag', 'All', 4.5, TO_DATE('15-09-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Artisan VALUES
  2  (110, 'Macrame Wall Hanging', 5, 2, 1200, 14, 'Handmade macrame wall decoration', 'All', 4.4, TO_DATE('22-11-2028','DD-MM-YYYY'));

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
SQL> SELECT *
  2  FROM Artisan
  3  WHERE Product_ID IN (101, 104);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Handmade beaded necklace
All                                   4.5 15-DEC-27


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Eco-friendly handmade tote bag
All                                   4.4 05-NOV-28
  
SQL> UPDATE Artisan
  2  SET Price = 950
  3  WHERE Product_ID = 101;

1 row updated.

SQL> UPDATE Artisan
  2  SET Stock = 30
  3  WHERE Product_ID = 104;

1 row updated.

SQL> DELETE FROM Artisan
  2  WHERE Product_ID = 109;

1 row deleted.

SQL> DELETE FROM Artisan
  2  WHERE Product_ID = 110;

1 row deleted.

SQL> SELECT * FROM Artisan;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Handmade beaded necklace
All                                   4.5 15-DEC-27


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Traditional handmade clay vase
All                                   4.2 20-OCT-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Handmade artistic wall painting
All                                   4.7 10-AUG-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Eco-friendly handmade tote bag
All                                   4.4 05-NOV-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
       105
Wooden Candle Holder
         5           2        450         30

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Decorative wooden candle holder
All                                   4.1 12-SEP-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Handmade terracotta pot
All                                   4.3 25-DEC-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Traditional handmade earrings
All                                   4.6 18-JUL-28


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  BRAND_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
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
SKIN_TYPE                          RATING EXPIRY_DA
------------------------------ ---------- ---------
Decorative handmade painting
All                                   4.8 30-JUN-28


8 rows selected.

SELECT c.Category_Name,
       a.Product_ID,
       a.Product_Name,
       a.Price,
       a.Stock
FROM Cate_gory c
JOIN Artisan a
ON c.Category_ID = a.Category_ID
ORDER BY c.Category_Name;
CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Handmade Bags                                             104
Handmade Tote Bag
       950         30

Home Decor                                                105
Wooden Candle Holder
       450         30

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

Jewellery                                                 107
Traditional Earrings
       700         12

Jewellery                                                 101
Beaded Necklace

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
       950         20

Paintings                                                 103
Wall Painting
      1500         10

Paintings                                                 108

CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Decorative Painting
      1800          8

Pottery                                                   106
Terracotta Pot
       550         18


CATEGORY_NAME                                      PRODUCT_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Pottery                                                   102
Clay Vase
       650         15


8 rows selected.
