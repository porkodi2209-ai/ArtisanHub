SQL> CREATE TABLE Customer (
  2      Customer_ID INT PRIMARY KEY,
  3      Full_Name VARCHAR(100) NOT NULL,
  4      Phone_Number VARCHAR(15) NOT NULL,
  5      Address VARCHAR(255) NOT NULL
  6  );

Table created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (101, 'Vijay Kumar', '9876543210', '12 Anna Nagar, Chennai');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (102, 'Priya Sharma', '9876543211', '45 RS Puram, Coimbatore');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (103, 'Rahul', '9876543212', '18 KK Nagar, Madurai');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (104, 'Mithra', '9876543213', '22 Fairlands, Salem');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (105, 'Arjun Das', '9876543214', '10 Cantonment, Trichy');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (106, 'Meera', '9876543215', '5 Gandhi Nagar, Vellore');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (107, 'Karthikeyan', '9876543216', '27 Brough Road, Erode');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (108, 'Divya Iyer', '9876543217', '14 Palayamkottai, Tirunelveli');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (109, 'Mazhai Megan', '9876543218', '8 Beach Road, Thoothukudi');

1 row created.

SQL> INSERT INTO Customer (Customer_ID, Full_Name, Phone_Number, Address)
  2  VALUES (110, 'Ananya Das', '9876543219', '31 Temple Street, Kanchipuram');

1 row created.

SQL> SELECT * FROM Customer;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        101
Vijay Kumar
9876543210
12 Anna Nagar, Chennai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        102
Priya Sharma
9876543211
45 RS Puram, Coimbatore


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        103
Rahul
9876543212
18 KK Nagar, Madurai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        104
Mithra
9876543213
22 Fairlands, Salem


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        105
Arjun Das
9876543214
10 Cantonment, Trichy


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        106
Meera
9876543215
5 Gandhi Nagar, Vellore


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        107
Karthikeyan
9876543216
27 Brough Road, Erode


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        108
Divya Iyer
9876543217
14 Palayamkottai, Tirunelveli


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        109
Mazhai Megan
9876543218
8 Beach Road, Thoothukudi


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        110
Ananya Das
9876543219
31 Temple Street, Kanchipuram


10 rows selected.

SQL> SELECT *
  2  FROM Customer
  3  WHERE Customer_ID = 109;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        109
Mazhai Megan
9876543218
8 Beach Road, Thoothukudi


SQL> UPDATE Customer
  2  SET Phone_Number = '9943126780'
  3  WHERE Customer_ID = 101;

1 row updated.

SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 101;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        101
Vijay Kumar
9943126780
12 Anna Nagar, Chennai


SQL> UPDATE Customer
  2  SET Address = 'Urappakkam, Chennai'
  3  WHERE Customer_ID = 107;

1 row updated.

SQL> SELECT *
  2  FROM Customer
  3  WHERE Customer_ID = 107;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        107
Karthikeyan
9876543216
Urappakkam, Chennai


SQL> SELECT Full_Name
  2  FROM Customer;

FULL_NAME
--------------------------------------------------------------------------------
Vijay Kumar
Priya Sharma
Rahul
Mithra
Arjun Das
Meera
Karthikeyan
Divya Iyer
Mazhai Megan
Ananya Das

10 rows selected.

SQL> SELECT Customer_ID, Full_Name, Address
  2  FROM Customer;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
        101
Vijay Kumar
12 Anna Nagar, Chennai

        102
Priya Sharma
45 RS Puram, Coimbatore

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------

        103
Rahul
18 KK Nagar, Madurai

        104
Mithra

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
22 Fairlands, Salem

        105
Arjun Das
10 Cantonment, Trichy

        106

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
Meera
5 Gandhi Nagar, Vellore

        107
Karthikeyan
Urappakkam, Chennai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
        108
Divya Iyer
14 Palayamkottai, Tirunelveli

        109
Mazhai Megan
8 Beach Road, Thoothukudi

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------

        110
Ananya Das
31 Temple Street, Kanchipuram


10 rows selected.

SQL> COMMIT;

Commit complete.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 110;

1 row deleted.

SQL> COMMIT;

Commit complete.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 102;

1 row deleted.

SQL> SELECT * FROM Customer;

CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        101
Vijay Kumar
9943126780
12 Anna Nagar, Chennai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        103
Rahul
9876543212
18 KK Nagar, Madurai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        104
Mithra
9876543213
22 Fairlands, Salem


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        105
Arjun Das
9876543214
10 Cantonment, Trichy


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        106
Meera
9876543215
5 Gandhi Nagar, Vellore


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        107
Karthikeyan
9876543216
Urappakkam, Chennai


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        108
Divya Iyer
9876543217
14 Palayamkottai, Tirunelveli


CUSTOMER_ID
-----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        109
Mazhai Megan
9876543218
8 Beach Road, Thoothukudi


8 rows selected.

SQL> COMMIT;

Commit complete.