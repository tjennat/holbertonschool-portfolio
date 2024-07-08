DROP DATABASE IF EXISTS `db-game-othello`;

CREATE DATABASE IF NOT EXISTS `db-game-othello`;

USE `db-game-othello`;

CREATE TABLE IF NOT EXISTS `User`(
	`userId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`username` VARCHAR(45) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`pwd` VARCHAR(255) NOT NULL,
	`country`VARCHAR(45) NOT NULL DEFAULT 'France'
);

CREATE TABLE IF NOT EXISTS `Score`(
	`scoreId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`score` INT NULL DEFAULT 0,
	`rank` INT NULL DEFAULT 0,
	`userId` INT NOT NULL,
	FOREIGN KEY (`userId`) REFERENCES `User`(`userId`)
);

CREATE TABLE IF NOT EXISTS `Game` (
	`gameId` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`nbrGameWon` INT NULL DEFAULT 0,
	`nbrGameLost` INT NULL DEFAULT 0,
	`nbrGamePlayed` INT NULL DEFAULT 0,
	`userId` INT NOT NULL,
	FOREIGN KEY (`userId`) REFERENCES `User`(`userId`)
);