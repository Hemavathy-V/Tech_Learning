Unique key:
    * Ensures that all values in a column are different

Creating MySQL Unique Key:
    * Even though unique key is similar to the primary key in a table, it can accept a single NULL value unlike the primary key.
    * It cannot have duplicate values.
    * It can also be used as a foreign key in another table.
    * A table can have more than one Unique column.

Syntax:
    ==============================
   | CREATE TABLE table_name(     |
   | column_name1 datatype UNIQUE,| 
   | column_name2 datatype,...    |
   | );                           |
    ==============================

Creating Unique Key on Existing Columns:
    ================================
   | ALTER TABLE table_name         |
   | ADD CONSTRAINT unique_key_name | 
   | UNIQUE (column_name);          |
    ================================

Dropping Unique Key:
    ==================================
   | ALTER TABLE table_name           |
   | DROP CONSTRAINT unique_key_name; |
    ==================================