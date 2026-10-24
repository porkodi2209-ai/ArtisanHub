SQL> SELECT *
  2  FROM Payment
  3  WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID PAYMENT_MODE                   PAYMENT_DATE
---------- ---------- ------------------------------ ---------------
PAYMENT_STATUS
--------------------
       401        201 UPI                            01-OCT-26
Successful

       402        202 Credit Card                    02-OCT-26
Successful

       404        204 Cash on Delivery               04-OCT-26
Successful


PAYMENT_ID   ORDER_ID PAYMENT_MODE                   PAYMENT_DATE
---------- ---------- ------------------------------ ---------------
PAYMENT_STATUS
--------------------
       406        206 Credit Card                    06-OCT-26
Successful

       407        207 Debit Card                     07-OCT-26
Successful

       408        208 UPI                            08-OCT-26
Successful


6 rows selected.

SQL> SELECT *
  2  FROM Payment
  3  WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID PAYMENT_MODE                   PAYMENT_DATE
---------- ---------- ------------------------------ ---------------
PAYMENT_STATUS
--------------------
       403        203 Debit Card                     03-OCT-26
Failed

       405        205 UPI                            05-OCT-26
Failed

SQL> SELECT Payment_Mode,
  2         COUNT(*) AS Total_Transactions
  3  FROM Payment
  4  GROUP BY Payment_Mode;

PAYMENT_MODE                   TOTAL_TRANSACTIONS
------------------------------ ------------------
UPI                                             3
Credit Card                                     2
Debit Card                                      2
Cash on Delivery                                1

SQL> SELECT p.Payment_ID,
  2         p.Order_ID,
  3         c.Full_Name,
  4         p.Payment_Mode,
  5         p.Payment_Date,
  6         p.Payment_Status
  7  FROM Payment p
  8  JOIN Orders o
  9  ON p.Order_ID = o.Order_ID
 10  JOIN Customer c
 11  ON o.Customer_ID = c.Customer_ID
 12  ORDER BY p.Payment_Date;

PAYMENT_ID   ORDER_ID
---------- ----------
FULL_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE                   PAYMENT_DATE    PAYMENT_STATUS
------------------------------ --------------- --------------------
       401        201
Vijay Kumar
UPI                            01-OCT-26       Successful

       402        202
Rahul
Credit Card                    02-OCT-26       Successful

PAYMENT_ID   ORDER_ID
---------- ----------
FULL_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE                   PAYMENT_DATE    PAYMENT_STATUS
------------------------------ --------------- --------------------

       403        203
Mithra
Debit Card                     03-OCT-26       Failed

       404        204
Arjun Das

PAYMENT_ID   ORDER_ID
---------- ----------
FULL_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE                   PAYMENT_DATE    PAYMENT_STATUS
------------------------------ --------------- --------------------
Cash on Delivery               04-OCT-26       Successful

       405        205
Meera
UPI                            05-OCT-26       Successful

       406        206

PAYMENT_ID   ORDER_ID
---------- ----------
FULL_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE                   PAYMENT_DATE    PAYMENT_STATUS
------------------------------ --------------- --------------------
Karthikeyan
Credit Card                    06-OCT-26       Successful

       407        207
Divya Iyer
Debit Card                     07-OCT-26       Successful


PAYMENT_ID   ORDER_ID
---------- ----------
FULL_NAME
--------------------------------------------------------------------------------
PAYMENT_MODE                   PAYMENT_DATE    PAYMENT_STATUS
------------------------------ --------------- --------------------
       408        208
Mazhai Megan
UPI                            08-OCT-26       Successful


8 rows selected.
