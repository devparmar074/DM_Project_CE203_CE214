-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 05:09 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(12, 'Mobiles', 'Mobiles', '2021-05-29 09:27:37', NULL),
(13, 'TV', 'TV...', '2021-05-29 09:27:56', NULL),
(14, 'Camera & Lences', 'camera & lences', '2021-05-29 09:28:14', NULL),
(15, 'Audio & Home Theater', 'Audio & Home Theater', '2021-05-29 09:28:28', NULL),
(16, 'Computers & Laptops', '', '2021-05-29 09:28:41', NULL),
(17, 'Test', 'testing', '2021-06-16 08:48:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 12, 1, 'Apple Iphone 11 (White. 64GB)', 'Apple', 51000, 55000, 'Iphone Thts Privacy...', '1.png', '2.png', '3.png', 100, 'In Stock', '2021-05-29 10:12:38', NULL),
(46, 12, 25, 'realme Narzo 20 (Glory Silver, 64 GB)  (4 GB RAM)', 'realme ', 9999, 12999, '', 'realme-narzo-20-rmx2193-original-imafvsw7vfqzh6wr.jpg', 'realme-narzo-20-rmx2193-original-imafwyj2y52brfsz.jpg', '', 0, 'In Stock', '2021-05-17 16:09:16', NULL),
(47, 12, 25, 'realme Narzo 20 (Victory Blue, 128 GB)  (4 GB RAM)', 'realme ', 10999, 13999, '', 'realme-narzo-20-rmx2193-original-imafwygr9gfhtxcm.jpeg', 'realme-narzo-20-rmx2193-original-imafvswety9jxxsg.jpeg', '', 0, 'In Stock', '2021-05-17 16:12:08', NULL),
(48, 12, 25, 'Redmi 9 (Sporty Orange, 64 GB)  (4 GB RAM)', 'Redmi', 9173, 10999, '', 'mi-redmi-9-lpddr4x-original-imafv5kyeqsgxgzz.jpeg', 'mi-redmi-9-lpddr4x-original-imafv5kykzw4cjdr.jpeg', 'mi-redmi-9-lpddr4x-original-imafv5ky4fx5zk7s.jpeg', 0, 'In Stock', '2021-05-17 16:15:07', NULL),
(49, 12, 25, 'Redmi 9A (Midnight Black, 32 GB)  (2 GB RAM)', 'Redmi', 7399, 10999, '', 'mi-redmi-9a-b08696xb4b-original-imafve7pnhwakaha.jpeg', 'mi-redmi-9a-b08696xb4b-original-imafve7pcebamdnr.jpeg', 'mi-redmi-9a-b08696xb4b-original-imafve7p52gg8xty.jpeg', 0, 'In Stock', '2021-05-17 16:17:01', NULL),
(50, 12, 25, 'SAMSUNG Galaxy M12 (White, 128 GB)  (6 GB RAM)', 'Samsung', 14899, 15499, '', 'galaxy-m12-galaxy-m12-samsung-original-imagfzug8wycsxnb.jpeg', 'galaxy-m12-galaxy-m12-samsung-original-imagfzugy3aumqhq.jpeg', 'galaxy-m12-galaxy-m12-samsung-original-imagfzughkszkakk.jpeg', 0, 'In Stock', '2021-05-17 16:18:30', NULL),
(51, 12, 25, 'SAMSUNG Galaxy F12 (Celestial Black, 128 GB)  (4 GB RAM)#JustHere', 'Samsung', 10999, 13999, '', 'galaxy-f12-sm-f127gzkgins-samsung-original-imagftmhuqq3arbg.jpeg', 'galaxy-f12-sm-f127gzkgins-samsung-original-imagftmhw9fa6gqv.jpeg', 'galaxy-f12-sm-f127gzkgins-samsung-original-imagftmhrxwkvqmc.jpeg', 0, 'In Stock', '2021-05-17 16:19:39', NULL),
(52, 12, 25, 'Apple iPhone XR ((PRODUCT)RED, 64 GB) (Includes EarPods, Power Adapter)', 'Apple', 40999, 47900, '', 'apple-iphone-xr-mry62hn-a-original-imafa6zkhyceh8dg.jpeg', 'apple-iphone-xr-mrym2hn-a-original-imafa6zkgkkaqhxx.jpeg', 'apple-iphone-xr-mrym2hn-a-original-imafa6zk6cc28wkr.jpeg', 0, 'Out of Stock', '2021-05-17 16:21:13', NULL),
(53, 13, 26, 'realme 108 cm (43 inch) Full HD LED Smart Android TV  (TV 43)', 'realme ', 23999, 25999, '', 'realme-tv-43-original-imafrz78gbgx3zz5.jpeg', 'realme-tv-43-original-imafrz78spwzzpfm.jpeg', 'realme-tv-43-original-imafs4m2dxsw5ysn.jpeg', 0, 'In Stock', '2021-05-20 11:32:40', NULL),
(54, 13, 28, 'iFFALCON by TCL AI Powered K31 108 cm (43 inch) Ultra HD (4K) LED Smart Android TV with HDR 10  (43K31)', 'iFFALCON ', 23999, 47990, '', 'iffalcon-50k31-original-imafm59fmsdhh8uj.jpeg', 'b-55k31-iffalcon-original-imafkesznzphdbve.jpeg', '43k31-iffalcon-original-imag2czgcznqzrmw.jpeg', 0, 'In Stock', '2021-05-20 11:34:26', NULL),
(55, 13, 26, 'iFFALCON by TCL AI Powered K31 108 cm (43 inch) Ultra HD (4K) LED Smart Android TV with HDR 10  (43K31)', 'iFFALCON ', 23999, 47900, '', 'iffalcon-50k31-original-imafm59fmsdhh8uj.jpeg', 'b-55k31-iffalcon-original-imafkesznzphdbve.jpeg', '43k31-iffalcon-original-imag2czgcznqzrmw.jpeg', 0, 'In Stock', '2021-05-20 11:35:39', NULL),
(56, 13, 26, 'Mi 4A Pro 108 cm (43 inch) Full HD LED Smart Android TV with With Google', 'Redmi', 23999, 25999, '', 'mi-l43m5-an-original-imafrjtbdbnczaxk.jpeg', 'mi-l65m5-5sin-original-imaftc5fqgjpnzgb.jpeg', 'mi-l43m5-an-original-imafr2zw4hx2catt.jpeg', 0, 'In Stock', '2021-05-20 11:38:25', NULL),
(57, 13, 28, 'PHILIPS 55 cm (22 inch) Full HD LED TV  (22PFT5403S/94)', 'Philips', 7399, 12999, '', 'philips-22pft5403s-94-original-imafhtnffhxg8nst.jpeg', 'philips-22pft5403s-94-original-imafhp5d8n2nrgbh.jpeg', 'philips-22pft5403s-94-original-imafhtnfhcxtu6wg.jpeg', 0, 'Out of Stock', '2021-05-20 11:42:24', NULL),
(58, 13, 27, 'LG 55 cm (22 inch) Full HD LCD TV  (22LH454A-PT)', 'LG', 5999, 10999, '', 'lg-22lh454a-pt-original-imaesjgzunryfsh8.jpeg', 'lg-22lh454a-pt-original-imaesjgznrrzzerx.jpeg', 'lg-22lh454a-pt-original-imaesjgzftvfuzgz.jpeg', 0, 'Out of Stock', '2021-05-20 11:44:09', NULL),
(59, 14, 29, 'Canon EOS 3000D DSLR Camera 1 Camera Body, 18 - 55 mm Lens, Battery, Battery Charger, USB Cable  (Black)', 'Canon', 24899, 29999, '', 'canon-eos-eos-3000d-dslr-original-imaf3t5h9yuyc5zu.jpeg', 'canon-eos-3000d-original-imaf3t5hjrz6zzzc.jpeg', 'eos-eos-3000d-canon-original-imaf9n6fqhmgt4cv.jpeg', 0, 'In Stock', '2021-05-20 11:46:50', NULL),
(60, 14, 29, 'NIKON D7500 DSLR Camera Body with 18-140 mm Lens  (Black)', 'NIKON', 78999, 94950, '', 'd7500-d7500-nikon-original-imaf6n7gk7zkeybb.jpeg', 'd7500-d7500-nikon-original-imaf6n7ggfwpxczr.jpeg', 'd7500-d7500-nikon-original-imaf6n7geax4hxbv.jpeg', 0, 'In Stock', '2021-05-20 11:48:18', NULL),
(61, 14, 30, 'NIKON AF-P DX NIKKOR 70 - 300 mm f/4.5 - 6.3G ED VR Lens  (Black, 18 - 200mm Comparable 35mm Equivalent on DX Format Focal Length: 27 - 300 mm)', 'NIKON ', 23999, 25999, '', 'nikon-af-p-dx-nikkor-70-300-mm-f-4-5-6-3g-ed-vr-original-imaf9v2sf7kqjmm6.jpeg', 'nikon-af-p-dx-nikkor-70-300-mm-f-4-5-6-3g-ed-vr-original-imaf9v3pcjhghzyw.jpeg', 'nikon-af-p-dx-nikkor-70-300-mm-f-4-5-6-3g-ed-vr-original-imaf9v44w8n2mhxe.jpeg', 0, 'In Stock', '2021-05-20 11:50:42', NULL),
(62, 14, 30, 'SONY SEL50F18F Lens  (Black, 50)', 'Sony', 17850, 19990, '', 'sony-sel50f18f-original-imaf4usggstq2hgm.jpeg', 'sony-sel50f18f-original-imaf4usggjsvtbbj.jpeg', '', 0, 'In Stock', '2021-05-20 11:51:50', NULL),
(63, 14, 30, 'CHG Universal Clip Type 3 in 1 Lens  (Black, NA)', 'CHG', 300, 507, '', 'mobile-phone-lens-wide-angle-macro-fisheye-three-in-one-set-original-imaftg3wyz7fxdsj.jpeg', 'chg-universal-clip-type-3-in-1-original-imaftn7zuf2grqsa.jpeg', 'chg-universal-clip-type-3-in-1-original-imaftn7zagr6kkhg.jpeg', 0, 'In Stock', '2021-05-20 11:53:02', NULL),
(64, 14, 6, 'dslr1', 'nikon', 40000, 50000, '', 'wallpaper.jfif', 'wallpaper.jfif', 'wallpaper.jfif', 100, 'In Stock', '2021-06-11 10:35:09', NULL),
(65, 17, 13, 'SONY Home Theatre 3.1', 'Sony', 46000, 50000, 'Enjoy a theatre-like experience right in the comfort of your home with this Sony Bluetooth tower speaker. Equipped with features, such as the DTS Digital Surround Technology and the Dolby Digital Technology, this Bluetooth tower speaker delivers dramatic surround sound for an enhanced aural experience.', 'audio_1.jpeg', 'audio_2.jpeg', 'audio_3.jpeg', 100, 'In Stock', '2021-06-16 08:49:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 12, 'Smartphones', '2021-05-29 09:29:18', NULL),
(2, 12, 'Keypad Phones', '2021-05-29 09:29:44', NULL),
(3, 13, 'LEDs', '2021-05-29 09:29:58', NULL),
(4, 13, 'LCDs', '2021-05-29 09:30:07', NULL),
(5, 13, 'Android TV', '2021-05-29 09:30:24', NULL),
(6, 14, 'DSLRs', '2021-05-29 09:30:37', NULL),
(7, 15, '2.1 Home Theater', '2021-05-29 09:31:09', NULL),
(8, 15, '3.1 Home Theater', '2021-05-29 09:31:17', NULL),
(9, 15, '5.1 Home Theater', '2021-05-29 09:31:26', NULL),
(10, 16, 'Desktops', '2021-05-29 09:31:35', NULL),
(11, 16, 'Business Laptops', '2021-05-29 09:31:48', NULL),
(12, 16, 'Gaming Laptops', '2021-05-29 09:31:59', NULL),
(13, 17, 'Testing1', '2021-06-16 08:48:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'dev', 'dev@gmail.com', 1123456788, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 18:24:28', NULL),
(7, 'Testing', 'devparmar074@gmail.com', 989898696, '227edf7c86c02a44d17eec9aa5b30cd1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-16 09:08:22', NULL),
(8, 'juzar', 'juzarantri786@gmail.com', 1234567890, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-16 09:23:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
