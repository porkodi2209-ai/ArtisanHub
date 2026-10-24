SQL> CREATE TABLE Order_Details (
  2      Order_Detail_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Product_ID NUMBER,
  5      Quantity NUMBER,
  6      Price NUMBER(10,2),
  7      FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
  8      FOREIGN KEY (Product_ID) REFERENCES Artisan(Product_ID)
  9  );

Table created.

SQL> INSERT INTO Order_Details VALUES
  2  (301, 201, 101, 1, 850);

1 row created.

SQL> INSERT INTO Order_Details VALUES
  2  (308, 208, 102, 1, 650);

1 row created.


SQL> INSERT INTO Order_Details VALUES
  2  (302, 202, 103, 1, 1500);

1 row created.


SQL> INSERT INTO Order_Details VALUES
  2  (303, 203, 104, 1, 950);

1 row created.

SQL> INSERT INTO Order_Details VALUES
  2  (304, 204, 105, 1, 450);

1 row created.


SQL> INSERT INTO Order_Details VALUES
  2  (305, 205, 106, 1, 550);

1 row created.


SQL> INSERT INTO Order_Details VALUES
  2  (306, 206, 107, 1, 700);

1 row created.


SQL> INSERT INTO Order_Details VALUES
  2  (307, 207, 108, 1, 1800);

1 row created.
SQL> SELECT * FROM Order_Details;

ORDER_DETAIL_ID   ORDER_ID PRODUCT_ID   QUANTITY      PRICE
--------------- ---------- ---------- ---------- ----------
            301        201        101          1        850
            308        208        102          1        650
            302        202        103          1       1500
            303        203        104          1        950
            304        204        105          1        450
            305        205        106          1        550
            306        206        107          1        700
            307        207        108          1       1800

8 rows selected.

SQL> UPDATE Order_Details
  2  SET Quantity = 2
  3  WHERE Order_Detail_ID = 305;

1 row updated.


SQL> COMMIT;

Commit complete.
