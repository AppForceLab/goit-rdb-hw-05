DROP FUNCTION IF EXISTS divide;
DELIMITER //

CREATE FUNCTION divide (x FLOAT, y FLOAT) RETURNS FLOAT
DETERMINISTIC
BEGIN
  IF y = 0 THEN 
    RETURN NULL;
  ELSE 
    RETURN x / y;
  END IF;
END//
DELIMITER ;

SELECT id, order_id, product_id, quantity, divide(quantity, 2) AS half_quantity
FROM order_details;
