-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2025 at 06:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airtra`
--

-- --------------------------------------------------------

--
-- Table structure for table `addflights`
--

CREATE TABLE `addflights` (
  `flight_no` int(10) NOT NULL,
  `Company` text NOT NULL,
  `airbus_id` varchar(25) NOT NULL,
  `type` text NOT NULL,
  `trip` text NOT NULL,
  `fromdes` text NOT NULL,
  `todes` text NOT NULL,
  `SheduledDeparture` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `ScheduledArrival` varchar(10) NOT NULL,
  `From_Airport_id` varchar(10) NOT NULL,
  `To_Airport_id` varchar(10) NOT NULL,
  `Datee` date NOT NULL,
  `rdatee` date NOT NULL,
  `first_class` int(5) NOT NULL,
  `business_class` int(5) NOT NULL,
  `economy_class` int(5) NOT NULL,
  `first_class_seats` int(99) NOT NULL,
  `business_class_seats` int(99) NOT NULL,
  `economy_class_seats` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addflights`
--
-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(99) NOT NULL,
  `fullname` text NOT NULL,
  `gender` text NOT NULL,
  `address` varchar(99) NOT NULL,
  `phnumber` bigint(13) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(9) NOT NULL,
  `password` varchar(25) NOT NULL,
  `branch_id` int(99) NOT NULL,
  `branch_location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `id` int(99) NOT NULL,
  `airportname` text NOT NULL,
  `code` text NOT NULL,
  `type` text NOT NULL,
  `cityname` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airport`
--
-- --------------------------------------------------------

--
-- Table structure for table `airtra_balance`
--

CREATE TABLE `airtra_balance` (
  `airtra_balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtra_balance`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtra_draft`
--

CREATE TABLE `airtra_draft` (
  `id` int(99) NOT NULL,
  `amount` int(99) NOT NULL,
  `timee` varchar(10) NOT NULL,
  `datee` varchar(10) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtra_draft`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabhire`
--

CREATE TABLE `cabhire` (
  `id` int(99) NOT NULL,
  `username` varchar(40) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phnumber` int(15) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `dropoff` varchar(39) NOT NULL,
  `pickupdate` varchar(10) NOT NULL,
  `pickuptime` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cabhire`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancelation`
--

CREATE TABLE `cancelation` (
  `id` int(99) NOT NULL,
  `confirmation_code` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `seatno` varchar(16) NOT NULL,
  `airbus_id` int(99) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cancelation`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecash`
--

CREATE TABLE `ecash` (
  `id` int(99) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ecash`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecash_confirmation`
--

CREATE TABLE `ecash_confirmation` (
  `id` int(99) NOT NULL,
  `userid` varchar(99) NOT NULL,
  `amount` int(99) NOT NULL,
  `paymentid` varchar(99) NOT NULL,
  `ecash_status` text NOT NULL,
  `datee` varchar(10) NOT NULL,
  `timee` varchar(10) NOT NULL,
  `airtra_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ecash_confirmation`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecash_reservation`
--

CREATE TABLE `ecash_reservation` (
  `id` int(99) NOT NULL,
  `paymentid` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `fare` int(255) NOT NULL,
  `airbus_id` int(255) NOT NULL,
  `seat_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(99) NOT NULL,
  `feedback` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_no` varchar(10) NOT NULL DEFAULT '',
  `SheduledDeparture` time DEFAULT NULL,
  `ScheduledArrival` time DEFAULT NULL,
  `From_Airport_id` varchar(10) DEFAULT NULL,
  `To_Airport_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `flight`
--
-- --------------------------------------------------------

--
-- Table structure for table `flight_instance`
--

CREATE TABLE `flight_instance` (
  `InstanceId` varchar(10) NOT NULL DEFAULT '',
  `ArriveTime` time DEFAULT NULL,
  `DepartTime` time DEFAULT NULL,
  `ArrivalDate` date DEFAULT NULL,
  `DepartureDate` date DEFAULT NULL,
  `Flight_no` varchar(10) DEFAULT NULL,
  `Status` int(5) NOT NULL DEFAULT 1,
  `Fare` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `flight_instance`
--
-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(99) NOT NULL,
  `confirmation_code` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `seatno` varchar(16) NOT NULL,
  `airbus_id` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `seats_availability`
--

CREATE TABLE `seats_availability` (
  `id` int(255) NOT NULL,
  `airbus_id` varchar(25) NOT NULL,
  `seat_no` varchar(25) NOT NULL,
  `status` text NOT NULL,
  `fare` int(10) NOT NULL,
  `airtra_fair` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seats_availability`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(99) NOT NULL,
  `fullname` text NOT NULL,
  `gender` text NOT NULL,
  `phnumber` bigint(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `address` varchar(35) NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--
--
-- Indexes for dumped tables
--

--
-- Indexes for table `addflights`
--
ALTER TABLE `addflights`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phnumber` (`phnumber`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airtra_balance`
--
ALTER TABLE `airtra_balance`
  ADD PRIMARY KEY (`airtra_balance`);

--
-- Indexes for table `airtra_draft`
--
ALTER TABLE `airtra_draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabhire`
--
ALTER TABLE `cabhire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancelation`
--
ALTER TABLE `cancelation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecash`
--
ALTER TABLE `ecash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecash_confirmation`
--
ALTER TABLE `ecash_confirmation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecash_reservation`
--
ALTER TABLE `ecash_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_no`),
  ADD KEY `From_Airport_id` (`From_Airport_id`),
  ADD KEY `To_Airport_id` (`To_Airport_id`);

--
-- Indexes for table `flight_instance`
--
ALTER TABLE `flight_instance`
  ADD PRIMARY KEY (`InstanceId`),
  ADD KEY `Flight_no` (`Flight_no`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats_availability`
--
ALTER TABLE `seats_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phnumber` (`phnumber`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addflights`
--
ALTER TABLE `addflights`
  MODIFY `flight_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `airtra_draft`
--
ALTER TABLE `airtra_draft`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cabhire`
--
ALTER TABLE `cabhire`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cancelation`
--
ALTER TABLE `cancelation`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ecash`
--
ALTER TABLE `ecash`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ecash_confirmation`
--
ALTER TABLE `ecash_confirmation`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ecash_reservation`
--
ALTER TABLE `ecash_reservation`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seats_availability`
--
ALTER TABLE `seats_availability`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
