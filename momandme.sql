-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `momandme`
--

-- --------------------------------------------------------

--
-- Table structure for table `24babyregistry`
--

CREATE TABLE `24babyregistry` (
  `user_id` varchar(10) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acclogin`
--

CREATE TABLE `acclogin` (
  `user_id` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acclogin`
--

INSERT INTO `acclogin` (`user_id`, `email`, `password`, `type`) VALUES
('CU0007', 'rachel@gmail.com', 'ross', ''),
('CU0009', 'jega@gmail.com', 'jega', 'Current'),
('CU0010', 'michelle@gmail.com', 'mishy', 'Current'),
('CU0012', 'pras@gmailcom', 'grass', 'Current'),
('CU0015', 'lakshani@gmail.com', 'ruwantha', 'Current'),
('CU0016', 'mommy@gmail.com', 'daddy', 'Current'),
('CU0017', 'ryan@gmail.com', 'man', 'Current'),
('CU0019', 'sara@gmail.com', 'dora', 'Current'),
('CU0022', 'daisy@gmail.com', 'roses', 'Current'),
('CU0026', 'greta@gmail.com', 'open', 'Current'),
('CU0030', 'abdul@gmail.com', 'password', 'Current'),
('PL000', 'jesi@gmail.com', 'tim', ''),
('PL0011', 'sahas@gmail.com', 'azeem', 'Plan'),
('PL0013', 'pathum@gmail.com', 'zebra', 'Plan'),
('PL0018', 'sanda@gmail.com', 'moon', 'Plan'),
('PL0020', 'maashi@gmail.com', 'falls', 'Plan'),
('PL0024', 'rose@gmail.com', 'trees', 'Plan'),
('PL0025', 'dean@gmail.com', 'friends', 'Plan'),
('PL0029', 'dean@gmail.com', 'apples', 'Plan'),
('PL0031', 'chris@gmail.com', 'face123', 'Plan'),
('PL0032', 'chathu@gmail.com', 'call', 'Plan'),
('PL0033', 'stell@gmail.com', 'michael', 'Plan'),
('PL0034', 'stella@gmail.com', 'michael', 'Plan'),
('PO0021', 'red@gmail.com', 'reeds', 'Post'),
('PO0023', 'john@gmail.com', 'malla', 'Post'),
('PO0027', 'angel@gmail.com', 'demons', 'Post'),
('PO0028', 'apples@gmail.com', 'oranges', 'Post');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `pword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pword`) VALUES
('amanda123', 'mango'),
('ashfaq123', 'pineapple'),
('thabi123', 'strawberry'),
('dineshka123', 'apple'),
('maheshika123', 'orange'),
('santhush123', 'grapes');

-- --------------------------------------------------------

--
-- Table structure for table `admindashboard`
--

