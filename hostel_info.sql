-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2019 at 05:04 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
CREATE TABLE IF NOT EXISTS `building` (
  `b_no` char(5) NOT NULL,
  `c_name` char(50) NOT NULL,
  `no_of_ppl` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`b_no`, `c_name`, `no_of_ppl`) VALUES
('A', 'Engineering', 20),
('B', 'Bachelor of Management Studies', 20),
('C', 'Hotel Management', 20);

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

DROP TABLE IF EXISTS `room_info`;
CREATE TABLE IF NOT EXISTS `room_info` (
  `r_no` int(10) NOT NULL,
  `s_id` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`r_no`, `s_id`) VALUES
(101, 2018001),
(101, 2018002),
(101, 2018003),
(102, 2018004),
(102, 2018005),
(102, 2018006),
(103, 2018007),
(103, 2018008),
(103, 2018009),
(103, 2018010),
(201, 2017185),
(103, 2018011),
(104, 2018012),
(104, 2018015),
(105, 2017152),
(105, 2017014),
(105, 2018013),
(106, 2018016),
(106, 2018017),
(106, 2018018),
(201, 20174987),
(201, 2018007),
(202, 2016115),
(202, 2017009),
(202, 20180200),
(203, 2017014),
(203, 2016187),
(203, 2018110),
(204, 2018117),
(204, 2018101),
(301, 2018115),
(301, 2017101),
(301, 2018005),
(302, 2018101),
(302, 2019101),
(302, 2019104),
(303, 2019111),
(303, 2017113);

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

