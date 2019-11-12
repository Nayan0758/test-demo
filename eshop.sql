-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2019 at 09:15 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aname` varchar(500) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `userid`, `password`) VALUES
('Ritu', 'riubhurat', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(100) NOT NULL AUTO_INCREMENT,
  `cname` varchar(500) NOT NULL,
  `fimg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`, `fimg`) VALUES
(1, 'WomensFashion', 'esh/women.png'),
(2, 'Electronics', 'esh/electronics.png'),
(4, 'Home,Kitchen,Pets', 'esh/kitchen.png'),
(5, 'Beauty,Health,Grocery', 'esh/beauty.png'),
(6, 'Kids Fashion', 'esh/kids.jpg'),
(7, 'Toys,Baby Products', 'esh/toys.jpg'),
(8, 'Sports,Fitness,Bags,Luggage', 'esh/sport.jpg'),
(9, 'Gift Cards', 'esh/giftcard.png'),
(15, 'Men Fashion', 'esh/men.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `compid` varchar(500) NOT NULL,
  `compname` varchar(200) NOT NULL,
  `details` varchar(200) NOT NULL,
  `compperson` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `conpass` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compid`, `compname`, `details`, `compperson`, `emailid`, `password`, `conpass`, `status`) VALUES
('sumsung', 'Samsung', 'sss sss', 'Rupali Nagra', 'sumsung123@gmail.com', '123456', '123456', 'true'),
('nike', 'Nike', 'nnn nnn', 'Thomson Jeorge', 'nike123@gmail.com', '123456', '123456', 'true'),
('loreal', 'Loreal', 'LLL LLL', 'Aishvarya Gupta ', 'loreal123@gmail.com', '123456', '123456', 'false'),
('garnier', 'Garnier', 'ggg ggg', 'John George', 'john123@gmail.com', '123456', '123456', 'false'),
('nokia', 'Nokia', 'nnn nnnn', 'Pragya Sharma', 'nokia123@gmail.com', '123456', '123456', 'false'),
('philips', 'Philips', 'pp ppp', 'Pragti Gupta', 'philips123@gmail.com', '123456', '123456', 'false'),
('puma', 'Puma', 'ppp uuuu', 'Pratiksha Goyal', 'puma123@gmail.com', '123456', '123456', 'true'),
('motorola', 'Motorola', 'mmm mmmm', 'Shreya sharma', 'motorola123@gmail.com', '123456', '123456', 'true'),
('lakme', 'Lakme', 'beauty products', 'Ritu bhurat', 'lakme123@gmail.com', '123456', '123456', 'false'),
('cetaphil', 'Cetaphil', 'cccc cccc', 'Varsha Kapoor', 'cetaphil123@gmail.com', '123456', '123456', 'false'),
('adidas', 'Adidas', 'aaaa aaaaa', 'Karishma Sen', 'adidas123@gmail.com', '123456', '123456', 'false'),
('koovs', 'Koovs', 'clothing brand', 'Aishvarya Gupta ', 'koovs123@gmail.com', '123456', '123456', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `fname` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `daddress` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `lname`, `email`, `password`, `mobile`, `daddress`) VALUES
('Ritu', 'Bhurat', 'ritubhurat@gmail.com', 'Rb181199', '7440613103', 'Ujjain'),
('varsa', 'mehta', 'varsa@gmail.com', 'Rb181199', '9909909900', 'Ujjain'),
('Mitali', 'Khandelwal', 'mitali@gmail.com', 'Rb181199', '8989898989', NULL),
('Preeti ', 'Gupta', 'guppu@yahoo.com', '123456768', '8989898989', NULL),
('', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(250) NOT NULL,
  `order_date` date NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  `fname` varchar(500) DEFAULT NULL,
  `pid` int(200) DEFAULT NULL,
  `daddress` varchar(500) DEFAULT NULL,
  `mop` varchar(200) DEFAULT NULL,
  `status` varchar(500) NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `email`, `fname`, `pid`, `daddress`, `mop`, `status`) VALUES
