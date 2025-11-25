Start MySQL Server:
    * Executing the following command on the command prompt
        ==========
        | mysqld |
        ==========

Setting Up a MySQL User Account:
    * For adding a new user to MySQL,
         ==============================================================
        | CREATE USER 'New_User'@'localhost' IDENTIFIED BY 'Password'; |
         ==============================================================
    * Execute the FLUSH PRIVILEGES statement. This tells the server to reload the grant tables.
         ====================
        | FLUSH PRIVILEGES;  |
         ====================
    * Finally, need to grant all privileges to this new user to execute SQL queries.
         ==========================================================
        | GRANT ALL PRIVILEGES ON * . * TO 'New_User'@'localhost'; |
         ==========================================================
NOTE − MySQL does not terminate a command until you give a semi colon (;) at the end of the SQL command.

The /etc/my.cnf File Configuration: 
    * By default, it will have the following entries −
         =======================================
        | [mysqld]                              |
        | datadir = /var/lib/mysql              |
        | socket = /var/lib/mysql/mysql.sock    |
        |                                       |
        | [mysql.server]                        |
        | user = mysql                          |
        | basedir = /var/lib                    |
        |                                       |
        | [safe_mysqld]                         |
        | err-log = /var/log/mysqld.log         |
        | pid-file = /var/run/mysqld/mysqld.pid |
         =======================================

Administrative MySQL Commands:
    * USE database_name − Used to select a database in the MySQL.
    * SHOW DATABASES − Lists out the databases that are accessible by the MySQL DBMS.
    * SHOW TABLES − Displays the list of the tables in the current database.
    * SHOW COLUMNS FROM table_name - Shows the attributes, types of attributes, key information, whether NULL is permitted, defaults, and other information for a table.
    * SHOW INDEX FROM table_name − Presents the details of all indexes on the table, including the PRIMARY KEY.
    * SHOW TABLE STATUS LIKE table_name\G − Reports details of the MySQL DBMS performance and statistics.
