-- MySQL Script generated by MySQL Workbench
-- Fri May  7 09:14:29 2021
-- Model: Library Database    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema library_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema library_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `library_database` DEFAULT CHARACTER SET utf8 ;
USE `library_database` ;

-- -----------------------------------------------------
-- Table `library_database`.`restriction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`restriction` ;

CREATE TABLE IF NOT EXISTS `library_database`.`restriction` (
  `restriction_id` INT NOT NULL AUTO_INCREMENT,
  `reason` VARCHAR(45) NULL,
  `previously_banned` VARCHAR(10) NULL,
  `currently_banned` VARCHAR(10) NULL,
  `banned_countries` CHAR(50) NULL,
  `banned_locations` CHAR(50) NULL,
  PRIMARY KEY (`restriction_id`),
  UNIQUE INDEX `format_id_UNIQUE` (`restriction_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    restriction(reason, previously_banned, currently_banned, banned_countries, banned_locations)
VALUES
    (NULL, "No", "No", NULL, NULL),
    ("Violence", "No", "Yes", NULL, "Schools"),
    ("Magic", "Yes", "Yes", NULL, "Religious Schools"),
    ("Sex", "Yes", "No", "United States", NULL),
    ("Gay Romance", "Yes", "Yes", NULL, "Schools"),
    ("Offensive Language", "Yes", "Yes", NULL, "Schools"),
    ("Sexual References", "Yes", "Yes", NULL, NULL);



-- -----------------------------------------------------
-- Table `library_database`.`genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`genre` ;

CREATE TABLE IF NOT EXISTS `library_database`.`genre` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(45) NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE INDEX `genre_id_UNIQUE` (`genre_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    genre(genre_name)
VALUES
    ("Young Adult"),
    ("Travel Literature"),
    ("Romance"),
    ("Science Fiction"),
    ("Fantasy"),
    ("Fiction"),
    ("Autobiographical Novel"),
    ("Historical Fiction"),
    ("Domestic Fiction"),
    ("Adventure"),
    ("Humour"),
    ("Biography"),
    ("Non-Fiction"),
    ("Literary Fiction"),
    ("Crime"),
    ("Thriller"),
    ("Epistolary"),
    ("Beat Generation"),
    ("Dystopian"),
    ("Political");


-- -----------------------------------------------------
-- Table `library_database`.`author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`author` ;

CREATE TABLE IF NOT EXISTS `library_database`.`author` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `books_written` INT NULL,
  `one_genre` VARCHAR(45) NULL,
  `age_for_first` INT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE INDEX `author_id_UNIQUE` (`author_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    author(first_name, last_name, books_written, one_genre, age_for_first)
VALUES
    ("Gary", "Paulsen", 200, "No", 29),
    ("Bill", "Bryson", 33, "No", 31),
    ("Kim", "Stanley Robinson", 51, "No", 31),
    ("J.K.", "Rowling", 37, "No", 32),
    ("Henry", "Miller", 31, "No", 43),
    ("Ricardo", "Piglia", 17, "No", 26),
    ("Annie", "Proulx", 20, "No", 45),
    ("Tracy", "Chevalier", 10, "Yes", 35),
    ("Tite", "Kubo", 92, "No", 19),
    ("Elizabeth", "von Arnim", 22, "No", 32),
    ("Douglas", "Adams", 23, "Yes", 23),
    ("Madeleine", "L'Engle", 63, "No", 47),
    ("John", "McPhee", 39, "Yes", 34),
    ("Frank", "Herbert", 118, "No", 25),
    ("Bryce", "Courtenay", 24, "No", 56),
    ("E.M.", "Forster", 27, "No", 26),
    ("Gordon", "Korman", 98, "No", 17),
    ("Mark", "Kurlansky", 32, "Yes", 44),
    ("Colleen", "McCullough", 25, "No", 37),
    ("Jeffery", "Deaver", 31, "Yes", 47),
    ("Jack", "Kerouac", 52, "No", 28),
    ("James", "Hilton", 31, "No", 20);


-- -----------------------------------------------------
-- Table `library_database`.`ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`ratings` ;

CREATE TABLE IF NOT EXISTS `library_database`.`ratings` (
  `rating_id` INT NOT NULL AUTO_INCREMENT,
  `number_professional` INT NULL,
  `professional_average` INT NULL,
  `number_public` INT NULL,
  `public_average` INT NULL,
  PRIMARY KEY (`rating_id`),
  UNIQUE INDEX `rating_id_UNIQUE` (`rating_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    ratings(number_professional, professional_average, number_public, public_average)
