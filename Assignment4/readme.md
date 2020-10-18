Executive Summary

In this assignment we will begin to learn about subqueries and their use within the main query. In addition we will utilize the distinct keyword to eliminate duplicate results. String functions format, convert, cast, locate, and substr will be added to our repertoire.

Query Review

1. For this query each category name in the products table is selected by a subquery in the where statement. Distinct is used to eliminate duplicates and the results are ordered by category name. 

2. I began by adding a select subquery embedded within the order item select statement to get each product name from the product table. A second subquery is embedded in the where statement to get the average item price of all items in the order items table with a greater than symbol to get only items with a higher price than the average.

3. The list price is gotten from the products table and the format function is added to round each price to the nearest single decimal. The list prices are rounded to the nearest signed integers using the convert and cast functions. Each column is given an alias.

4. Email addresses are gotten from the customer table. Length is used to get the number of characters in each email address and the length is assigned to a @Length variable. Locate is used to find the index of the at symbol in each email address and that position is assigned to a @myIndex variable. Then the username is gotten using a substr function starting at the first position of the email address and ending at one less that the @myIndex variable's position. Another substr function is used with the @Length and @myIndex variables starting at one over the @myIndex position and ending at the @Length position to get the domain name. Each column is given an alias.

Conclusion

I gained a better understanding of the different kind of subqueries and functions. Some of the syntax was difficult to find and grasp fully, but the search gave me a better understanding.
