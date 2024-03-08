-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`publisher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`publisher` (
  `idpublisher` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpublisher`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`book` (
  `idbook` INT NOT NULL AUTO_INCREMENT,
  `isbn` VARCHAR(45) NOT NULL,
  `publicsher` INT NOT NULL,
  `author` INT NOT NULL,
  `total_pages` INT NOT NULL,
  `publiccaation_years` YEAR(4) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `publisher_idpublisher` INT NOT NULL,
  PRIMARY KEY (`idbook`),
  UNIQUE INDEX `isbn_UNIQUE` (`isbn` ASC) VISIBLE,
  INDEX `fk_book_publisher1_idx` (`publisher_idpublisher` ASC) VISIBLE,
  CONSTRAINT `fk_book_publisher1`
    FOREIGN KEY (`publisher_idpublisher`)
    REFERENCES `mydb`.`publisher` (`idpublisher`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`author` (
  `idauthor` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idauthor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`book_has_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`book_has_author` (
  `book_idbook` INT NOT NULL,
  `author_idauthor` INT NOT NULL,
  PRIMARY KEY (`book_idbook`, `author_idauthor`),
  INDEX `fk_book_has_author_author1_idx` (`author_idauthor` ASC) VISIBLE,
  INDEX `fk_book_has_author_book_idx` (`book_idbook` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_author_book`
    FOREIGN KEY (`book_idbook`)
    REFERENCES `mydb`.`book` (`idbook`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_author_author1`
    FOREIGN KEY (`author_idauthor`)
    REFERENCES `mydb`.`author` (`idauthor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
