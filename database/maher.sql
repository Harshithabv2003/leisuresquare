-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', '', 0, '', ''),
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(5, 1, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(6, 8, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(7, 1, 'abcd', '', 0, '', ''),
(8, 8, 'abcd', '', 0, '', ''),
(9, 1, 'abcd', '', 0, '', ''),
(10, 8, 'abcd', '', 0, '', ''),
(11, 1, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(12, 8, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(13, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(14, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(15, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(16, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(17, 1, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(18, 8, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(19, 1, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(20, 8, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(21, 1, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(22, 8, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'INDIAN', 'Ghee Rice'),
(2, 'SIZZLERS', 'Fish'),
(3, 'SIZZLERS', 'Paneer masala'),
(4, 'SHAKES', 'choclate shake'),
(5, 'INDIAN', 'masala mag nu shak'),
(6, 'INDIAN', 'Chole Chana Masala'),
(7, 'INDIAN', 'Dal'),
(8, 'CHINESE', 'Salad'),
(9, 'INDIAN', 'butter milk'),
(10, 'INDIAN', 'Rotli'),
(11, 'CHINESE', 'gobi'),
(12, 'SIZZLERS', 'chicken'),
(13, 'SHAKES', 'Shakes'),
(14, 'SHAKES', 'shakes'),
(15, 'SHAKES', 'shakes'),
(16, 'SHAKES', 'shakes'),
(17, 'SHAKES', 'shakes'),
(18, 'CHINESE', 'noodles'),
(19, 'CHINESE', 'noodles'),
(20, 'INDIAN', 'Dal Rice'),
(21, 'CHINESE', 'noodles'),
(22, 'INDIAN', 'DAL RICE'),
(23, 'INDIAN', 'Kadhi-Khichadi'),
(24, 'INDIAN', 'Rajwadi Khichadi'),
(25, 'INDIAN', 'Dal');


-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/img7.jpg'),
(4, 'img/img11.jpg'),
(5, 'img/img23.jpg'),
(6, 'img/img26.jpg'),
(7, 'img/img30.jpg'),
(8, 'img/img31.jpg'),
(9, 'img/img33.jpg'),
(10, 'img/Masala-Chaas-Recipe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'INDIAN', 'Ghee Rice', 'rice ', 'A special south dish', 240, 'mimg/ing22.jpg'),
(2, 'SIZZLERS', 'Fish', 'non veg', 'masala deep fry', 150, 'mimg/img12.jpg'),
(3, 'SIZZLERS', 'Paneer masala', 'paneer', 'panner with masala curma', 100, 'mimg/img13.jpg'),
(4, 'SHAKES', 'choclate shake', 'shakes', 'choclate with ice', 140, 'mimg/img18.jpg'),
(5, 'INDIAN', 'masala mag nu shak', 'shak', 'masala added in mag shak', 200, 'mimg/mag masala.jpg'),
(6, 'INDIAN', 'Chole Chana Masala', 'chole chana masala nu shak', 'chana fry in shak with masala ', 150, 'mimg/chana-masala-recipe.jpg'),
(7, 'INDIAN', 'Dal', 'dal', 'dal make by tuver and alad', 50, 'mimg/dal-fry-recipe-1.jpg'),
(8, 'CHINESE', 'Salad', 'salad', 'salad make by onion tomato beet racket', 130, 'mimg/best-salad-7.jpg'),
(9, 'INDIAN', 'butter milk', 'milk', 'butter milk make by dhorvu ', 30, 'mimg/Masala-Chaas-Recipe.jpg'),
(10, 'INDIAN', 'Rotli', 'rotli', 'rotli make by wheet lot', 130, '	mimg/rotli-2-960x1358.jpg'),
(11, 'CHINESE', 'gobi', 'junck food', 'capcicum and aloo gobi', 75, 'mimg/img19.jpg'),
(12, 'SIZZLERS', 'chicken', 'chicken fry', 'deep fry', 15, 'mimg/img11.jpg'),
(13, 'SHAKES', 'Shakes', 'mango slush', 'fresh mango', 150, 'mimg/img26.jpg'),
(14, 'SHAKES', 'shakes', 'blueberry shake', 'blue berry with brown sugar', 150, 'mimg/img100.jpg'),
(15, 'SHAKES', 'shakes', 'orange slush', 'orange and ice', 120, 'mimg/img103.jpg'),
(16, 'SHAKES', 'shakes', 'orange punch ', 'orange with punch', 120, 'mimg/img103.jpg'),
(17, 'SHAKES', 'shakes', 'green tea shake', 'fresh green leaves', 150, 'mimg/img101.jpg'),
(18, 'CHINESE', 'noodles', 'veg noodles', 'all healthy vegetables', 120, 'mimg/img106.jpg'),
(19, 'CHINESE', 'noodles', 'chicken noodles', 'fresh chicken with noodles', 220, 'mimg/img107.jpg'),
(20, 'INDIAN', 'Geera rice', 'rice', 'geera', 120, 'mimg/img14.jpg'),
(21, 'CHINESE', 'noodles', 'egg noodles', 'boiled egg', 210, '	mimg/img108.jpg'),
(22, 'INDIAN', 'DAL RICE', 'dal rice', 'rice add in dal', 80, 'mimg/DSC_0870.jpg'),
(23, 'INDIAN', 'Kadhi-Khichadi', 'kichidi', 'khichadi add in kadhi', 90, '	mimg/kadhi khichadi.jpg'),
(24, 'INDIAN', 'Rajwadi Khichadi', 'rajwadi khichadi', 'masala add in khichadi', 95, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(25, 'INDIAN', 'Dal', 'jaydip', 'nathi', 20, 'mimg/chole bhature.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'nisarga', 'Exellent', 'best hotel oh Bengaluru'),
(6, 'harshitha', 'Exellent', 'delicious');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
