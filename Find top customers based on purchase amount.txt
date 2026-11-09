SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         SUM(o.Total_Amount) AS Total_Purchase
  4  FROM Customer c
  5  JOIN Orders o
  6  ON c.Customer_ID = o.Customer_ID
  7  GROUP BY c.Customer_ID, c.Full_Name
  8  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        108
Divya Iyer
          1800

        103
Rahul
          1500

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

        106
Meera
          1100

        104
Mithra

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
           950

        101
Vijay Kumar
           850

        109

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
Mazhai Megan
           750

        107
Karthikeyan
           700


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        105
Arjun Das
           450


8 rows selected.

SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         SUM(o.Total_Amount) AS Total_Purchase
  4  FROM Customer c
  5  JOIN Orders o
  6  ON c.Customer_ID = o.Customer_ID
  7  GROUP BY c.Customer_ID, c.Full_Name
  8  ORDER BY Total_Purchase DESC
  9  FETCH FIRST 1 ROW ONLY;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        108
Divya Iyer
          1800