Executive Summary
In this assignment we will practice writing queries for an order management database containing four tables, a customers table, an items table, an orders table, and an order details table. In addition to practicing with the basic queries we will learn to utilize selected columns with aliases, date formatting, and joining tables.

Query Review

1. Information is taken from the items table and given aliases and sorted by unit prices in a certain range.

2. Customer first and last names from selected states are concatenated into their full names and given an alias. Then sorted by State, last name, first name. For this query I had to look up the syntax for the Concat function.

3. Customer and order ids are taken from the orders table along with the order and shipping dates. All columns are given aliases and the query is sorted by order date. For this query I had to look up MySQL date formatting.

4. Information is taken from the orders and customers tables with a join on customer id. Dates are selected and aliases are given to all columns. For this query I looked up the syntax for joining tables.

5. Three tables are used to gather information on orders; the orders table, the customers table, and the order details table. The customer's first and last names are concatenated, and the dates, item ids, and order quantities are selected. All columns are given aliases. The customers table is joined to the orders table on the customer id, and the order details table is joined on the order id. The query is sorted by customer last name and order quantity.

6. Four tables are used to gather information on orders; the orders table, the customers table, the order details table, and the items table. The customer's first and last names are concatenated, and the dates, item title, unit price, and order quantities are selected. All columns are given aliases. The customers table is joined to the orders table on the customer id, and the order details table is joined on the order id. The items table is joined to the order details table on the item id. The query is sorted by customer last name and order quantity.

7. Identical to query 6 except only orders that havn't been shipped are selected.

8. Information is taken from the order details and items tables; title, artist, unit price, and order quantity. 
The order quantity and unit price are used to find the total with tax and all columns are given aliases.

Conclusion
During the course of this assignment I've learned much more about making queries in SQL.
