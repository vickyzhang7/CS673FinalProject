-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling',
'assets/images/products/books/1.jpg'
,1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'To Kill a Mockingbird ', 'Harper Lee',
'assets/images/products/books/2.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Nineteen Eighty-Four ', 'George Orwell',
'assets/images/products/books/3.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Slaughterhouse-Five ', 'Kurt Vonnegut Jr.',
'assets/images/products/books/4.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'Light in August: A 1932 novel', 'William Faulkner',
'assets/images/products/books/5.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1005', 'Lucky Jim: A 1954 novel', 'Kingsley Amis',
'assets/images/products/books/6.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1006', 'Housekeeping: A Novel Paperback', 'Marilynne Robinson',
'assets/images/products/books/7.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1007', 'At Swim-Two-Birds', 'Flann OBrien',
'assets/images/products/books/8.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1008', 'A Handful of Dust', 'Evelyn Waugh',
'assets/images/products/books/9.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1009', 'The Lord of the Rings', 'J.R.R. Tolkien',
'assets/images/products/books/10.jpg'
,1,100,24.99,1, NOW());




INSERT INTO product_category(category_name) VALUES ('CUPS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CUP-TECH-1000', 'Yellow cup', '500ml capacity. Keep warm for 4 hours.',
'assets/images/products/cup/1.jpg'
,1,100,19.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CUP-TECH-1001', 'Stainless steel cup', '500ml capacity. Keep warm for 4 hours.',
'assets/images/products/cup/2.jpg'
,1,100,29.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CUP-TECH-1002', 'White cup', '500ml capacity. Keep warm for 4 hours.',
'assets/images/products/cup/3.jpg'
,1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CUP-TECH-1003', 'Green cup', '500ml capacity. Keep warm for 4 hours.',
'assets/images/products/cup/4.jpg'
,1,100,29.99,2, NOW());

