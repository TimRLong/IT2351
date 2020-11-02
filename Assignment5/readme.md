Executive Summary

In this assignment, students will learn about the creation of EER models, the normalization of databases, and the creation of views. EER models display the detailed structure of a database in a single simple diagram. Normalization will be shown to be a crucial step in creating efficient databases. Views will be introduced as a way to see specific information within a database across multiple tables.

Normalization / EER Model

1st Normal Form: To create the first normal form I started by limiting each column of the table to only one atomic item by splitting the classes column and each record into separate rows.

2nd Normal Form: Ensured that all class ids followed the same format and created a link table between student and class. The Major column was separated into its table to directly connect it to the student record. A foreign key was added to the majors column pointing to the appropriate major within the majors table.

3rd Normal Form: An address table was created to replace the address within the student table with a foreign key pointing to the address within the address table. The student's names were broken down into first and last to further atomization.

EER Model: I used the guitar store script to create a database that was used to create the EER Model.

Conclusion

In this assignment, I learned a lot about the inner workings of MySQL Workbench and SQL in whole. I grasped the concepts behind normalization fairly easily but ran into trouble while trying to get MySQL Workbench to complete the tasks I had in mind. Through careful step by step research, I was able to complete the assignment with a better understanding.
