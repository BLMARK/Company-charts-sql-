-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2017. Nov 04. 14:12
-- Kiszolgáló verziója: 5.7.19
-- PHP verzió: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `company`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hr`
--

DROP TABLE IF EXISTS `hr`;
CREATE TABLE IF NOT EXISTS `hr` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) NOT NULL,
  `worker_birthdate` date NOT NULL,
  `worker_position` varchar(100) NOT NULL,
  `worker_address` varchar(100) NOT NULL,
  `leader` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `hr`
--

INSERT INTO `hr` (`worker_id`, `worker_name`, `worker_birthdate`, `worker_position`, `worker_address`, `leader`) VALUES
(1, 'Konfár Anikó', '1985-01-08', 'Kommunikáció felelős', 'Budapest', 0),
(2, 'Szabó Attila', '1987-02-15', 'Tréner', 'Pilisvörösvár', 0),
(3, 'Neugam Tünde', '1982-06-09', 'Munkaügyes', 'Hódmezővásárhely', 0),
(4, 'Kovács Magda', '1979-06-11', 'Bérszámfejtő', 'Debrecen', 0),
(5, 'Kovács Zsanett', '1989-09-29', 'HR vezető', 'Debrecen', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `logistics`
--

DROP TABLE IF EXISTS `logistics`;
CREATE TABLE IF NOT EXISTS `logistics` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) NOT NULL,
  `worker_birthdate` date NOT NULL,
  `worker_position` varchar(100) NOT NULL,
  `worker_address` varchar(100) NOT NULL,
  `leader` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `logistics`
--

INSERT INTO `logistics` (`worker_id`, `worker_name`, `worker_birthdate`, `worker_position`, `worker_address`, `leader`) VALUES
(1, 'Nagy Sára', '1987-02-15', 'Logisztikai vezető', 'Solymár', 1),
(2, 'Moksony Adél', '1977-02-15', 'Logisztikai koordinátor', 'Göd', 0),
(3, 'Keresztesi Tamás', '1987-02-14', 'Fuvarszervező', 'Vác', 0),
(4, 'Sulyok Rita', '1989-08-03', 'Asszisztens', 'Váchartyán', 0),
(5, 'Menet Elek', '1976-07-03', 'Fuvarszervező', 'Érd', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) NOT NULL,
  `worker_birthdate` date NOT NULL,
  `worker_position` varchar(100) NOT NULL,
  `worker_address` varchar(100) NOT NULL,
  `leader` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `maintenance`
--

INSERT INTO `maintenance` (`worker_id`, `worker_name`, `worker_birthdate`, `worker_position`, `worker_address`, `leader`) VALUES
(1, 'Schobert Norbert', '1972-03-08', 'Kertész', 'Budapest', 0),
(2, 'Gulyás Leves', '1993-06-15', 'Szakács', 'Budapest', 0),
(3, 'Gábor Gábor', '1987-07-03', 'Karbantartási vezető', 'Érd', 1),
(4, 'Mr. Proper', '1989-08-29', 'Takarító', 'Tök', 0),
(5, 'Repülős Gizi', '1967-07-03', 'Vagyonkezelő', 'Vámosmikola', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `management`
--

DROP TABLE IF EXISTS `management`;
CREATE TABLE IF NOT EXISTS `management` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) NOT NULL,
  `worker_birthdate` date NOT NULL,
  `worker_position` varchar(100) NOT NULL,
  `worker_address` varchar(100) NOT NULL,
  `leader` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `management`
--

INSERT INTO `management` (`worker_id`, `worker_name`, `worker_birthdate`, `worker_position`, `worker_address`, `leader`) VALUES
(1, 'Kis Balázs', '1990-10-08', 'Vezérigazgató', 'Budapest', 1),
(2, 'Nagy Sára', '1987-02-15', 'Logisztikai Vezető', 'Solymár', 1),
(3, 'Lantos Dániel', '1975-06-06', 'Értékesítési vezető', 'Szeged', 1),
(4, 'Kovács Zsanett', '1989-08-29', 'HR vezető', 'Debrecen', 1),
(5, 'Gábor Gábor', '1987-07-03', 'Karbantartási vezető', 'Érd', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) NOT NULL,
  `worker_birthdate` date NOT NULL,
  `worker_position` varchar(100) NOT NULL,
  `worker_address` varchar(100) NOT NULL,
  `leader` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `purchase`
--

INSERT INTO `purchase` (`worker_id`, `worker_name`, `worker_birthdate`, `worker_position`, `worker_address`, `leader`) VALUES
(1, 'Lantos Dániel', '1975-06-06', 'Értékesítési vezető', 'Szeged', 1),
(2, 'Lákátos Evettke', '1996-09-15', 'Értékesítési asszisztens', 'Miskolc', 0),
(3, 'Kollár Edit', '1968-12-24', 'Területi képviselő', 'Banska bystrica', 0),
(4, 'Küküllő Éva', '1989-01-01', 'Területi képviselő', 'Nagymacs', 0),
(5, 'Tóth József', '1986-12-03', 'Területi képviselő', 'Apátistvánfalva', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
