DROP USER '10050'@'localhost';

use retail_store;
CREATE USER '10050'@'localhost' IDENTIFIED BY 'sDXYx6tygrA9';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.add_to_cart TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_login TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_details  TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment  TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment_credentials TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipped_to TO '10050'@'localhost';
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipping_info TO '10050'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR '10260'@'localhost';
DROP USER 'admin_user'@'localhost';

CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin_user';
GRANT ALL privileges ON *.* TO 'admin_user'@'localhost';
GRANT CREATE USER ON *.* TO 'admin_user'@'localhost';












CREATE USER 't'@'localhost' IDENTIFIED BY '000000'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufactured_by TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufacturer TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered TO 't'@'localhost';  
FLUSH PRIVILEGES;

SHOW GRANTS FOR 't'@'localhost';
DROP USER 't'@'localhost';








CREATE USER 't'@'localhost' IDENTIFIED BY '000000';
GRANT SELECT ON retail_store.add_to_cart TO 't'@'localhost'; 
GRANT SELECT ON retail_store.address TO 't'@'localhost'; 
GRANT SELECT ON retail_store.customer TO 't'@'localhost'; 
GRANT SELECT ON retail_store.customer_login TO 't'@'localhost'; 
GRANT SELECT ON retail_store.order TO 't'@'localhost'; 
GRANT SELECT ON retail_store.order_details TO 't'@'localhost'; 
GRANT SELECT ON retail_store.payment TO 't'@'localhost'; 
GRANT SELECT ON retail_store.shipped_to TO 't'@'localhost'; 
GRANT SELECT ON retail_store.manufactured_by TO 't'@'localhost'; 
GRANT SELECT ON retail_store.manufacturer TO 't'@'localhost'; 
GRANT SELECT ON retail_store.shipping_info TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.department TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee_login TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manages TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.user TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.works_for TO 't'@'localhost'; 
GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered TO 't'@'localhost';
FLUSH PRIVILEGES;


SHOW GRANTS FOR 't'@'localhost';
DROP USER 't'@'localhost';




SHOW GRANTS FOR '10000'@'localhost';
SHOW GRANTS FOR '10130'@'localhost';
SHOW GRANTS FOR '10290'@'localhost';




