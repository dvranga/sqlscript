CREATE SCHEMA `address_book_db` ;

CREATE TABLE `address_book_db`.`people` (
  `person_id` INT NOT NULL,
  `person_name` VARCHAR(45) NULL,
  PRIMARY KEY (`person_id`));

CREATE TABLE `address_book_db`.`address_type` (
  `type_id` INT NOT NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`type_id`));
  
CREATE TABLE `address_book_db`.`address_book` (
  `id` INT NOT NULL,
  `person_id` INT NULL,
  `type_id` INT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `address_book_db`.`address_book` 
ADD INDEX `person_id_idx` (`person_id` ASC) VISIBLE,
ADD INDEX `type_id_idx` (`type_id` ASC) VISIBLE;

ALTER TABLE `address_book_db`.`address_book` 
ADD CONSTRAINT `person_id`
  FOREIGN KEY (`person_id`)
  REFERENCES `address_book_db`.`people` (`person_id`),
ADD CONSTRAINT `type_id`
  FOREIGN KEY (`type_id`)
  REFERENCES `address_book_db`.`address_type` (`type_id`);