DROP TABLE IF EXISTS `stud_info`;
CREATE TABLE IF NOT EXISTS `stud_info` (
  `s_id` int(7) NOT NULL,
  `name` char(50) NOT NULL,
  `contact` bigint(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` char(20) NOT NULL,
  `b_no` varchar(10) NOT NULL,
  `r_no` int(10) NOT NULL,
  `date_of_join` date NOT NULL,
  `fees_status` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`s_id`, `name`, `contact`, `email`, `city`, `b_no`, `r_no`, `date_of_join`, `fees_status`) VALUES
(2018008, 'sanika', 789456123, 'sanika@gmail.com', 'chennai', 'A', 103, '2018-12-11', 'paid'),
(2018001, 'Shreya', 987654321, 'shreya@gmail.com', 'pune', 'A', 101, '2018-09-05', 'paid'),
(2018007, 'Samara', 832145697, 'samara@gmail.com', 'jaipur', 'A', 103, '2018-12-03', 'paid'),
(2018002, 'priya', 912345678, 'priya@gmail.com', 'ahmedabad', 'A', 101, '2018-10-08', 'paid'),
(2018003, 'Srushti', 921345678, 'srushti@gmail.com', 'pune', 'A', 101, '2018-09-10', 'paid'),
(2018011, 'Janvi', 963258741, 'janvi@gmail.com', 'jaipur', 'A', 103, '2018-11-12', 'paid'),
(2018004, 'Amanda', 897456123, ' amanda@gmail.com', 'jaipur', 'A', 102, '2018-11-20', 'paid'),
(2018005, 'Aditi', 875496321, 'aditi@gmail.com', 'pune', 'A', 102, '2018-09-11', 'paid'),
(2018006, 'Jeneat', 859746321, 'jeneat@gmail.com', 'kolkota', 'A', 102, '2018-11-14', 'paid'),
(2018009, 'ankita', 748596123, 'ankita@gmail', 'kolkota', 'A', 103, '2018-12-19', 'paid'),
(2018010, 'Shambhavi', 852369741, 'shambhavi@gmail.com', 'ahmedabad', 'A', 103, '2018-12-19', 'paid'),
(2018115, 'Dionne', 123486799, 'dja@gmail.com', 'Margao', 'C', 301, '2018-07-27', 'paid'),
(2017101, 'Myron Almeida', 826801980, 'mjt@yMail.com', 'Margao', 'C', 301, '2017-07-04', 'not paid'),
(2017185, 'Jayden Colaco', 99584892, 'jja@outlook.com', 'Delhi', 'B', 201, '2017-05-11', 'paid'),
(20174987, 'Vishal Achari', 905586972, 'achariexpo@outlook.com', 'Bhopal', 'B', 201, '2017-06-08', 'paid'),
(2018007, 'Rajendra Bhatt', 9087548339, 'rajbhatt@ymail.com', 'Jamshedpur', 'B', 201, '2018-08-01', 'not paid'),
(2016115, 'Kalindi Nagpal', 26681415, 'kn@gmail.com', 'Bangalore', 'B', 202, '2018-08-01', 'not paid'),
(2017009, 'Priyanka Singh', 56684975, 'priyanka@outlook.com', 'Allahabad', 'B', 202, '2018-08-01', 'paid'),
(20180200, 'Sharvil Dongre', 8875965233, 'sharvil@gmail.com', 'Cochin', 'B', 202, '2018-08-02', 'paid'),
(2017014, 'Aman Choubey', 8665975821, 'amanc@ymail.com', 'Surat', 'B', 203, '2017-07-07', 'not paid'),
(2016187, 'Neha Amin', 902544667, 'samara@gmail.com', 'Mangalore', 'B', 203, '2016-11-10', 'not paid'),
(2018110, 'Althea Andrade', 22668585, 'altheaandrade@outlook.com', 'Chandigarh', 'B', 203, '2018-07-07', 'paid'),
(2018117, 'Bhagyesh Anvekar', 9967486699, 'bagan@gmail.com', 'pune', 'B', 204, '2018-08-01', 'paid'),
(2016101, 'Kashyap Pawar', 76659985, 'KP@ymail.com', 'Jamshedpur', 'B', 204, '2016-06-11', 'not paid'),
(2017152, 'Ayushi', 7895469321, 'ayushi@gmail.com', 'kolkota', 'A', 104, '2017-05-19', 'paid'),
(2017014, 'Shruti', 8965744566, 'shruti@gmail.com', 'kolkata', 'A', 105, '2017-02-06', 'paid'),
(2018012, 'Shriya', 785496321, 'shriya@gmail.com', 'pune', 'A', 104, '2018-02-02', 'paid'),
(2018013, 'priyank', 745896321, 'priyank@gmail.com', 'ahmedabad', 'A', 105, '2018-05-16', 'not paid'),
(2018015, 'Apurva', 784512963, 'apurva@gmail.com', 'Surat', 'A', 104, '2018-01-02', 'paid'),
(2017016, 'Dishant', 852147963, 'dishant@gmail.com', 'surat', 'A', 105, '2017-02-06', 'paid'),
(2018016, 'Kajal', 986532741, 'kajol@gmail.com', 'surat', 'A', 106, '2018-08-01', 'paid'),
(2017017, 'Deepika', 589632147, 'deepika@gail.com', 'pune', 'A', 106, '2017-05-19', 'not paid'),
(2017018, 'Shweta', 912365478, 'shweta@gmail.com', 'kolkata', 'A', 106, '2017-07-15', 'paid'),
(2018005, 'Sonia Rodrigues', 3515464125, 'sonia@gmail.com', 'Delhi', 'C', 301, '2018-04-04', 'paid'),
(2018101, 'Tina Sayapogu', 6459465654, 'tina@gmail.com', 'Gudgaon', 'C', 302, '2018-03-21', 'paid'),
(2019101, 'Rebbeca Rodrigues', 954963261, 'reb122gmail.com', 'Banglore', 'C', 302, '2019-01-09', 'not paid'),
(2019104, 'Rutuja', 9658427552, 'rutu@gmail.com', 'Kerela', 'C', 302, '2019-01-11', 'paid'),
(2018111, 'Netra', 68845322, 'net12@gmail.com', 'Kerela', 'C', 301, '2018-05-01', 'not paid'),
(2017113, 'Aditya', 9587645265, 'adiiii@gmail.com', 'Pune', 'C', 301, '2017-02-19', 'paid'),
(2018121, 'Neelima', 987456322, 'neelu@gmail.com', 'Delhi', 'C', 303, '2018-06-07', 'paid'),
(2019122, 'Shraddha', 9898458656, 'sru@gmail.com', 'Lucknow', 'C', 303, '2019-02-09', 'paid'),
(2018110, 'Alia Bhatt', 987458321, 'aluu@gmail.com', 'Jhalandhar', 'C', 304, '2018-07-08', 'not paid'),
(2017119, 'Deepika Padukone', 988456565, 'deep@gmail.com', 'Nagpur', 'C', 304, '2017-09-14', 'not paid'),
(2018129, 'Kareena Kapoor', 58945846, 'kapoors@gmail.com', 'Surat', 'C', 305, '2018-03-09', 'paid'),
(2018221, 'Shahrukh', 9854765156, 'srk@gmail.com', 'Kolkata', 'C', 305, '2018-02-03', 'paid'),
(2019114, 'Salman Khan', 999875545, 'bhai@gmail.com', 'Jabalpur', 'C', 305, '2019-02-11', 'paid'),
(2018222, 'Akira Kamiya', 987554654, 'akkuu@gmail.com', 'Jamshedpur', 'C', 305, '2018-05-07', 'paid'),
(2019166, 'Varun Dhawan', 6978555656, 'vrud@gmail.com', 'Kanpur', 'C', 306, '2019-01-11', 'paid'),
(2018123, 'Akshay Kumar', 987541566, 'khiladi@gmail.com', 'Kanpur', 'C', 306, '2018-09-02', 'paid'),
(2017104, 'Emraan Hashmi', 9875455654, 'emraan@gmail.com', 'Kanpur', 'C', 306, '2017-09-19', 'paid'),
(2017199, 'Vicky Kaushal', 94652146463, 'howsthejosh@gmail.com', 'Delhi', 'C', 306, '2017-07-28', 'paid'),
(2018221, 'Anil Kapoor', 984654464, '12ka4@gmail.com', 'Badlapur', 'C', 307, '2018-01-02', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `visiter_info`
--

DROP TABLE IF EXISTS `visiter_info`;
CREATE TABLE IF NOT EXISTS `visiter_info` (
  `v_name` varchar(40) NOT NULL,
  `s_id` int(10) NOT NULL,
  `contact` int(15) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `entry_time` timestamp NOT NULL,
  `exit_time` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
