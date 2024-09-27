CREATE TABLE customer (
    customer_id SMALLINT PRIMARY KEY, 
    customer VARCHAR(50), address VARCHAR(50)
)


INSERT INTO customer VALUES 
    (1, "Rino", "Jakarta"),
    (2, "Hendy", "Bandung"),
    (3, "Hadi", "Sukabumi"),
    (4, "Chandra", "Semarang"),
    (5, "Glen", "Lampung"),
    (6, "Yenny", "Jakarta"),
    (7, "Joko", "Yogyakarta");
    
CREATE TABLE `order` (
    `order_id` SMALLINT, 
    `customer_id` SMALLINT, 
    `order_date` VARCHAR(30),
    FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

INSERT INTO `order` VALUES
    (1, 1, '20 Januari 2017'),
    (2, 5, '15 Januari 2017'),
    (3, 2, '14 Januari 2017'),
    (4, 2, '15 Januari 2017'),
    (5, 3, '12 Januari 2017'),
    (6, 6, '16 Januari 2017'),
    (7, 7, '12 Januari 2017'),
    (8, 2, '15 Januari 2017'),
    (9, 3, '14 Januari 2017'),
    (10, 1, '16 Januari 2017'),
    (11, 2, '15 Januari 2017'),
    (12, 4, '17 Januari 2017'),
    (13, 2, '16 Januari 2017'),
    (14, 6, '15 Januari 2017'),
    (15, 1, '12 Januari 2017');


