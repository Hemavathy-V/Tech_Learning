Primary Key:
    * A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table

Creating MySQL Primary Key:
    * The Primary Key column must only contain unique values.
    * It can not hold NULL values.
    * One table can have only one Primary Key.
    * A Primary Key length cannot be more than 900 bytes.

Syntax: 
    ===============================================
   | CREATE TABLE table_name(                      |
   | column_name NOT NULL PRIMARY KEY(column_name) |
   | );                                            |
    ===============================================

Creating Primary Key on Existing Column:
    ============================
   | ALTER TABLE table_name     | 
   | ADD CONSTRAINT             |
   | PRIMARY KEY (column_name); |
    ============================

Dropping MySQL Primary Key: 
    ==========================================
   | ALTER TABLE table_name DROP PRIMARY KEY; |
    ==========================================