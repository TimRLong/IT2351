Executive Summary

In this assignment, students will learn about the job responsibilities of Database Administrators. We will learn about log files as well as status and system variables. We will also learn how to create and assign administrators, users, roles, and privileges.

Database Administrator Responsibilities

A Database Administrator has many responsibilities in the database field. They must work with users to build and implement database systems to meet the end users information needs. They define users and assign permissions according to job functions. Ensure that the databases they work with are functioning properly, maintained, and backed up so they are fast and safe. Support and train users in the use of the database and its information. Establish, enforce, and document database policies, and procedures. Perform periodic checks to ensure data security, privacy and integrity. As well as keeping the databases they work with up to date and on the most appropriate version.

Log Files

There are six types of log files in MySQL. The error log shows errors that happen when running the MySQL server. The isam log logs all changes to the ISAM tables and is used only for debugging the isam code. The query log tracks connections and executes queries. The update log stores all statements that change data, but it has been deprecated and replaced by the binary log. The binary log stores all statements that change something and is also used for replication. The slow log stores all queries that took more than long_query_time to execute or didn’t use indexes.

Variables

The status and system variables can be viewed using the same management tab in MySQL Workbench, but offer two different uses. Status variables contain information about different operational aspects of the MySQL server such as the Created_tmp_files variable that will display the number of temporary files MySQLD has created. System variables configure the operation of the MySQL server. One example of a system variable is autocommit which can be set to either 1 to have all changes to a table take effect immediately or 0 to ensure you must use commit to accept or rollback to cancel a transaction.

Privileges

A.

-- The administrator guitar_admin@localhost is created on local host and given the password pa55word
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';

-- The user guitar_user@localhost is created on local host and given the password pa55word
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';

-- Grants all privileges to the administrator on the guitar database on the local host
GRANT ALL
ON guitar.*
TO guitar_admin@localhost;

-- Grants database privileges to the user on the guitar database on the local host
GRANT SELECT, INSERT, UPDATE, DELETE
ON guitar.*
TO guitar_user@localhost;

B. There are five privilege levels that can be granted to a user with decreasing amounts of control over the databases. Global level applies to all databases present. Database level applies to all tables present. Table level applies to all columns present in the specified tables. Column level applies to a specific column of a specified table. Lastly Routine level applies to only the specified stored function procedure.

C. 

CREATE USER guitar_customerId@localhost IDENTIFIED BY 'pa55word';
GRANT SELECT(first_name, last_name, email_address), UPDATE (first_name, last_name, email_address);
ON guitar.customer
TO guitar_customerId@localhost;

D. You would want to limit a customer's ability to reading and updating their name and email because there is information in the rest of the table they shouldn't be able to access. This also allows for a separate page to request the customer's information which will then be entered into the database allowing a much larger customer base with minimal effort.

Roles

A. 

-- ‘manager’ is the name of the role to be created
CREATE ROLE manager;

B.

-- The ability to update the categories table of the guitar database is given to the manager role
GRANT UPDATE
ON guitar.categories
TO manager;

-- The manager role is assigned to the user with the name TimRLong on the local host
GRANT manager TO TimRLong@localhost;

C. Having roles allows different privileges depending on different job requirements.

Conclusion 

This assignment required quite a bit of research to learn about the different aspects of database management.
