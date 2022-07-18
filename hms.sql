-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2022 at 05:07 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `profile`) VALUES
(1, 'admin', 'admin', 'admin.jfif'),
(4, 'mauvin', 'mauvin', '19067.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `appointment_date` varchar(100) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_booked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `firstname`, `surname`, `gender`, `phone`, `appointment_date`, `symptoms`, `status`, `date_booked`) VALUES
(1, '', '', '', '', '2022-04-24', 'Feeling Dizzy Most Of The Times', 'Pendding', '2022-04-24 15:58:40'),
(2, '', '', '', '', '2022-04-24', 'Feeling Dizzy Most Of The Times', 'Pendding', '2022-04-24 15:59:36'),
(3, '', '', '', '', '2022-05-10', 'head ache', 'Pendding', '2022-04-24 18:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `data_reg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `firstname`, `surname`, `username`, `email`, `gender`, `phone`, `country`, `password`, `salary`, `data_reg`, `status`, `profile`) VALUES
(1, 'mau', 'vin', 'mauvin', 'mauvin@gmail.com', 'Male', '0792133742', 'Kenya', 'mauvin', '0', '2022-04-17 13:39:05', 'Approved', 'doctor.jpg'),
(2, 'John', 'kinyua', 'Johnny vardy', 'Johnkariuki6845@gmail.com', 'Male', '0743561977', 'Kenya', 'vardy254', '0', '2022-04-18 10:54:28', 'Approved', 'doctor.jpg'),
(3, 'john', 'vardy', 'johnie', 'johnie@gmail.com', 'Male', '0792133742', 'Kenya', 'vardy', '0', '2022-04-23 13:54:25', 'Approved', 'doctor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `date_discharge` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstname`, `surname`, `username`, `email`, `phone`, `gender`, `country`, `password`, `date_reg`, `profile`) VALUES
(1, 'mau', 'vin', 'mauvin', 'mauvin@gmail.com', '0792133742', 'Male', 'Kenya', 'mauvin', '2022-04-17 13:55:57', 'patient.jpg'),
(2, 'clin', 'ton', 'clinton', 'clinton@gmail.com', '0792133742', 'Male', 'Kenya', 'clinton', '2022-04-17 18:49:04', 'patient.jpg'),
(3, 'Diana', 'Mwirigi', 'Dee', 'dee@gmail.com', '0743454801', 'Female', 'Tanzania', 'dee123', '2022-04-19 22:16:40', 'patient.jpg'),
(4, 'GERTRUDE', 'KARUIUKI', 'mauvin', 'gertnjerk2020@gmail-com', '0723139301', 'Female', 'Kenya', 'gettyk', '2022-04-23 21:01:09', 'patient.jpg'),
(5, 'kevin', 'ngamau', 'kevoo', 'ngamau@gmail.com', '0792133742', 'Male', 'Uganda', 'mau', '2022-04-24 16:44:37', 'patient.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date_send` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `message`, `username`, `date_send`) VALUES
(1, 'Send Report', 'My body pains me in my lower abdomen', '', '2022-04-17 14:58:30'),
(2, 'Send Report', 'My body pains me in my lower abdomen', '', '2022-04-17 14:58:44'),
(3, 'Send Report', 'My body pains me in my lower abdomen', '', '2022-04-17 15:16:47'),
(4, 'Send Report', 'My body pains me in my lower abdomen', '', '2022-04-17 15:17:35'),
(5, 'Send Report', 'Reduced sugars', '', '2022-04-19 11:38:43'),
(6, 'Send Report', 'i am heartbroken', '', '2022-04-19 22:17:27'),
(7, 'Send Report', 'feeling dizzy and nausea', '', '2022-04-23 21:03:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
