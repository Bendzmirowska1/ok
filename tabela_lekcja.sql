-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 09:59
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
-- Baza danych: `tabela lekcja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

CREATE TABLE `dostawcy` (
  `Nazwa_Firmy` text NOT NULL,
  `ID_Firmy` int(11) NOT NULL,
  `Numer_dostawcy` varchar(50) NOT NULL,
  `Adres_Firmy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktury`
--

CREATE TABLE `faktury` (
  `ID_Faktury` int(11) NOT NULL,
  `ID_odbiorcy` varchar(50) NOT NULL,
  `ID_dostawcy` varchar(50) NOT NULL,
  `Cena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odbiorcy`
--

CREATE TABLE `odbiorcy` (
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `ID_odbiorcy` int(11) NOT NULL,
  `Adres` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`ID_Firmy`);

--
-- Indeksy dla tabeli `faktury`
--
ALTER TABLE `faktury`
  ADD PRIMARY KEY (`ID_Faktury`);

--
-- Indeksy dla tabeli `odbiorcy`
--
ALTER TABLE `odbiorcy`
  ADD PRIMARY KEY (`ID_odbiorcy`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD CONSTRAINT `dostawcy_ibfk_1` FOREIGN KEY (`ID_Firmy`) REFERENCES `faktury` (`ID_Faktury`);

--
-- Ograniczenia dla tabeli `faktury`
--
ALTER TABLE `faktury`
  ADD CONSTRAINT `faktury_ibfk_1` FOREIGN KEY (`ID_Faktury`) REFERENCES `odbiorcy` (`ID_odbiorcy`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
