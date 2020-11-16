use timlong_my_guitar_shop;

DROP procedure if exists ProductCount;
DELIMITER //

CREATE PROCEDURE ProductCount()
BEGIN
	DECLARE countOfProducts INT;
	SELECT Count(*) INTO countOfProducts FROM products;
    IF countOfProducts >= 18 THEN
		SELECT 'The number of products is greater than or equal to 18' as message;
	ELSE
		SELECT 'The number of products is less than 18' as message;
	END IF;
END//

Call ProductCount
