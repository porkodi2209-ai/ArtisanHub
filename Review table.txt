SQL> CREATE TABLE Review (
  2      Review_ID NUMBER PRIMARY KEY,
  3      Customer_ID NUMBER,
  4      Product_ID NUMBER,
  5      Review_Comment VARCHAR2(200),
  6      Review_Date DATE,
  7      FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  8      FOREIGN KEY (Product_ID) REFERENCES Artisan(Product_ID)
  9  );

Table created.

SQL> INSERT INTO Review VALUES
  2  (601, 101, 101, 'Very beautiful handmade product', TO_DATE('02-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (602, 103, 102, 'Good quality clay vase', TO_DATE('03-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (603, 104, 103, 'Excellent quality painting', TO_DATE('04-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (604, 105, 104, 'Good quality tote bag', TO_DATE('05-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (605, 106, 105, 'Nice handmade design', TO_DATE('06-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (606, 107, 106, 'Good traditional product', TO_DATE('07-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (607, 108, 107, 'Beautiful earrings', TO_DATE('08-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Review VALUES
  2  (608, 109, 108, 'Amazing painting quality', TO_DATE('09-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
SQL> SELECT * FROM Review;

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_COMMENT
--------------------------------------------------------------------------------
REVIEW_DA
---------
       601         101        101
Very beautiful handmade product
02-OCT-26

       602         103        102
Good quality clay vase
03-OCT-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_COMMENT
--------------------------------------------------------------------------------
REVIEW_DA
---------

       603         104        103
Excellent quality painting
04-OCT-26

       604         105        104
Good quality tote bag

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_COMMENT
--------------------------------------------------------------------------------
REVIEW_DA
---------
05-OCT-26

       605         106        105
Nice handmade design
06-OCT-26

       606         107        106

 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_COMMENT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good traditional product
07-OCT-26

       607         108        107
Beautiful earrings
08-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
REVIEW_COMMENT
--------------------------------------------------------------------------------
REVIEW_DA
---------
       608         109        108
Amazing painting quality
09-OCT-26


8 rows selected.