CREATE TABLE `admindashboard` (
  `appDownloadNumber` int(255) NOT NULL,
  `activeUsers` int(255) NOT NULL,
  `ContentLists` int(255) NOT NULL,
  `noOfNotifications` int(255) NOT NULL,
  `locationsReached` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminmanager`
--

CREATE TABLE `adminmanager` (
  `AdminId` int(255) NOT NULL,
  `accStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `babycalendarnotes`
--

CREATE TABLE `babycalendarnotes` (
  `user_id` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `babygrowth`
--

CREATE TABLE `babygrowth` (
  `user_id` int(5) NOT NULL,
  `trimester` int(10) DEFAULT NULL,
  `week` int(10) DEFAULT NULL,
  `babySize` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `babynamegenerator`
--

CREATE TABLE `babynamegenerator` (
  `gender` varchar(10) DEFAULT NULL,
  `babyName` varchar(30) DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `babynamegenerator`
--

INSERT INTO `babynamegenerator` (`gender`, `babyName`, `origin`, `length`) VALUES
('Girl', 'Amanda', 'English', 'Medium'),
('Girl', 'Aloka', 'Sinhala', 'Medium'),
('Girl', 'Ameshika', 'Tamil', 'Long'),
('Boy', 'Ashfaq', 'Arabic', 'Medium'),
('Boy', 'Amal', 'Sinhala', 'Short'),
('Boy', 'Andrew', 'English', 'Medium'),
('Boy', 'Aryan', 'Tamil', 'Medium'),
('Girl', 'Binasha', 'Sinhala', 'Medium'),
('Girl', 'Bianca', 'English', 'Medium'),
('Girl', 'Bhavya', 'Tamil', 'Medium'),
('Boy', 'Brannavan', 'Tamil', 'Long'),
('Boy', 'Brian', 'English', 'Medium'),
('Girl', 'Ciara', 'English', 'Medium'),
('Girl', 'Chamathka', 'Sinhala', 'Long'),
('Girl', 'Chithra', 'Tamil', 'Medium'),
('Boy', 'Chamath', 'Sinhala', 'Medium'),
('Boy', 'Chrishane', 'English', 'Long'),
('Boy', 'Chandrayan', 'Tamil', 'Long'),
('Girl', 'Dineshka', 'Tamil', 'Long'),
('Girl', 'Diana', 'English', 'Medium'),
('Girl', 'Damayanthi', 'Sinhala', 'Long'),
('Boy', 'David', 'English', 'Medium'),
('Boy', 'Dhruv', 'Tamil', 'Medium'),
('Boy', 'Dharmasena', 'Sinhala', 'Long'),
('Boy', 'Ethiraj', 'Tamil', 'Medium'),
('Boy', 'Edwin', 'English', 'Medium'),
('Girl', 'Falan', 'Sinhala', 'Medium'),
('Girl', 'Farzana', 'Tamil', 'Long'),
('Girl', 'Freya', 'English', 'Medium'),
('Boy', 'Fahath', 'Sinhala', 'Long'),
('Boy', 'Fasir', 'Tamil', 'Medium'),
('Boy', 'Freddy', 'English', 'Long'),
('Girl', 'Ganga', 'Sinhala', 'Medium'),
('Girl', 'Gayathri', 'Tamil', 'Long'),
('Girl', 'Gia', 'English', 'Medium'),
('Boy', 'Gihan', 'Sinhala', 'Medium'),
('Boy', 'Gajara', 'Tamil', 'Medium'),
('Boy', 'Grayson', 'English', 'Medium'),
('Girl', 'Heshani', 'Sinhala', 'Medium'),
('Girl', 'Haneesha', 'Tamil', 'Long'),
('Girl', 'Hanna', 'English', 'Long'),
('Boy', 'Harin', 'Sinhala', 'Medium'),
('Boy', 'Hareesh', 'Tamil', 'Long'),
('Boy', 'Henry', 'English', 'Long'),
('Girl', 'Ishani', 'Sinhala', 'Medium'),
('Girl', 'Ishanya', 'Tamil', 'Long'),
('Girl', 'Isabella', 'English', 'Medium'),
('Boy', 'Imesh', 'Sinhala', 'Medium'),
('Boy', 'Ishanq', 'Tamil', 'Medium'),
('Boy', 'Ivor', 'English', 'Medium'),
('Girl', 'Janani', 'Sinhala', 'Medium'),
('Girl', 'Janitha', 'Tamil', 'Medium'),
('Girl', 'Josephine', 'English', 'Medium'),
('Boy', 'Jayan', 'Sinhala', 'Medium'),
('Boy', 'Jaidev', 'Tamil', 'Medium'),
('Boy', 'John', 'English', 'Medium'),
('Girl', 'Kasuni', 'Sinhala', 'Medium'),
('Girl', 'Kaneesha', 'Tamil', 'Long'),
('Girl', 'Kyla', 'English', 'Medium'),
('Boy', 'Kusal', 'Sinhala', 'Medium'),
('Boy', 'Kapil', 'Tamil', 'Long'),
('Boy', 'Kyler', 'English', 'Medium'),
('Girl', 'Lashika', 'Sinhala', 'Medium'),
('Girl', 'Laxshika', 'Tamil', 'Long'),
('Girl', 'Luna', 'English', 'Medium'),
('Boy', 'Lawan', 'Sinhala', 'Medium'),
('Boy', 'Laharan', 'Tamil', 'Medium'),
('Boy', 'Lorenzo', 'English', 'Long'),
('Girl', 'Maneesha', 'Sinhala', 'Medium'),
('Girl', 'Meena', 'Tamil', 'Medium'),
('Girl', 'Mary', 'English', 'Medium'),
('Boy', 'Manoj', 'Sinhala', 'Medium'),
('Boy', 'Magan', 'Tamil', 'Long'),
('Boy', 'Max', 'English', 'Medium'),
('Girl', 'Nayani', 'Sinhala', 'Medium'),
('Girl', 'Niranjala', 'Tamil', 'Medium'),
('Girl', 'Nora', 'English', 'Medium'),
('Boy', 'Nilan', 'Sinhala', 'Medium'),
('Boy', 'Naman', 'Tamil', 'Medium'),
('Boy', 'Nolan', 'English', 'Medium'),
('Girl', 'Oshani', 'Sinhala', 'Medium'),
('Girl', 'omia', 'Tamil', 'Medium'),
('Girl', 'Odel', 'English', 'Medium'),
('Boy', 'Oshan', 'Sinhala', 'Medium'),
('Boy', 'Omeshan', 'Tamil', 'Long'),
('Boy', 'oliver', 'English', 'Long'),
('Girl', 'Pawani', 'Sinhala', 'Medium'),
('Girl', 'parul', 'Tamil', 'Medium'),
('Girl', 'pia', 'English', 'Medium'),
('Boy', 'pawan', 'Sinhala', 'Medium'),
('Boy', 'parmesh', 'Tamil', 'Long'),
('Boy', 'paul', 'English', 'Long'),
('Girl', 'Queen', 'Sinhala', 'Medium'),
('Girl', 'Quisha', 'Tamil', 'Medium'),
('Girl', 'Quincie', 'English', 'Long'),
('Boy', 'Qushan', 'Sinhala', 'Long'),
('Boy', 'Qamar', 'Tamil', 'Medium'),
('Boy', 'Quide', 'English', 'Long'),
('Girl', 'rashi', 'Sinhala', 'Medium'),
('Girl', 'Rameesha', 'Tamil', 'Medium'),
('Girl', 'Rocell', 'English', 'Medium'),
('Boy', 'Ranjan', 'Sinhala', 'Long'),
('Boy', 'Ramesh', 'Tamil', 'Medium'),
('Boy', 'Rain', 'English', 'Long'),
('Girl', 'sahani', 'Sinhala', 'Long'),
('Girl', 'shana', 'Tamil', 'Medium'),
('Girl', 'Sofia', 'English', 'Long'),
('Boy', 'shan', 'Sinhala', 'Medium'),
('Boy', 'shunkar', 'Tamil', 'Long'),
('Boy', 'seth', 'English', 'Medium'),
('Girl', 'Thabi', 'Sinhala', 'Long'),
('Girl', 'Theemathi', 'Tamil', 'Medium'),
('Girl', 'Tania', 'English', 'Long'),
('Boy', 'Tashen', 'Sinhala', 'Medium'),
('Boy', 'Taman', 'Tamil', 'Long'),
('Boy', 'Tristian', 'English', 'Long'),
('Girl', 'Umesha', 'Sinhala', 'Medium'),
('Girl', 'Urmila', 'Tamil', 'Medium'),
('Girl', 'Umie', 'English', 'Medium'),
('Boy', 'Umesh', 'Sinhala', 'Medium'),
('Boy', 'udjith', 'Tamil', 'Long'),
('Boy', 'umar', 'English', 'Medium'),
('Girl', 'vanisha', 'Sinhala', 'Medium'),
('Girl', 'vanitha', 'Tamil', 'Medium'),
('Girl', 'violet', 'English', 'Medium'),
('Boy', 'vishal', 'Sinhala', 'Medium'),
('Boy', 'Vishnu', 'Tamil', 'Long'),
('Boy', 'vonn', 'English', 'Long'),
('Girl', 'wageesha', 'Sinhala', 'Medium'),
('Girl', 'wajeena', 'Tamil', 'Medium'),
('Girl', 'waki', 'English', 'Long'),
('Boy', 'wishwa', 'Sinhala', 'Medium'),
('Boy', 'wanajan', 'Tamil', 'Medium'),
('Boy', 'wesley', 'English', 'Medium'),
('Girl', 'Xaana', 'Sinhala', 'Medium'),
('Girl', 'Xhivans', 'Tamil', 'Medium'),
('Girl', 'xvan', 'English', 'Long'),
('Boy', 'xaan', 'Sinhala', 'Medium'),
('Boy', 'xhiva', 'Tamil', 'Medium'),
('Boy', 'xveon', 'English', 'Medium'),
('Girl', 'Yehani', 'Sinhala', 'Medium'),
('Girl', 'Yavana', 'Tamil', 'Medium'),
('Girl', 'Yolla', 'English', 'Long'),
('Boy', 'Yohan', 'Sinhala', 'Medium'),
('Boy', 'Yogaraj', 'Tamil', 'Medium'),
('Boy', 'Yowan', 'English', 'Medium'),
('Girl', 'zara', 'Sinhala', 'Medium'),
('Girl', 'zara', 'Tamil', 'Medium'),
('Girl', 'ziya', 'English', 'Long'),
('Boy', 'zahan', 'Sinhala', 'Medium'),
('Boy', 'ziva', 'Tamil', 'Medium'),
('Boy', 'zhan', 'English', 'Medium'),
('Boy', 'Ruwantha', 'Sinhala', 'Long');

-- --------------------------------------------------------

--
-- Table structure for table `babynutrition`
--

CREATE TABLE `babynutrition` (
  `user_id` varchar(10) NOT NULL,
  `foodType` varchar(255) NOT NULL,
  `AmountOfTimestried` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `babynutrition`
--

INSERT INTO `babynutrition` (`user_id`, `foodType`, `AmountOfTimestried`) VALUES
('PO002', 'Apple', 1),
('PO002', 'Avocado', 5),
('PO002', 'Carrot', 1),
('PO002', 'Egg', 1),
('PO002', 'Meat & Fish', 2),
('PO002', 'Sweet Potatoes', 1),
('PO002', 'Tofu', 1),
('PO002', 'Yoghurt', 3),
('PO0023', 'Avocado', 1);

-- --------------------------------------------------------

--
-- Table structure for table `babysleeptracker`
--

CREATE TABLE `babysleeptracker` (
  `user_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `hoursSlept` int(4) NOT NULL,
  `quality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `babysleeptracker`
--

INSERT INTO `babysleeptracker` (`user_id`, `date`, `hoursSlept`, `quality`) VALUES
('10', '2023-08-10', 3, 'Very Poor'),
('4', '2023-08-16', 12, 'Excellent'),
('5', '2023-08-18', 2, 'Very Poor'),
('6', '2023-08-10', 23, 'Excellent'),
('7', '2023-08-10', 2, 'Very Poor'),
('8', '2023-08-02', 4, 'Very Poor'),
('9', '2023-08-04', 2, 'Very Poor'),
('PO0023', '2023-08-25', 5, 'Poor');

-- --------------------------------------------------------

--
-- Table structure for table `babyweighttracker`
--

CREATE TABLE `babyweighttracker` (
  `user_id` varchar(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `date` date NOT NULL,
  `weightDifference` int(100) NOT NULL,
  `duration` int(100) NOT NULL,
  `suggestions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `babyweighttracker`
--

INSERT INTO `babyweighttracker` (`user_id`, `weight`, `date`, `weightDifference`, `duration`, `suggestions`) VALUES
('', 45, '2023-08-01', 0, 0, ''),
('', 67, '2023-08-05', 0, 0, ''),
('', 34, '2023-08-11', 0, 0, ''),
('PL0011', 45, '2023-08-16', 0, 0, ''),
('PL0011', 67, '2023-08-19', 0, 0, ''),
('PL0011', 87, '2023-08-22', 0, 0, ''),
('PO0023', 45, '2023-08-11', 45, 0, ''),
('PO0027', 0, '0000-00-00', 0, 0, ''),
('PO0027', 23, '2023-08-05', 0, 0, ''),
('PO0027', 67, '2023-08-10', 0, 0, ''),
('PO0027', 45, '2023-08-11', 45, 0, ''),
('PO0027', 123, '2023-08-16', 0, 0, ''),
('PO0027', 67, '2023-08-26', 0, 0, ''),
('PO0027', 67, '2023-08-31', 0, 0, ''),
('PO0027', 45, '2023-09-01', 0, 0, ''),
('PO0027', 56, '2023-09-23', 0, 0, ''),
('PO0027', 67, '2023-09-28', 0, 0, ''),
('PO0027', 90, '2023-10-07', 0, 0, ''),
('PO0027', 100, '2023-10-12', 0, 0, ''),
('PO0027', 123, '2023-10-30', 0, 0, ''),
('PO0027', 156, '2023-11-10', 0, 0, ''),
('PO0027', 788, '2023-12-08', 0, 0, ''),
('PO0027', 789, '2023-12-22', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bottlefeeding`
--

CREATE TABLE `bottlefeeding` (
  `user_id` varchar(10) NOT NULL,
  `ingredient` varchar(20) NOT NULL,
  `amt` int(5) NOT NULL,
  `date` date NOT NULL,
  `duration` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bottlefeeding`
--

INSERT INTO `bottlefeeding` (`user_id`, `ingredient`, `amt`, `date`, `duration`) VALUES
('PO0023', 'Formula', 30, '2023-08-17', 3),
('PO0023', 'Unknown', 40, '2023-08-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `breastfeeding`
--

CREATE TABLE `breastfeeding` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breastfeeding`
--

INSERT INTO `breastfeeding` (`id`, `date`, `duration`) VALUES
(1, '0000-00-00', '00:00:00'),
(2, '2023-07-04', '04:01:00'),
(3, '2023-08-03', '03:02:00'),
(4, '2023-08-03', '12:05:00'),
(5, '2023-08-10', '12:01:00'),
(6, '2023-08-01', '13:03:00'),
(7, '2023-08-10', '05:02:00'),
(8, '2023-08-12', '09:02:00'),
(9, '2023-08-17', '04:02:00'),
(10, '2023-08-25', '06:02:00'),
(11, '2023-08-04', '04:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `contentengagement`
--

CREATE TABLE `contentengagement` (
  `contentItem` varchar(255) NOT NULL,
  `noOfViews` int(255) NOT NULL,
  `noOfLikes` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contentmanagement`
--

CREATE TABLE `contentmanagement` (
  `admin_id` int(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contentmanagement`
--

INSERT INTO `contentmanagement` (`admin_id`, `author`, `Title`, `date`, `category`, `content`) VALUES
(1, '', '', '0000-00-00', '', ''),
(2, 'Amanda', 'Benefits of food', '2023-08-10', 'Post partum mother', 'Something'),
(3, '', '', '0000-00-00', '', ''),
(4, 'Amanda', 'Healthy food', '2023-08-09', 'Food', 'Eat greens '),
(5, 'Amanda', 'Good Exercises', '2023-08-09', 'Exercises', 'Do pushups'),
(6, 'Michelle', 'Healthy food', '2023-08-15', 'Nutrition', 'Eat a lot of vegetables'),
(7, 'Michelle', 'Healthy food', '2023-08-15', 'Nutrition', 'Eat a lot of vegetables'),
(8, 'Michelle', 'Healthy food', '2023-08-15', 'Nutrition', 'Eat a lot of vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `currentlypregnantqs`
--

CREATE TABLE `currentlypregnantqs` (
  `user_id` varchar(10) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `trimester` varchar(255) NOT NULL,
  `duedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currentlypregnantqs`
--

INSERT INTO `currentlypregnantqs` (`user_id`, `experience`, `trimester`, `duedate`) VALUES
('', 'yes', '2nd', '2023-05-07'),
('', 'yes', '2nd', '2012-08-07'),
('', 'yes', '3rd', '0209-02-02'),
('', 'no', '2nd', '2012-02-01'),
('', 'no', '3rd', '2023-09-12'),
('', 'yes', '1st', '2009-07-12'),
('CU0012', 'yes', '2nd', '2019-12-22'),
('CU0026', 'no', '2nd', '2011-03-12'),
('CU0030', 'yes', '3rd', '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `diaper`
--

CREATE TABLE `diaper` (
  `user_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `poop` varchar(10) NOT NULL,
  `wet` varchar(10) NOT NULL,
  `Notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diaper`
--

INSERT INTO `diaper` (`user_id`, `date`, `poop`, `wet`, `Notes`) VALUES
('PO0027', '2023-08-11', '0', '1', 'YEP'),
('PO0027', '2023-08-09', '1', '0', 'frrrr'),
('PO0023', '2023-08-02', '1', '0', 'poopy today'),
('PO0023', '2023-08-10', '1', '0', 'Today it was poopy'),
('PO0027', '2023-08-26', '1', '0', 'trees'),
('PO0023', '2023-08-18', '1', '0', 'yay'),
('PO0023', '2023-08-02', '1', '1', 'Its wet'),
('CU0009', '2023-08-15', '1', '1', 'tress'),
('PL0011', '2023-08-17', '1', '1', 'yAYYY');

-- --------------------------------------------------------

--
-- Table structure for table `eventtable`
--

CREATE TABLE `eventtable` (
  `user_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favnames`
--

CREATE TABLE `favnames` (
  `user_id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `message` varchar(255) NOT NULL,
  `rating` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `healthcareproviders`
--

CREATE TABLE `healthcareproviders` (
  `name` varchar(30) NOT NULL,
  `hospital` varchar(30) NOT NULL,
  `contactno` int(10) NOT NULL,
  `area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthcareproviders`
--

INSERT INTO `healthcareproviders` (`name`, `hospital`, `contactno`, `area`) VALUES
('Dr. Wijith Vidyabhushana', 'Ninewells', 114520999, 'Gynaecologist'),
('Dr. Wijith Vidyabhushana', 'Ninewells', 114520999, 'Gynaecologist'),
('Dr.A.K Prabodana Ranaweera', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.A.K Prabodana Ranaweera', 'Asiri', 114523300, 'GYNAECOLOGIST'),
('Dr.A.K Prabodana Ranaweera', 'Asia', 115232222, 'GYNAECOLOGIST'),
('Dr.A.K Prabodana Ranaweera', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.A.K Prabodana Ranaweera', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.(Mrs)A.R.J.P Niyas', 'Asiri', 114523300, 'GYNAECOLOGIST'),
('Dr.(Mrs)A.R.J.P Niyas', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.(Mrs)A.R.J.P Niyas', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.(Mrs)A.R.J.P Niyas', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Achintha dissanayake', 'Asiri', 114523300, 'GYNAECOLOGIST'),
('Dr.Achintha dissanayake', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Achintha dissanayake', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Achintha dissanayake', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Achintha dissanayake', 'Asia', 115232222, 'GYNAECOLOGIST'),
('Dr.Ajitha wijesundara', 'Asiri', 114523300, 'GYNAECOLOGIST'),
('Dr.Ajitha wijesundara', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Ajitha wijesundara', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Ajitha wijesundara', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Ajitha wijesundara', 'Asia', 115232222, 'GYNAECOLOGIST'),
('Dr.Ajith Rajapakshe', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Ajith Rajapakshe', 'Asiri', 114523300, 'GYNAECOLOGIST'),
('Dr.Ajith Rajapakshe', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Ajith Rajapakshe', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Bhagya jayasiri', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Bhagya jayasiri', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.C.Alwishewa', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.C.Alwishewa', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Chaminda mathota', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Chaminda mathota', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Chanil ekanayake', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Chanil ekanayake', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.Chinthaka Banagala', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Chinthaka Banagala', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.D.C.J wickkramaarachchi', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('prof.Dhammika silva', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.diluk senadeera', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.diluk senadeera', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.dilusha lambadasuriya', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.dinuka lankeshwara', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.dinusha liyanapatabedi', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.G.sujaharan', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.G.A.Ranathunga', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.H.R.Mohomad', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Hassim ziyard', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Hemantha perera', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.hemantha senanayake', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.Himani molligoda', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.kasun attanayake', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.Madura jayawardhana', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.sanath p akmeemana', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr.R prathapan', 'Lanka', 115430000, 'GYNAECOLOGIST'),
('Dr.U G kariyawasam', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr.sudath senarathna', 'Medihelp', 112181818, 'GYNAECOLOGIST'),
('Dr sarada kannangara', 'Asia', 115232222, 'GYNAECOLOGIST'),
('Dr.U G kariawasam', 'Nawaloka', 115777777, 'GYNAECOLOGIST'),
('Dr Ruwanthi perera', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.Siran fernando', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr.senaka gunathilake', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.srilal de silva', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.c ranchadoda', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.S G S adikaram', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.M Iflal zubair', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr.rukmal gunathilake', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.kosala karunarathne', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.Nimesha gamahewage', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('prof.dulani gunasekara', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.deshan adhihetty', 'Asiri', 114523300, 'PAEDIATRICIAN'),
('Dr.Ajith amarasinghe', 'Asia', 115232222, 'PAEDIATRICIAN'),
('Dr.Amali dalpadadu', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.Amitha manthirathne', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.buddima jayasinghe', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.disna de silva', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr.ganganath gunathilake', 'Asiri', 114523300, 'PAEDIATRICIAN'),
('prof.guwani liyanage', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr(Mrs)chandra rajapakshe', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.channa de silva', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr.nalaka jayasinghe', 'Lanka', 115430000, 'PAEDIATRICIAN'),
('Dr.nalaka jayasinghe', 'Nawaloka', 115777777, 'PAEDIATRICIAN'),
('Dr.nalin c kithulwatta', 'Medihelp', 112181818, 'PAEDIATRICIAN'),
('Dr.chandima hathurusinghe', 'Lanka', 115430000, 'NUTRITIONIST'),
('Dr. hiroshan jayaranga', 'Lanka', 115430000, 'NUTRITIONIST'),
('Ms roshani meepage', 'Medihelp', 112181818, 'NUTRITIONIST'),
('Dr.dhammika gunarathna', 'Medihelp', 112181818, 'NUTRITIONIST'),
('Dr.senarath weerasekara', 'Nawaloka', 115777777, 'NUTRITIONIST'),
('Dr.sashika subashini liyanage', 'Medihelp', 112181818, 'NUTRITIONIST'),
('Dr.j prasad de silva', 'Medihelp', 112181818, 'NUTRITIONIST'),
('Dr.pramodya hettiarachchi', 'Lanka', 115430000, 'NUTRITIONIST'),
('Dr.Sujeewa rudrigo', 'Medihelp', 112181818, 'NUTRITIONIST'),
('Dr.nalinda herath', 'Nawaloka', 115777777, 'NUTRITIONIST'),
('Dr.pradeep kumarasinghe', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.A.A ahamed riyaz', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.A.P mayuresan', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.Abinaya alagrasan', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.Achala balasuriya', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.ajantha liyanage', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.ananda wijewickkrama', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.anula wijesundara', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.ariyasena hittarage', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.nandana dikmadugoda', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.indika botheju', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.indika karunarathne', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.janaka gunarathne', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.L.M weerasuriya', 'Asiri', 114523300, 'PHYSICIAN'),
('Dr.K.D duminda', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.laknath welagedara', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr udaya gunasekara', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.priyamali jayasekara', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.ravindra pranandu', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.ravi jayawardhana', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.Asanka rathnayake', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.B thamothran', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.chamendra biyanwila', 'Asiri', 114523300, 'PHYSICIAN'),
('dr chamila dalpadadu', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.chamil marasinghe', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.champika gamakaranga', 'Asia', 115232222, 'PHYSICIAN'),
('Dr.lalindra dias', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.chandana kanakarathne', 'Nawaloka', 115777777, 'PHYSICIAN'),
('prof.chandani wanigathunga', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.eranga narangoda', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.dumitha govindapala', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.ms sivaganam', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.geetha fernando', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.harindra k jayasekara', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.harshani fernando', 'Asiri', 114523300, 'PHYSICIAN'),
('Dr.yamuna senadeera', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.lalith ekanayake', 'Asia', 115232222, 'PHYSICIAN'),
('Dr.lasantha ganewatta', 'Nawaloka', 115777777, 'PHYSICIAN'),
('Dr.mahesh harishchandra', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr(Mrs)manel cooray', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr N  amarasekara', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.poojitha hemachandra', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.waruna pathurana', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.kosala de silva', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.Hemal sugathapala', 'Lanka', 115430000, 'PHYSICIAN'),
('Dr.shehan de silva', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.apasara wijerathne', 'Medihelp', 112181818, 'PHYSICIAN'),
('Dr.gihan piyasiri', 'Medihelp', 112181818, 'ANESTHESIOLOGIST'),
('Dr.lakshan disanayke', 'Medihelp', 112181818, 'ANESTHESIOLOGIST'),
('Dr.nilangani lamahewage', 'Nawaloka', 115777777, 'ANESTHESIOLOGIST'),
('Dr.saman nanayakkara', 'Lanka', 115430000, 'ANESTHESIOLOGIST'),
('Dr.lahiru prabodana', 'Lanka', 115430000, 'GENETIC COUNSELOR'),
('Dr.padmapani padeniya', 'Lanka', 115430000, 'GENETIC COUNSELOR'),
('Dr.lahiru prabodana', 'Medihelp', 112181818, 'GENETIC COUNSELOR'),
('Dr.padmapani padeniya', 'Medihelp', 112181818, 'GENETIC COUNSELOR'),
('Dr.kamani danushka', 'Asiri', 114523300, 'Endocrinologist'),
('Dr.niranjala meegoda', 'Medihelp', 112181818, 'Endocrinologist'),
('Dr.manika sumanathilake', 'Lanka', 115430000, 'Endocrinologist'),
('Dr.manulee arambewela', 'Medihelp', 112181818, 'Endocrinologist'),
('Dr.niroshani yahampath', 'Medihelp', 112181818, 'Endocrinologist'),
('Dr.sivatharshaya padamanathan', 'Medihelp', 112181818, 'Endocrinologist');

-- --------------------------------------------------------

--
-- Table structure for table `healthstatsbaby`
--

CREATE TABLE `healthstatsbaby` (
  `username` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `specialHealth` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `healthstatsmom`
--

CREATE TABLE `healthstatsmom` (
  `age` int(255) NOT NULL,
  `dueDate` date NOT NULL,
  `specialHealth` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitalbagchecklist`
--

CREATE TABLE `hospitalbagchecklist` (
  `user_id` varchar(10) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitalbagchecklist`
--

INSERT INTO `hospitalbagchecklist` (`user_id`, `item_name`) VALUES
('0', 'ID'),
('0', 'Wallet'),
('1', 'Comfortable Clothes'),
('1', 'Diapers'),
('1', 'Face Wash'),
('1', 'ID'),
('1', 'Phone & Charger'),
('10', 'Baby blankets'),
('10', 'Baby wash / Soap'),
('10', 'Birth Plan'),
('10', 'Going home outfit'),
('10', 'ID'),
('10', 'Phone & Charger'),
('10', 'Pillow & Blanket'),
('10', 'Shampoo & Conditioner'),
('10', 'ToothBrush and Toothpaste'),
('10', 'Wallet'),
('13', 'Birth Plan'),
('18', 'ID'),
('18', 'Insurance Card'),
('18', 'Wallet'),
('56', 'Face Wash'),
('56', 'ID'),
('56', 'Wallet'),
('67', 'Baby wash / Soap'),
('67', 'Comfortable Clothes'),
('67', 'ID'),
('67', 'Wallet'),
('9', 'Baby wash / Soap'),
('9', 'Diapers'),
('9', 'Toothbrush'),
('9', 'Wallet'),
('CU0009', 'Comfortable Clothes'),
('CU0009', 'Going home outfit'),
('CU0009', 'Nursing Pads'),
('CU0009', 'Slippers/Flip-flop'),
('CU0010', 'Birth Plan'),
('CU0010', 'Comfortable Clothes'),
('CU0010', 'Face Wash'),
('CU0010', 'ID'),
('CU0012', 'Baby blankets'),
('CU0012', 'Baby wash / Soap'),
('CU0012', 'Diapers'),
('CU0012', 'ID'),
('CU0012', 'Reusable Water Bottle '),
('CU0012', 'Wallet'),
('PL0011', 'Baby blankets'),
('PL0011', 'Diapers'),
('PL0011', 'Going home outfit'),
('PL0011', 'Socks / Boots');

-- --------------------------------------------------------

--
-- Table structure for table `kickcounter`
--

CREATE TABLE `kickcounter` (
  `user_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `duration` int(10) NOT NULL,
  `noOfKicks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kickcounter`
--

INSERT INTO `kickcounter` (`user_id`, `date`, `duration`, `noOfKicks`) VALUES
('', '2023-08-11', 3, 2),
('0', '2023-07-14', 7, 5),
('0', '2023-08-16', 4, 7),
('CU0009', '2023-08-02', 5, 5),
('CU0009', '2023-08-09', 3, 7),
('CU0009', '2023-08-12', 4, 9),
('CU0009', '2023-08-12', 12, 2),
('CU0009', '2023-08-14', 2, 3),
('CU0009', '2023-08-15', 0, 3),
('CU0009', '2023-08-16', 3, 23),
('CU0009', '2023-08-16', 5, 13),
('CU0009', '2023-08-17', 4, 12),
('CU0009', '2023-08-18', 4, 12),
('CU0009', '2023-08-25', 3, 0),
('CU0009', '2023-08-25', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mylastperiod`
--

CREATE TABLE `mylastperiod` (
  `user_id` int(5) NOT NULL,
  `date` date DEFAULT NULL,
  `cycleLength` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mylastperiod`
--

INSERT INTO `mylastperiod` (`user_id`, `date`, `cycleLength`) VALUES
(0, '2023-07-23', 28);

-- --------------------------------------------------------

--
-- Table structure for table `notificationalert`
--

CREATE TABLE `notificationalert` (
  `user_id` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutritionfood`
--

CREATE TABLE `nutritionfood` (
  `user_id` varchar(10) NOT NULL,
  `foodType` varchar(255) NOT NULL,
  `AmountOfTimestried` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutritionfood`
--

INSERT INTO `nutritionfood` (`user_id`, `foodType`, `AmountOfTimestried`) VALUES
('PL0011', 'Almonds', 2),
('PL0011', 'Bottle Gourds', 1),
('PL0011', 'Citrus Fruits', 1),
('PL0011', 'Eggs', 1),
('PL0011', 'Papaya', 1),
('PL0011', 'Spinach', 1),
('PL0011', 'Veggie Soup', 3),
('PL0011', 'Yogurt', 2),
('PO0021', 'Berries', 1),
('PO0021', 'Leafy greens', 1),
('PO0021', 'Lean meat', 1),
('PO0023', 'Avocado', 1),
('PO0023', 'Berries', 1),
('PO0023', 'Dairy', 5),
('PO0023', 'Legumes', 3),
('PO0027', 'Dairy', 1),
('PO0027', 'Eggs', 1),
('PO0027', 'Legumes', 1),
('PO0027', 'Salmon', 1),
('PO0027', 'Sweet Potatoes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `planningqs`
--

CREATE TABLE `planningqs` (
  `user_id` varchar(10) NOT NULL,
  `cycle` int(2) NOT NULL,
  `periodDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planningqs`
--

INSERT INTO `planningqs` (`user_id`, `cycle`, `periodDate`) VALUES
('', 23, '2018-09-23'),
('1', 20, '2023-07-12'),
('2', 28, '2023-07-23'),
('3', 27, '2099-02-03'),
('4', 23, '2022-12-09'),
('5', 28, '2023-07-24'),
('CU0012', 28, '2023-07-24'),
('PL0011', 28, '2023-07-24'),
('PL0025', 28, '1990-04-07'),
('PL0029', 28, '2008-09-12'),
('PL0031', 23, '2023-07-24'),
('PL0032', 28, '2007-02-04'),
('PL0034', 23, '2009-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `postpartumquestions`
--

CREATE TABLE `postpartumquestions` (
  `user_id` varchar(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `weight` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postpartumquestions`
--

INSERT INTO `postpartumquestions` (`user_id`, `gender`, `name`, `date_of_birth`, `weight`) VALUES
('0', 'F', 'fairy', '2005-07-06', 55),
('1', 'F', 'DAIAY', '2332-03-23', 99),
('2', 'F', 'amanda jeganathan', '2009-02-02', 99),
('PO0028', 'm', 'girls', '0000-00-00', 78);

-- --------------------------------------------------------

--
-- Table structure for table `reuse`
--

CREATE TABLE `reuse` (
  `user_id` varchar(10) NOT NULL,
  `item_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reuse`
--

INSERT INTO `reuse` (`user_id`, `item_name`) VALUES
('0', 'Car seat'),
('0', 'Diapers'),
('0', 'High chair'),
('0', 'keep sakes'),
('0', 'teething rings'),
('7', 'Clothes'),
('7', 'High chair'),
('7', 'Nursery furniture item'),
('7', 'Stroller/double stroller'),
('PL0013', 'Car seat'),
('PL0013', 'Crib'),
('PL0013', 'High chair'),
('PL0013', 'Stroller/double stroller');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `websiteName` varchar(255) NOT NULL,
  `logoImgPath` varchar(255) NOT NULL,
  `defaultLang` varchar(255) NOT NULL,
  `timeZone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `contactNumber` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `user_id`, `fullName`, `contactNumber`, `email`, `pword`, `type`) VALUES
(1, 'CU0001', 'Amanda Jeganathan', 767821170, 'amanda.jeganathan@gmail.com', 'kimtaehyung', 'Current'),
(2, 'PL0002', 'Thabeesha Nicholas', 776873035, 'thabi.nicholas@gmail.com', 'naruto', 'Plan'),
(3, 'CU0003', 'Melisha Perera', 764371647, 'meli.perera@gmail.com', 'bikes', 'Current'),
(4, 'PO0004', 'Dineshka Kulendran', 113425676, 'dineshka@gmail.com', 'sambarani', 'Post'),
(5, 'CU0005', 'Ruwantha Ranasinghe', 719867574, 'something.stupid@gmail.com', 'batman', 'Current'),
(6, 'PL0006', 'jesintha', 774892600, 'jesi@gmail.com', 'tim', 'Plan'),
(7, 'CU0007', 'rachel', 112345623, 'rachel@gmail.com', 'ross', 'Current'),
(8, 'CU0008', 'Christine', 112347846, 'christine@gmail.com', 'grass', 'Current'),
(9, 'CU0009', 'Mohommed', 678989543, 'jega@gmail.com', 'jega', 'Current'),
(10, 'CU0010', 'Michelle', 778216427, 'michelle@gmail.com', 'mishy', 'Current'),
(11, 'PL0011', 'Sahas', 112347856, 'sahas@gmail.com', 'azeem', 'Plan'),
(12, 'CU0012', 'Prsantha', 778967342, 'pras@gmailcom', 'grass', 'Current'),
(13, 'PL0013', 'pathum', 774534122, 'pathum@gmail.com', 'zebra', 'Plan'),
(14, 'CU0014', 'shane', 778978453, 'shane@gmail.com', 'cff97ad250e805426c5e99101a3e652d5bbf9fa00fc959f681dc4f9ef4b012f7', 'Current'),
(15, 'CU0015', 'Lakshani', 778978453, 'lakshani@gmail.com', 'ruwantha', 'Current'),
(16, 'CU0016', 'mommy', 778978453, 'mommy@gmail.com', 'daddy', 'Current'),
(17, 'CU0017', 'Ryan gosling', 112345623, 'ryan@gmail.com', 'man', 'Current'),
(18, 'PL0018', 'Sandamali', 223454123, 'sanda@gmail.com', 'moon', 'Plan'),
(19, 'CU0019', 'Sara', 778956234, 'sara@gmail.com', 'dora', 'Current'),
(20, 'PL0020', 'maashi', 775643143, 'maashi@gmail.com', 'falls', 'Plan'),
(21, 'PO0021', 'red', 767823432, 'red@gmail.com', 'reeds', 'Post'),
(22, 'CU0022', 'diasy', 778945231, 'daisy@gmail.com', 'roses', 'Current'),
(23, 'PO0023', 'John', 778956243, 'john@gmail.com', 'malla', 'Post'),
(24, 'PL0024', 'ROSE', 778956234, 'rose@gmail.com', 'trees', 'Plan'),
(25, 'PL0025', 'dean', 112343786, 'dean@gmail.com', 'friends', 'Plan'),
(26, 'CU0026', 'greta', 776745232, 'greta@gmail.com', 'open', 'Current'),
(27, 'PO0027', 'angel', 767856231, 'angel@gmail.com', 'demons', 'Post'),
(28, 'PO0028', 'apples', 112354231, 'apples@gmail.com', 'oranges', 'Post'),
(29, 'PL0029', 'Dean', 778562432, 'dean@gmail.com', 'apples', 'Plan'),
(30, 'CU0030', 'abdul', 778976453, 'abdul@gmail.com', 'password', 'Current'),
(31, 'PL0031', 'Christine Jeganathan', 775676231, 'chris@gmail.com', 'face123', 'Plan'),
(32, 'PL0032', 'Chathurangi Perera', 778965432, 'chathu@gmail.com', 'call', 'Plan'),
(33, 'PL0033', 'Stella', 713208750, 'stell@gmail.com', 'michael', 'Plan'),
(34, 'PL0034', 'stella michael', 713208750, 'stella@gmail.com', 'michael', 'Plan');

-- --------------------------------------------------------

--
-- Table structure for table `sleeptracker`
--

CREATE TABLE `sleeptracker` (
  `user_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `hours` int(20) NOT NULL,
  `quality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sleeptracker`
--

INSERT INTO `sleeptracker` (`user_id`, `date`, `hours`, `quality`) VALUES
(21, '2023-08-11', 12, 'Excellent'),
(22, '2023-08-11', 10, 'Excellent'),
(23, '2023-08-17', 17, 'Excellent'),
(24, '2023-08-01', 8, 'Excellent'),
(25, '2023-08-02', 9, 'Excellent'),
(26, '2023-08-04', 11, 'Excellent'),
(27, '2023-08-09', 11, 'Excellent'),
(28, '2023-08-11', 7, 'Good'),
(29, '2023-08-03', 4, 'Very Poor'),
(30, '2023-08-17', 7, 'Good'),
(31, '2023-08-18', 2, 'Very Poor'),
(32, '2023-08-18', 4, 'Very Poor'),
(33, '2023-08-19', 4, 'Very Poor'),
(34, '2023-08-09', 12, 'Excellent'),
(35, '2023-08-10', 12, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `solids`
--

CREATE TABLE `solids` (
  `user_id` int(5) NOT NULL,
  `age` int(10) NOT NULL,
  `date` date NOT NULL,
  `foodType` varchar(30) NOT NULL,
  `amt` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solids`
--

INSERT INTO `solids` (`user_id`, `age`, `date`, `foodType`, `amt`) VALUES
(1, 3, '2023-08-12', 'Apples', 10),
(2, 4, '2023-08-03', 'Oranges', 58),
(3, 2, '2023-08-09', 'Fish', 12),
(4, 2, '2023-08-15', 'Chicken', 13);

-- --------------------------------------------------------

--
-- Table structure for table `stuffyouwillneed`
--

CREATE TABLE `stuffyouwillneed` (
  `user_id` varchar(10) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stuffyouwillneed`
--

INSERT INTO `stuffyouwillneed` (`user_id`, `item_name`) VALUES
('CU0009', 'Diaper bag'),
('CU0009', 'Nursing pads & pillow'),
('CU0010', 'bottle cleaning set(sterilizer)'),
('CU0010', 'bottles/bowls'),
('CU0010', 'Nursing pads & pillow'),
('CU0010', 'small dishs'),
('PO0027', 'Baby wipes'),
('PO0027', 'Diaper bag'),
('PO0027', 'Diaper rash cream'),
('PO0027', 'Diapers');

-- --------------------------------------------------------

--
-- Table structure for table `tasktable`
--

CREATE TABLE `tasktable` (
  `user_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twinregistry`
--

CREATE TABLE `twinregistry` (
  `user_id` varchar(10) NOT NULL,
  `item` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `twinregistry`
--

INSERT INTO `twinregistry` (`user_id`, `item`) VALUES
('0', 'Double stroller'),
('0', 'High chairs'),
('10', 'Car seats'),
('10', 'Double stroller'),
('CU0009', 'Car seats'),
('CU0009', 'Double stroller'),
('CU0009', 'High chairs'),
('CU0010', 'Cribs');

-- --------------------------------------------------------

--
-- Table structure for table `userstatistics`
--

CREATE TABLE `userstatistics` (
  `date` date NOT NULL,
  `noOfUsers` int(255) NOT NULL,
  `newUsers` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `waterconsumptiontracker`
--

CREATE TABLE `waterconsumptiontracker` (
  `user_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `numberOfGlasses` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waterconsumptiontracker`
--

INSERT INTO `waterconsumptiontracker` (`user_id`, `date`, `numberOfGlasses`) VALUES
('', '2023-08-15', 2),
('CU0009', '2023-08-14', 7),
('CU0009', '2023-08-15', 3),
('CU0009', '2023-08-16', 4),
('CU0009', '2023-08-31', 2),
('PL0011', '2023-08-05', 6),
('PL0011', '2023-08-14', 1),
('PL0011', '2023-08-15', 2),
('PL0011', '2023-08-16', 3),
('PL0011', '2023-08-18', 5),
('PL0011', '2023-08-19', 6),
('PL0011', '2023-08-22', 4),
('PL0011', '2023-08-29', 3),
('PL0011', '2023-09-22', 6),
('PL0024', '2023-08-08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `websiteengagementmonth`
--

CREATE TABLE `websiteengagementmonth` (
  `month` varchar(255) NOT NULL,
  `noOfUsers` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websiteengagementweek`
--

CREATE TABLE `websiteengagementweek` (
  `day` varchar(255) NOT NULL,
  `noOfUsers` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websiteengagementyear`
--

CREATE TABLE `websiteengagementyear` (
  `year` int(255) NOT NULL,
  `noOfUsers` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `24babyregistry`
--
ALTER TABLE `24babyregistry`
  ADD PRIMARY KEY (`user_id`,`item_name`);

--
-- Indexes for table `acclogin`
--
ALTER TABLE `acclogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `babycalendarnotes`
--
ALTER TABLE `babycalendarnotes`
  ADD PRIMARY KEY (`user_id`,`date`,`notes`);

--
-- Indexes for table `babygrowth`
--
ALTER TABLE `babygrowth`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `babynutrition`
--
ALTER TABLE `babynutrition`
  ADD PRIMARY KEY (`user_id`,`foodType`);

--
-- Indexes for table `babysleeptracker`
--
ALTER TABLE `babysleeptracker`
  ADD PRIMARY KEY (`user_id`,`date`);

--
-- Indexes for table `babyweighttracker`
--
ALTER TABLE `babyweighttracker`
  ADD PRIMARY KEY (`user_id`,`date`);

--
-- Indexes for table `bottlefeeding`
--
ALTER TABLE `bottlefeeding`
  ADD PRIMARY KEY (`user_id`,`date`);

--
-- Indexes for table `breastfeeding`
--
ALTER TABLE `breastfeeding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentmanagement`
--
ALTER TABLE `contentmanagement`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `diaper`
--
ALTER TABLE `diaper`
  ADD PRIMARY KEY (`poop`,`wet`,`Notes`);

--
-- Indexes for table `favnames`
--
ALTER TABLE `favnames`
  ADD PRIMARY KEY (`user_id`,`name`);

--
-- Indexes for table `hospitalbagchecklist`
--
ALTER TABLE `hospitalbagchecklist`
  ADD PRIMARY KEY (`user_id`,`item_name`);

--
-- Indexes for table `kickcounter`
--
ALTER TABLE `kickcounter`
  ADD PRIMARY KEY (`user_id`,`date`,`duration`,`noOfKicks`);

--
-- Indexes for table `mylastperiod`
--
ALTER TABLE `mylastperiod`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `nutritionfood`
--
ALTER TABLE `nutritionfood`
  ADD PRIMARY KEY (`user_id`,`foodType`);

--
-- Indexes for table `planningqs`
--
ALTER TABLE `planningqs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `postpartumquestions`
--
ALTER TABLE `postpartumquestions`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reuse`
--
ALTER TABLE `reuse`
  ADD PRIMARY KEY (`user_id`,`item_name`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sleeptracker`
--
ALTER TABLE `sleeptracker`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `solids`
--
ALTER TABLE `solids`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `stuffyouwillneed`
--
ALTER TABLE `stuffyouwillneed`
  ADD PRIMARY KEY (`user_id`,`item_name`);

--
-- Indexes for table `tasktable`
--
ALTER TABLE `tasktable`
  ADD PRIMARY KEY (`user_id`,`date`);

--
-- Indexes for table `twinregistry`
--
ALTER TABLE `twinregistry`
  ADD PRIMARY KEY (`user_id`,`item`);

--
-- Indexes for table `waterconsumptiontracker`
--
ALTER TABLE `waterconsumptiontracker`
  ADD PRIMARY KEY (`user_id`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breastfeeding`
--
ALTER TABLE `breastfeeding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contentmanagement`
--
ALTER TABLE `contentmanagement`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sleeptracker`
--
ALTER TABLE `sleeptracker`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `solids`
--
ALTER TABLE `solids`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
