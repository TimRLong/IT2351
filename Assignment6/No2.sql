USE timlong_my_guitar_shop;

DROP procedure if exists InsertCategory;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCategory`()
BEGIN
	DECLARE duplicateCategoryName TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR 1062
		SET duplicateCategoryName = TRUE;
	INSERT INTO categories (category_name) VALUES ("Saxophones");
    IF duplicateCategoryName = TRUE THEN
		SELECT 'Row was not inserted - duplicate entry.' as message;
	ELSE
		SELECT '1 row was inserted' as message;
	END IF;
END //

DELIMITER ;

call InsertCategory;
