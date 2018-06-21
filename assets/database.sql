-- MySQL Script generated by MySQL Workbench
-- mer. 20 juin 2018 15:23:24 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `transfer`.`transfer`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `arnaudw_transfer`.`transfer` (
  `id` VARCHAR(255) NOT NULL,
  `sender_email` VARCHAR(255) NOT NULL,
  `sender_ip` VARCHAR(100) NOT NULL,
  `receiver_email` VARCHAR(255) NOT NULL,
  `date` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `transfer`.`file`
-- -----------------------------------------------------
<<<<<<< HEAD
CREATE TABLE IF NOT EXISTS `arnaudw_transfer`.`file` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `filename` VARCHAR(255) NOT NULL,
  `transfer_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_file_transfer_idx` (`transfer_id` ASC),
  CONSTRAINT `fk_file_transfer`
    FOREIGN KEY (`transfer_id`)
    REFERENCES `arnaudw_transfer`.`transfer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
