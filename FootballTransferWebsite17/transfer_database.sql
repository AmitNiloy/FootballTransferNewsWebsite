-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 04:45 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transfer_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `Player` varchar(50) NOT NULL,
  `Transfer_fee` bigint(100) NOT NULL,
  `Transferred_from` varchar(40) NOT NULL,
  `Transferred_to` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`Player`, `Transfer_fee`, `Transferred_from`, `Transferred_to`) VALUES
('Alexander Lacazatte', 50, 'Lyon', 'Arsenal'),
('Andre Silva', 40, 'Benfica', 'AC Milan'),
('Bakayako', 45, 'Monaco', 'Chelsea'),
('Benjamin Mendy', 49, 'Monaco', 'Manchester City'),
('Bernardo Silva', 45, 'Monaco', 'manchester City'),
('Bonucchi', 30, 'Juventus', 'AC Milan'),
('Ceballos', 20, 'Real Betis', 'Real Madrid'),
('Chicarito', 16, 'Leverkusen', 'West Ham'),
('Cristian Tolisso', 35, 'Lyon', 'Bayern Munchen'),
('Dani Alves', 0, 'Juventus', 'PSG'),
('Deulofeu', 10, 'Everton', 'Barcelona'),
('James Rodriguez', 0, 'Real Madrid', 'Bayern Munchen'),
('Kyle Walker', 50, 'Spurs', 'Manchester City'),
('Lukaku', 90, 'Everton', 'Manchester United'),
('Mohammad Salah', 34, 'Roma', 'Liverpool'),
('Morata', 70, 'Real Madrid', 'Chelsea'),
('Nelson Semedo', 35, 'Benfica', 'Barcelona'),
('Theo Hernandez', 25, 'athletico Madrid', 'Real Madrid'),
('Viktor Lindelof', 30, 'Ajax', 'Manchester United'),
('Wayne Rooney', 23, 'Manchester United', 'Everton');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`Player`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
