-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2016 at 07:52 AM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anthonyd_workout`
--

-- --------------------------------------------------------

--
-- Table structure for table `exerciseList`
--

CREATE TABLE IF NOT EXISTS `exerciseList` (
  `rotationNum` int(2) NOT NULL,
  `orderNum` int(2) NOT NULL,
  `exerciseName` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exerciseList`
--

INSERT INTO `exerciseList` (`rotationNum`, `orderNum`, `exerciseName`) VALUES
(0, 0, 'Bike'),
(0, 0, 'Chin Ups'),
(0, 0, 'Dips'),
(0, 0, 'Hammer Pull Ups'),
(0, 0, 'Push Ups'),
(0, 0, 'Sprints'),
(0, 0, 'Treadmill'),
(0, 0, 'Water Rower'),
(0, 0, 'Wide Grip Pull Ups'),
(1, 1, 'Lateral Pulldown'),
(1, 2, 'Low Row'),
(1, 3, 'Dumbbell Curl'),
(1, 4, 'Hammer Curl'),
(1, 5, 'Back Extension'),
(1, 6, 'One Arm Dumbbell Row'),
(1, 7, 'Alternate Hammer Curl'),
(1, 8, 'Pushdown (Cable w/ Bar For Back)'),
(1, 9, 'Preacher Curl'),
(2, 1, 'Bench Press'),
(2, 2, 'Incline Bench Press'),
(2, 3, 'Skullcrusher'),
(2, 4, 'Seated Tricep Extension'),
(2, 5, 'Decline Bench'),
(2, 6, 'Tricep Pulldown'),
(2, 7, 'Tricep Press'),
(2, 8, 'Fly'),
(3, 1, 'Plank'),
(3, 2, 'Side Plank'),
(3, 3, 'Sit Ups'),
(3, 4, 'V Ups'),
(3, 5, 'Decline Weight Plate Sit Ups'),
(3, 6, 'Decline Medicine Ball Sit Ups'),
(3, 7, 'Decline Oblique Medicine Ball '),
(3, 8, 'Oblique Crunch'),
(3, 9, 'Hanging Leg Raise'),
(4, 1, 'Bike'),
(4, 2, 'Treadmill'),
(4, 3, 'Hammer Pull Ups'),
(4, 4, 'Wide Grip Pull Ups'),
(4, 5, 'Chin Ups'),
(4, 6, 'Jump Rope'),
(4, 7, 'Dips'),
(4, 8, 'TRX'),
(4, 9, 'Pushups'),
(4, 10, 'Sit Ups'),
(4, 11, 'Wall Sit'),
(5, 1, 'Linear Leg Press'),
(5, 2, 'Seated Leg Curl'),
(5, 3, 'Leg Extension'),
(5, 4, 'Leg Curl'),
(5, 5, 'Calf Raise'),
(5, 6, 'Jump Rope'),
(5, 7, 'Burpies'),
(6, 1, 'Shoulder Press'),
(6, 2, 'Shoulder Shrug'),
(6, 3, 'Plate Weight Wheel Turn'),
(6, 4, 'Overhead Press'),
(6, 5, 'Incline Press'),
(6, 6, 'Rear Deltoid'),
(6, 7, 'Forearm Curl'),
(6, 8, 'Shoulder Extension (Like Tris)'),
(6, 9, 'Lateral Press'),
(99, 99, 'Chin Ups'),
(99, 99, 'Dips'),
(99, 99, 'Hammer Pull Ups'),
(99, 99, 'Plank'),
(99, 99, 'Push Ups'),
(99, 99, 'Roman Chair'),
(99, 99, 'Rope'),
(99, 99, 'Wall Sit'),
(99, 99, 'Wide Grip Pull Ups');

-- --------------------------------------------------------

--
-- Table structure for table `rotationList`
--

