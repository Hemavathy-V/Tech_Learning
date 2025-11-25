Variables in MySQL: 
    # The main purpose of a variable is to label a memory location(s) and store data in it so that it can be used throughout the program.
    # The characters we use to declare and define a variables are called literals and a literal can be anything other than special characters, numbers and, reserved keywords.
    # In MySQL, there are three types of variables. They are
            * User-Defined Variable
            * Local Variable
            * System Variable

1. User-Defined Variables: 
    * MySQL provides SET and SELECT commands to declare a variable. These variable names will have the symbol "@" as a prefix. We can use either = or := symbols depending on the situation.
    * Syntax: 
        =================================
        | SELECT @variable_name = value |
        =================================
    * Example: 
        1. SET @Name = 'Michael';
        2. SELECT @Name;
        3. SELECT @max_salary := MAX(salary) FROM CUSTOMERS; [SELECT statement to display the maximum salary value from the CUSTOMERS]
        4. SELECT * FROM CUSTOMERS WHERE SALARY = @max_salary; [select records from the table where the salary is equal to @max_salary variable]

2. Local Variables:
    * It can be declared using the DECLARE keyword. When we declare the local variable, the @ symbol is not used as prefix. This variable is a strongly typed variable, which means that we definitely need to declare a data type.
    * MySQL DEFAULT keyword can be used while declaring a variable to set the default value of the variable. if we do not define this, the initial value will be NULL.
    * Syntax:
       ===============================================
      | DECLARE variable_name1, variabale_name2, ...  |
      | data_type [DEFAULT default_value];            |
       ===============================================
    * Example: 
        DELIMITER //
        CREATE PROCEDURE salaries()
        BEGIN
        DECLARE Ramesh INT;
        DECLARE Khilan INT DEFAULT 30000;
        DECLARE Kaushik INT;
        DECLARE Chaitali INT;
        DECLARE Total INT;
        SET Ramesh = 20000;
        SET Kaushik = 25000;
        SET Chaitali = 29000;
        SET Total = Ramesh+Khilan+Kaushik+Chaitali;
        SELECT Total,Ramesh,Khilan,Kaushik,Chaitali;
        END //

        CALL salaries() //;

        o/p: Total	Ramesh	Khilan	Kaushik	Chaitali
            104000	20000	30000	25000	29000

3. System Variables:
    * System variables are predefined by the MySQL. Each MySQL system variable has a default value.
    * SET command in MySQL can be used at the runtime to dynamically change the values of the system variables.
    * There are two variable scope modifiers available for the SHOW VARIABLES command. They are 
        1. GLOBAL - It is active throughout the lifecycle.
        2. SESSION - It can be available only in the current session.
    * Syntax: 
         =====================================
        | SHOW [GLOBAL | SESSION] VARIABLES;  |
         =====================================
    * Example:
        SHOW VARIABLES LIKE '%table%';
