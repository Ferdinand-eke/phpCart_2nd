-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 05:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart_am`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(7) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'ferazi', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_address`
--

CREATE TABLE `checkout_address` (
  `id` int(7) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contentno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout_address`
--

INSERT INTO `checkout_address` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `pincode`, `contentno`) VALUES
(1, 'ferdinand', 'eke', 'eke@gmail.com', '6 marrakesh, wuse 2', 'abuja', '298008', '0803586898'),
(2, 'egoli', 'ude', 'ego@gmail.com', '120 wetheral ', 'owerri', '238001', '08157050520'),
(3, 'Ferd', 'Eke', 'ninoferazi@gmail.com', '6 kumasi, wuse 2', 'Abuja', '900288', '');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_address`
--

CREATE TABLE `confirm_order_address` (
  `id` int(7) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contentno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_product`
--

CREATE TABLE `confirm_order_product` (
  `id` int(7) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(7) NOT NULL,
  `product_qty` int(7) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(7) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(7) NOT NULL,
  `product_qty` int(7) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_category`, `product_desc`) VALUES
(8, 'Gown', 200, 30, 'product_image/431021fc260b5a75fa92f03349bd1ccet4.jpeg', 'Gents_Clothes', 'very well designed gown'),
(9, 'Ladies Kimono', 200, 15, 'product_image/6d458df9919f21a0917f8bb7c81c6cafq2.jpeg', 'Ladies_Clothes', 'these are very lovely kimonos'),
(10, 'Nike Air Walk', 150, 50, 'product_image/533a1b171665778617e7b3a4d3904594nike1.jpg', 'Gents_Shoes', 'One of the best air walks from nike'),
(11, 'Iphone 6', 300, 50, 'product_image/273faee34918ed14f07f599d5ff7c69diphone.jpg', 'Gents_Clothes', 'Classy Iphone 6 mobile phones'),
(12, 'Mac Book Pro', 800, 30, 'product_image/e32be80d1de9827bb2d96b39e6f3becbmac.jpg', 'Gents_Clothes', 'Core I7 processor, 1TB hardrive, 16GB ram'),
(13, 'Kodak Camera', 200, 20, 'product_image/c54d5de6775a694f69efc4a2bb8b72eecamera1.png', 'Gents_Clothes', 'High resolution production camera'),
(14, 'Apple Wrist watch', 150, 30, 'product_image/ffc537478e7363584d28d6fad6944161watch1.png', 'Gents_Clothes', 'Efficient apple time keeper'),
(15, 'Beats by Dr Dre', 150, 30, 'product_image/6c9969da60ec884151564aab777c68bfbeatByDre.jpg', 'Gents_Clothes', 'Sound at its best with beats by Dr. Dre'),
(16, 'Acer 360 series', 400, 30, 'product_image/147c3f6fb3a720d6d2b9c750145cad9facer1.jpg', 'Gents_Clothes', '8GB ram, core I5,500GB ram '),
(17, 'Acer 360 series', 400, 30, 'product_image/6b5ed563d8afd7b6e2be31ed85b7de82acer1.jpg', 'Gents_Clothes', '8GB ram, core I5,500GB ram ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_address`
--
ALTER TABLE `checkout_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_order_address`
--
ALTER TABLE `confirm_order_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_order_product`
--
ALTER TABLE `confirm_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkout_address`
--
ALTER TABLE `checkout_address`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `confirm_order_address`
--
ALTER TABLE `confirm_order_address`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirm_order_product`
--
ALTER TABLE `confirm_order_product`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
