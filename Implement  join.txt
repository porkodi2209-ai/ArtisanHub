SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         o.Order_ID,
  4         o.Total_Amount
  5  FROM Customer c
  6  INNER JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
        101
Vijay Kumar
       201          850

        103
Rahul
       202         1500

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------

        104
Mithra
       203          950

        105
Arjun Das

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
       204          450

        106
Meera
       205         1100

        107

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
Karthikeyan
       206          700

        108
Divya Iyer
       207         1800


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
        109
Mazhai Megan
       208          750


8 rows selected.

SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         o.Order_ID,
  4         o.Order_Date,
  5         o.Total_Amount
  6  FROM Customer c
  7  RIGHT JOIN Orders o
  8  ON c.Customer_ID = o.Customer_ID
  9  ORDER BY o.Order_ID;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        101
Vijay Kumar
       201 01-OCT-26          850

        103
Rahul
       202 02-OCT-26         1500

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------

        104
Mithra
       203 03-OCT-26          950

        105
Arjun Das

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
       204 04-OCT-26          450

        106
Meera
       205 05-OCT-26         1100

        107

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
Karthikeyan
       206 06-OCT-26          700

        108
Divya Iyer
       207 07-OCT-26         1800


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
  ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- --------- ------------
        109
Mazhai Megan
       208 08-OCT-26          750

