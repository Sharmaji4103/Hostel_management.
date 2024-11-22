-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 07:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-09-08 20:31:45', '2021-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BTH123', 'B.Tech', 'Bachelor  Of Technology', '2023-02-10 00:45:13'),
(2, 'BCOM18', 'B.Com', 'Bachelor Of Commerce ', '2023-02-23 00:45:13'),
(3, 'BSC296', 'BSC', 'Bachelor  of Science', '2023-02-23 00:45:13'),
(4, 'BCOA55', 'BCA', 'Bachelor Of Computer Application', '2023-02-23 00:45:13'),
(5, 'MCA001', 'MCA', 'Master of Computer Application', '2023-02-23 00:47:13'),
(6, 'MBA777', 'MBA', 'Master In Business Administration', '2023-02-23 00:54:13'),
(7, 'BE069', 'BE', 'Bachelor of Engineering', '2023-02-23 00:59:13'),
(8, 'BIT353', 'BIT', 'Bachelors In Information Technology', '2023-02-07 06:59:05'),
(9, 'MIT005', 'MIT', 'Master of Information Technology', '2023-02-03 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(21, 100, 2, 1650, 0, '2023-02-02', 2, 'Bachelor Of Computer Application', '20222', 'Sharma ', 'pratham', 'B', 'male', 63555656, 'pratham23@mail.com', 99178645678, 'sharma Suresh', 'father', 99025872, 'Julelal', 'Godhra', '', 389001, 'Julelal', 'Godhra', '', 389001, '2023-02-10 08:31:44', ''),
(22, 310, 1, 750, 0, '2023-01-25', 2, 'Bachelor Of Computer Application', '20255', 'Sharma ', 'Jatin', 'S', 'Male', 875884014, 'jatinsharma4103@gmail.com', 9909550035, 'sharma Suresh', 'father', 99025872, 'Julelal', 'Godhra', '', 389001, 'Julelal', 'Godhra', '', 389001, '2023-02-18 08:22:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 2, 100, 1990, '2023-02-20 04:24:06'),
(2, 1, 201, 1650, '2023-02-20 04:24:06'),
(3, 2, 200, 910, '2023-02-20 04:33:06'),
(4, 3, 112, 1300, '2023-02-20 04:33:30'),
(5, 2, 132, 1990, '2023-02-20 04:28:52'),
(6, 3, 11, 1650, '2023-02-07 05:01:02'),
(7, 2, 269, 910, '2023-02-03 14:39:22'),
(8, 1, 310, 750, '2023-02-03 14:41:36'),
(9, 1, 330, 750, '2023-02-03 14:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Marryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Nevada'),
(26, 'New Jersey'),
(27, 'New York'),
(28, 'North Carolina'),
(29, 'North Dakota'),
(30, 'Ohio'),
(31, 'Oklahoma'),
(32, 'South Carolina'),
(33, 'South Dakota'),
(34, 'Texas'),
(35, 'Virginia'),
(36, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(29, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-07 12:38:31'),
(30, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-07 12:40:25'),
(31, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-08 07:25:09'),
(32, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-08 07:26:02'),
(33, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-18 08:18:56'),
(34, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-02-21 13:59:22'),
(35, 34, 'pratham23@mail.com', 0x3a3a31, '', '', '2023-02-21 14:43:47'),
(36, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-04 12:45:45'),
(37, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-04 14:18:21'),
(38, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-04 14:31:28'),
(39, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-04 15:09:50'),
(40, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 07:25:10'),
(41, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 08:26:48'),
(42, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 09:55:14'),
(43, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 09:57:31'),
(44, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 13:09:24'),
(45, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 13:17:49'),
(46, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-07 13:22:42'),
(47, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-08 06:51:34'),
(48, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-09 08:03:20'),
(49, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-09 08:06:48'),
(50, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-09 08:12:38'),
(51, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-03-09 09:02:29'),
(52, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-04-05 02:10:29'),
(53, 33, 'jatinsharma4103@gmail.com', 0x3a3a31, '', '', '2023-04-05 02:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(33, '20255', 'Sharma ', 'Jatin', 'S', 'Male', 875884014, 'jatinsharma4103@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-02-07 12:38:18', '', ''),
(34, '20022', 'Sharma ', 'pratham', 'B', 'Male', 635356530, 'pratham23@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-02-10 08:28:27', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