CREATE TABLE IF NOT EXISTS `rotationList` (
  `rotationNum` int(11) NOT NULL,
  `rotationName` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rotationList`
--

INSERT INTO `rotationList` (`rotationNum`, `rotationName`) VALUES
(1, 'Back and Biceps'),
(2, 'Chest and Triceps'),
(3, 'Abs'),
(4, 'Cardio and Calisthenics'),
(5, 'Legs'),
(6, 'Shoulders and Forearms'),
(7, 'Flex');

-- --------------------------------------------------------

--
-- Table structure for table `workoutLog`
--

CREATE TABLE IF NOT EXISTS `workoutLog` (
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rotationNum` int(2) DEFAULT NULL,
  `exerciseName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep` int(2) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workoutLog`
--

 INSERT INTO `workoutLog` (`date`, `rotationNum`, `exerciseName`, `rep`, `weight`) VALUES
('2016-04-06 10:00:00', 0, 'Dips', 10, 0),
('2016-04-06 10:01:00', 2, 'Bench Press', 10, 25),
('2016-04-06 10:01:10', 2, 'Bench Press', 8, 30),
('2016-04-06 10:01:20', 2, 'Bench Press', 6, 30),
('2016-04-06 10:02:00', 2, 'Incline Bench Press', 6, 30),
('2016-04-06 10:02:10', 2, 'Incline Bench Press', 7, 25),
('2016-04-06 10:03:00', 2, 'Skullcrusher', 10, 40),
('2016-04-06 10:03:10', 2, 'Skullcrusher', 8, 40),
('2016-04-06 10:03:20', 2, 'Skullcrusher', 5, 50),
('2016-04-06 10:04:00', 2, 'Seated Tricep Extension', 8, 35),
('2016-04-06 10:04:10', 2, 'Seated Tricep Extension', 6, 35),
('2016-04-06 10:04:20', 2, 'Seated Tricep Extension', 7, 30),
('2016-04-06 10:05:00', 2, 'Decline Bench', 10, 40),
('2016-04-06 10:05:10', 2, 'Decline Bench', 10, 50),
('2016-04-06 10:05:20', 2, 'Decline Bench', 10, 60),
('2016-04-06 10:05:30', 2, 'Decline Bench', 10, 70),
('2016-04-06 10:06:00', 2, 'Tricep Press', 10, 70),
('2016-04-06 10:06:10', 2, 'Tricep Press', 8, 90),
('2016-04-06 10:06:20', 2, 'Tricep Press', 5, 100),
('2016-04-06 10:07:00', 99, 'Dips', 3, 0),
('2016-04-11 10:00:00', 0, 'Bike', 5, 10),
('2016-04-11 10:01:00', 5, 'Linear Leg Press', 8, 70),
('2016-04-11 10:01:10', 5, 'Linear Leg Press', 10, 70),
('2016-04-11 10:01:20', 5, 'Linear Leg Press', 8, 90),
('2016-04-11 10:02:00', 5, 'Seated Leg Curl', 10, 90),
('2016-04-11 10:02:10', 5, 'Seated Leg Curl', 10, 120),
('2016-04-11 10:02:20', 5, 'Seated Leg Curl', 10, 130),
('2016-04-11 10:02:30', 5, 'Seated Leg Curl', 10, 140),
('2016-04-11 10:03:00', 5, 'Leg Extension', 10, 90),
('2016-04-11 10:03:10', 5, 'Leg Extension', 10, 110),
('2016-04-11 10:03:20', 5, 'Leg Extension', 10, 120),
('2016-04-11 10:03:30', 5, 'Leg Extension', 10, 130),
('2016-04-11 10:04:00', 5, 'Leg Curl', 8, 80),
('2016-04-11 10:04:10', 5, 'Leg Curl', 8, 70),
('2016-04-11 10:05:00', 5, 'Calf Raise', 20, 25),
('2016-04-11 10:05:10', 5, 'Calf Raise', 10, 45),
('2016-04-11 10:05:20', 5, 'Calf Raise', 14, 45),
('2016-04-11 10:06:00', 5, 'Jump Rope', 45, 0),
('2016-04-11 10:06:10', 5, 'Jump Rope', 55, 0),
('2016-04-11 10:07:00', 99, 'Wall Sit', 45, 0),
('2016-04-11 10:07:10', 99, 'Wall Sit', 15, 0),
('2016-04-12 10:00:00', 0, 'Water Rower', 500, 0),
('2016-04-12 10:02:00', 6, 'Shoulder Press', 10, 25),
('2016-04-12 10:02:10', 6, 'Shoulder Press', 10, 30),
('2016-04-12 10:02:20', 6, 'Shoulder Press', 10, 35),
('2016-04-12 10:03:00', 6, 'Shoulder Shrug', 10, 30),
('2016-04-12 10:03:10', 6, 'Shoulder Shrug', 10, 35),
('2016-04-12 10:03:20', 6, 'Shoulder Shrug', 10, 40),
('2016-04-12 10:04:00', 6, 'Overhead Press', 10, 50),
('2016-04-12 10:04:10', 6, 'Overhead Press', 10, 55),
('2016-04-12 10:04:20', 6, 'Overhead Press', 8, 70),
('2016-04-12 10:05:00', 6, 'Incline Press', 10, 90),
('2016-04-12 10:05:10', 6, 'Incline Press', 8, 100),
('2016-04-12 10:06:00', 6, 'Rear Deltoid', 10, 50),
('2016-04-12 10:06:10', 6, 'Rear Deltoid', 10, 60),
('2016-04-12 10:06:20', 6, 'Rear Deltoid', 5, 70),
('2016-04-12 10:07:00', 6, 'Forearm Curl', 10, 30),
('2016-04-12 10:07:10', 6, 'Forearm Curl', 10, 40),
('2016-04-12 10:07:20', 6, 'Forearm Curl', 10, 50),
('2016-04-12 10:08:00', 6, 'Shoulder Extension (Like Tris)', 10, 30),
('2016-04-12 10:08:10', 6, 'Shoulder Extension (Like Tris)', 5, 40),
('2016-04-12 10:08:20', 6, 'Shoulder Extension (Like Tris)', 6, 30),
('2016-04-12 10:09:00', 99, 'Wide Grip Pull Up', 3, 0),
('2016-04-12 10:09:10', 99, 'Wide Grip Pull Up', 3, 0),
('2016-04-12 10:09:20', 99, 'Rope', 1, 0),
('2016-04-14 10:00:00', 0, 'Dips', 10, 0),
('2016-04-14 10:01:00', 2, 'Bench Press', 10, 30),
('2016-04-14 10:01:10', 2, 'Bench Press', 7, 40),
('2016-04-14 10:01:20', 2, 'Bench Press', 5, 45),
('2016-04-14 10:02:00', 2, 'Incline Bench Press', 10, 30),
('2016-04-14 10:02:10', 2, 'Incline Bench Press', 6, 35),
('2016-04-14 10:02:20', 2, 'Incline Bench Press', 4, 35),
('2016-04-14 10:03:00', 2, 'Skullcrusher', 10, 40),
('2016-04-14 10:03:10', 2, 'Skullcrusher', 10, 50),
('2016-04-14 10:03:20', 2, 'Skullcrusher', 7, 60),
('2016-04-14 10:04:00', 2, 'Seated Tricep Extension', 10, 35),
('2016-04-14 10:04:10', 2, 'Seated Tricep Extension', 8, 40),
('2016-04-14 10:04:20', 2, 'Seated Tricep Extension', 5, 45),
('2016-04-14 10:05:00', 2, 'Decline Bench', 10, 60),
('2016-04-14 10:05:10', 2, 'Decline Bench', 10, 70),
('2016-04-14 10:05:20', 2, 'Decline Bench', 6, 80),
('2016-04-14 10:06:00', 2, 'Tricep Pulldown', 10, 60),
('2016-04-14 10:06:10', 2, 'Tricep Pulldown', 10, 70),
('2016-04-14 10:06:20', 2, 'Tricep Pulldown', 6, 80),
('2016-04-14 10:07:00', 2, 'Tricep Press', 10, 80),
('2016-04-14 10:07:10', 2, 'Tricep Press', 8, 90),
('2016-04-14 10:07:20', 2, 'Tricep Press', 4, 100),
('2016-04-14 10:08:00', 99, 'Dips', 3, 0),
('2016-04-14 10:08:10', 99, 'Push Ups', 2, 0),
('2016-04-15 10:00:00', 0, 'Bike', 5, 11),
('2016-04-15 10:01:00', 3, 'Plank', 1, 0),
('2016-04-15 10:01:10', 3, 'Plank', 45, 0),
('2016-04-15 10:02:00', 3, 'Side Plank', 1, 0),
('2016-04-15 10:02:10', 3, 'Side Plank', 45, 0),
('2016-04-15 10:02:20', 3, 'Side Plank', 30, 0),
('2016-04-15 10:03:00', 3, 'Sit Ups', 1, 0),
('2016-04-15 10:03:10', 3, 'Sit Ups', 45, 0),
('2016-04-15 10:04:00', 3, 'V Ups', 1, 0),
('2016-04-15 10:04:10', 3, 'V Ups', 45, 0),
('2016-04-15 10:05:00', 3, 'Decline Weight Plate Sit Ups', 9, 25),
('2016-04-15 10:05:10', 3, 'Decline Weight Plate Sit Ups', 5, 45),
('2016-04-15 10:06:00', 3, 'Decline Medicine Ball Sit Ups', 10, 12),
('2016-04-15 10:06:10', 3, 'Decline Medicine Ball Sit Ups', 10, 15),
('2016-04-15 10:06:20', 3, 'Decline Medicine Ball Sit Ups', 5, 18),
('2016-04-15 10:07:00', 3, 'Decline Oblique Medicine Ball', 10, 12),
('2016-04-15 10:07:10', 3, 'Decline Oblique Medicine Ball', 10, 15),
('2016-04-15 10:07:20', 3, 'Decline Oblique Medicine Ball', 10, 12),
('2016-04-15 10:08:00', 3, 'Oblique Crunch', 10, 0),
('2016-04-15 10:08:10', 3, 'Oblique Crunch', 10, 10),
('2016-04-15 10:08:20', 3, 'Oblique Crunch', 10, 25),
('2016-04-15 10:09:00', 3, 'Hanging Leg Raise', 10, 0),
('2016-04-15 10:09:10', 3, 'Hanging Leg Raise', 10, 0),
('2016-04-15 10:09:20', 3, 'Hanging Leg Raise', 9, 0),
('2016-04-15 10:10:00', 99, 'Plank', 1, 0),
('2016-04-20 10:00:00', 0, 'Water Rower', 500, 0),
('2016-04-20 10:01:00', 1, 'Lateral Pulldown', 10, 110),
('2016-04-20 10:01:10', 1, 'Lateral Pulldown', 8, 120),
('2016-04-20 10:01:20', 1, 'Lateral Pulldown', 5, 130),
('2016-04-20 10:02:00', 1, 'Low Row', 10, 90),
('2016-04-20 10:02:10', 1, 'Low Row', 6, 100),
('2016-04-20 10:02:20', 1, 'Low Row', 7, 110),
('2016-04-20 10:03:00', 1, 'Dumbbell Curl', 10, 25),
('2016-04-20 10:03:10', 1, 'Dumbbell Curl', 8, 30),
('2016-04-20 10:03:20', 1, 'Dumbbell Curl', 5, 30),
('2016-04-20 10:04:00', 1, 'Hammer Curl', 8, 25),
('2016-04-20 10:04:10', 1, 'Hammer Curl', 8, 25),
('2016-04-20 10:04:20', 1, 'Hammer Curl', 5, 30),
('2016-04-20 10:05:00', 1, 'Alternate Hammer Curl', 10, 15),
('2016-04-20 10:05:10', 1, 'Alternate Hammer Curl', 7, 25),
('2016-04-20 10:05:20', 1, 'Alternate Hammer Curl', 10, 20),
('2016-04-20 10:06:00', 1, 'One Arm Dumbbell Row', 10, 40),
('2016-04-20 10:06:10', 1, 'One Arm Dumbbell Row', 10, 45),
('2016-04-20 10:07:00', 1, 'Pushdown (Cable w/ Bar For Bac', 10, 40),
('2016-04-20 10:07:10', 1, 'Pushdown (Cable w/ Bar For Bac', 5, 50),
('2016-04-20 10:07:20', 1, 'Pushdown (Cable w/ Bar For Bac', 6, 40),
('2016-04-20 10:08:00', 1, 'Back Extension', 10, 130),
('2016-04-20 10:08:10', 1, 'Back Extension', 10, 150),
('2016-04-20 10:08:20', 1, 'Back Extension', 10, 170),
('2016-04-20 10:09:00', 1, 'Preacher Curl', 7, 25),
('2016-04-20 10:09:10', 1, 'Preacher Curl', 10, 15),
('2016-04-20 10:09:20', 1, 'Preacher Curl', 7, 15),
('2016-04-20 10:10:00', 99, 'Wide Grip Pull Ups', 3, 0),
('2016-04-20 10:10:10', 99, 'Hammer Pull Ups', 5, 0),
('2016-04-20 10:10:20', 99, 'Chin Ups', 2, 0),
('2016-04-20 10:10:30', 99, 'Push Ups', 10, 0),
('2016-04-20 10:10:40', 99, 'Push Ups', 6, 25);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) COLLATE BINARY DEFAULT NULL,
  `passHash` varchar(255) COLLATE BINARY DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

INSERT INTO 'user' ('username', 'passHash') VALUES
 ('antdy11', '$2a$10$JjvYJJNzMDBQQjPxjrTZLejFx5y6PqjrF4YlvsGc8uGEuc72JcWoG');

--
-- Indexes for table `exerciseList`
--
ALTER TABLE `exerciseList`
  ADD PRIMARY KEY (`rotationNum`,`orderNum`,`exerciseName`);

--
-- Indexes for table `rotationList`
--
ALTER TABLE `rotationList`
  ADD PRIMARY KEY (`rotationNum`);

--
-- Indexes for table `workoutLog`
--
ALTER TABLE `workoutLog`
  ADD PRIMARY KEY (`date`), ADD KEY `rotationNum` (`rotationNum`), ADD KEY `exerciseName` (`exerciseName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
