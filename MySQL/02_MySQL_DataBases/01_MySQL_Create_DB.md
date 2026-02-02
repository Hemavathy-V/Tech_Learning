Create Database:

    * CREATE DATABASE statement is a DDL (Data Definition Language) statement used to create a new database in MySQL RDBMS.
    * If you are creating your database on Linux or Unix, then database names are case-sensitive, even though keywords SQL are case-insensitive. If you are working on Windows then this restriction does not apply.

Syntax: 

    +-------------------------------+
    | CREATE DATABASE DatabaseName; |
    +-------------------------------+

CREATE Database with IF NOT EXISTS clause: 

    +---------------------------------------------+
    | CREATE DATABASE IF NOT EXISTS DatabaseName; |
    +---------------------------------------------+

Create Database Using mysqladmin: 

    +------------------------------------------------------+
    | [root@host]# mysqladmin -u root -p create TUTORIALS  |
    | Enter password:******                                |
    +------------------------------------------------------+