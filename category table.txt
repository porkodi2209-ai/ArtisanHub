CREATE TABLE Cate_gory (
  2      Category_ID NUMBER PRIMARY KEY,
  3      Category_Name VARCHAR2(50) NOT NULL,
  4      Description VARCHAR2(200),
  5      Status VARCHAR2(20)
  6  );

Table created.

SQL> INSERT INTO Cate_gory VALUES
  2  (1, 'Jewellery', 'Handmade jewellery products', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (2, 'Home Decor', 'Decorative handmade items for home', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (3, 'Handmade Bags', 'Handcrafted bags and accessories', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (4, 'Paintings', 'Handmade and artistic paintings', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (5, 'Pottery', 'Handmade clay and pottery items', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (6, 'Wood Crafts', 'Traditional handmade wooden products', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (7, 'Clothing', 'Handmade traditional clothing items', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (8, 'Accessories', 'Handcrafted fashion accessories', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (9, 'Wall Art', 'Decorative handmade wall art', 'Active');

1 row created.

SQL>
SQL> INSERT INTO Cate_gory VALUES
  2  (10, 'Candles', 'Handmade decorative candles', 'Active');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
SQL> SELECT * FROM Cate_gory;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
          1 Jewellery
Handmade jewellery products
Active

          2 Home Decor
Decorative handmade items for home
Active

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------

          3 Handmade Bags
Handcrafted bags and accessories
Active

          4 Paintings
Handmade and artistic paintings

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
Active

          5 Pottery
Handmade clay and pottery items
Active

          6 Wood Crafts

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
Traditional handmade wooden products
Active

          7 Clothing
Handmade traditional clothing items
Active


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
          8 Accessories
Handcrafted fashion accessories
Active

          9 Wall Art
Decorative handmade wall art
Active

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------

         10 Candles
Handmade decorative candles
Active
