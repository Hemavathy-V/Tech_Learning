Foreign Key:
    * Prevents actions that would destroy links between tables
    * A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
    * Table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

Syntax:
    =============================
   | CREATE TABLE table2(        |
   | column1 datatype,           |
   | column2 datatype, ...       |
   | CONSTRAINT constraint_name  |
   | FOREIGN KEY (column2)       |
   | REFERENCES table1(column1)  |
   | );                          |
    =============================

Creating Foreign Key on Existing Column:
    =======================================
   | ALTER TABLE table_name2               |
   | ADD CONSTRAINT constraint_name        |
   | FOREIGN KEY(column_name2)             | 
   | REFERENCES table_name1(column_name1); |
    =======================================

Dropping MySQL Foreign Key:
    =========================================================
   | ALTER TABLE table_name DROP CONSTRAINT constraint_name; |
    =========================================================