SQL> SELECT Product_ID, Product_Name, Category_ID
  2  FROM Artisan
  3  WHERE Category_ID IN (
  4      SELECT Category_ID
  5      FROM Artisan
  6      GROUP BY Category_ID
  7      HAVING COUNT(*) = (
  8          SELECT MAX(COUNT(*))
  9          FROM Artisan
 10          GROUP BY Category_ID
 11      )
 12  );

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

       102
Clay Vase
          5

       106
Terracotta Pot

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID
-----------
          5

       103
Wall Painting
          4

       108

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID
-----------
Decorative Painting
          4


6 rows selected.

SQL> SELECT Customer_ID, Full_Name
  2  FROM Customer
  3  WHERE Customer_ID IN (
  4      SELECT Customer_ID
  5      FROM Orders
  6  );

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
        101
Vijay Kumar

        103
Rahul

        104
Mithra


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
        105
Arjun Das

        106
Meera

        107
Karthikeyan


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
        108
Divya Iyer

        109
Mazhai Megan


8 rows selected.

SQL> SELECT Product_ID, Product_Name
  2  FROM Artisan
  3  WHERE Product_ID IN (
  4      SELECT Product_ID
  5      FROM Order_Details
  6  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
       101
Beaded Necklace

       102
Clay Vase

       103
Wall Painting


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
       104
Handmade Tote Bag

       105
Wooden Candle Holder

       106
Terracotta Pot


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
       107
Traditional Earrings

       108
Decorative Painting


8 rows selected.