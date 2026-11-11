SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         SUM(o.Total_Amount) AS Total_Purchase
  4  FROM Customer c
  5  JOIN Orders o
  6  ON c.Customer_ID = o.Customer_ID
  7  GROUP BY c.Customer_ID, c.Full_Name
  8  HAVING SUM(o.Total_Amount) = (
  9      SELECT MAX(Total_Purchase)
 10      FROM (
 11          SELECT SUM(Total_Amount) AS Total_Purchase
 12          FROM Orders
 13          GROUP BY Customer_ID
 14      )
 15  );

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        108
Divya Iyer
          1800


SQL> SELECT Customer_ID, Full_Name
  2  FROM Customer
  3  WHERE Customer_ID IN (
  4      SELECT Customer_ID
  5      FROM Orders
  6      GROUP BY Customer_ID
  7      HAVING COUNT(Order_ID) > 1
  8  );

no rows selected

SQL> SELECT c.Customer_ID,
  2         c.Full_Name,
  3         SUM(o.Total_Amount) AS Total_Purchase
  4  FROM Customer c
  5  JOIN Orders o
  6  ON c.Customer_ID = o.Customer_ID
  7  GROUP BY c.Customer_ID, c.Full_Name
  8  HAVING SUM(o.Total_Amount) > (
  9      SELECT AVG(Customer_Total)
 10      FROM (
 11          SELECT SUM(Total_Amount) AS Customer_Total
 12          FROM Orders
 13          GROUP BY Customer_ID
 14      )
 15  );

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
        103
Rahul
          1500

        106
Meera
          1100

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

        108
Divya Iyer
          1800