VALUES
    (120, 2.80, 270244, 3.72),
    (424, 4.06, 72451, 4.07),
    (841, 3.01, 5455, 3.92),
    (244, 3.68, 6333, 4.42),
    (58, 3.59, 3261, 4.10),
    (30, 3.80, 240, 4.17),
    (24, 3.24, 331, 4.14),
    (175, 3.89, 24985, 3.94),
    (1, 2.86, 6, 3.58),
    (4, 3.55, 54, 4.22),
    (NULL, 3.16, NULL, 3.88),
    (460, 3.22, 4930, 4.22),
    (1, 3.87, 6, 4.00),
    (22, 3.78, 268, 4.17),
    (228, 3.86, 3115, 4.34),
    (52, 3.87, 698, 3.92),
    (235, 3.87, 97494, 3.88),
    (455, 3.81, 69167, 4.35),
    (26, 3.16, 368, 3.96),
    (76, 3.90, 2050, 4.19),
    (26, 3.02, 191, 3.17),
    (104, 3.27, 970, 3.91),
    (66, 3.49, 533, 4.23),
    (2, 3.26, 26, 4.19),
    (77, 3.07, 1279, 3.96),
    (808, 3.97, 28242, 4.73),
    (39, 3.53, 488, 3.63),
    (955, 3.51, 11892, 3.92),
    (342, 3.33, 128596, 3.91),
    (199, 4.22, 9623, 4.30);


-- -----------------------------------------------------
-- Table `library_database`.`publishing`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`publishing` ;

