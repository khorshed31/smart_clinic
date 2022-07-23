-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 03:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(100) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`, `updationDate`) VALUES
(1, 'admin', '123456', 1, '28-12-2021 11:42:05 AM'),
(2, 'subadmin', '123456', 0, ''),
(3, 'qwqw', '123456', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `amb_id` int(100) NOT NULL,
  `number` int(100) NOT NULL,
  `s_time` text NOT NULL,
  `e_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`amb_id`, `number`, `s_time`, `e_time`) VALUES
(2, 0, '09:00', '11:00'),
(3, 11, '00:00', '15:00');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `problem` varchar(255) NOT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `problem`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '', '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '', '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '', '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Physician', 11, 2, 2000, '', '2020-07-14', '10:15 AM', '2020-07-05 02:12:37', 1, 1, NULL),
(7, 'General Physician', 3, 2, 1200, '', '2020-07-05', '10:15 AM', '2020-07-05 02:14:49', 1, 1, NULL),
(8, 'Gynecologist/Obstetrician', 12, 8, 500, '', '2022-01-19', '8:45 PM', '2022-01-19 14:44:28', 1, 1, NULL),
(9, 'Gynecologist/Obstetrician', 12, 8, 500, '', '2022-01-25', '9:15 PM', '2022-01-26 15:11:53', 1, 0, '2022-01-28 16:47:26'),
(10, 'Dentist', 1, 8, 500, '', '2022-01-27', '9:15 PM', '2022-01-26 15:13:00', 1, 1, '2022-01-26 15:19:45'),
(11, 'Dentist', 1, 0, 500, '', '2022-01-28', '10:30 PM', '2022-01-27 16:30:00', 1, 1, NULL),
(12, 'Gynecologist/Obstetrician', 12, 0, 500, '', '2022-01-25', '11:00 PM', '2022-01-27 16:54:58', 1, 1, NULL),
(13, 'Gynecologist/Obstetrician', 12, 9, 500, '', '2022-01-27', '11:00 PM', '2022-01-28 16:47:44', 1, 1, NULL),
(14, 'Gynecologist/Obstetrician', 12, 8, 500, 'qwer', '2022-07-26', '7:45 PM', '2022-07-23 13:37:09', 0, 1, '2022-07-23 13:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `blood_id` int(100) NOT NULL,
  `type` varchar(200) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_amb`
--

CREATE TABLE `book_amb` (
  `book_amb_id` int(100) NOT NULL,
  `userId` int(100) NOT NULL,
  `amb_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_amb`
--

INSERT INTO `book_amb` (`book_amb_id`, `userId`, `amb_id`) VALUES
(1, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `image`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Lyndon Bermoy', 'New Delhi', '500', 8285703354, '', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2020-07-05 01:53:19'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, '', 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, '', 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, '', 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, '', 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, '', 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, '', 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2019-06-23 18:17:25'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, '', 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(11, 'Physician', 'Jonah Juarez', 'Surigao Philippines', '2000', 123456789, '', 'jjuarez@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-07-05 02:06:00', '2020-07-05 02:06:48'),
(12, 'Gynecologist/Obstetrician', 'Tamal Das', 'Dhaka', '500', 123456780, 'doc.png', 'tamal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-19 14:42:31', '2022-02-21 06:49:31'),
(13, 'General Physician', 'Khorshed Alom', 'Dhaka', '500', 123456, '', 'emon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-28 17:35:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:01', NULL, 1),
(21, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:02:51', NULL, 0),
(22, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:03:03', NULL, 0),
(23, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:02', NULL, 0),
(24, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:38', NULL, 0),
(25, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:19', NULL, 1),
(26, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:38', NULL, 1),
(27, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:08:18', NULL, 1),
(28, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:15:25', NULL, 1),
(29, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-19 14:45:28', '19-01-2022 08:16:09 PM', 1),
(30, 1, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-26 15:10:17', NULL, 1),
(31, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-27 16:53:57', NULL, 1),
(32, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-28 16:47:11', NULL, 1),
(33, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-28 17:32:27', NULL, 1),
(34, 13, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-28 17:35:22', '28-01-2022 11:11:04 PM', 1),
(35, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-28 17:41:14', NULL, 1),
(36, NULL, 'Amrita', 0x3a3a3100000000000000000000000000, '2022-02-20 17:00:17', NULL, 0),
(37, 12, 'tamal@gmail.com', 0x3132372e302e302e3100000000000000, '2022-02-21 06:31:18', NULL, 1),
(38, 13, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-22 12:34:57', '22-07-2022 06:05:47 PM', 1),
(39, 13, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-22 12:39:46', '22-07-2022 06:10:09 PM', 1),
(40, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-22 12:40:18', '22-07-2022 06:25:20 PM', 1),
(41, 12, 'tamal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-23 13:47:50', '23-07-2022 07:18:10 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mess_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mess_id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Khorshed Alom', 'khorshedalom3517@gmail.com', 1303, 'test', 'demo'),
(2, 'Khorshed Emon', 'khorshedemon066@gmail.com', 1303713906, 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla venenatis, turpis quis finibus pulvinar, arcu nisi placerat nibh, nec bibendum lectus odio vel libero. Cras vel ullamcorper leo. Quisque imperdiet bibendum lacus a mattis. Donec aliquam risus leo, eu vulputate orci molestie non. Pellentesque porta nunc sit amet libero ornare, eu pulvinar felis posuere. Donec ex augue, sollicitudin in malesuada in, mattis ac arcu. Integer vitae cursus elit. Vestibulum rutrum tincidunt dui, eget tincidunt odio ultricies eget. Nam euismod eros erat, eu fermentum justo pretium quis.');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `doc_id`, `notice`) VALUES
(1, 12, 'arrsads'),
(2, 12, 'wqew');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Lyndon Bermoy', 'serbermz2020@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'Answered', '2020-07-05 02:13:25', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'demo', 'demo@gmail.com', 123456789, ' hi, this is a demo', '2020-07-05 01:57:20', 'answered', '2020-07-05 01:57:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `doc_id` int(100) NOT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `doc_id`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, 0, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, 0, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, 0, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, 0, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, 0, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, 0, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 1, 0, 'demo', 'demo', '1213', 'n', 'test', '2022-01-26 15:21:54'),
(9, 9, 12, 'test', 'test', 'test', 'test', 'demo', '2022-01-28 18:08:31'),
(10, 8, 12, 'test1', 'test1', '1', 'test1', 'demo1', '2022-01-28 17:44:43'),
(11, 9, 12, 'test1', 'test1', 'test1', 'test1', 'DEEE', '2022-01-28 18:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `userId` int(100) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `userId`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 0, 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(4, 7, 0, 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 0, 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 0, 0, 123456789, 'serbermz2020@gmail.com', 'male', 'Surigao Philippines', 35, 'Diagnosed of High Blood Pressure', '2020-07-05 02:08:09', NULL),
(7, 1, 8, 123456789, 'emon@gmail.com', 'male', 'Dhaka', 29, 'test', '2022-01-27 16:13:07', '2022-01-28 17:58:10'),
(8, 12, 9, 123456, 'shaif@gmail.com', 'male', 'Dhaka', 23, 'test', '2022-01-28 16:48:20', '2022-01-28 17:57:55'),
(9, 12, 9, 9, '9', 'male', 'weewe', 9, 'we', '2022-07-22 12:40:48', NULL),
(10, 12, 8, 8, '8', 'male', 'e', 8, 'wewew', '2022-07-22 12:41:02', NULL),
(11, 12, 8, 8, '8', 'male', 'rewqr', 8, 'weqrw', '2022-07-22 12:48:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:24', NULL, 1),
(25, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:09:18', NULL, 0),
(26, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:05', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:24', NULL, 0),
(28, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:46', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:12:00', NULL, 1),
(30, 8, 'emon@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-19 14:40:33', NULL, 1),
(31, 8, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-26 15:11:17', NULL, 1),
(32, 0, 'shaif@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-27 16:18:16', NULL, 1),
(33, 0, 'shaif@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-27 16:20:06', NULL, 1),
(34, NULL, 'saif@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-27 16:51:16', NULL, 0),
(35, 0, 'shaif@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-27 16:51:32', '27-01-2022 10:31:54 PM', 1),
(36, 10, 'faisal@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-27 17:03:21', NULL, 1),
(37, 9, 'shaif@gmail.com', 0x3132372e302e302e3100000000000000, '2022-01-28 16:46:47', NULL, 1),
(38, 8, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-31 16:21:42', NULL, 1),
(39, 9, 'shaif@gmail.com', 0x3132372e302e302e3100000000000000, '2022-02-08 13:34:47', NULL, 1),
(40, 9, 'shaif@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-19 13:42:16', NULL, 0),
(41, 11, 'foysal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-19 16:02:22', '19-02-2022 09:44:48 PM', 0),
(42, NULL, 'khorshed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-20 12:15:47', NULL, 0),
(43, 11, 'foysal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-20 12:15:59', NULL, 0),
(44, 11, 'foysal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-21 05:40:43', NULL, 0),
(45, 9, 'shaif@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-22 12:36:18', '22-07-2022 06:08:51 PM', 0),
(46, 8, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-23 13:24:15', '23-07-2022 07:15:03 PM', 0),
(47, 8, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-23 13:45:15', '23-07-2022 07:16:12 PM', 0),
(48, 8, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-23 13:48:19', '23-07-2022 07:18:35 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `age` int(100) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `height` int(255) NOT NULL,
  `width` int(255) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `image`, `age`, `blood`, `phone`, `height`, `width`, `regDate`, `updationDate`, `status`) VALUES
(8, 'Khorshed Alom', 'Dhaka', 'Dhaka', 'male', 'emon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', 0, 0, 0, '2022-01-19 14:40:15', '2022-02-19 12:56:59', 1),
(9, 'Shaif Uddin', 'Dhaka', 'Dhaka', 'male', 'shaif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', 0, 0, 0, '2022-01-27 16:17:50', '2022-07-22 12:36:33', 1),
(10, 'Shaif Uddin Faisal', 'Dhaka', 'Dhaka', 'male', 'faisal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', 0, 0, 0, '2022-01-27 17:02:59', '2022-02-19 13:24:00', 1),
(11, 'Foysal Ahamed', 'Jigatola', 'Dhaka', 'male', 'foysal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '137-1378551_commerce-vector-cartoon-business-man-hq-image-free (2).png', 23, 'A+', 1716095649, 5, 59, '2022-02-19 16:01:44', '2022-02-21 06:12:05', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`amb_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `book_amb`
--
ALTER TABLE `book_amb`
  ADD PRIMARY KEY (`book_amb_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mess_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `amb_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `blood_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_amb`
--
ALTER TABLE `book_amb`
  MODIFY `book_amb_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mess_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
