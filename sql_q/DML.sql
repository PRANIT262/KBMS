USE kbms_p1;

INSERT INTO PRODUCT 
(PRODUCT_ID, PRODUCT_NAME, PRODUCT_COUNT, TOTAL_STOCK, BEST_BEFORE, PRICE_PER_UNIT,TYPE_OF_PRODUCT)
VALUES
(101, "Apple", 200, 500, '2023-03-23', 100,"fruit"),
(102, "orange", 80, 600, '2023-03-30', 50,"fruit"),
(103, "Mango", 40, 800, '2023-05-23', 380,"fruit"),
(104, "Grapes", 50, 30, '2023-03-23', 100,"fruit"),
(105, "Potato", 200, 500, '2023-03-23', 20,"vegitable"),
(106, "Carrot", 80, 600, '2023-03-30', 40,"vegitable"),
(107, "Tomato", 40, 800, '2023-05-23', 50,"vegitable"),
(108, "Onion", 50, 30, '2023-03-23', 25,"vegitable"),
(109, "Cumin ", 200, 500, '2023-03-23', 40,"Spices"),
(110, "Fennel ", 80, 600, '2023-03-30', 50,"Spices"),
(111, "Cloves ", 40, 800, '2023-05-23', 25,"Spices"),
(112, "Saffron", 50, 30, '2023-03-23', 150,"Spices");


INSERT INTO user
(
Customer_name, 
email , 
phone ,
address, 
date_of_birth, 
age ,
password,
identity_proof,
login_id)
VALUES
("Alexa","al9090@hmail.com", "9090787856", "Street 12, green tower, Jordan", 
    "1989-10-10", 32, "pranit", "visa card", "pranit262"),
    
    ("Alexander","polo90@hmail.com", "9898990908", "Street 3, twin tower, tordan", 
    "1978-02-19", 43, "rushi", "visa card", "rushi22"),
    
    ("Marie","al9090@hmail.com", "9898989907", "Street 3, twin tower, Jordan", 
    "2001-10-28", 21, "pratham", "visa card", "pratham12"),
    
    ("Jacky","loki0@hmail.com", "9897856489", "Street 2,quad tower, london", 
    "1978-09-23", 44, "jacky123", "visa card", "loki"),
    
    ("Bob","bob@hmail.com", "9898907869", "Street 3, twin tower, Jordan", 
    "2002-09-11",20, "bob123", "visa card", "bob"),
    
    ("Alexa","al9090@hmail.com", "9894523889", "Street 3, twin tower, Jordan", 
    "1999-11-10", 23, "alexa123", "visa card", "alexa9090"),
    
    ("Sonail","sonail@hmail.com", "9897890589", "Street 3, twin tower, Jordan", 
    "1993-12-12", 29, "sonali123", "visa card", "sonail675");
    