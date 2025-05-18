-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2025 at 03:08 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foxqueen_time`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `clock_comment` varchar(255) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `time_format` int(11) DEFAULT NULL,
  `iprestriction` varchar(500) DEFAULT NULL,
  `opt` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `country`, `timezone`, `clock_comment`, `rfid`, `time_format`, `iprestriction`, `opt`) VALUES
(1, 'Phillipines', 'Asia/Manila', NULL, 'on', 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_data`
--

CREATE TABLE `tbl_company_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) NOT NULL,
  `company` varchar(255) DEFAULT '',
  `department` varchar(255) DEFAULT '0',
  `jobposition` varchar(255) DEFAULT '',
  `companyemail` varchar(255) DEFAULT '',
  `idno` varchar(255) DEFAULT '',
  `startdate` varchar(255) DEFAULT '',
  `dateregularized` varchar(255) DEFAULT '',
  `reason` varchar(455) DEFAULT '',
  `leaveprivilege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_company_data`
--

INSERT INTO `tbl_company_data` (`id`, `reference`, `company`, `department`, `jobposition`, `companyemail`, `idno`, `startdate`, `dateregularized`, `reason`, `leaveprivilege`) VALUES
(1, 1, 'LEADS E-COMMERCE CORPORATION', 'PROJECT MANAGER', 'PROJECT MANAGER', 'leadsecomcorp@gmail.com', '001122', '2020-02-01', '2020-02-01', '', NULL),
(3, 3, 'LEADS E-COMMERCE CORPORATION', 'MARKETING DEPARTMENT', 'GRAPHIC DESIGNER WEBSITE DEVELOPER VIDEO EDITOR', 'mballerda.leadsecomcorp@gmail.com', '02502', '2025-04-01', '2025-05-16', '', 4),
(4, 4, 'LEADS E-COMMERCE CORPORATION', 'PROJECT MANAGER', 'PROJECT MANAGER', 'sgonzales.leadsecomcorp@gmail.com', '02503', '1969-12-31', '1969-12-31', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_company`
--

