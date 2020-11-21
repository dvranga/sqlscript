CREATE SCHEMA `erdiagram` ;
CREATE TABLE `erdiagram`.`employee_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `gender` CHAR(1) NOT NULL,
  `start` DATE NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `erdiagram`.`department` (
  `id` INT NOT NULL,
  `employee_id` INT NULL,
  `department` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `erdiagram`.`employee_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `erdiagram`.`salary` (
  `id` INT NOT NULL,
  `emp_id` INT NOT NULL,
  `basic_pay` DOUBLE NULL,
  `deduction` DOUBLE NULL,
  `taxable_pay` DOUBLE NULL,
  `tax` DOUBLE NULL,
  `net_pay` DOUBLE NULL,
  PRIMARY KEY (`id`),
  INDEX `emp_id_idx` (`emp_id` ASC) VISIBLE,
  CONSTRAINT `emp_id`
    FOREIGN KEY (`emp_id`)
    REFERENCES `erdiagram`.`employee_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
