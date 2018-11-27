-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2018 at 04:20 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `bill_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `bill_date`, `mobile`) VALUES
(5, '2018-11-27 09:55:44', 722832004),
(6, '2018-11-27 10:35:59', 722832004),
(7, '2018-11-27 10:45:54', 722832004),
(8, '2018-11-27 10:47:09', 722832004),
(9, '2018-11-27 10:47:43', 722832004),
(10, '2018-11-27 10:48:39', 722832004),
(11, '2018-11-27 10:52:04', 722832004),
(12, '2018-11-27 10:56:53', 722832004),
(13, '2018-11-27 11:12:12', 722832004),
(14, '2018-11-27 11:13:20', 722832004),
(15, '2018-11-27 13:22:59', 722832004),
(16, '2018-11-27 13:23:17', 0),
(17, '2018-11-27 13:23:42', 0),
(18, '2018-11-27 13:26:19', 722832004),
(19, '2018-11-27 13:27:55', 722832004),
(20, '2018-11-27 13:33:28', 722832004),
(21, '2018-11-27 13:46:34', 722832004),
(22, '2018-11-27 14:24:39', 722832004),
(23, '2018-11-27 14:37:58', 722832004),
(24, '2018-11-27 15:06:18', 722832004);

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `bill_no` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`bill_no`, `item_id`, `quantity`) VALUES
(5, 1, 1),
(5, 5, 3),
(7, 3, 1),
(7, 8, 2),
(9, 6, 1),
(10, 1, 1),
(11, 5, 2),
(13, 9, 2),
(14, 4, 1),
(15, 9, 1),
(16, 10, 2),
(16, 9, 9),
(17, 9, 2),
(18, 7, 1),
(19, 1, 2),
(20, 9, 1),
(21, 2, 2),
(21, 4, 1),
(21, 3, 6),
(22, 3, 3),
(22, 7, 1),
(23, 4, 5),
(24, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `category`, `photo`) VALUES
(1, 'Chicken Pizza', 3.75, 'Pizza', 'pizza.jpg'),
(2, 'Pepperoni', 5.99, 'Pizza', 'pizza2.png'),
(3, 'Philly Steak Sandwich ', 9.99, 'Sandwich', 'sandwitch.jpg'),
(4, 'Caesar Salad', 8.99, 'Salad', 'salad.jpg'),
(5, 'Chicken Sandwich', 6.99, 'Sandwich', 'sandwitch2.jpg\r\n\r\n'),
(6, 'Greek Salad', 8.99, 'Salad', 'salad1.jpg'),
(7, 'Pepsi', 9.99, 'Beverages', 'pepsi.jpg'),
(8, 'Coke', 7.99, 'Beverages', 'coke.jpg'),
(9, 'Bananas', 1.99, 'Extras', 'banana.jpg'),
(10, 'Volvic water', 7.99, 'Extras', 'volvic water.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `temp_order`
--

CREATE TABLE `temp_order` (
  `mobile` varchar(15) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_order`
--

INSERT INTO `temp_order` (`mobile`, `item_id`, `quantity`) VALUES
('', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `mobile` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`mobile`, `password`, `name`, `address`) VALUES
(' 254792071282', '123456', 'Tarus', 'Nakuru'),
('254792071275', '123456', 'Brian', 'Kabarnet'),
('254782071275', '123456', 'Brian', 'Nairobi'),
('254772071275', '123456', 'Brian', 'Nairobi'),
('254792071271', '123456', 'Edwin', 'Marigat'),
('', '', '', ''),
('4949494949', '123', 'Griffins', 'Kabarnet'),
('25479494', '', '', ''),
('545466464', '', '', ''),
('646464664', '', '', ''),
('6464646641', '', '', ''),
('0722832004', '1', 'Roseline', 'Kabarnet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
