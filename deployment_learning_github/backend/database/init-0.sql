CREATE DATABASE practice_db;

USE practice_db;

CREATE TABLE roles_details (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	created_by VARCHAR(255) NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	updated_by VARCHAR(255) NOT NULL
);


CREATE TABLE users_details (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    user_name VARCHAR(255) NOT NULL UNIQUE,
    role_name VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    role_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by INT,
    updated_by INT,
    CONSTRAINT fk_user_role FOREIGN KEY (role_id) REFERENCES roles_details(role_id),
    CONSTRAINT fk_created_by FOREIGN KEY (created_by) REFERENCES users_details(user_id),
    CONSTRAINT fk_updated_by FOREIGN KEY (updated_by) REFERENCES users_details(user_id),
    CONSTRAINT fk_role_name FOREIGN KEY (role_name) REFERENCES roles_details(role_name)
);


SHOW CREATE TABLE users_details;
 
INSERT INTO roles_details (role_name, created_by, updated_by)
VALUES ('Tester', 'system', 'system');

ALTER TABLE users_details
DROP FOREIGN KEY fk_role_name;

ALTER TABLE users_details
DROP INDEX role_name;

ALTER TABLE users_details
DROP COLUMN role_name;


