-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 10:27 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoicemgsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `county_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `invoice`, `name`, `email`, `address_1`, `address_2`, `town`, `county`, `postcode`, `phone`, `name_ship`, `address_1_ship`, `address_2_ship`, `town_ship`, `county_ship`, `postcode_ship`) VALUES
(57, '4', 'Karthi Paul A', 'karthipaul7@hgmail.com', 'H.No:187 Thathireddypalli, katpadi', '', 'Vellore', 'India', '632516', '06383601929', 'Karthi Paul A', 'H.No:187 Thathireddypalli, katpadi', 'H.No:187 Thathireddypalli, katpadi', 'Vellore', 'India', '632516'),
(56, '3', 'Karthi Paul A', 'karthipaul7@hgmail.com', 'H.No:187 Thathireddypalli, katpadi', '', 'Vellore', 'India', '632516', '06383601929', 'Karthi Paul A', 'H.No:187 Thathireddypalli, katpadi', 'H.No:187 Thathireddypalli, katpadi', 'Vellore', 'India', '632516'),
(54, '1', 'Karthi Paul A', 'karthipaul7@hgmail.com', 'H.No:187 Thathireddypalli, katpadi', '', 'Vellore', 'India', '632516', '06383601929', 'Karthi Paul A', 'H.No:187 Thathireddypalli, katpadi', 'H.No:187 Thathireddypalli, katpadi', 'Vellore', 'India', '632516');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `custom_email` text NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `shipping` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `notes` text NOT NULL,
  `invoice_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice`, `custom_email`, `invoice_date`, `invoice_due_date`, `subtotal`, `shipping`, `discount`, `vat`, `total`, `notes`, `invoice_type`, `status`) VALUES
(60, '3', '', '01/03/2023', '02/03/2023', '2400', '0', '2400', '0', '2400', '', 'invoice', 'paid'),
(61, '4', '', '01/03/2023', '02/03/2023', '2880', '0', '720', '0', '2880', '', 'invoice', 'paid'),
(58, '1', '', '01/03/2023', '01/03/2023', '2395', '0', '5', '240', '2635', 'no', 'invoice', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `product` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice`, `product`, `qty`, `price`, `discount`, `subtotal`) VALUES
(104, '3', 'men shirt - Mens top', 4, '1200', '50%', '2400.00'),
(105, '4', 'men shirt - Mens top', 3, '1200', '20%', '2880.00'),
(102, '1', 'men shirt - Mens top', 2, '1200', '5', '2395.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_price`) VALUES
(987, 'men shirt', 'Mens top', '1200');

-- --------------------------------------------------------

--
-- Table structure for table `store_customers`
--

CREATE TABLE `store_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `county_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_customers`
--

INSERT INTO `store_customers` (`id`, `name`, `email`, `address_1`, `address_2`, `town`, `county`, `postcode`, `phone`, `name_ship`, `address_1_ship`, `address_2_ship`, `town_ship`, `county_ship`, `postcode_ship`) VALUES
(63, 'Karthi Paul A', 'karthipaul7@hgmail.com', 'H.No:187 Thathireddypalli, katpadi', 'H.No:187 Thathireddypalli, katpadi', 'Vellore', 'India', '632516', '06383601929', 'Karthi Paul A', 'H.No:187 Thathireddypalli, katpadi', 'H.No:187 Thathireddypalli, katpadi', 'Vellore', 'India', '632516');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`) VALUES
(4, 'Karthi Paul A', 'karthi', 'karthipaul7@gmail.com', '06383601929', 'e0dcef47c8e8ce11db228e414b7624ec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `store_customers`
--
ALTER TABLE `store_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT for table `store_customers`
--
ALTER TABLE `store_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
