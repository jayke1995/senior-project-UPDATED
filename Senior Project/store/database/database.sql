-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2017 at 03:48 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khanstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Fila'),
(4, 'New Balance'),
(5, 'Jordan'),
(6, 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Basketball'),
(2, 'Womens'),
(3, 'Mens'),
(4, 'Kids'),
(5, 'Running'),
(6, 'Casual'),
(7, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 3, 2, 'Adidas NDM R2', 190, 'Adidas NMD R2 ', 'adidasNMDr2.jpg', 'Adidas mens running'),
(2, 5, 1, 'Nike Presto', 180, 'Nike Presto FLyknit', 'nikeprestofly.jpg', 'nike mens running'),
(3, 6, 1, 'Levis X Nike Air Jordan IV', 280, 'Levis + Nike Air Jordan IV ', 'levisjordans.jpg', 'nike jordan levis'),
(4, 3, 1, 'Nike PG 2', 165, 'Nike PG 2 ', 'nikepg2.jpg', 'nike pg2 mens basketball'),
(5, 3, 1, 'Nike Lebron 15', 180, 'Nike Lebron 15', 'nikelebron.jpg', 'nike lebron basketball'),
(6, 3, 2, 'Adidas Ultra Boost Clima', 200, 'Adidas Ultra Boost Clima', 'ultraboostclima.png', 'adidas mens ultra boost '),
(7, 1, 1, 'Jordan Why Not', 125, 'Jordan Why Not Zero.1', 'jordanwhynot.jpg', 'jordan why not basketball'),
(8, 6, 6, 'Vans Old Skool', 80, 'Vans Old Skool Aged Leather', 'vansoldskool.jpg', 'vans mens casual'),
(9, 1, 1, 'Nike Kyrie 4', 120, 'Nike Kyrie 4', 'nikekyrie4.jpg', 'nike kyrie 4 basketball '),
(10, 1, 1, 'Nike Kobe A.D.', 150, 'Nike Kobe A.D.', 'nikekobead.jpg', 'nike kobe basketball '),
(11, 3, 1, 'Nike Air Max Plus', 150, 'Nike Air Max Plus', 'nikeairmaxplus.jpg', 'nike air max'),
(12, 1, 2, 'Adidas Harden Vol. 2', 140, 'Adidas Harden Vol. 2', 'adidashardenvol2.jpg', 'adidas harden basketball'),
(13, 2, 1, 'Nike Air Max 270', 150, 'Nike Air Max 270', 'nikeairmax270.jpg', 'nike air max womens'),
(14, 3, 1, 'Nike Air Max 90', 110, 'Nike Air Max 90', 'nikeairmax90.jpg', 'nike air max 90 mens'),
(15, 2, 1, 'Nike Free RN Flyknit', 120, 'Nike Free RN Flyknit 2018', 'nikefreern.jpg', 'Nike Free Run Flyknit'),
(16, 2, 4, 'New Balance 574 Classic', 80, 'New Balance 574 Classic - Womens', 'newbalance.jpg', 'new balance womens classic'),
(17, 1, 5, 'Jordan Retro 13', 160, 'Jordan Retro 13 Mens', 'jordan13.jpg', 'jordan retro 13 mens'),
(19, 5, 4, 'New Balance 990v4', 165, 'New Balance 990v4 Running', 'newbalance990v4.jpg', 'new balance 990v4 running'),
(20, 2, 2, 'Adidas NEO Lite', 45, 'Adidas NEO Lite Racer', 'adidasneolite.jpg', 'adidas new lite racer sneaker womens'),
(21, 4, 4, 'New Balance 455 Classic', 45, 'New Balance 455 Classic Running Shoe Kids', 'newbalance455.jpg', 'new balance 455 kids running'),
(22, 4, 6, 'Vans Classic Slip On', 35, 'Vans Classic Slip On KIDS', 'vansclassicslipon.jpg', 'kids vans classic slip on'),
(23, 4, 4, 'New Balance FuelCore V2', 45, 'New Balance FuelCore v2 Hook and Loop Kids', 'newbalancefuelcore.jpg', 'new balanace kids hook and loop'),
(24, 2, 4, 'New Balance 1540V2', 155, 'New Balance 1540v2 Running Shoe Womens', 'newbalance1540v2.jpg', 'new balance 1540 womens running'),
(25, 3, 2, 'Adidas NEO Cloudfoam Racer', 75, 'Adidas NEO Cloudfoam Racer TR Running Shoe', 'adidasneocloudfoam.jpg', 'adidas mens running cloudfoam'),
(26, 6, 6, 'Vans Era Sneaker', 50, 'Vans Era Sneaker', 'vansera.jpg', 'vans era casual sneaker'),
(27, 2, 1, 'Nike AIR Huarache', 130, 'Nike Air Huarache Womens', 'nikehuarachewomens.jpg', 'nike huarache womens basketball'),
(32, 5, 1, 'Nike Airmax 270 Flyknit', 170, 'Nike AirMax 270 Flyknit', 'nikeairmax270flyknit.jpg', 'nike air max 270 running mens'),
(33, 6, 4, 'New Balance 990', 175, 'New Balance 990 Mens', 'newbalance990.jpg', 'new balance 990 mens casual'),
(34, 7, 2, 'Adidas Curved Bill Cap', 35, 'Adidas Curved Bill Mens Baseball Cap', 'adidascurvedbill.jpg', 'baseball cap hat'),
(35, 7, 2, 'Adidas Original Beanie', 20, 'Adidas Originals Beanie', 'adidasbeanie.jpg', 'adidas originals beanie accessories'),
(36, 7, 1, 'Nike Recovery Ball', 40, 'Nike Recovery Ball',  'nikerecoveryball.jpg', 'Nike Recovery Ball Accessories'),
(37, 7, 5, 'Jordan Indoor Basketball', 35, 'Jordan Indoor / Outdoor Basketball', 'jordanbasketball.jpg', 'jordan basketball accessories'),
(38, 7, 4, 'New Balance Crew Socks (3 pair)', 15 , 'New Balance Varsity Crew Socks (3 pair 6 total)', 'newbalancesocks.jpg', 'New Balance Socks Accessories'),
(39, 7, 6, 'Vans Snoopy Backpack', 45, 'Vans X Snoopy Backpack', 'vansbackpack.jpg', 'vans backpack accessories'),
(40, 6, 3, 'Fila F13', 65, 'File F13 Shoes', 'filaf13.jpg', 'fila f13 mens shoes'),
(45, 6, 3, 'Fila MB', 100, 'Fila MB Mens', 'filamb.jpg', 'fila mb shoes mens'),
(46, 7, 3, 'Fila Clipper Wind jacket', 100, 'Fila Clipper Wind Jacket Mens', 'filajacket.jpg', 'Fila Clipper Wind jacket mens accessories');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `address1`, `address2`) VALUES
(1, 'Antonio ', 'Alvizo', 'tonyalvizojr@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'CIT', '481', 'TONYISDOPE@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
