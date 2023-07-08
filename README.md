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

SHOW GRANTS FOR 'admin_user'@'localhost';

DROP USER 'admin_user'@'localhost';



GRANT SUPER ON retail_store.add_to_cart TO '10050'@'localhost';
 

-- -- -- for temp IN	SELECT user_id FROM customer_id LOOP
-- -- -- 	GRANT ALL PRIVILEGES ON retial_store.* TO 'root_user'@'localhost' WITH GRANT OPTION
-- -- -- END LOOP;

-- -- GRANT SELECT,INSERT,UPDATE ON db1.*
-- -- TO r IN SELECT user_id FROM customer_id;

-- select name as username,
--        create_date,
--        modify_date,
--        type_desc as type,
--        authentication_type_desc as authentication_type
-- from sys.database_principals
-- where type not in ('A', 'G', 'R', 'X')
--       and sid is not null
--       and name != 'guest'
-- order by username;





# # dbconnection = DataBaseConnector()


# # dbconnection.myfunc("select * from customer")


    
# # mycursor = mydb.cursor()

# # mycursor.execute("select * from customer")

# # for i in mycursor:
# #     print(i)
