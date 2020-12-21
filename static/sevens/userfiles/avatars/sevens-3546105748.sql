-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 07:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sevens`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblcartegories`
--

CREATE TABLE `tblcartegories` (
  `id` int(11) NOT NULL,
  `CartegoryName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcartegories`
--

INSERT INTO `tblcartegories` (`id`, `CartegoryName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Meeting', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(2, 'Fun Day', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(3, 'Agroforestry', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(4, 'Trip', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(5, 'Others', '2019-05-31 02:02:19', '2019-05-31 02:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Egerton University	', 'brentonealistar@gmail.com', '+254-740-09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'James Ogot', 'jamesogot@gmail.com', '2147483647', 'I was thinking we could cut the cost of the evening tea by eliminating it. Most of us at that time are at home. Maybe we could use the fund for something else?', '2017-06-18 10:03:07', 1),
(2, 'Jackline Mboya', 'jacklinemboya@gmail.com', '+254-740-09', 'Need furniture. This table isnt looking good and the chair doesnt impress me at all. It always give me backache.', '2019-05-17 10:44:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `id` int(11) NOT NULL,
  `EventsTitle` varchar(150) DEFAULT NULL,
  `EventsCartegory` int(11) DEFAULT NULL,
  `EventsOverview` longtext,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`id`, `EventsTitle`, `EventsCartegory`, `EventsOverview`, `RegDate`, `UpdationDate`) VALUES
(1, 'Meeting', 2, 'something about the event', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(2, 'Fun Day', 4, ' something about the event', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(3, 'Agroforestry', 1, ' something about the event', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(4, 'Trip', 5, 'something about the event', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(5, 'Others', 4, ' something about the event', '2019-05-31 02:02:19', '2019-05-31 02:02:19'),
(6, 'Meeting', 2, 'we need to have a meeting', '2019-06-02 19:03:07', '2019-06-02 22:20:45'),
(7, 'Meeting', 2, 'we need an urgent meeting', '2019-06-02 19:03:34', '2019-06-02 22:20:52'),
(8, 'Urgent', 2, 'this is a test', '2019-06-02 22:21:59', NULL),
(9, 'meeting', 2, 'we really need to meet at 3', '2019-06-03 02:06:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Events Page', 'event', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Last updated: May 05, 2019\nPlease read these </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> privacy privacy</span>'),
(3, 'Agroforesty ', 'agroforestry', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Some texts goes here</span>'),
(11, 'Updates', 'updates', '																																																																																																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serift; font-size: 14px; text-align: justify;\">We have an urgent meeting at 2:00pm please purpose to attend. You can check notifications for more information about the event. ..</span>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `userEmail`, `EventId`, `FromDate`, `ToDate`, `Reason`, `Status`, `PostingDate`, `username`) VALUES
(1, 'jamesogot@gmail.com', 2, '22/06/2017', '25/06/2017', 'Attending annual general conference quite possibly wont be able to make it. Anyways i will make follow ups.', 1, '2017-06-19 20:15:43', 'jamesogot'),
(2, 'jacklinemboya@gmail.com', 3, '30/06/2017', '02/07/2017', 'can i miss please?? the weather isnt good you know', 2, '2017-06-26 20:15:43', 'jacklinemboya'),
(3, 'jacklinemboya@gmail.com', 4, '02/07/2017', '07/07/2017', 'Took a leave. Medical issues.', 1, '2017-06-26 21:10:06', 'jacklinemboya');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'jacklinemboya@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'jamesogot@gmail.com', 'The last meeting was good only that we should put time into consideration and that would be easy if we report in time.', '2017-06-18 07:44:31', 1),
(2, 'jacklinemboya@gmail.com', 'Agreed but also on this meetings agenda should cover allowances. its about time we do that, address the big, very big elephant. You forks are welcomed anyway. Feel free to join the discussion', '2017-06-18 07:46:05', 1),
(3, 'webhostingamigo@gmail.com', 'no problem', '2019-06-03 08:53:35', 1),
(4, 'webhostingamigo@gmail.com', 'this is my first message', '2019-06-03 08:54:13', 0),
(5, 'brentonealistar@gmail.com', 'That is worth discussing', '2019-06-03 09:14:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_firstname` text NOT NULL,
  `user_lastname` text NOT NULL,
  `user_username` varchar(120) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `user_website` varchar(100) DEFAULT NULL,
  `user_dob` varchar(100) DEFAULT NULL,
  `user_country` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_profession` varchar(100) DEFAULT NULL,
  `user_shortbio` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_backgroundpicture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_firstname`, `user_lastname`, `user_username`, `FullName`, `EmailId`, `Password`, `user_avatar`, `user_gender`, `ContactNo`, `user_website`, `user_dob`, `user_country`, `user_address`, `user_profession`, `user_shortbio`, `RegDate`, `UpdationDate`, `user_backgroundpicture`) VALUES
(1, 'James', 'Ogot', 'jamesogot', 'James Ogot', 'jamesogot@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', 'front-image-815538318-3054660309-502064290-5679387810.jpg', NULL, '2147483647', NULL, '2019-02-08', 'Kenya', '323 Angular', 'Professor', 'Making the world a better place', '2019-05-31 02:02:19', '2019-06-02 20:40:19', ''),
(2, 'Jackline', 'Mboya', 'jacklinemboya', 'Jackline Mboya', 'jacklinemboya@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', 'adminlogin0-1078892819-2877845330-5011894631.jpg', NULL, '8285703354', NULL, '2019-03-09', 'Kenya', '234 Mysql', 'Secretary', 'Hardworking citizen', '2019-05-31 02:02:19', '2019-06-02 21:24:56', ''),
(3, 'Dennon', 'W', 'dennonm', 'Dennon M', 'webhostingamigo@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', 'img_20180207_132116~1-4972016137-2095826784.jpg', NULL, '09999857868', NULL, '03/02/1990', 'Netherlands', '123 Air', 'Professor', 'Press escape to cancel editing ', '2019-05-31 02:02:19', '2019-06-02 20:42:31', ''),
(4, 'Kevin', 'K', 'kevink', 'Kevin K', 'kevin@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '3-985255663-8924223051.jpg', NULL, '9999857868', NULL, '2019-01-06', 'Canada', '532 Home', 'XYZ', 'Im a amale and i like being happy', '2019-05-31 02:02:19', '2019-06-02 20:35:35', ''),
(5, 'Brentone', 'Alistar', 'Brentone Alistar', 'Brentone Alistar', 'brentonealistar@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '3-985255663-8496280702.jpg', 'male', '0790750832', NULL, '2019-05-02', 'Czech Republic', '352 Knowhere', 'Professor', 'Im saying something about myself', '2019-05-31 02:04:54', '2019-06-02 18:06:18', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcartegories`
--
ALTER TABLE `tblcartegories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcartegories`
--
ALTER TABLE `tblcartegories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
