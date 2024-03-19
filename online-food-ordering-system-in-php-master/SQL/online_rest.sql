-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2022 at 02:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'sushumna', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', 'QWERTY', '2018-04-09 07:36:18'),
(2, 'sush', '71b3b26aaa319e0cdf6fdb8429c112b0', 'def@gmail.com', '123MNW', '2018-04-13 18:12:30'),
(3, 'havish', '81dc9bdb52d04dc20036dbd8313ed055', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:32'),
(6, 'joshita', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2022-11-30 00:50:42'),
(8, 'sush', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2022-11-30 00:49:13'),
(60, 'arshia', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(70, 'sush', '71b3b26aaa319e0cdf6fdb8429c112b0', 'def@gmail.com', '123MNW', '2018-04-13 18:12:30'),
(80, 'havish', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:32'),
(600, 'saksham', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', 'QWERTY', '2018-04-09 07:36:18'),
(690, 'saksham', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', 'QWERTY', '2018-04-09 07:36:18'),
(700, 'sush', '71b3b26aaa319e0cdf6fdb8429c112b0', 'def@gmail.com', '123MNW', '2018-04-13 18:12:30'),
(800, 'havish', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:32'),
(6900, 'sush', '71b3b26aaa319e0cdf6fdb8429c112b0', 'def@gmail.com', '123MNW', '2018-04-13 18:12:30'),
(69000, 'havish', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J'),
(10, 'QX5ZMN'),
(20, 'QFE6ZM'),
(30, 'QMZR92'),
(40, 'QPGIOV'),
(50, 'QSTE52'),
(60, 'QMTZ2J'),
(70, '123MNW'),
(80, 'QWERTY'),
(90, '123MNW'),
(100, 'QX5ZMN');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 63, 'Aloo tikki Burger', 'Desi style Burger', '55.77', '5ad7582e2ec9c.jpg'),
(12, 63, 'Spicy panner Burger', 'Desi style Burger', '22.12', '5ad7590d9702b.jpg'),
(13, 63, 'Mushrom Burger', 'Desi style Burger', '12.35', '5ad7582e2ec9c.jpg'),
(14, 63, 'Plain Burger', 'Desi style Burger', '34.99', '5ad7590d9702b.jpg'),
(15, 63, 'Double Decker Burger', 'Desi style Burger ', '11.99', '5ad7582e2ec9c.jpg'),

(16, 54, 'Seekh Kabab', 'Anything is good if its made at the great kabab factory', '12.35', '5ad7597aa0479.jpg'),
(17, 54, 'Chicken Tikka Masala', 'Anything is good if its made at the great kabab factory', '34.99', '5ad7597aa0479.jpg'),
(18, 54, 'Harbar kabaab', 'Anything is good if its made at the great kabab factory', '11.99', '5ad7597aa0479.jpg'),
(19, 54, 'Tandoori Salad', 'Anything is good if its made at the great kabab factory', '55.77', '5ad7597aa0479.jpg'),
(20, 54, 'Burrak Kabab', 'Anything is good if its made at the great kabab factory', '34.99', '5ad7597aa0479.jpg'),

(21, 50, 'Crab cakes', 'Best quality food', '18', '5ad759e1546fc.jpg'),
(22, 50, 'Shrimp cocktial suprme', 'Best quality food', '18', '5ad759e1546fc.jpg'),
(23, 50, 'Seafood tower', 'Best quality food', '99', '5ad759e1546fc.jpg'),
(24, 50, 'Caesar salad', 'Best quality food', '10', '5ad759e1546fc.jpg'),
(25, 50, 'Burrata Mozzarella', 'Best quality food', '12', '5ad759e1546fc.jpg'),

(26, 51, 'Ham', 'House for all to eat', '70', '5ad75a1869e93.jpg'),
(27, 51, 'Fresh Asparagus and Egg', 'House for all to eat', '75', '5ad75a1869e93.jpg'),
(28, 51, 'Tunafish', 'House for all to eat', '70', '5ad75a1869e93.jpg'),
(29, 51, 'Bacon and tomato ', 'House for all to eat', '80', '5ad75a1869e93.jpg'),
(30, 51, 'Apple pie', 'House for all to eat', '25', '5ad75a1869e93.jpg'),


(31, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),
(32, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),
(33, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),
(34, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),
(35, 52, 'Houlihans Mini Cheeseburger', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),

(36, 53, 'Tuna salad', 'great taste great whatever', '6.59', '5ad79fcf59e66.jpg'),
(37, 53, 'Meatball & chesse', 'great taste great whatever', '7.99', '5ad79fcf59e66.jpg'),
(38, 53, 'Chef salad', 'great taste great whatever', '7.99', '5ad79fcf59e66.jpg'),
(39, 53, 'French Fries', 'great taste great whatever', '3.29', '5ad79fcf59e66.jpg'),
(40, 53, 'Chicken Burger', 'great taste great whatever', '4.99', '5ad79fcf59e66.jpg'),


(41, 55, 'Veg Biryani', 'Indian hut to bring the delicious indian food', '22.55', '5ad75a5dbb329.jpg'),
(42, 55, 'Chicken Dum Biryani', 'Indian hut to bring the delicious indian food', '27.55', '5ad75a5dbb329.jpg'),
(43, 55, 'Mixed Biryani', 'Indian hut to bring the delicious indian food', '30.55', '5ad75a5dbb329.jpg'),
(44, 55, 'Mushroom 65', 'Indian hut to bring the delicious indian food', '27.55', '5ad75a5dbb329.jpg'),
(45, 55, 'Gobi fry', 'Indian hut to bring the delicious indian food', '30.55', '5ad75a5dbb329.jpg'),

(46, 56, 'Chicken Kabab', 'Indian recipies to bring the delicious indian food', '25', '5ad75a5dbb329.jpg'),
(47, 56, 'Chicken curry with Butter Naan', 'Indian recipies to bring the delicious indian food', '16.55', '5ad75a5dbb329.jpg'),
(48, 56, 'chicken biryani', 'Indian recipies to bring the delicious indian food', '33.35', '5ad75a5dbb329.jpg'),
(49, 56, 'Chicken fry', 'Indian recipies to bring the delicious indian food', '18', '5ad75a5dbb329.jpg'),
(50, 56, 'Chicken lolipop', 'Indian recipies to bring the delicious indian food', '17.55', '5ad75a5dbb329.jpg'),
(51, 56, 'chicken drumsticks', 'Indian recipies to bring the delicious indian food', '22.34', '5ad75a5dbb329.jpg'),


(52, 57, 'Veg Biryani', 'Indian Bistro to bring the delicious indian food', '21.55', '5ad75a5dbb329.jpg'),
(53, 57, 'Chicken Biryani', 'Indian Bistro to bring the delicious indian food', '26.55', '5ad75a5dbb329.jpg'),
(54, 57, 'Veg pulav', 'Indian Bistro to bring the delicious indian food', '27.55', '5ad75a5dbb329.jpg'),
(55, 57, 'Palak Panner', 'Indian Bistro to bring the delicious indian food', '26.55', '5ad75a5dbb329.jpg'),
(56, 57, 'Lassi', 'Indian Bistro to bring the delicious indian food', '27.55', '5ad75a5dbb329.jpg'),

(57, 58, 'Chicken Shawarma', 'naf naf aribian style with indian spices', '20.00', '5ad75a5dbb329.jpg'),
(58, 58, 'falafil', 'naf naf aribian style with indian spices', '12.80', '5ad75a5dbb329.jpg'),
(59, 58, 'baklava', 'naf naf aribian style with indian spices', '14.55', '5ad75a5dbb329.jpg'),
(60, 58, 'Beef Shawarma', 'naf naf aribian style with indian spices', '12.80', '5ad75a5dbb329.jpg'),
(61, 58, 'Chicken Schnitzel', 'naf naf aribian style with indian spices', '14.55', '5ad75a5dbb329.jpg'),

(62, 59, 'Vegetable Biryani', 'Fine Indian Cuisine', '10', '5ad75a5dbb329.jpg'),
(63, 59, 'Chicken Makhani', 'Fine Indian Cuisine', '12.99', '5ad75a5dbb329.jpg'),
(64, 59, 'Vegetarian Thail', 'Fine Indian Cuisine', '15.99', '5ad75a5dbb329.jpg'),
(65, 59, 'Non Vegetarian Thail', 'Fine Indian Cuisine', '16.99', '5ad75a5dbb329.jpg'),
(66, 59, 'Ras Malai', 'Fine Indian Cuisine', '3.99', '5ad75a5dbb329.jpg'),

(67, 60, 'Chicken Malai Kebab', 'Authentic Indian Restaurant', '13.99', '5ad75a5dbb329.jpg'),
(68, 60, 'Kadai panner', 'Authentic Indian Restaurant', '10.99', '5ad75a5dbb329.jpg'),
(69, 60, 'Veg Manchurian', 'Authentic Indian Restaurant', '12.90', '5ad75a5dbb329.jpg'),
(70, 60, 'Butter chicken', 'Authentic Indian Restaurant', '12.99', '5ad75a5dbb329.jpg'),
(71, 60, 'Tandoori chicken', 'Authentic Indian Restaurant', '13.89', '5ad75a5dbb329.jpg'),


(72, 61, 'Fish Biryani', 'Experience the taste of Hyderabad', '14.99', '5ad75a5dbb329.jpg'),
(73, 61, 'Shrimp Fry Biryani', 'Experience the taste of Hyderabad', '15.99', '5ad75a5dbb329.jpg'),
(74, 61, 'Kheema Biryani', 'Experience the taste of Hyderabad', '14.99', '5ad75a5dbb329.jpg'),
(75, 61, 'Badam shake', 'Experience the taste of Hyderabad', '2.99', '5ad75a5dbb329.jpg'),
(76, 61, 'Double Ka Meetha', 'Experience the taste of Hyderabad', '4.99', '5ad75a5dbb329.jpg'),

(77, 62, 'Fish Biryani', 'Largest variety of Dum Biryanis', '13.99', '5ad75a5dbb329.jpg'),
(78, 62, 'Paneer 65 Biryani', 'Largest variety of Dum Biryanis', '12.99', '5ad75a5dbb329.jpg'),
(79, 62, 'Lamb Biryani', 'Largest variety of Dum Biryanis', '14.99', '5ad75a5dbb329.jpg'),
(80, 62, 'Goat Biryani', 'Largest variety of Dum Biryanis', '13.99', '5ad75a5dbb329.jpg'),
(81, 62, 'Egg Biryani', 'Largest variety of Dum Biryanis', '10.99', '5ad75a5dbb329.jpg');



-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(50, 8, 'Delhi palace restaurants','delhipalacerestaurants@gmail.com', '1346434567', 'delhipalacerestaurants.com', '11am', '12pm', 'mon-fri', '901 Indiana Ave, Indianpolis,IN,46202', '5ad756f1429e3.jpg', '2018-04-18 14:52:17'),
(51, 5, 'India sizzling','indiasizzling@gmail.com', '1453545784', 'indiasizzling.com', '7am', '7pm', 'mon-sat', '4150 Lafayette Rd, indianpolis,IN,46254', '5ad79e7d01c5a.jpg', '2022-04-18 19:37:33'),
(52, 6, 'Hyderabad House','hyderabadHouse@gmail.com', '8748245484', 'hyderabadHouse.com', '10am', '6pm', 'mon-sat','8840 N Michigan Rd #105,Indianpolis,', '5ad79e7d01c5a.jpg', '2021-04-18 23:37:33'),
(53, 9, 'Briyani House', 'briyanihouse@gmail.com', '1767334557', 'briyanihouse.com', '10am', '6pm', 'mon-fri', '4857 W 38th St, Indianapolis, IN 46254', '5ad756f1429e3.jpg', '2022-04-18 18:32:17'),
(54, 5, 'Hari Burger', 'HariBurger@gmail.com', ' 090412 64676', 'HariBurger.com', '7am', '4pm', 'mon-tue', '139N perri road Plainfield, IN 46168', '5ad74ce37c383.jpg', '2018-04-18 13:49:23'),
(55, 5, 'The Great Kabab Factory', 'kwbab@gmail.com', '011 2677 9070', 'kwbab.com', '6am', '5pm', 'mon-fri', '213 indiana Ave indianapolis IN 46202', '5ad74de005016.jpg', '2018-04-18 13:53:36'),
(56, 6, 'Aarkay Vaishno Dhaba', 'Vaishno@gmail.com', '090410 35147', 'Vaishno.com', '6am', '6pm', 'mon-sat', '5487 W 25 St, Indianapolis, IN 46254', '5ad74e5310ae4.jpg', '2018-04-18 13:55:31'),
(57, 7, 'Martini', 'martin@gmail.com', '3454345654', 'martin.com', '8am', '4pm', 'mon-thu', '121 Indiana Ave, Indianpolis,IN,46202', '5ad74ebf1d103.jpg', '2018-04-18 13:57:19'),
(58, 8, 'hudson', 'hud@gmail.com', '2345434567', 'hudson.com', '6am', '7pm', 'mon-fri', '164N perri road Plainfield, IN 46168', '5ad756f1429e3.jpg', '2018-04-18 14:32:17'),
(59, 9, 'kriyana store', 'kari@gmail.com', '4512545784', 'kari.com', '7am', '7pm', 'mon-sat', '423 indiana Ave indianapolis IN 46202', '5ad79e7d01c5a.jpg', '2018-04-18 19:37:33'),
(60, 10, 'Indian Hut', 'indianhut@gmail.com', '9878545784', 'biryanihutindy.com', '10am', '6pm', 'mon-sat', '3730 lafayette rd g, IN 42654', '5ad79e7d01c5a.jpg', '2022-04-18 23:37:33'),
(61, 10, 'Chapati', 'Chapati.com', '7867534567', 'chapati.com', '10am', '6pm', 'mon-fri', '4930 lafayette rd g, IN 42654', '5ad756f1429e3.jpg', '2022-03-18 18:32:17'),
(62, 10, 'India Bistro', 'indiabistro.com', '7658434567', 'indiabistro.com', '10am', '7pm', 'mon-fri', '130N perri road Plainfield, IN 46168', '5ad756f1429e3.jpg', '2022-05-18 18:32:17'),
(63, 10, 'naf naf grill', 'nafnafgrill.com', '2345439876', 'nafnaggrill.com', '6am', '8pm', 'mon-fri', '921 indiana Ave indianapolis IN 46202', '5ad756f1429e3.jpg', '2022-06-18 18:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'grill', '2018-04-14 18:45:28'),
(6, 'pizza', '2018-04-14 18:44:56'),
(7, 'pasta', '2018-04-14 18:45:13'),
(8, 'thaifood', '2018-04-14 18:32:56'),
(9, 'fish', '2018-04-14 18:44:33'),
(10, 'indian', '2022-04-14 22:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'sushumna', 'sushumna', 'chiluveru', 'chiluverusushumna03@gmail.com', '7894563214', '71b3b26aaa319e0cdf6fdb8429c112b0', 'htfhgfhj', 1, '2022-11-29 23:55:02'),
(34, 'sush', 'jbhjhv', 'nbmb', 'bhj@gmail.com', '1234567890', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'dvxddx', 1, '2022-12-01 20:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'jklmno', 5, '17.99', 'closed', '2018-04-18 19:51:50'),
(38, 31, 'Red Robins Chick on a Stick', 2, '34.99', NULL, '2018-04-18 19:52:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69001;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
