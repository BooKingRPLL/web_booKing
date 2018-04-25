-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 01:28 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_king`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `name`, `password`, `email`, `address`, `phone_num`) VALUES
('A0000001', 'Glenn Tuyu', '3105', 'cgtuyu31@gmail.com', 'TKI 3', '087823387735'),
('A0000002', 'Evan Joshua', '3105', 'vanzjo@gmail.com', 'rahayu', '081508102381'),
('A0000003', 'Sujana Azaria', '3105', 'sujanaazaria@gmail.com', 'rahayu', '081508102381'),
('A0000004', 'Christian Alexandro', '3105', 'christalex@gmail.com', 'rahayu', '081508102381');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` varchar(20) NOT NULL,
  `author` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author`) VALUES
('A0001', 'Author 1'),
('A0002', 'Author 2'),
('A0003', 'Author 3'),
('A0004', 'Author 4'),
('A0005', 'Author 5');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(20) NOT NULL,
  `author_id` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `synopsis` text,
  `year` int(11) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `author_id`, `title`, `synopsis`, `year`, `page`, `price`, `qty`, `deleted`) VALUES
('ASDFAEG', 'A0001', 'ASDF', 'sdf', 1111, 12, 2000, 90, 0),
('B0000001', 'A0001', 'Ready Player One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit turpis. Vivamus imperdiet egestas augue, at lacinia nunc rhoncus eget. Etiam at accumsan sem. Ut sed arcu quis velit fermentum rhoncus. Morbi sem mi, gravida eget libero nec, egestas blandit dolor. Mauris ornare maximus nulla. Duis mi diam, porttitor sit amet pretium nec, luctus at tortor. ', 2011, 385, 55000, 5, 1),
('B00000010', 'A0003', 'buku terkahir', 'zxc', 1, 1, 1, 2, 0),
('B0000002', 'A0001', 'Ready', 'Lorem', 2012, 305, 1000, 7, 0),
('B0000003', 'A0001', 'Ready Player Three', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit turpis. Vivamus imperdiet egestas augue, at lacinia nunc rhoncus eget. Etiam at accumsan sem. Ut sed arcu quis velit fermentum rhoncus. Morbi sem mi, gravida eget libero nec, egestas blandit dolor. Mauris ornare maximus nulla. Duis mi diam, porttitor sit amet pretium nec, luctus at tortor. ', 2013, 412, 58000, 14, 0),
('B0000004', 'A0001', 'Ready Player Four', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit turpis. Vivamus imperdiet egestas augue, at lacinia nunc rhoncus eget. Etiam at accumsan sem. Ut sed arcu quis velit fermentum rhoncus. Morbi sem mi, gravida eget libero nec, egestas blandit dolor. Mauris ornare maximus nulla. Duis mi diam, porttitor sit amet pretium nec, luctus at tortor. ', 2012, 383, 46000, 3, 1),
('B0000005', 'A0002', 'zzz', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit turpis. Vivamus imperdiet egestas augue, at lacinia nunc rhoncus eget. Etiam at accumsan sem. Ut sed arcu quis velit fermentum rhoncus. Morbi sem mi, gravida eget libero nec, egestas blandit dolor. Mauris ornare maximus nulla. Duis mi diam, porttitor sit amet pretium nec, luctus at tortor. ', 2011, 10, 5000, 500, 1),
('B0000006', 'A0002', 'Buku 5', 'no comment', 1998, 10, 1500, 18, 0),
('B0000007', 'A0003', 'Buku 6', 'nonono', 1990, 200, 20050, 10, 0),
('B0000008', 'A0001', 'Buku 7', 'asdf', 1000, 20, 9000, 90, 0),
('ccc', 'A0002', 'ccc', 'ccc', 12, 12, 12, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `user_id` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`user_id`, `name`, `password`, `email`, `address`, `phone_num`) VALUES
('1', 'customer 1', '3105', 'cust1@gmail.com', 'tki 1', '08123456789'),
('2', 'customer 2', '3105', 'cust1@gmail.com', 'tki 1', '08123456789'),
('3', 'customer 3', '3105', 'cust2@gmail.com', 'tki 2', '08123456789'),
('4', 'customer 4', '3105', 'cust3@gmail.com', 'tki 3', '08123456789'),
('5', 'customer 5', '3105', 'cust4@gmail.com', 'tki 4', '08123456789'),
('6', 'customer tes', '3105', 'tes@gmail.com', 'tki tes', '085125123'),
('7', 'customer tes2', '3105', 'tes2@gmail.com', 'tki tes 2', '085125123'),
('8', 'customer tes3', '3105', 'tes3@gmail.com', 'tki tes 3', '085125123'),
('9', 'EvanJoshua', '123123', NULL, NULL, '123412');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` varchar(20) NOT NULL,
  `genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre`) VALUES
