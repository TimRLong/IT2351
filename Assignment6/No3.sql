USE timlong_my_guitar_shop;
DROP FUNCTION IF EXISTS discountPrice;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `discountPrice`(
itemIDparam  int(11)
) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE discountPrice double;
SELECT (item_price - discount_amount)
INTO discountPrice
FROM order_items
WHERE item_id = itemIDparam;
RETURN discountPrice;
END//
DELIMITER ;

SELECT item_id, discountPrice(item_id) 
FROM order_items 
WHERE item_id = 1