CREATE TABLE `tbl_form_company` (
  `id` int(11) UNSIGNED NOT NULL,
  `company` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_company`
--

INSERT INTO `tbl_form_company` (`id`, `company`) VALUES
(8, 'LEADS E-COMMERCE CORPORATION');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_department`
--

CREATE TABLE `tbl_form_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `department` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_department`
--

INSERT INTO `tbl_form_department` (`id`, `department`) VALUES
(5, 'HR DEPATMENT'),
(6, 'SALES DEPARTMENT'),
(7, 'MARKETING DEPARTMENT'),
(8, 'WAREHOUSE STAFF'),
(9, 'PROJECT MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_jobtitle`
--

CREATE TABLE `tbl_form_jobtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `jobtitle` varchar(250) DEFAULT '',
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_jobtitle`
--

INSERT INTO `tbl_form_jobtitle` (`id`, `jobtitle`, `dept_code`) VALUES
(4, 'HR', 5),
(5, 'COSTUMER SERVICE REPRESENTATIVE', 6),
(6, 'GRAPHIC DESIGNER WEBSITE DEVELOPER VIDEO EDITOR', 7),
(7, 'AUTOMATION SPECIALIST', 7),
(8, 'PROJECT MANAGER', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_leavegroup`
--

CREATE TABLE `tbl_form_leavegroup` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavegroup` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leaveprivileges` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_leavegroup`
--

INSERT INTO `tbl_form_leavegroup` (`id`, `leavegroup`, `description`, `leaveprivileges`, `status`) VALUES
(3, 'TRAINEE LEAVE', 'EMPLOYEE ARE ALLOWED TO USE THIS LEAVE', '3,4,5', 1),
(4, 'REGULAR EMPLOYEE LEAVE', 'EMPLOYEE ARE ALLOWED TO USE THIS LEAVE', '3,4,5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_leavetype`
--

CREATE TABLE `tbl_form_leavetype` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavetype` varchar(255) DEFAULT NULL,
  `limit` varchar(255) DEFAULT NULL,
  `percalendar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_leavetype`
--

INSERT INTO `tbl_form_leavetype` (`id`, `leavetype`, `limit`, `percalendar`) VALUES
(3, 'SICK LEAVE', '3', 'Monthly'),
(4, 'VICATION LEAVE', '5', 'Monthly'),
(5, 'BIRTHDAY LEAVE', '1', 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people`
--

CREATE TABLE `tbl_people` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `mi` varchar(255) DEFAULT '',
  `lastname` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) DEFAULT '',
  `emailaddress` varchar(255) DEFAULT '',
  `civilstatus` varchar(255) DEFAULT '',
  `height` varchar(255) DEFAULT '',
  `weight` varchar(255) DEFAULT '',
  `mobileno` varchar(255) DEFAULT '',
  `birthday` varchar(255) DEFAULT '',
  `nationalid` varchar(255) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT '',
  `homeaddress` varchar(255) DEFAULT '',
  `employmentstatus` varchar(11) DEFAULT '',
  `employmenttype` varchar(11) DEFAULT '',
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people`
--

INSERT INTO `tbl_people` (`id`, `firstname`, `mi`, `lastname`, `age`, `gender`, `emailaddress`, `civilstatus`, `height`, `weight`, `mobileno`, `birthday`, `nationalid`, `birthplace`, `homeaddress`, `employmentstatus`, `employmenttype`, `avatar`) VALUES
(1, 'LEADS', 'ECOMMERCE', 'CORPORATION', 22, 'MALE', 'hello@mgdevexperts.com', 'SINGLE', NULL, NULL, '+639624203788', '2002-11-21', '5198526439086230', 'BATANGAS CITY', '25 BUKID AREA STA NA DRIVE SUN VALLEY PARANAQUE CITY', 'Active', NULL, 'images.jpg'),
(3, 'MARK MERVIN', 'BALLERDA', 'GUSI', 22, 'MALE', 'mballerda.leadsecomcorp@gmail.com', 'SINGLE', NULL, NULL, '+639624203788', '2002-11-21', '5198526439086230', 'BATANGAS CITY', '25 BUKID AREA STA NA DRIVE SUN VALLEY PARANAQUE CITY', 'Active', 'Regular', ''),
(4, 'SHERWIN', '', 'GONZALES', 32, 'MALE', 'sgonzales.leadsecomcorp@gmail.com', 'SINGLE', NULL, NULL, '+639690909066', '2025-05-19', 'N/A', 'CAVITE CITY', 'N/A', 'Active', 'Regular', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_attendance`
--

CREATE TABLE `tbl_people_attendance` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) DEFAULT '',
  `date` date DEFAULT NULL,
  `employee` varchar(255) DEFAULT '',
  `timein` varchar(255) DEFAULT NULL,
  `timeout` varchar(255) DEFAULT NULL,
  `totalhours` varchar(255) DEFAULT '',
  `status_timein` varchar(255) DEFAULT '',
  `status_timeout` varchar(255) DEFAULT '',
  `reason` varchar(255) DEFAULT '',
  `comment` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people_attendance`
--

INSERT INTO `tbl_people_attendance` (`id`, `reference`, `idno`, `date`, `employee`, `timein`, `timeout`, `totalhours`, `status_timein`, `status_timeout`, `reason`, `comment`, `created_at`) VALUES
(1, 3, '02502', '2025-05-16', 'GUSI, MARK MERVIN BALLERDA', '2025-05-16 08:00:00 AM', '2025-05-16 06:05:00 PM', '10.5', 'Ok', 'Ok', '', '', '2025-05-18 09:01:41'),
(2, 3, '02502', '2025-05-17', 'GUSI, MARK MERVIN BALLERDA', '2025-05-17 09:04:00 AM', '2025-05-17 09:10:00 PM', '12.6', 'Ok', 'Ok', '', '', '2025-05-18 09:02:09'),
(3, 4, '02503', '2025-05-16', 'GONZALES, SHERWIN ', '2025-05-16 07:52:00 AM', '2025-05-16 08:02:00 PM', '12.10', 'In Time', 'On Time', '', '', '2025-05-18 09:08:24'),
(4, 4, '02503', '2025-05-17', 'GONZALES, SHERWIN ', '2025-05-17 07:45:00 AM', '2025-05-17 08:11:00 PM', '12.26', 'In Time', 'On Time', '', '', '2025-05-18 09:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_leaves`
--

CREATE TABLE `tbl_people_leaves` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) DEFAULT NULL,
  `employee` varchar(255) DEFAULT '',
  `typeid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT '',
  `leavefrom` date DEFAULT NULL,
  `leaveto` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `archived` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people_leaves`
--

INSERT INTO `tbl_people_leaves` (`id`, `reference`, `idno`, `employee`, `typeid`, `type`, `leavefrom`, `leaveto`, `returndate`, `reason`, `status`, `comment`, `archived`) VALUES
(1, 3, '02502', 'GUSI, MARK MERVIN', 3, 'SICK LEAVE', '2025-05-18', '2025-05-19', '2025-05-20', 'I AM FEELING UNWELL AND HAVE BEEN ADVISED TO REST BY MY DOCTOR. I AM REQUESTING SICK LEAVE FROM 05-18-25 TO 05-19-25 TO RECOVER AND RETURN TO WORK IN GOOD HEALTH.', 'Approved', 'OKAY, GET WELL SOON.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_schedules`
--

CREATE TABLE `tbl_people_schedules` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) DEFAULT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `intime` text DEFAULT NULL,
  `outime` text DEFAULT NULL,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `restday` varchar(255) DEFAULT NULL,
  `archive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people_schedules`
--

INSERT INTO `tbl_people_schedules` (`id`, `reference`, `idno`, `employee`, `intime`, `outime`, `datefrom`, `dateto`, `hours`, `restday`, `archive`) VALUES
(2, 3, '02502', 'GUSI, MARK MERVIN', '08:00 AM', '05:00 PM', '2025-05-01', '2025-05-31', 8, 'Sunday', 0),
(3, 4, '02503', 'GONZALES, SHERWIN', '08:00 AM', '08:00 PM', '2025-05-01', '2025-05-31', 12, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_views`
--

CREATE TABLE `tbl_report_views` (
  `id` int(11) UNSIGNED NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `last_viewed` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_report_views`
--

INSERT INTO `tbl_report_views` (`id`, `report_id`, `last_viewed`, `title`) VALUES
(1, 1, '', 'Employee List Report'),
(2, 2, 'May, 18 2025', 'Employee Attendance Report'),
(3, 3, '', 'Employee Leaves Report'),
(4, 4, 'May, 18 2025', 'Employee Schedule Report'),
(5, 5, '', 'Organizational Profile'),
(6, 6, '', 'User Accounts Report'),
(7, 7, '', 'Employee Birthdays');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `acc_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reference`, `idno`, `name`, `email`, `role_id`, `acc_type`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '001122', 'LEADS ECOMMERCE CORPORATION', 'hello@mgdevexperts.com', 1, 2, 1, '$2y$10$XNDWghYCdhVc.mT8LXJm4uYY8p2EVEbWJjq6BANjShTfzQnOy0IYe', '', '2018-10-31 12:10:04', '2018-10-31 12:10:04'),
(3, 3, '02502', 'GUSI, MARK MERVIN', 'mballerda.leadsecomcorp@gmail.com', 2, 1, 1, '$2y$10$Tet70q26K7gt.oAJYzUMceAosrpUMI5IzNMDu.MC/K3iDTyj9qVZu', NULL, '2025-05-18 08:53:51', '2025-05-18 08:53:51'),
(4, 4, '02503', 'GONZALES, SHERWIN', 'sgonzales.leadsecomcorp@gmail.com', 2, 1, 1, '$2y$10$GiVVLzOFVIoNGg0OY.KrQOo.HSY.wcORVLc/zBNyiUbiFthsgXDha', NULL, '2025-05-18 09:05:36', '2025-05-18 09:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `role_id`, `perm_id`) VALUES
(1798, 1, 1),
(1799, 1, 2),
(1800, 1, 22),
(1801, 1, 21),
(1802, 1, 23),
(1803, 1, 24),
(1804, 1, 25),
(1805, 1, 3),
(1806, 1, 31),
(1807, 1, 32),
(1808, 1, 4),
(1809, 1, 41),
(1810, 1, 42),
(1811, 1, 43),
(1812, 1, 44),
(1813, 1, 5),
(1814, 1, 52),
(1815, 1, 53),
(1816, 1, 9),
(1817, 1, 91),
(1818, 1, 7),
(1819, 1, 8),
(1820, 1, 81),
(1821, 1, 82),
(1822, 1, 83),
(1823, 1, 10),
(1824, 1, 101),
(1825, 1, 102),
(1826, 1, 103),
(1827, 1, 104),
(1828, 1, 11),
(1829, 1, 111),
(1830, 1, 112),
(1831, 1, 12),
(1832, 1, 121),
(1833, 1, 122),
(1834, 1, 13),
(1835, 1, 131),
(1836, 1, 132),
(1837, 1, 14),
(1838, 1, 141),
(1839, 1, 142),
(1840, 1, 15),
(1841, 1, 151),
(1842, 1, 152),
(1843, 1, 153);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_name`, `state`) VALUES
(1, 'MANAGER', 'Active'),
(2, 'EMPLOYEE', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_company_data`
--
ALTER TABLE `tbl_company_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_company`
--
ALTER TABLE `tbl_form_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_department`
--
ALTER TABLE `tbl_form_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_jobtitle`
--
ALTER TABLE `tbl_form_jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_leavegroup`
--
ALTER TABLE `tbl_form_leavegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_leavetype`
--
ALTER TABLE `tbl_form_leavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people`
--
ALTER TABLE `tbl_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_attendance`
--
ALTER TABLE `tbl_people_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_leaves`
--
ALTER TABLE `tbl_people_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_schedules`
--
ALTER TABLE `tbl_people_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_report_views`
--
ALTER TABLE `tbl_report_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_company_data`
--
ALTER TABLE `tbl_company_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_form_company`
--
ALTER TABLE `tbl_form_company`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_form_department`
--
ALTER TABLE `tbl_form_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_form_jobtitle`
--
ALTER TABLE `tbl_form_jobtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_form_leavegroup`
--
ALTER TABLE `tbl_form_leavegroup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_form_leavetype`
--
ALTER TABLE `tbl_form_leavetype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_people`
--
ALTER TABLE `tbl_people`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_people_attendance`
--
ALTER TABLE `tbl_people_attendance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_people_leaves`
--
ALTER TABLE `tbl_people_leaves`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_people_schedules`
--
ALTER TABLE `tbl_people_schedules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_report_views`
--
ALTER TABLE `tbl_report_views`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_permissions`
--
ALTER TABLE `users_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1844;

--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
