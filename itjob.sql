-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 10:46 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idLogin` int(10) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Gender` tinyint(4) NOT NULL,
  `Dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_group`
--

CREATE TABLE `account_group` (
  `idAccount_Group` int(10) NOT NULL,
  `Account_idLogin` int(10) NOT NULL,
  `Group_idGroup` int(10) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `idAction` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_model`
--

CREATE TABLE `action_model` (
  `Action_idAction` int(10) NOT NULL,
  `Model_idModel` int(10) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `IdComment` int(10) NOT NULL,
  `Text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_User_commented` int(10) NOT NULL,
  `Employer_idEmployer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cv_row`
--

CREATE TABLE `cv_row` (
  `idCV_Row` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Maximum_Row` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `User_CV_idUser_SV` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `idEmployer` int(10) NOT NULL,
  `Employer_type` int(10) NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_Location` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer_category`
--

CREATE TABLE `employer_category` (
  `idEmployer_Category` int(10) NOT NULL,
  `Employer_idEmployer` int(10) NOT NULL,
  `Category_idCategory` int(10) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer_following`
--

CREATE TABLE `employer_following` (
  `id_Employer_saved` int(10) NOT NULL,
  `id_Employer` int(10) NOT NULL,
  `User_idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `idGroup` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_action`
--

CREATE TABLE `group_action` (
  `idGroup_Action` int(10) NOT NULL,
  `Group_idGroup` int(10) NOT NULL,
  `Action_idAction` int(10) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `idLocation` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `idModel` int(10) NOT NULL,
  `Name]` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_job_robot`
--

CREATE TABLE `my_job_robot` (
  `idMy_Job_Robot` int(10) NOT NULL,
  `id_Category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `User_idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idPost` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `requirement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Salary` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount_of_people` int(10) NOT NULL,
  `Start_day` date NOT NULL,
  `End_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_relationship`
--

CREATE TABLE `post_relationship` (
  `idPo_Relationship` int(10) NOT NULL,
  `Post_idPost` int(10) NOT NULL,
  `Employer_Category_idEmployer_Category` int(10) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_saved`
--

CREATE TABLE `post_saved` (
  `idPost_saved` int(10) NOT NULL,
  `id_Post` int(10) NOT NULL,
  `User_idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `idRank` int(10) NOT NULL,
  `Rank` int(10) NOT NULL,
  `Comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_Employer_feedback` int(10) NOT NULL,
  `User_idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `idRate` int(10) NOT NULL,
  `Employer_idEmployer` int(10) NOT NULL,
  `Star` int(10) NOT NULL,
  `id_User_rated` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `row_info`
--

CREATE TABLE `row_info` (
  `idRow_info` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Info` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `CV_Row_idCV_Row` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `Rank` double NOT NULL,
  `id_Location` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_apply`
--

CREATE TABLE `user_apply` (
  `idUser_apply` int(10) NOT NULL,
  `idUser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Post_idPost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cv`
--

CREATE TABLE `user_cv` (
  `idUser_SV` int(10) NOT NULL,
  `User_idUser` int(10) NOT NULL,
  `Objective` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Maximum_row` int(10) NOT NULL,
  `Education` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_in_category`
--

CREATE TABLE `user_in_category` (
  `idUser_in_category` int(10) NOT NULL,
  `id_User` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Category_idCategory` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idLogin`);

--
-- Indexes for table `account_group`
--
ALTER TABLE `account_group`
  ADD PRIMARY KEY (`idAccount_Group`);

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`idAction`);

--
-- Indexes for table `action_model`
--
ALTER TABLE `action_model`
  ADD PRIMARY KEY (`Action_idAction`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`IdComment`);

--
-- Indexes for table `cv_row`
--
ALTER TABLE `cv_row`
  ADD PRIMARY KEY (`idCV_Row`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`idEmployer`);

--
-- Indexes for table `employer_category`
--
ALTER TABLE `employer_category`
  ADD PRIMARY KEY (`idEmployer_Category`);

--
-- Indexes for table `employer_following`
--
ALTER TABLE `employer_following`
  ADD PRIMARY KEY (`id_Employer_saved`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`idGroup`);

--
-- Indexes for table `group_action`
--
ALTER TABLE `group_action`
  ADD PRIMARY KEY (`idGroup_Action`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idLocation`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`idModel`);

--
-- Indexes for table `my_job_robot`
--
ALTER TABLE `my_job_robot`
  ADD PRIMARY KEY (`idMy_Job_Robot`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idPost`);

--
-- Indexes for table `post_relationship`
--
ALTER TABLE `post_relationship`
  ADD PRIMARY KEY (`idPo_Relationship`);

--
-- Indexes for table `post_saved`
--
ALTER TABLE `post_saved`
  ADD PRIMARY KEY (`idPost_saved`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`idRank`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`idRate`);

--
-- Indexes for table `row_info`
--
ALTER TABLE `row_info`
  ADD PRIMARY KEY (`idRow_info`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `user_apply`
--
ALTER TABLE `user_apply`
  ADD PRIMARY KEY (`idUser_apply`);

--
-- Indexes for table `user_cv`
--
ALTER TABLE `user_cv`
  ADD PRIMARY KEY (`idUser_SV`);

--
-- Indexes for table `user_in_category`
--
ALTER TABLE `user_in_category`
  ADD PRIMARY KEY (`idUser_in_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `idLogin` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_group`
--
ALTER TABLE `account_group`
  MODIFY `idAccount_Group` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `idAction` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action_model`
--
ALTER TABLE `action_model`
  MODIFY `Action_idAction` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `IdComment` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cv_row`
--
ALTER TABLE `cv_row`
  MODIFY `idCV_Row` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `idEmployer` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_category`
--
ALTER TABLE `employer_category`
  MODIFY `idEmployer_Category` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_following`
--
ALTER TABLE `employer_following`
  MODIFY `id_Employer_saved` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `idGroup` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_action`
--
ALTER TABLE `group_action`
  MODIFY `idGroup_Action` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `idLocation` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `idModel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_job_robot`
--
ALTER TABLE `my_job_robot`
  MODIFY `idMy_Job_Robot` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_relationship`
--
ALTER TABLE `post_relationship`
  MODIFY `idPo_Relationship` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_saved`
--
ALTER TABLE `post_saved`
  MODIFY `idPost_saved` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `idRank` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `idRate` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `row_info`
--
ALTER TABLE `row_info`
  MODIFY `idRow_info` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_apply`
--
ALTER TABLE `user_apply`
  MODIFY `idUser_apply` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_cv`
--
ALTER TABLE `user_cv`
  MODIFY `idUser_SV` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_in_category`
--
ALTER TABLE `user_in_category`
  MODIFY `idUser_in_category` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
