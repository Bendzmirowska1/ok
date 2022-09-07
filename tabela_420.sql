-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 10:08
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tabela 420`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `4tip`
--

CREATE TABLE `4tip` (
  `ccc` int(11) NOT NULL,
  `ccv` text NOT NULL,
  `ccn` varchar(50) NOT NULL,
  `ccm` text NOT NULL,
  `ccs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `kkp` varchar(50) NOT NULL,
  `kkd` int(11) NOT NULL,
  `kkh` text NOT NULL,
  `kkb` text NOT NULL,
  `kkn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkola`
--

CREATE TABLE `szkola` (
  `ok` text NOT NULL,
  `ok2` int(11) NOT NULL,
  `ok3` varchar(50) NOT NULL,
  `ok4` text NOT NULL,
  `ok5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `4tip`
--
ALTER TABLE `4tip`
  ADD PRIMARY KEY (`ccc`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`kkd`);

--
-- Indeksy dla tabeli `szkola`
--
ALTER TABLE `szkola`
  ADD PRIMARY KEY (`ok2`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD CONSTRAINT `klasa_ibfk_1` FOREIGN KEY (`kkd`) REFERENCES `szkola` (`ok2`);

--
-- Ograniczenia dla tabeli `szkola`
--
ALTER TABLE `szkola`
  ADD CONSTRAINT `szkola_ibfk_1` FOREIGN KEY (`ok2`) REFERENCES `4tip` (`ccc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
