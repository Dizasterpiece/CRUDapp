-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 01:52 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `make_model_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_id` int(10) NOT NULL,
  `car_photo` varchar(255) NOT NULL,
  `car_make` varchar(15) NOT NULL,
  `car_model` varchar(15) DEFAULT NULL,
  `car_color` varchar(15) DEFAULT NULL,
  `car_engine` varchar(10) DEFAULT NULL,
  `car_year` year(4) DEFAULT NULL,
  `car_mileage` int(10) DEFAULT NULL,
  `car_transmission` varchar(15) DEFAULT NULL,
  `car_power` smallint(4) DEFAULT NULL,
  `car_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`car_id`, `car_photo`, `car_make`, `car_model`, `car_color`, `car_engine`, `car_year`, `car_mileage`, `car_transmission`, `car_power`, `car_price`) VALUES
(82, 'img/323.pic', 'BMW', '323', 'black', 'petrol', 1996, 326500, 'manual', 170, 4000),
(83, 'img/e320.jpg', 'Mercedes-Benz', 'E320', 'metallic', 'diesel', 2004, 211100, 'manual', 210, 12000),
(84, 'img/BF181287_1.jpg', 'VW', 'Polo', 'black', 'petrol', 2000, 361000, 'manual', 90, 2000),
(85, 'img/corsa.jpeg', 'Opel', 'Corsa', 'blue', 'diesel', 1997, 214998, 'manual', 75, 1800),
(86, 'img/colt.jpeg', 'Mitsubishi', 'Colt', 'metallic', 'diesel', 1998, 365800, 'manual', 101, 2100),
(87, 'img/volvo-v40-1996-368118.jpg', 'Volvo', 'V40', 'red', 'petrol', 1996, 289630, 'manual', 140, 3500),
(88, 'img/clio.jpg', 'Renault', 'Clio', 'blue', 'electric', 2004, 275640, 'auto', 40, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `make_table`
--

CREATE TABLE `make_table` (
  `make_id` int(10) NOT NULL,
  `make_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `make_table`
--

INSERT INTO `make_table` (`make_id`, `make_name`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'VW'),
(4, 'Opel'),
(5, 'Volvo'),
(6, 'Mercedes-Benz'),
(7, 'Honda');

-- --------------------------------------------------------

--
-- Table structure for table `model_table`
--

CREATE TABLE `model_table` (
  `model_id` int(10) NOT NULL,
  `model_name` varchar(15) NOT NULL,
  `make_fk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_table`
--

INSERT INTO `model_table` (`model_id`, `model_name`, `make_fk`) VALUES
(1, 'A1', 1),
(2, '316', 2),
(3, 'Civic', 7),
(4, 'E320', 6),
(5, 'Astra', 4),
(6, 'S60', 5),
(7, 'Golf', 3),
(8, 'S40', 5),
(9, 'A2', 1),
(10, '318', 2),
(11, 'Passat', 3),
(12, 'Corsa', 4),
(13, 'C220', 6),
(14, 'Accord', 7),
(15, 'A3', 1),
(16, 'A4', 1),
(17, 'A6', 1),
(18, '320', 2),
(19, 'A7', 1),
(20, 'A8', 1),
(21, '323', 2),
(22, '325', 2),
(23, '328', 2),
(24, '330', 2),
(25, '520', 2),
(26, '523', 2),
(27, '525', 2),
(28, '528', 2),
(29, '530', 2),
(30, '535', 2),
(31, '540', 2),
(32, 'E340', 6),
(33, 'C240', 6),
(34, 'S500', 6),
(35, 'V50', 5),
(36, 'V70', 5),
(37, 'XC90', 5),
(38, 'XC90', 5),
(39, 'Lupo', 3),
(40, 'Touareg', 3),
(41, 'V40', 5),
(42, 'Insignia', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `car_make` (`car_make`);

--
-- Indexes for table `make_table`
--
ALTER TABLE `make_table`
  ADD PRIMARY KEY (`make_id`);

--
-- Indexes for table `model_table`
--
ALTER TABLE `model_table`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `make_fk` (`make_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `car_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `make_table`
--
ALTER TABLE `make_table`
  MODIFY `make_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `model_table`
--
ALTER TABLE `model_table`
  MODIFY `model_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_table`
--
ALTER TABLE `model_table`
  ADD CONSTRAINT `model_table_ibfk_1` FOREIGN KEY (`make_fk`) REFERENCES `make_table` (`make_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
