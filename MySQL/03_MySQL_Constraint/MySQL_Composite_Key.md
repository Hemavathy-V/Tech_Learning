Composite Key:
    * Composite Key is a key that consists of two or more columns in a table, used to uniquely identify a record (combination of values in the same table row).
    * It can also be described as a Primary Key created on multiple columns.

Creating MySQL Composite Key:
    * A Composite Key may or may not be a part of the Foreign key.
    * A Composite Key can not be NULL.
    * A Composite Key also can be created by combining more than one Candidate Key.
    * It is also known as Compound key.
    * All the attributes in a compound keys are foreign keys.

Syntax: 
    ============================================
   | CREATE TABLE table_name(                   |
   | column1 datatype, column2 datatype,...,    |  
   | CONSTRAINT composite_key_name              | 
   | PRIMARY KEY(column_name1, column_name2,..) |
   | );                                         |
    ============================================

Dropping MySQL Composite Key:
    ===========================================
   | ALTER TABLE table_name DROP PRIMARY KEY;  | 
    ===========================================