(5349, '2018-12-01', 'varsa@gmail.com', 'varsa', 4, 'Dusera Maidan Ujjain', 'Credit Card', 'confirm'),
(5349, '2018-12-01', 'varsa@gmail.com', 'varsa', 5, 'Dusera Maidan Ujjain', 'Credit Card', 'confirm'),
(7515, '2018-12-03', 'ritubhurat@gmail.com', 'Ritu', 5, 'Ujjain', 'Cash on Delivery', 'confirm'),
(5568, '2018-12-01', 'varsa@gmail.com', 'varsa', 5, 'Ujjain', 'Cash on Delivery', 'confirm'),
(7515, '2018-12-03', 'ritubhurat@gmail.com', 'Ritu', 4, 'Ujjain', 'Cash on Delivery', 'confirm'),
(3657, '2019-02-04', 'ritubhurat@gmail.com', NULL, 12, NULL, NULL, 'Pending'),
(3657, '2019-02-04', 'ritubhurat@gmail.com', NULL, 6, NULL, NULL, 'Pending'),
(3657, '2019-02-04', 'ritubhurat@gmail.com', NULL, 12, NULL, NULL, 'Pending'),
(3657, '2019-02-04', 'ritubhurat@gmail.com', NULL, 12, NULL, NULL, 'Pending'),
(3657, '2019-02-04', 'ritubhurat@gmail.com', NULL, 12, NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(200) NOT NULL AUTO_INCREMENT,
  `pname` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `details` varchar(500) NOT NULL,
  `cname` varchar(500) NOT NULL,
  `sname` varchar(500) NOT NULL,
  `fimg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `price`, `company`, `details`, `cname`, `sname`, `fimg`) VALUES
(2, 'K-DENIM', '3000', 'koovs', 'Product Code :108996Material/Fabric :100% CottonSize & Fit : This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  Dry clean or wash using a mild detergent. Turn inside out before washing and drying. Do not bleach. Do not wring or tumble dry. Flat dry in shade. Use warm iron. Mini Skirt by K DENIM  Made from cotton Front button closure Twin patch pockets Belt loops Frayed hem Regular fit', 'WomensFashion', 'WomenClothing', 'esh/w1.jpg'),
(12, 'Checkered Floral Print Dress', '2000', 'koovs', 'Product Code:111828 Material/Fabric :100% ViscoseSize & Fit ', 'WomensFashion', 'WomenClothing', 'esh/w3.jpg'),
(4, 'Floral Print Shift Dress', '1699', 'koovs', 'Product Code :111829Material/Fabric :100% CrepeSize & Fit : This brand runs true to size.', 'WomensFashion', 'WomenClothing', 'esh/w4.jpg'),
(5, '  Jumpsuit With Front Popper Detail', '1899', 'koovs', 'Product Code :110757Material/Fabric :100% PolyesterSize & Fit : This brand runs true to size.', 'WomensFashion', 'WomenClothing', 'esh/w5.jpg'),
(6, 'NEW LOOK  Western Fringed Ankle Boots', '900', 'Puma', 'Product Code :110891Material/Fabric :Suedette LeatherSize & Fit :', 'WomensFashion', 'Shoes', 'esh/s1.jpg'),
(7, 'Muscle Fit Polo Shirt', '500', 'koovs', 'Product Code :108407Material/Fabric :97% Cotton, 3% LycraSize & Fit : This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  Polo Shirt by KOOVS  Made from cotton-lycra blend Spread collar Front button closure Short sleeves Muscle fit', 'Men Fashion', 'MenClothing', 'esh/m1.jpg'),
(8, 'Slogan Print Crew Neck T-Shirt', '499', 'Puma', 'Product Code :106615Material/Fabric :100% CottonSize & Fit : This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  T-Shirt by GARCON  Made from cotton Crew neckline Slogan printed front Short sleeves Regular fit', 'Men Fashion', 'MenClothing', 'esh/m2.jpg'),
(9, 'Star Embroidered Quilted Panel Joggers', '1539', 'koovs', 'Product Code :101784Material/Fabric :100% CottonSize & Fit : This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  Joggers by GARCON  Made from cotton Elasticated waist with drawstring fastening Three pockets Quilted panel detail Cuffed hem Slim fit', 'Men Fashion', 'MenClothing', 'esh/m3.jpg'),
(10, 'Over Dyed Skinny Fit Jeans', '1000', 'koovs', 'Product Code :107589Material/Fabric :Cotton LycraSize & Fit : This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  Dry clean or wash using a mild detergent. Turn inside out before washing and drying. Do not bleach. Do not wring or tumble dry. Flat dry in shade. Use warm iron. Skinny Jeans by BLUE SAINT  Made from cotton-lycra blend Button and fly closure Classic five pocket style Skinny fit', 'Men Fashion', 'MenClothing', 'esh/m4.jpg'),
(11, 'Men Tshirt', '900', 'koovs', 'Product Code :107884Material/Fabric :100% CottonSize & Fit :  This brand runs true to size. To ensure the best fit, we suggest consulting the size chart.  Pullover by AKIVA  Made from cotton Crew neckline All over stripes Long sleeves Ribbed cuff and hem Regular fit', 'Men Fashion', 'MenClothing', 'esh/m5.jpg'),
(13, 'Checkered Slip On Shoes', '900', 'Puma', 'ProductCode:110896 Material/Fabric :FabricSize & Fit:\r\n\r\nThis brand runs true to size.\r\n To ensure the best fit, we suggest consulting the size chart.\r\n\r\nFlat Shoes by NEW LOOK\r\n\r\nMade from fabric\r\nRound toe\r\nAll over checkered print\r\nSlip-on style\r\nContrast flat sole', 'WomensFashion', 'Shoes', 'esh/s2.jpg'),
(14, 'NIKE  Air Bella Training Shoes', '2000', 'Nike', 'Product Code :110196Material/Fabric :Synthetic Leather and MeshSize & Fit :\r\nThis brand runs true to size. To ensure the best fit, we suggest consulting the size chart.\r\n\r\nTrainers by NIKE \r\n\r\nMade from synthetic leather and mesh\r\nRound toe\r\nLace-up fastening\r\nMax Air cushioning technology\r\nMulti-directional flex grooves\r\nDurable rubber tread\r\nFoam midsole', 'WomensFashion', 'Shoes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

DROP TABLE IF EXISTS `subcat`;
CREATE TABLE IF NOT EXISTS `subcat` (
  `sid` int(100) NOT NULL AUTO_INCREMENT,
  `sname` varchar(500) NOT NULL,
  `cname` varchar(500) NOT NULL,
  `menu_link` varchar(500) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `cname` (`cname`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`sid`, `sname`, `cname`, `menu_link`) VALUES
(2, 'Shoes', 'WomensFashion', 'Wshoes.php'),
(3, ' WomenClothing', 'WomensFashion', 'Wclothing.php'),
(4, 'MenShoes', 'Men Fashion', 'Mshoes.php'),
(5, 'MenClothing', 'Men Fashion', 'Mclothing.php'),
(6, 'Laptops & Mobiles', 'Electronics', 'Elaptop.php'),
(7, 'Home appliances', 'Electronics', 'Eappliances.php'),
(8, 'Home & Kitchen', 'Home,Kitchen,Pets', 'Hhome.php'),
(9, 'Pet Supplies', 'Home,Kitchen,Pets', 'Hpet.php'),
(10, 'Beauty and Grooming', 'Beauty,Health,Grocery', 'Bbeauty.php'),
(11, 'Health & personal care', 'Beauty,Health,Grocery', 'Bhealth.php'),
(12, 'Kids Clothing', 'Kids Fashion', 'Kcloth.php'),
(13, 'Kids Shoes', 'Kids Fashion', 'Kshoes.php'),
(14, 'Kids Watches', 'Kids Fashion', 'Kwatch.php'),
(15, 'All Baby Products', 'Toys,Baby Products', 'Bbaby.php'),
(16, 'All Toys', 'Toys,Baby Products', 'Btoys.php'),
(17, 'Suitcases', 'Sports,Fitness,Bags,Luggage', 'luggage.php'),
(18, 'Exercise & Fitness', 'Sports,Fitness,Bags,Luggage', 'fitness.php'),
(19, 'Backpacks', 'Sports,Fitness,Bags,Luggage', 'backpacks.php'),
(20, 'Birthday Gift Cards', 'Gift Cards', 'Gift.php'),
(21, 'All Gift Cards', 'Gift Cards', 'Agift.php');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