CREATE TABLE IF NOT EXISTS `library_database`.`publishing` (
  `publishing_id` INT NOT NULL AUTO_INCREMENT,
  `house_name` VARCHAR(45) NULL,
  `founding` VARCHAR(10) NULL,
  `books_published` INT NULL,
  `still_around` VARCHAR(45) NULL,
  PRIMARY KEY (`publishing_id`),
  UNIQUE INDEX `publishing_id_UNIQUE` (`publishing_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    publishing(house_name, founding, books_published, still_around)
VALUES
    ("Simon & Schuster", 1924, 192000, "Yes"),
    ("Crown Publishing Group", 1933, 75500, "Yes"),
    ("Bantam Spectra", 1945, 75500, "Yes"),
    ("Arthur A. Levine Books", 1996, NULL, "No"),
    ("Grove Press", 1947, 2279, "Yes"),
    ("Editorial Anagrama", 1969, 520, "Yes"),
    ("Scribner", 1846, NULL, "Yes"),
    ("Ullstein Verlag", 1877, NULL, "Yes"),
    ("Glénat", 1972, 4000, "Yes"),
    ("Insel Verlag", 1901, 2155, "Yes"),
    ("Demco Media", NULL, 955, "No"),
    ("Farrar, Straus and Giroux", 1946, NULL, "No"),
    ("Ace Books", 1952, 75500, "Yes"),
    ("Ballantine Books", 1952, 75500, "Yes"),
    ("Dover Publications", 1941, NULL, "Yes"),
    ("Scholastic", 1920, NULL, "Yes"),
    ("Random House Trade", 1927, 75500, "Yes"),
    ("Penguin Books", 1935, 75500, "Yes"),
    ("William Morrow Paperbacks", 1926, NULL, "Yes"),
    ("Suma de letras, Punto de Lectura", NULL, 75500, "Yes"),
    ("HarperCollins", 1989, 200000, "Yes"),
    ("Digireads.com", 2003, 597, "No"),
    ("Avon", 1941, 6618, "Yes");



-- -----------------------------------------------------
-- Table `library_database`.`style`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`style` ;

CREATE TABLE IF NOT EXISTS `library_database`.`style` (
  `style_id` INT NOT NULL AUTO_INCREMENT,
  `style_name` VARCHAR(45) NULL,
  `shortest_page_length` INT NULL,
  `longest_page_length` INT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE INDEX `style_id_UNIQUE` (`style_id` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT INTO
    style(style_name, shortest_page_length, longest_page_length)
VALUES
    ("Novella", 40, 159),
    ("Novel", 160, 439),
    ("Epic", 440, NULL);


-- -----------------------------------------------------
-- Table `library_database`.`book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`book` ;

CREATE TABLE IF NOT EXISTS `library_database`.`book` (
  `isbn_13` CHAR(15) NOT NULL,
  `book_title` CHAR(65) NULL,
  `author_id` INT NULL,
  `rating_id` INT NULL,
  `restriction_id` INT NULL,
  `style_id` INT NULL,
  `language` VARCHAR(45) NULL,
  `num_pages` INT NULL,
  `date_published` YEAR NULL,
  `publishing_id` INT NULL,
  PRIMARY KEY (`isbn_13`),
  INDEX `author_id_idx` (`author_id` ASC) VISIBLE,
  INDEX `rating_id_idx` (`rating_id` ASC) VISIBLE,
  INDEX `restriction_id_idx` (`restriction_id` ASC) VISIBLE,
  INDEX `publishing_id_idx` (`publishing_id` ASC) VISIBLE,
  INDEX `style_id_idx` (`style_id` ASC) VISIBLE,
  CONSTRAINT `author_id`
    FOREIGN KEY (`author_id`)
    REFERENCES `library_database`.`author` (`author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `rating_id`
    FOREIGN KEY (`rating_id`)
    REFERENCES `library_database`.`ratings` (`rating_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `restriction_id`
    FOREIGN KEY (`restriction_id`)
    REFERENCES `library_database`.`restriction` (`restriction_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `publishing_id`
    FOREIGN KEY (`publishing_id`)
    REFERENCES `library_database`.`publishing` (`publishing_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `style_id`
    FOREIGN KEY (`style_id`)
    REFERENCES `library_database`.`style` (`style_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO
    book(isbn_13, book_title, author_id, rating_id, restriction_id, style_id, language, num_pages, date_published, publishing_id)
VALUES
    (9780689840920, "Hatchet", 1, 1, 2, 2, "English", 208, 2000, 1),
    (9780767903868, "In a Sunburned Country", 2, 2, 1, 2, "English", 335, 2001, 2),
    (9780553560732, "Red Mars", 3, 3, 1, 3, "English", 572, 1993, 3),
    (9780439554893, "Harry Potter and the Chamber of Secrets", 4, 4, 3, 2, "English", 352, 2003, 4),
    (9780802151780, "Nexus", 5, 5, 4, 2, "English", 316, 1965, 5),
    (9788433924636, "Formas breves", 6, 6, 1, 1, "Spanish", 144, 2001, 6),
    (9788433968777, "El último lector", 6, 7, 1, 2, "Spanish", 209, 2005, 6),
    (9780743271325, "Brokeback Mountain", 7, 8, 5, 1, "English", 55, 2005, 7),
    (9783471772539, "Wenn Engel fallen", 8, 9, 1, 2, "German", 384, 2002, 8),
    (9782723442275, "Bleach Tome 1: The Death and the Strawberry", 9, 10, 1, 2, "French", 192, 2003, 9),
    (9783458334224, "April May und June", 10, 11, 1, 1, "German", 88, 1995, 10),
    (9781400052929, "The Hitchhiker's Guide to the Galaxy", 11, 12, 6, 2, "English", 215, 2004, 2),
    (9780606105262, "Una arruga en el tiempo – A Wrinkle in Time", 12, 13, 1, 2, "Spanish", 205, 1984, 11),
    (9780374519742, "Heirs of General Practice", 13, 14, 1, 1, "English", 128, 1986, 12),
    (9780374518738, "Annals of the Former World", 13, 15, 1, 3, "English", 720, 2000, 12),
    (9780374519322, "La Place de la Concorde Suisse", 13, 16, 1, 2, "French", 160, 1994, 12),
    (9780441172696, "Dune Messiah", 14, 17, 1, 2, "English", 331, 1987, 13),
    (9780345410054, "The Power of One", 15, 18, 1, 3, "English", 544, 1996, 14),
    (9780486424545, "Howards End", 16, 19, 1, 2, "English", 246, 2002, 15),
    (9780439651400, "Public Enemies", 17, 20, 1, 1, "English", 150, 2005, 16),
    (9780345448194, "Boogaloo on 2nd Avenue", 18, 21, 1, 2, "English", 319, 2006, 17),
    (9780140275018, "Cod: A Biography of the Fish That Changed the World", 18, 22, 1, 2, "English", 294, 1998, 18),
    (9780060837556, "The Thorn Birds", 19, 23, 1, 3, "English", 673, 2005, 19),
    (9788466305136, "El Coleccionista De Huesos", 20, 24, 1, 3, "Spanish", 640, 2001, 20),
    (9788433924711, "Respiración artificial", 6, 25, 1, 2, "Spanish", 218, 2001, 6),
    (9780439827607, "Harry Potter Collection", 4, 26, 3, 3, "English", 3342, 2005, 4),
    (9780143036388, "On the Road", 21, 27, 1, 2, "English", 320, 2005, 18),
    (9780060594527, "Lost Horizon", 22, 28, 1, 2, "English", 241, 2004, 21),
    (9781420925432, "A Room with a View", 16, 29, 7, 1, "English", 119, 2005, 22),
    (9780380710829, "The Grass Crown", 19, 30, 1, 3, "English", 1104, 1992, 23);


-- -----------------------------------------------------
-- Table `library_database`.`has_genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library_database`.`has_genre` ;

CREATE TABLE IF NOT EXISTS `library_database`.`has_genre` (
  `isbn_13` CHAR(15) NOT NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`isbn_13`, `genre_id`),
  INDEX `fk_book_has_genre_genre1_idx` (`genre_id` ASC) VISIBLE,
  INDEX `fk_book_has_genre_book1_idx` (`isbn_13` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_genre_book1`
    FOREIGN KEY (`isbn_13`)
    REFERENCES `library_database`.`book` (`isbn_13`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_genre_genre1`
    FOREIGN KEY (`genre_id`)
    REFERENCES `library_database`.`genre` (`genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO
    has_genre(isbn_13, genre_id)
VALUES
    ("9780689840920", 1),
    ("9780767903868", 2),
    ("9780553560732", 4),
    ("9780439554893", 1),
    ("9780439554893", 5),
    ("9780439554893", 10),
    ("9780802151780", 6),
    ("9780802151780", 7),
    ("9788433924636", 6),
    ("9788433968777", 6),
    ("9780743271325", 6),
    ("9780743271325", 3),
    ("9783471772539", 8),
    ("9783471772539", 9),
    ("9782723442275", 6),
    ("9782723442275", 10),
    ("9783458334224", 6),
    ("9781400052929", 4),
    ("9781400052929", 11),
    ("9780606105262", 5),
    ("9780606105262", 6),
    ("9780606105262", 1),
    ("9780374519742", 12),
    ("9780374518738", 2),
    ("9780374519322", 13),
    ("9780441172696", 4),
    ("9780345410054", 8),
    ("9780486424545", 9),
    ("9780439651400", 10),
    ("9780439651400", 6),
    ("9780345448194", 14),
    ("9780140275018", 13),
    ("9780060837556", 3),
    ("9780060837556", 8),
    ("9788466305136", 15),
    ("9788466305136", 16),
    ("9788466305136", 6),
    ("9788433924711", 6),
    ("9788433924711", 17),
    ("9780439827607", 5),
    ("9780439827607", 6),
    ("9780439827607", 10),
    ("9780143036388", 18),
    ("9780060594527", 6),
    ("9780060594527", 5),
    ("9780060594527", 10),
    ("9780060594527", 19),
    ("9781420925432", 6),
    ("9781420925432", 3),
    ("9781420925432", 11),
    ("9780380710829", 8),
    ("9780380710829", 20);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Create Views
-- -----------------------------------------------------

USE library_database;

CREATE OR REPLACE VIEW titles_per_author AS
SELECT CONCAT(first_name, ' ', last_name) AS "Author Name", COUNT(book_title) AS "# of Titles"
FROM book b
	JOIN author a ON b.author_id = a.author_id
GROUP BY CONCAT(first_name, ' ', last_name)
ORDER BY COUNT(book_title) DESC;

CREATE OR REPLACE VIEW restrictions AS
SELECT book_title, CONCAT(first_name, ' ', last_name) AS "Author Name", restriction_id  
FROM book b 
	JOIN author a ON b.author_id = a.author_id
WHERE restriction_id IN (SELECT restriction_id FROM restriction WHERE restriction_id != 1)
ORDER BY book_title;

CREATE OR REPLACE VIEW books_per_publisher AS
SELECT house_name as "Publisher Name", count(b.publishing_id) as "# of Books in database"
FROM book b
	JOIN publishing p ON b.publishing_id = p.publishing_id
GROUP BY  house_name
ORDER BY count(b.publishing_id) desc;

CREATE OR REPLACE VIEW english_written_books AS
SELECT book_title as "Book Title", `language` as "Language"
FROM book
WHERE `language` = "English"
ORDER BY book_title;

CREATE OR REPLACE VIEW count_french_books AS 
SELECT CONCAT(first_name, ' ', last_name) AS "Author Name", COUNT(b.language) AS "# of French Books in database"
FROM book b
	JOIN author a ON b.author_id = a.author_id
WHERE `language` = "French"
GROUP BY CONCAT(first_name, ' ', last_name)
ORDER BY COUNT(book_title) DESC;

CREATE OR REPLACE VIEW books_and_genres AS
SELECT b.book_title AS "Book Title", g.genre_name AS "Genre Name"
FROM book b
	INNER JOIN has_genre hg ON hg.isbn_13 = b.isbn_13
	INNER JOIN genre g ON hg.genre_id = g.genre_id
ORDER BY b.book_title;

CREATE OR REPLACE VIEW count_Hilton_2001 AS
SELECT CONCAT (first_name, " ", last_name) AS "Author Name"
	FROM author
		JOIN book ON date_published = "2001"
WHERE last_name = "Hilton";