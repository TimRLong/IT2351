Executive Summary

In this assignment students will learn more about stored procedures, triggers, and event schedulers by outlining situations they would be needed and practicing their implementation.

Stored Programs

If an order to delete a customer was presented to me, I would first need to find where that customer Id is used. In this database customer Ids are used in the customers table, the orders table (if an order has been made), and the address table. If the customer I plan on deleting is in the orders table the customer can't be deleted because they have a history. If the customer is being deleted their address must also be deleted. Two triggers will be required to handle those two tables. A before delete trigger is needed to make sure the customer Id is not in the orders table, and an after delete trigger to delete the address. If deleting the address fails then the deletion of the customer record must be rolled back to maintain database consistency. Messages will be necessary to communicate each possible contingency.

A trigger is created to check if the new list price is within a given range. An error is generated if the list price being entered is outside of the range. Messages are created depending on the result.

The MySQL event scheduler is used to generate a one-time event in which a new category is inserted into the category table.

Conclusion

During the course of this assignment I learned more about triggers and events in MySQL. 
