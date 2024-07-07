-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 07, 2024 at 02:09 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehurt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL,
  `opinia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opinie`
--

INSERT INTO `opinie` (`id`, `imie`, `ocena`, `opinia`) VALUES
(1, 'aaa', 1, 'vs b'),
(6, 'aaa', 2, 'csdc'),
(7, 'aa', 1, 'fbb '),
(8, 'aaa', 1, 'xss'),
(9, 'aa', 5, 'cscawvv'),
(10, 'xss', 3, '<p style=background-color:red;><i>Atak XSS</i></p>'),
(11, 'XSS proba2', 2, '<script type=\"text/javascript\">alert(document.cookie);</script>'),
(12, 'aa1', 1, 'a1'),
(13, 'acca', 1, 'aaa'),
(14, 'acca', 4, 'aaa'),
(15, 'aaa', 1, 'aaaa222'),
(16, 'XSS 333', 3, '<script type=\"text/javascript\">alert(document.cookie);</script>'),
(17, 'XSS zabezpiecz serwis', 2, '<script type=\"text/javascript\">alert(document.cookie);</script>'),
(18, 'XSS red1', 1, '<p style=background-color:red;><i>Atak XSS</i></p>'),
(19, 'XSS red2', 2, '<p style=background-color:red;><i>Atak XSS</i></p>'),
(20, 'qqq', 2, '<script>alert(1)</script>'),
(21, '‘<p style=background-color:red;><i>Atak XSS</i></p', 1, 'opinia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `user`, `pass`, `email`, `imie`, `nazwisko`) VALUES
(1, 'admin', 'admin', 'admin@test.test', 'Admin', 'Testowy'),
(2, 'angelika', 'angelika', 'angelikaczapla1997@gmail.com', 'Angelika', 'Czapla'),
(3, 'anna', 'anna123', 'anna@testowa.test', 'Anna', 'Testowa'),
(4, 'jan', 'jan123', 'jan@testowy.test', 'Jan', 'Testowy'),
(5, 'grazyna', 'test', 'grazyna@test.test', 'Grażyna', 'Kolorowa'),
(7, 'marek', 'aaabbbccc', 'marek@gmail.test', 'Marek', 'Markowski'),
(6, 'adam', '$2y$10$vhCLXs4BOABZEDpkD0WsluA/hHVk4SAYQCfbHmdj0A7edWEHNk3ce', 'adam@test.te', 'Adam', 'Mickiewicz'),
(8, 'angelika2', 'angelika2', 'angelika@testowa.test', 'Angelika', 'AA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `wiadomosc` text NOT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `imie`, `email`, `telefon`, `wiadomosc`, `data`) VALUES
(1, 'aaa', 'angelikaczapla1997@gmail.com', '78965254865', 'aa', '2024-03-16 21:16:48'),
(2, 'fsegv', 'angelikaczapla1997@gmail.com', 'vsds', 'grsv', '2024-03-16 21:19:19'),
(3, 'fsegv', 'angelikaczapla1997@gmail.com', 'vsds', 'grsv', '2024-03-16 21:20:56'),
(4, 'aaa', 'angelikaczapla1997@gmail.com', '896548544', 'sdfgb', '2024-03-16 21:22:26'),
(5, 'aaa', 'angelikaczapla1997@gmail.com', '896548544', 'sdfgb', '2024-03-16 21:22:44'),
(10, 'aaa', 'angelikaczapla1997@gmail.com', '7896254856365', 'vdbhrhbsg', '2024-03-16 21:27:41'),
(11, 'aaa', 'angelikaczapla1997@gmail.com', '7896254856365', 'vdbhrhbsg', '2024-03-16 21:28:00'),
(12, 'aaa', 'angelikaczapla1997@gmail.com', '7896254856365', 'frhfbxh', '2024-03-16 21:30:29'),
(13, 'vdv', 'angelikaczapla1997@gmail.com', '7896254856365', 'dhrbh', '2024-03-16 21:30:54'),
(14, 'aaa', 'angelikaczapla1997@gmail.com', '7896254856365', 'select * from wiadomosc;', '2024-03-16 21:36:33'),
(31, '\'); DROP TABLE komunikaty; --', 'angelikaczapla1997@gmail.com', '7896254856365', 'aaa', '2024-03-16 22:06:59'),
(32, 'aaa', 'angelikaczapla1997@gmail.com', '7896245', 'gcyt', '2024-03-16 22:16:15'),
(33, ' DROP TABLE komunikaty; --', 'zlosliwy@email.com', '7896254856365', 'bfdb', '2024-03-16 22:18:04'),
(34, '\'); CREATE TABLE komunikaty; --', 'angelikaczapla1997@gmail.com', '7896254856365', 'bfgnbd', '2024-03-16 22:28:34'),
(35, '\'); DROP TABLE komunikaty; --', 'angelikaczapla1997@gmail.com', '7896254856365', 'nfdn', '2024-03-16 22:33:21'),
(36, 'brf', 'angelikaczapla1997@gmail.com', '7526525', 'ym,gtmg', '2024-03-17 01:51:52'),
(37, 'aaa', 'angelikaczapla1997@gmail.com', '7896254856365', 'xss', '2024-03-17 12:33:04'),
(38, 'aa', 'aa@gmail.com', 'uilkyu', ',hjj', '2024-06-01 19:53:00'),
(39, 'svdv', 'aa@gmail.com', 'nfgtn', 'gmn c', '2024-06-01 19:53:24'),
(40, 'ac', 'aa@gmail.com', '24524394', '\'); DROP TABLE komunikaty; --', '2024-06-01 23:48:45');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
