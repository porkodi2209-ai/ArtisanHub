SQL> CREATE TABLE Inventory (
  2      Inventory_ID NUMBER PRIMARY KEY,
  3      Product_ID NUMBER,
  4      Seller_ID NUMBER,
  5      Stock_Quantity NUMBER,
  6      Reorder_Level NUMBER,
  7      Availability VARCHAR2(20),
  8      FOREIGN KEY (Product_ID) REFERENCES Artisan(Product_ID),
  9      FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID)
 10  );

Table created.

SQL> INSERT INTO Inventory VALUES
  2  (301, 101, 201, 20, 5, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (302, 102, 202, 15, 5, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (303, 103, 203, 10, 3, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (304, 104, 204, 30, 5, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (305, 105, 205, 0, 5, 'Unavailable');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (306, 106, 206, 18, 5, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (307, 107, 207, 12, 3, 'Available');

1 row created.

SQL>
SQL> INSERT INTO Inventory VALUES
  2  (308, 108, 208, 0, 3, 'Unavailable');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY REORDER_LEVEL
------------ ---------- ---------- -------------- -------------
AVAILABILITY
--------------------
         301        101        201             20             5
Available

         302        102        202             15             5
Available

         303        103        203             10             3
Available


INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY REORDER_LEVEL
------------ ---------- ---------- -------------- -------------
AVAILABILITY
--------------------
         304        104        204             30             5
Available

         305        105        205              0             5
Unavailable

         306        106        206             18             5
Available


INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY REORDER_LEVEL
------------ ---------- ---------- -------------- -------------
AVAILABILITY
--------------------
         307        107        207             12             3
Available

         308        108        208              0             3
Unavailable


8 rows selected.