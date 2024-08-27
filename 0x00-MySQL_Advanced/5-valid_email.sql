-- Create a trigger that decreases the quantity of an item after adding a new order

DROP TRIGGER IF EXISTS reset_valid_email;
DELIMITER //

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END //
DELIMITER ;