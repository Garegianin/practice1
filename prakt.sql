-- MySQL Script generated by MySQL Workbench
-- Thu Dec 23 18:40:50 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema praktika
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema praktika
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `praktika` DEFAULT CHARACTER SET utf8 ;
USE `praktika` ;

-- -----------------------------------------------------
-- Table `praktika`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `praktika`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `nikname` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `age` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NULL,
  `e_mail` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `praktika`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `praktika`.`article` (
  `idarticle` INT NOT NULL AUTO_INCREMENT,
  `article` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`idarticle`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `praktika`.`visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `praktika`.`visit` (
  `idvisit` INT NOT NULL AUTO_INCREMENT,
  `iduser` INT NOT NULL,
  `idarticle` INT NOT NULL,
  PRIMARY KEY (`idvisit`),
  INDEX `iduser_idx` (`iduser` ASC) VISIBLE,
  INDEX `idarticle_idx` (`idarticle` ASC) VISIBLE,
  CONSTRAINT `user`
    FOREIGN KEY (`iduser`)
    REFERENCES `praktika`.`user` (`iduser`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `article`
    FOREIGN KEY (`idarticle`)
    REFERENCES `praktika`.`article` (`idarticle`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
