NOT NULL Constraint:
    * NOT NULL constraint enforces a column to NOT accept NULL values.

example: 
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
    );

CHECK Constraint:
    * CHECK constraint is used to limit the value range that can be placed in a column.

example: 
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
    );

DEFAULT Constraint:
    * The DEFAULT constraint is used to set a default value for a column.

Example: 
    CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT CURRENT_DATE()
    );