('G0001', 'Sci-fi'),
('G0002', 'Action'),
('G0003', 'Romance'),
('G0004', 'Adventure'),
('G0005', 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `genre_lists`
--

CREATE TABLE `genre_lists` (
  `book_id` varchar(20) NOT NULL,
  `genre_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_lists`
--

INSERT INTO `genre_lists` (`book_id`, `genre_id`) VALUES
('B0000001', 'G0001'),
('B0000002', 'G0001'),
('ccc', 'G0001'),
('ccc', 'G0002'),
('B0000001', 'G0004'),
('B0000003', 'G0004'),
('B0000001', 'G0005');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`, `status_desc`) VALUES
('S00001', 'Cart', 'The items are still in cart'),
('S00002', 'Paid', 'The Items have been paid'),
('S00003', 'Shipped', 'The Items has been shipped'),
('S00004', 'Received', 'The items have been received by customer');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` varchar(20) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `user_id`, `trans_date`, `status_id`) VALUES
('0.2051113068026118', '3', '2018-04-25 05:22:14', 'S00002'),
('0.32787296874575744', '8', '2018-04-25 04:46:44', 'S00001'),
('0.5372548766665268', '5', '2018-04-25 04:54:46', 'S00001'),
('0.6856441919391082', '7', '2018-04-25 05:00:37', 'S00001'),
('0.7096483728053355', '4', '2018-04-25 04:47:26', 'S00001'),
('0.7486641690792286', '3', '2018-04-25 05:21:30', 'S00002'),
('0.9233871598312635', '3', '2018-04-25 22:43:03', 'S00001'),
('T0000000001', '1', '2018-04-04 23:22:34', 'S00001'),
('T0000000002', '1', '2018-04-04 23:22:34', 'S00001'),
('T0000000003', '2', '2018-04-04 23:22:34', 'S00002'),
('T0000000004', '3', '2018-04-04 23:22:34', 'S00003'),
('T0000000005', '6', '2018-04-04 23:22:34', 'S00004');

-- --------------------------------------------------------

--
-- Table structure for table `trans_lists`
--

CREATE TABLE `trans_lists` (
  `trans_id` varchar(20) NOT NULL,
  `book_id` varchar(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_lists`
--

INSERT INTO `trans_lists` (`trans_id`, `book_id`, `quantity`, `deleted`) VALUES
('0.2051113068026118', 'ASDFAEG', 4, 0),
('0.32787296874575744', 'B0000006', 2, 0),
('0.5372548766665268', 'B00000010', 3, 0),
('0.6856441919391082', 'ASDFAEG', 2, 0),
('0.7096483728053355', 'ASDFAEG', 8, 0),
('0.7486641690792286', 'ASDFAEG', 4, 0),
('0.9233871598312635', 'B00000010', 2, 0),
('0.9233871598312635', 'B0000002', 4, 0),
('0.9233871598312635', 'B0000003', 16, 0),
('0.9233871598312635', 'B0000006', 2, 0),
('T0000000001', 'ASDFAEG', 3, 0),
('T0000000001', 'B0000001', 1, 0),
('T0000000001', 'B00000010', 2, 0),
('T0000000001', 'B0000006', 4, 0),
('T0000000002', 'B0000003', 1, 0),
('T0000000003', 'B0000002', 1, 0),
('T0000000003', 'B0000003', 2, 0),
('T0000000004', 'B0000003', 5, 0),
('T0000000005', 'B0000001', 5, 0),
('T0000000005', 'B0000002', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_author` (`author_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `genre_lists`
--
ALTER TABLE `genre_lists`
  ADD PRIMARY KEY (`genre_id`,`book_id`),
  ADD KEY `gl_book` (`book_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_cust` (`user_id`),
  ADD KEY `trans_status` (`status_id`);

--
-- Indexes for table `trans_lists`
--
ALTER TABLE `trans_lists`
  ADD PRIMARY KEY (`trans_id`,`book_id`),
  ADD KEY `tl_book` (`book_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `book_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

--
-- Constraints for table `genre_lists`
--
ALTER TABLE `genre_lists`
  ADD CONSTRAINT `gl_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `gl_genre` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `trans_cust` FOREIGN KEY (`user_id`) REFERENCES `customers` (`user_id`),
  ADD CONSTRAINT `trans_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `trans_lists`
--
ALTER TABLE `trans_lists`
  ADD CONSTRAINT `tl_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `tl_trans` FOREIGN KEY (`trans_id`) REFERENCES `transactions` (`trans_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
