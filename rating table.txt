SQL> CREATE TABLE Rating (
  2      Rating_ID NUMBER PRIMARY KEY,
  3      Customer_ID NUMBER,
  4      Product_ID NUMBER,
  5      Rating_Value NUMBER(2,1),
  6      Rating_Date DATE,
  7      FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  8      FOREIGN KEY (Product_ID) REFERENCES Artisan(Product_ID),
  9      CHECK (Rating_Value BETWEEN 1 AND 5)
 10  );

Table created.

SQL> INSERT INTO Rating VALUES
  2  (701, 101, 101, 4.5, TO_DATE('02-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (702, 103, 102, 4.2, TO_DATE('03-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (703, 104, 103, 4.7, TO_DATE('04-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (704, 105, 104, 4.4, TO_DATE('05-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (705, 106, 105, 4.3, TO_DATE('06-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (706, 107, 106, 4.6, TO_DATE('07-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (707, 108, 107, 4.8, TO_DATE('08-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO Rating VALUES
  2  (708, 109, 108, 4.5, TO_DATE('09-10-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
SQL> SELECT * FROM Rating;

 RATING_ID CUSTOMER_ID PRODUCT_ID RATING_VALUE RATING_DA
---------- ----------- ---------- ------------ ---------
       701         101        101          4.5 02-OCT-26
       702         103        102          4.2 03-OCT-26
       703         104        103          4.7 04-OCT-26
       704         105        104          4.4 05-OCT-26
       705         106        105          4.3 06-OCT-26
       706         107        106          4.6 07-OCT-26
       707         108        107          4.8 08-OCT-26
       708         109        108          4.5 09-OCT-26

8 rows selected.