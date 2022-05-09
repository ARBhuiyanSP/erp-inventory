-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 11:41 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `inv_damage`
--

CREATE TABLE `inv_damage` (
  `id` int(11) NOT NULL,
  `damage_id` varchar(25) NOT NULL,
  `damage_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damage`
--

INSERT INTO `inv_damage` (`id`, `damage_id`, `damage_date`, `remarks`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(18, 'RR-CW001', '2022-04-17', '', '2', '10', '31', 'PA-001', ''),
(19, 'RR-CW002', '2022-04-17', '', '2', '10', '39', 'PA-021', ''),
(20, 'RR-CW003', '2022-04-17', '', '2', '10', '39', 'PA-021', ''),
(21, 'RR-CW004', '2022-04-21', '', '2', '10', '31', 'PA-001', ''),
(22, 'RR-CW005', '2022-04-21', '', '2', '10', '31', 'PA-001', ''),
(23, 'RR-CW006', '2022-04-23', '', '2', '10', '39', 'PA-021', ''),
(24, 'RR-CW007', '2022-04-23', '', '2', '10', '39', 'PA-022', ''),
(25, 'RR-CW008', '2022-04-23', '', '2', '10', '39', 'PA-023', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_damagebalance`
--

CREATE TABLE `inv_damagebalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(10) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `party_id` varchar(10) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damagebalance`
--

INSERT INTO `inv_damagebalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbout_qty`, `mbtype`, `mbunit_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`, `created_at`) VALUES
(44779, 'RR-CW001', '01-01-057', '2022-04-17', 18, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-001', 0, '2022-04-17 12:00:00'),
(44780, 'RO-CW001', '01-01-063', '2022-04-17', 0, 9, 'REPLACE OUT', '2', '10', '31', 'PA-001', 0, '2022-04-17 12:00:00'),
(44781, 'RR-CW002', '01-01-056', '2022-04-17', 9, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-17 12:00:00'),
(44782, 'RR-CW002', '01-01-059', '2022-04-17', 6, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-17 12:00:00'),
(44783, 'RR-CW002', '01-01-106', '2022-04-17', 5, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-17 12:00:00'),
(44784, 'RR-CW003', '01-01-062', '2022-04-17', 15, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-17 12:00:00'),
(44785, 'RO-CW002', '01-01-063', '2022-04-17', 0, 20, 'REPLACE OUT', '2', '10', '39', 'PA-021', 0, '2022-04-17 12:00:00'),
(44786, 'RO-CW003', '01-01-062', '2022-04-18', 0, 5, 'REPLACE OUT', '2', '10', '31', 'PA-001', 0, '2022-04-18 12:00:00'),
(44787, 'RO-CW004', '01-01-058', '2022-04-18', 0, 15, 'REPLACE OUT', '2', '10', '31', 'PA-001', 0, '2022-04-18 12:00:00'),
(44788, 'RR-CW004', '01-01-062', '2022-04-21', 2, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-001', 0, '2022-04-21 12:00:00'),
(44789, 'RR-CW005', '01-01-059', '2022-04-21', 12, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-001', 0, '2022-04-21 12:00:00'),
(44790, 'RR-CW006', '01-01-112', '2022-04-23', 7, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-23 12:00:00'),
(44791, 'RR-CW006', '01-01-109', '2022-04-23', 9, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-23 12:00:00'),
(44792, 'RR-CW006', '01-01-064', '2022-04-23', 5, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-021', 0, '2022-04-23 12:00:00'),
(44793, 'RR-CW007', '01-01-062', '2022-04-23', 18, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-022', 0, '2022-04-23 12:00:00'),
(44794, 'RR-CW008', '01-01-037', '2022-04-23', 12, 0, 'REPLACE RECEIVE', '2', '10', '39', 'PA-023', 0, '2022-04-23 12:00:00'),
(44795, 'RO-CW005', '01-01-058', '2022-04-23', 0, 5, 'REPLACE OUT', '2', '10', '39', 'PA-021', 0, '2022-04-23 12:00:00'),
(44796, 'RO-CW005', '01-01-111', '2022-04-23', 0, 8, 'REPLACE OUT', '2', '10', '39', 'PA-021', 0, '2022-04-23 12:00:00'),
(44797, 'RO-CW006', '01-01-029', '2022-04-23', 0, 5, 'REPLACE OUT', '2', '10', '39', 'PA-023', 0, '2022-04-23 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inv_damagedetail`
--

CREATE TABLE `inv_damagedetail` (
  `id` int(11) NOT NULL,
  `damage_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `damage_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damagedetail`
--

INSERT INTO `inv_damagedetail` (`id`, `damage_id`, `damage_date`, `material_id`, `material_name`, `unit`, `return_qty`, `return_price`, `part_no`, `project_id`, `warehouse_id`) VALUES
(24, 'RR-CW001', '2022-04-17', '01-01-057', '431', '3', 18, 0, '', '2', '10'),
(25, 'RR-CW002', '2022-04-17', '01-01-056', '430', '3', 9, 0, '', '2', '10'),
(26, 'RR-CW002', '2022-04-17', '01-01-059', '433', '3', 6, 0, '', '2', '10'),
(27, 'RR-CW002', '2022-04-17', '01-01-106', '480', '3', 5, 0, '', '2', '10'),
(28, 'RR-CW003', '2022-04-17', '01-01-062', '436', '3', 15, 0, '', '2', '10'),
(29, 'RR-CW004', '2022-04-21', '01-01-062', '436', '3', 2, 0, '', '2', '10'),
(30, 'RR-CW005', '2022-04-21', '01-01-059', '433', '3', 12, 0, '', '2', '10'),
(31, 'RR-CW006', '2022-04-23', '01-01-112', '486', '3', 7, 0, '', '2', '10'),
(32, 'RR-CW006', '2022-04-23', '01-01-109', '483', '3', 9, 0, '', '2', '10'),
(33, 'RR-CW006', '2022-04-23', '01-01-064', '438', '3', 5, 0, '', '2', '10'),
(34, 'RR-CW007', '2022-04-23', '01-01-062', '436', '3', 18, 0, '', '2', '10'),
(35, 'RR-CW008', '2022-04-23', '01-01-037', '411', '3', 12, 0, '', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_damageout`
--

CREATE TABLE `inv_damageout` (
  `id` int(11) NOT NULL,
  `damageout_id` varchar(25) NOT NULL,
  `damageout_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damageout`
--

INSERT INTO `inv_damageout` (`id`, `damageout_id`, `damageout_date`, `remarks`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(17, 'RO-CW001', '2022-04-17', '', '2', '10', '31', 'PA-001', ''),
(18, 'RO-CW002', '2022-04-17', '', '2', '10', '39', 'PA-021', ''),
(19, 'RO-CW003', '2022-04-18', '', '2', '10', '31', 'PA-001', ''),
(20, 'RO-CW004', '2022-04-18', '', '2', '10', '31', 'PA-001', ''),
(21, 'RO-CW005', '2022-04-23', '', '2', '10', '39', 'PA-021', ''),
(22, 'RO-CW006', '2022-04-23', '', '2', '10', '39', 'PA-023', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_damageoutdetail`
--

CREATE TABLE `inv_damageoutdetail` (
  `id` int(11) NOT NULL,
  `damageout_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `damageout_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damageoutdetail`
--

INSERT INTO `inv_damageoutdetail` (`id`, `damageout_id`, `damageout_date`, `material_id`, `material_name`, `unit`, `return_qty`, `return_price`, `part_no`, `project_id`, `warehouse_id`) VALUES
(23, 'RO-CW001', '2022-04-17', '01-01-063', '437', '3', 9, 0, '', '2', '10'),
(24, 'RO-CW002', '2022-04-17', '01-01-063', '437', '3', 20, 0, '', '2', '10'),
(25, 'RO-CW003', '2022-04-18', '01-01-062', '436', '3', 5, 0, '', '2', '10'),
(26, 'RO-CW004', '2022-04-18', '01-01-058', '432', '3', 15, 0, '', '2', '10'),
(27, 'RO-CW005', '2022-04-23', '01-01-058', '432', '3', 5, 0, '', '2', '10'),
(28, 'RO-CW005', '2022-04-23', '01-01-111', '485', '3', 8, 0, '', '2', '10'),
(29, 'RO-CW006', '2022-04-23', '01-01-029', '403', '3', 5, 0, '', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_damaragedetailsale`
--

CREATE TABLE `inv_damaragedetailsale` (
  `id` int(11) NOT NULL,
  `ds_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ds_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cur_price` float NOT NULL,
  `cur_price_amount` int(11) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damaragedetailsale`
--

INSERT INTO `inv_damaragedetailsale` (`id`, `ds_id`, `ds_date`, `memono`, `material_id`, `material_name`, `unit`, `cur_price`, `cur_price_amount`, `issue_qty`, `issue_price`, `amount`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(11, 'DS-CW001', '2022-04-16', 0, '01-01-058', '432', '3', 8400, 16800, 2, 6000, 12000, '', '2', '10', '31', 'PA-001', 0),
(12, 'DS-CW002', '2022-04-16', 0, '01-01-057', '431', '3', 9000, 27000, 3, 5000, 15000, '', '2', '10', '31', 'PA-004', 0),
(13, 'DS-CW002', '2022-04-16', 0, '01-01-059', '433', '3', 9000, 18000, 2, 6000, 12000, '', '2', '10', '31', 'PA-004', 0),
(14, 'DS-CW003', '2022-04-23', 0, '01-01-062', '436', '3', 8700, 17400, 2, 6000, 12000, '', '2', '10', '39', 'PA-021', 0),
(15, 'DS-CW004', '2022-04-23', 0, '01-01-108', '482', '3', 8800, 26400, 3, 6500, 19500, '', '2', '10', '39', 'PA-022', 0),
(16, 'DS-CW004', '2022-04-23', 0, '01-01-036', '410', '3', 8700, 43500, 5, 5500, 27500, '', '2', '10', '39', 'PA-022', 0),
(17, 'DS-CW005', '2022-04-23', 0, '01-01-033', '407', '3', 8900, 26700, 3, 5900, 17700, '', '2', '10', '39', 'PA-023', 0),
(18, 'DS-CW006', '2022-04-24', 21, '01-01-034', '408', '3', 2, 2, 1, 3, 3, '', '2', '10', '31', 'PA-001', 0),
(19, 'DS-CW007', '2022-04-24', 43, '01-01-035', '409', '3', 21, 147, 7, 52, 364, '', '2', '10', '31', 'PA-001', 0),
(20, 'DS-CW007', '2022-04-24', 43, '01-01-035', '409', '3', 21, 147, 7, 52, 364, '', '2', '10', '31', 'PA-001', 0),
(21, 'DS-CW007', '2022-04-24', 43, '01-01-035', '409', '3', 21, 147, 7, 52, 364, '', '2', '10', '31', 'PA-001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_damaragesale`
--

CREATE TABLE `inv_damaragesale` (
  `id` int(11) NOT NULL,
  `ds_id` varchar(25) NOT NULL,
  `ds_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `party_id` varchar(21) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damaragesale`
--

INSERT INTO `inv_damaragesale` (`id`, `ds_id`, `ds_date`, `memono`, `party_id`, `partner_id`, `received_by`, `totalcur`, `totalamount`, `paidamount`, `Dueamount`, `profitamount`, `receiver_phone`, `remarks`, `project_id`, `warehouse_id`, `issued_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `issue_image`, `created_at`) VALUES
(7, 'DS-CW003', '2022-04-23', 0, 'PA-021', '39', '', 17400, 12000, 12000, 0, 5400, '', '', '2', '10', '', 0, '', NULL, '', '', ''),
(8, 'DS-CW004', '2022-04-23', 0, 'PA-022', '39', '', 69900, 47000, 47000, 0, 22900, '', '', '2', '10', '', 0, '', NULL, '', '', ''),
(9, 'DS-CW005', '2022-04-23', 0, 'PA-023', '39', '', 26700, 17700, 17700, 0, 9000, '', '', '2', '10', '', 0, '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `party_id` varchar(21) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `discount_amount` float NOT NULL,
  `netsale_amount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issue`
--

INSERT INTO `inv_issue` (`id`, `issue_id`, `issue_date`, `memono`, `party_id`, `partner_id`, `received_by`, `totalcur`, `totalamount`, `discount_amount`, `netsale_amount`, `paidamount`, `Dueamount`, `profitamount`, `receiver_phone`, `remarks`, `project_id`, `warehouse_id`, `issued_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `issue_image`, `created_at`) VALUES
(18, 'IS-CW001', '2022-05-08', 420, 'PA-001', '31', '', 800, 1050, 0, 1050, 0, 1050, 250, '', 'i version 1', '2', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(19, 'IS-CW002', '2022-05-08', 780, 'PA-001', '31', '', 850, 1500, 100, 1400, 1, 1400, 550, '', '2nd', '2', '10', '', 0, '', NULL, '', '', '2022-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `issue_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cur_price` float NOT NULL,
  `cur_price_amount` int(11) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issuedetail`
--

INSERT INTO `inv_issuedetail` (`id`, `issue_id`, `issue_date`, `memono`, `material_id`, `material_name`, `unit`, `cur_price`, `cur_price_amount`, `issue_qty`, `issue_price`, `amount`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(30, 'IS-CW001', '2022-05-08', 420, '01-03-003', '374', '15', 100, 200, 2, 150, 300, '', '2', '10', '31', 'PA-001', 0),
(31, 'IS-CW001', '2022-05-08', 420, '01-03-002', '373', '15', 200, 600, 3, 250, 750, '', '2', '10', '31', 'PA-001', 0),
(32, 'IS-CW002', '2022-05-08', 780, '01-03-002', '373', '15', 50, 250, 5, 60, 300, '', '2', '10', '31', 'PA-001', 0),
(33, 'IS-CW002', '2022-05-08', 780, '01-03-003', '374', '15', 100, 600, 6, 200, 1200, '', '2', '10', '31', 'PA-001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(1, 'kg'),
(2, 'bag'),
(3, 'pcs'),
(4, 'Ton'),
(6, 'ltr'),
(7, 'Drum'),
(8, 'CFT'),
(9, 'Nos'),
(12, 'RFT'),
(13, 'Coil '),
(14, 'SFT'),
(15, 'Gallon'),
(16, 'Bundle'),
(17, 'Dozn'),
(18, 'Roll'),
(19, 'set');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(10) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `brand_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_description`, `brand_name`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`) VALUES
(367, '01-01-001', '40', '160', 'H POWER 29KG G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(368, '01-01-002', '40', '160', 'Magnet 27Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(369, '01-03-001', '40', '162', '95AH DJDG', '', '', 0, NULL, NULL, 0, '15', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(370, '01-01-003', '40', '160', 'Eilong 22kg w', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(371, '01-01-004', '40', '160', 'King Power 29kg N', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(372, '01-01-005', '40', '160', 'Power Plus 29kg G', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(373, '01-03-002', '40', '162', '120Ah DjDG', '', '', 0, NULL, NULL, 0, '15', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(374, '01-03-003', '40', '162', '220Ah DjDG', '', '', 0, NULL, NULL, 0, '15', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(375, '01-02-001', '40', '161', 'Power Plus MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(376, '01-02-002', '40', '161', '3 Dragon N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(377, '01-02-003', '40', '161', 'Henli Special MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(378, '01-01-006', '40', '160', 'Yuandi Borac 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(379, '01-02-004', '40', '161', 'Hangli 2', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(380, '01-01-007', '40', '160', 'Power Gold 28.5 N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(381, '01-02-005', '40', '161', 'MM high power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(382, '01-01-008', '40', '160', 'Eilong 27kg N', '', '', 0, NULL, NULL, 0, '3', 200, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(383, '01-01-009', '40', '160', 'Eilong 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 200, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(384, '01-01-010', '40', '160', 'Eilong 28kg N', '', '', 0, NULL, NULL, 0, '3', 200, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(385, '01-01-011', '40', '160', 'Eilong 28.5kgN', '', '', 0, NULL, NULL, 0, '3', 200, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(386, '01-01-012', '40', '160', 'Eilong 29kg N', '', '', 0, NULL, NULL, 0, '3', 200, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(387, '01-01-013', '40', '160', 'Eilong 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(388, '01-01-014', '40', '160', 'Eilong 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(389, '01-01-015', '40', '160', 'Eilong 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(390, '01-01-016', '40', '160', 'Eilong 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(391, '01-01-017', '40', '160', 'Eilong 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(392, '01-01-018', '40', '160', 'Eilong 24kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(393, '01-01-019', '40', '160', 'H Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(394, '01-01-020', '40', '160', 'H Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(395, '01-01-021', '40', '160', 'H Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(396, '01-01-022', '40', '160', 'H Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(397, '01-01-023', '40', '160', 'H Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(398, '01-01-024', '40', '160', 'H Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(399, '01-01-025', '40', '160', 'H Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(400, '01-01-026', '40', '160', 'H Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(401, '01-01-027', '40', '160', 'H Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(402, '01-01-028', '40', '160', 'China Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(403, '01-01-029', '40', '160', 'China Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(404, '01-01-030', '40', '160', 'China Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(405, '01-01-031', '40', '160', 'China Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(406, '01-01-032', '40', '160', 'China Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(407, '01-01-033', '40', '160', 'China Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(408, '01-01-034', '40', '160', 'China Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(409, '01-01-035', '40', '160', 'China Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(410, '01-01-036', '40', '160', 'China Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(411, '01-01-037', '40', '160', 'China Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(412, '01-01-038', '40', '160', 'Power Plus 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(413, '01-01-039', '40', '160', 'Power Plus 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(414, '01-01-040', '40', '160', 'Power Plus 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(415, '01-01-041', '40', '160', 'Power Plus 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(416, '01-01-042', '40', '160', 'Power Plus 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(417, '01-01-043', '40', '160', 'Power Plus 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(418, '01-01-044', '40', '160', 'Power Plus 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(419, '01-01-045', '40', '160', 'Power Plus 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(420, '01-01-046', '40', '160', 'Power Plus 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(421, '01-01-047', '40', '160', 'Yuandi Borac 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(422, '01-01-048', '40', '160', 'Yuandi Borac 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(423, '01-01-049', '40', '160', 'Yuandi Borac 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(424, '01-01-050', '40', '160', 'Yuandi Borac 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(425, '01-01-051', '40', '160', 'Yuandi Borac 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(426, '01-01-052', '40', '160', 'Yuandi Borac 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(427, '01-01-053', '40', '160', 'Yuandi Borac 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(428, '01-01-054', '40', '160', 'Yuandi Borac 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(429, '01-01-055', '40', '160', 'Yuandi Borac 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(430, '01-01-056', '40', '160', 'Borac Super 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(431, '01-01-057', '40', '160', 'Borac Super 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(432, '01-01-058', '40', '160', 'Borac Super 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(433, '01-01-059', '40', '160', 'Borac Super 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(434, '01-01-060', '40', '160', 'Borac Super 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(435, '01-01-061', '40', '160', 'Borac Super 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(436, '01-01-062', '40', '160', 'Borac Super 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(437, '01-01-063', '40', '160', 'Borac Super 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(438, '01-01-064', '40', '160', 'Borac Super 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(439, '01-01-065', '40', '160', 'Borac Super 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(440, '01-01-066', '40', '160', 'Pacific 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(441, '01-01-067', '40', '160', 'Pacific 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(442, '01-01-068', '40', '160', 'Pacific 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(443, '01-01-069', '40', '160', 'Pacific 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(444, '01-01-070', '40', '160', 'Pacific 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(445, '01-01-071', '40', '160', 'Pacific 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(446, '01-01-072', '40', '160', 'Pacific 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(447, '01-01-073', '40', '160', 'Pacific 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(448, '01-01-074', '40', '160', 'Pacific 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(449, '01-01-075', '40', '160', 'Pacific 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(450, '01-01-076', '40', '160', 'SF 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(451, '01-01-077', '40', '160', 'SF 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(452, '01-01-078', '40', '160', 'SF 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(453, '01-01-079', '40', '160', 'SF 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(454, '01-01-080', '40', '160', 'SF 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(455, '01-01-081', '40', '160', 'SF 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(456, '01-01-082', '40', '160', 'SF 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(457, '01-01-083', '40', '160', 'SF 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(458, '01-01-084', '40', '160', 'SF 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(459, '01-01-085', '40', '160', 'SF 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(460, '01-01-086', '40', '160', 'Kin Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(461, '01-01-087', '40', '160', 'Kin Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(462, '01-01-088', '40', '160', 'Kin Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(463, '01-01-089', '40', '160', 'Kin Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(464, '01-01-090', '40', '160', 'Kin Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(465, '01-01-091', '40', '160', 'Kin Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(466, '01-01-092', '40', '160', 'Kin Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(467, '01-01-093', '40', '160', 'Kin Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(468, '01-01-094', '40', '160', 'Kin Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(469, '01-01-095', '40', '160', 'Kin Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(470, '01-01-096', '40', '160', 'Magnet 27.5Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(471, '01-01-097', '40', '160', 'Magnet 28Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(472, '01-01-098', '40', '160', 'Magnet 28.5Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(473, '01-01-099', '40', '160', 'Magnet 29Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(474, '01-01-100', '40', '160', 'Magnet 29.5Kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(475, '01-01-101', '40', '160', 'Magnet 28Kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(476, '01-01-102', '40', '160', 'Magnet 28.5Kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(477, '01-01-103', '40', '160', 'Magnet 29Kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(478, '01-01-104', '40', '160', 'Magnet 29.5Kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(479, '01-01-105', '40', '160', 'E Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(480, '01-01-106', '40', '160', 'E Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(481, '01-01-107', '40', '160', 'E Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(482, '01-01-108', '40', '160', 'E Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(483, '01-01-109', '40', '160', 'E Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(484, '01-01-110', '40', '160', 'E Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(485, '01-01-111', '40', '160', 'E Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(486, '01-01-112', '40', '160', 'E Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(487, '01-01-113', '40', '160', 'E Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(488, '01-01-114', '40', '160', 'E Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(489, '01-01-115', '40', '160', 'Power Plus Janding 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(490, '01-01-116', '40', '160', 'Power Plus Janding 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(491, '01-01-117', '40', '160', 'Power Plus Janding 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(492, '01-01-118', '40', '160', 'Power Plus Janding 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(493, '01-01-119', '40', '160', 'Power Plus Janding 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(494, '01-01-120', '40', '160', 'Power Plus Janding 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(495, '01-01-121', '40', '160', 'Power Plus Janding 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(496, '01-01-122', '40', '160', 'Power Plus Janding 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(497, '01-01-123', '40', '160', 'Power Plus Janding 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(498, '01-01-124', '40', '160', 'Power Plus Janding 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(499, '01-01-125', '40', '160', 'Power Plus 22kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(500, '01-01-126', '40', '160', 'Power Plus 24kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(501, '01-01-127', '40', '160', 'XS 22kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(502, '01-01-128', '40', '160', 'XS 24kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(503, '01-01-129', '40', '160', 'XP 22kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(504, '01-01-130', '40', '160', 'XP 24kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(505, '01-02-006', '40', '161', 'Power Plus N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(506, '01-02-007', '40', '161', 'Power Plus MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(507, '01-02-008', '40', '161', 'Power Plus 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(508, '01-02-009', '40', '161', 'Power Plus 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(509, '01-02-010', '40', '161', 'Eilong N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(510, '01-02-011', '40', '161', 'Eilong MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(511, '01-02-012', '40', '161', 'Eilong MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(512, '01-02-013', '40', '161', 'Eilong 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(513, '01-02-014', '40', '161', 'Eilong 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(514, '01-02-015', '40', '161', 'OT Power N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(515, '01-02-016', '40', '161', 'OT Power MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(516, '01-02-017', '40', '161', 'OT Power MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(517, '01-02-018', '40', '161', 'OT Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(518, '01-02-019', '40', '161', 'OT Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(519, '01-02-020', '40', '161', 'Hangli N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(520, '01-02-021', '40', '161', 'Hangli MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(521, '01-02-022', '40', '161', 'Hangli MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(522, '01-02-023', '40', '161', 'Hangli 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(523, '01-02-024', '40', '161', 'Hangli 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(524, '01-02-025', '40', '161', 'Star Gold N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(525, '01-02-026', '40', '161', 'Star Gold MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(526, '01-02-027', '40', '161', 'Star Gold MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(527, '01-02-028', '40', '161', 'Star Gold 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(528, '01-02-029', '40', '161', 'Star Gold 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(529, '01-02-030', '40', '161', '3 Dragon MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(530, '01-02-031', '40', '161', '3 Dragon MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(531, '01-02-032', '40', '161', '3 Dragon 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(532, '01-02-033', '40', '161', '3 Dragon 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(533, '01-02-034', '40', '161', 'SA Power N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(534, '01-02-035', '40', '161', 'SA Power MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(535, '01-02-036', '40', '161', 'SA Power MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(536, '01-02-037', '40', '161', 'SA Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(537, '01-02-038', '40', '161', 'SA Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(538, '01-02-039', '40', '161', 'Borac Super N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(539, '01-02-040', '40', '161', 'Borac Super MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(540, '01-02-041', '40', '161', 'Borac Super MM G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(541, '01-02-042', '40', '161', 'Borac Super 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(542, '01-02-043', '40', '161', 'Borac Super 29kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(543, '01-05-001', '40', '164', 'Scrap Material', 'Scrap', '', 12, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(544, '02-01-001', '41', '165', 'Scrap material', 'Scrap', '', 100, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`, `created_at`) VALUES
(44840, 'MRR-CW005', '01-02-002', '2022-04-11', 1000, 2000, 0, 0, 2, 'Receive', 1.1, '2', '0', 'MRR-CW005', '', '2', '10', '', '', 0, '2022-04-11'),
(44841, 'MRR-CW005', '01-02-001', '2022-04-11', 2000, 6000, 0, 0, 3, 'Receive', 1.1, '2', '0', 'MRR-CW005', 'powerplus', '2', '10', '', '', 0, '2022-04-11'),
(44850, 'MRR-CW006', '01-01-057', '2022-04-11', 200, 1660000, 0, 0, 8300, 'Receive', 1.1, '2', '0', 'MRR-CW006', '', '2', '10', '', '', 0, '2022-04-11'),
(44855, 'MRR-CW007', '01-01-056', '2022-04-13', 250, 2050000, 0, 0, 8200, 'Receive', 1.1, '2', '0', 'MRR-CW007', '', '2', '10', '', '', 0, '2022-04-13'),
(44856, 'MRR-CW008', '01-01-063', '2022-04-13', 200, 1740000, 0, 0, 8700, 'Receive', 1.1, '2', '0', 'MRR-CW008', '', '2', '10', '', '', 0, '2022-04-13'),
(44857, 'MRR-CW008', '01-01-059', '2022-04-13', 200, 1700000, 0, 0, 8500, 'Receive', 1.1, '2', '0', 'MRR-CW008', '', '2', '10', '', '', 0, '2022-04-13'),
(44858, 'MRR-CW008', '01-01-058', '2022-04-13', 200, 1680000, 0, 0, 8400, 'Receive', 1.1, '2', '0', 'MRR-CW008', '', '2', '10', '', '', 0, '2022-04-13'),
(44859, 'MRR-CW008', '01-01-062', '2022-04-13', 200, 1720000, 0, 0, 8600, 'Receive', 1.1, '2', '0', 'MRR-CW008', '', '2', '10', '', '', 0, '2022-04-13'),
(44863, 'MRR-CW009', '01-02-033', '2022-04-13', 200, 1800000, 0, 0, 9000, 'Receive', 1.1, '2', '0', 'MRR-CW009', '', '2', '10', '', '', 0, '2022-04-13'),
(44864, 'MRR-CW009', '01-02-032', '2022-04-13', 300, 2610000, 0, 0, 8700, 'Receive', 1.1, '2', '0', 'MRR-CW009', '', '2', '10', '', '', 0, '2022-04-13'),
(44865, 'MRR-CW009', '01-02-030', '2022-04-13', 200, 1740000, 0, 0, 8700, 'Receive', 1.1, '2', '0', 'MRR-CW009', '', '2', '10', '', '', 0, '2022-04-13'),
(44866, 'MRR-CW009', '01-02-031', '2022-04-13', 250, 2225000, 0, 0, 8900, 'Receive', 1.1, '2', '0', 'MRR-CW009', '', '2', '10', '', '', 0, '2022-04-13'),
(44876, 'MRR-CW010', '01-01-029', '2022-04-13', 200, 1660000, 0, 0, 8300, 'Receive', 1.1, '2', '0', 'MRR-CW010', '', '2', '10', '', '', 0, '2022-04-13'),
(44877, 'MRR-CW010', '01-01-030', '2022-04-13', 300, 2610000, 0, 0, 8700, 'Receive', 1.1, '2', '0', 'MRR-CW010', '', '2', '10', '', '', 0, '2022-04-13'),
(44879, '01-01-001', '01-01-001', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44880, '01-01-002', '01-01-002', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44881, '01-01-003', '01-01-003', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44882, '01-01-004', '01-01-004', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44883, '01-01-005', '01-01-005', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44884, '01-01-006', '01-01-006', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44885, '01-01-007', '01-01-007', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44886, '01-01-008', '01-01-008', '2022-04-16', 200, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44887, '01-01-009', '01-01-009', '2022-04-16', 200, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44888, '01-01-010', '01-01-010', '2022-04-16', 200, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44889, '01-01-011', '01-01-011', '2022-04-16', 200, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44890, '01-01-012', '01-01-012', '2022-04-16', 200, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44891, '01-01-013', '01-01-013', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44892, '01-01-014', '01-01-014', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44893, '01-01-015', '01-01-015', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44894, '01-01-016', '01-01-016', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44895, '01-01-017', '01-01-017', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44896, '01-01-018', '01-01-018', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44897, '01-01-019', '01-01-019', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44898, '01-01-020', '01-01-020', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44899, '01-01-021', '01-01-021', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44900, '01-01-022', '01-01-022', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44901, '01-01-023', '01-01-023', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44902, '01-01-024', '01-01-024', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44903, '01-01-025', '01-01-025', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44904, '01-01-026', '01-01-026', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44905, '01-01-027', '01-01-027', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44906, '01-01-028', '01-01-028', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44907, '01-01-029', '01-01-029', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44908, '01-01-030', '01-01-030', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44909, '01-01-031', '01-01-031', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44910, '01-01-032', '01-01-032', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44911, '01-01-033', '01-01-033', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44912, '01-01-034', '01-01-034', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44913, '01-01-035', '01-01-035', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44914, '01-01-036', '01-01-036', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44915, '01-01-037', '01-01-037', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44916, '01-01-038', '01-01-038', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44917, '01-01-039', '01-01-039', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44918, '01-01-040', '01-01-040', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44919, '01-01-041', '01-01-041', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44920, '01-01-042', '01-01-042', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44921, '01-01-043', '01-01-043', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44922, '01-01-044', '01-01-044', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44923, '01-01-045', '01-01-045', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44924, '01-01-046', '01-01-046', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44925, '01-01-047', '01-01-047', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44926, '01-01-048', '01-01-048', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44927, '01-01-049', '01-01-049', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44928, '01-01-050', '01-01-050', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44929, '01-01-051', '01-01-051', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44930, '01-01-052', '01-01-052', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44931, '01-01-053', '01-01-053', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44932, '01-01-054', '01-01-054', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44933, '01-01-055', '01-01-055', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44934, '01-01-056', '01-01-056', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44935, '01-01-057', '01-01-057', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44936, '01-01-058', '01-01-058', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44937, '01-01-059', '01-01-059', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44938, '01-01-060', '01-01-060', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44939, '01-01-061', '01-01-061', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44940, '01-01-062', '01-01-062', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44941, '01-01-063', '01-01-063', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44942, '01-01-064', '01-01-064', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44943, '01-01-065', '01-01-065', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44944, '01-01-066', '01-01-066', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44945, '01-01-067', '01-01-067', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44946, '01-01-068', '01-01-068', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44947, '01-01-069', '01-01-069', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44948, '01-01-070', '01-01-070', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44949, '01-01-071', '01-01-071', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44950, '01-01-072', '01-01-072', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44951, '01-01-073', '01-01-073', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44952, '01-01-074', '01-01-074', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44953, '01-01-075', '01-01-075', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44954, '01-01-076', '01-01-076', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44955, '01-01-077', '01-01-077', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44956, '01-01-078', '01-01-078', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44957, '01-01-079', '01-01-079', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44958, '01-01-080', '01-01-080', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44959, '01-01-081', '01-01-081', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44960, '01-01-082', '01-01-082', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44961, '01-01-083', '01-01-083', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44962, '01-01-084', '01-01-084', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44963, '01-01-085', '01-01-085', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44964, '01-01-086', '01-01-086', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44965, '01-01-087', '01-01-087', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44966, '01-01-088', '01-01-088', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44967, '01-01-089', '01-01-089', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44968, '01-01-090', '01-01-090', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44969, '01-01-091', '01-01-091', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44970, '01-01-092', '01-01-092', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44971, '01-01-093', '01-01-093', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44972, '01-01-094', '01-01-094', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44973, '01-01-095', '01-01-095', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44974, '01-01-096', '01-01-096', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44975, '01-01-097', '01-01-097', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44976, '01-01-098', '01-01-098', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44977, '01-01-099', '01-01-099', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44978, '01-01-100', '01-01-100', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44979, '01-01-101', '01-01-101', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44980, '01-01-102', '01-01-102', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44981, '01-01-103', '01-01-103', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44982, '01-01-104', '01-01-104', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44983, '01-01-105', '01-01-105', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44984, '01-01-106', '01-01-106', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44985, '01-01-107', '01-01-107', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44986, '01-01-108', '01-01-108', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44987, '01-01-109', '01-01-109', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44988, '01-01-110', '01-01-110', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44989, '01-01-111', '01-01-111', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44990, '01-01-112', '01-01-112', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44991, '01-01-113', '01-01-113', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44992, '01-01-114', '01-01-114', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44993, '01-01-115', '01-01-115', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44994, '01-01-116', '01-01-116', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44995, '01-01-117', '01-01-117', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44996, '01-01-118', '01-01-118', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44997, '01-01-119', '01-01-119', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44998, '01-01-120', '01-01-120', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(44999, '01-01-121', '01-01-121', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45000, '01-01-122', '01-01-122', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45001, '01-01-123', '01-01-123', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45002, '01-01-124', '01-01-124', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45003, '01-01-125', '01-01-125', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45004, '01-01-126', '01-01-126', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45005, '01-01-127', '01-01-127', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45006, '01-01-128', '01-01-128', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45007, '01-01-129', '01-01-129', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45008, '01-01-130', '01-01-130', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45009, '01-02-001', '01-02-001', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45010, '01-02-002', '01-02-002', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45011, '01-02-003', '01-02-003', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45012, '01-02-004', '01-02-004', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45013, '01-02-005', '01-02-005', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45014, '01-02-006', '01-02-006', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45015, '01-02-007', '01-02-007', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45016, '01-02-008', '01-02-008', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45017, '01-02-009', '01-02-009', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45018, '01-02-010', '01-02-010', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45019, '01-02-011', '01-02-011', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45020, '01-02-012', '01-02-012', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45021, '01-02-013', '01-02-013', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45022, '01-02-014', '01-02-014', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45023, '01-02-015', '01-02-015', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45024, '01-02-016', '01-02-016', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45025, '01-02-017', '01-02-017', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45026, '01-02-018', '01-02-018', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45027, '01-02-019', '01-02-019', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45028, '01-02-020', '01-02-020', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45029, '01-02-021', '01-02-021', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45030, '01-02-022', '01-02-022', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45031, '01-02-023', '01-02-023', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45032, '01-02-024', '01-02-024', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45033, '01-02-025', '01-02-025', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45034, '01-02-026', '01-02-026', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45035, '01-02-027', '01-02-027', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45036, '01-02-028', '01-02-028', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45037, '01-02-029', '01-02-029', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45038, '01-02-030', '01-02-030', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45039, '01-02-031', '01-02-031', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45040, '01-02-032', '01-02-032', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45041, '01-02-033', '01-02-033', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45042, '01-02-034', '01-02-034', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45043, '01-02-035', '01-02-035', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45044, '01-02-036', '01-02-036', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45045, '01-02-037', '01-02-037', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45046, '01-02-038', '01-02-038', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45047, '01-02-039', '01-02-039', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45048, '01-02-040', '01-02-040', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45049, '01-02-041', '01-02-041', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45050, '01-02-042', '01-02-042', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45051, '01-02-043', '01-02-043', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45052, '01-03-001', '01-03-001', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45053, '01-03-002', '01-03-002', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45054, '01-03-003', '01-03-003', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45055, '01-05-001', '01-05-001', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45056, '02-01-001', '02-01-001', '2022-04-16', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(45059, 'MRR-CW011', '01-03-002', '2022-04-20', 200, 3140000, 0, 0, 15700, 'Receive', 1.1, '2', '0', 'MRR-CW011', '', '2', '10', '', '', 0, '2022-04-20'),
(45060, 'MRR-CW011', '01-03-003', '2022-04-20', 200, 3800000, 0, 0, 19000, 'Receive', 1.1, '2', '0', 'MRR-CW011', '', '2', '10', '', '', 0, '2022-04-20'),
(45078, 'IS-CW001', '01-03-003', '2022-05-08', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW001', '', '2', '10', '31', 'PA-001', 0, '2022-05-08'),
(45079, 'IS-CW001', '01-03-002', '2022-05-08', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW001', '', '2', '10', '31', 'PA-001', 0, '2022-05-08'),
(45080, 'IS-CW002', '01-03-002', '2022-05-08', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', '', '2', '10', '31', 'PA-001', 0, '2022-05-08'),
(45081, 'IS-CW002', '01-03-003', '2022-05-08', 0, 0, 6, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', '', '2', '10', '31', 'PA-001', 0, '2022-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(160, '01-01-000', '40', 'ZHOO'),
(161, '01-02-000', '40', 'ZIRANI'),
(162, '01-03-000', '40', 'DK'),
(163, '01-04-000', '40', 'DONG YA'),
(164, '01-05-000', '40', 'Scrap Material'),
(165, '02-01-000', '41', 'Scrap Material');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`) VALUES
(40, '01-00-000', 'BATTERY', NULL, NULL, NULL),
(41, '02-00-000', 'Scrap Material', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_partybalance`
--

CREATE TABLE `inv_partybalance` (
  `id` int(11) NOT NULL,
  `pb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `pb_date` date NOT NULL,
  `memono` int(20) NOT NULL,
  `partner_id` varchar(20) NOT NULL,
  `pb_party_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `pb_dr_amount` float NOT NULL,
  `pb_cr_amount` float NOT NULL,
  `pb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `pb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_partybalance`
--

INSERT INTO `inv_partybalance` (`id`, `pb_ref_id`, `warehouse_id`, `pb_date`, `memono`, `partner_id`, `pb_party_id`, `pb_dr_amount`, `pb_cr_amount`, `pb_remark`, `pb_partac_id`, `approval_status`) VALUES
(22, 'IS-CW001', '10', '2022-05-08', 420, '31', 'PA-001', 1050, 0, 'i version 1', 'IS-CW001', 0),
(23, 'IS-CW002', '10', '2022-05-08', 780, '31', 'PA-001', 1400, 0, '2nd', 'IS-CW002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_profitshare`
--

CREATE TABLE `inv_profitshare` (
  `billno` varchar(20) CHARACTER SET latin1 NOT NULL,
  `billdate` date NOT NULL,
  `partnerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ownerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partyid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `profitowneramount` float NOT NULL,
  `profitpatneramount` float NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_profitshare`
--

INSERT INTO `inv_profitshare` (`billno`, `billdate`, `partnerid`, `ownerid`, `partyid`, `totalcur`, `totalamount`, `profitamount`, `profitowneramount`, `profitpatneramount`, `warehouse_id`) VALUES
('IS-CW001', '2022-05-08', '31', 'MM-1', 'PA-001', 800, 1050, 250, 125, 125, '10'),
('IS-CW002', '2022-05-08', '31', 'MM-1', 'PA-001', 850, 1400, 550, 275, 275, '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_profitsharescrap`
--

CREATE TABLE `inv_profitsharescrap` (
  `billno` varchar(20) CHARACTER SET latin1 NOT NULL,
  `billdate` date NOT NULL,
  `partnerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ownerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `totalamount` float NOT NULL,
  `profitowneramount` float NOT NULL,
  `profitpatneramount` float NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_profitsharescrap`
--

INSERT INTO `inv_profitsharescrap` (`billno`, `billdate`, `partnerid`, `ownerid`, `totalamount`, `profitowneramount`, `profitpatneramount`, `warehouse_id`) VALUES
('SS-CW001', '2022-04-14', 'PID-001', 'MM-1', 10000, 5000, 5000, '10'),
('SS-CW002', '2022-04-14', 'PID-001', 'MM-1', 100000, 50000, 50000, '10'),
('SS-CW003', '2022-04-14', 'PID-001', 'MM-1', 36000, 18000, 18000, '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receive`
--

INSERT INTO `inv_receive` (`id`, `mrr_no`, `mrr_date`, `purchase_id`, `receive_acct_id`, `supplier_id`, `postedtogl`, `vat_challan_no`, `remarks`, `receive_type`, `project_id`, `warehouse_id`, `receive_unit_id`, `chk_year_end`, `receive_total`, `no_of_material`, `challanno`, `challan_date`, `jv_no`, `part_no`, `requisitionno`, `requisition_date`, `received_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `mrr_image`, `created_at`) VALUES
(1766, 'MRR-CW001', '2022-04-08', '', '6-14-010', 'SID-001', 0, 'g', 'f', 'Credit', '2', '10', '1', NULL, 500000, 500, '2147', '2022-04-08', NULL, 'IGNITE', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-08'),
(1767, 'MRR-CW002', '2022-04-10', '', '6-14-010', 'SID-001', 0, 'vaty', 'jk', 'Credit', '2', '10', '1', NULL, 32500, 1600, '345', '2022-04-10', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-10'),
(1768, 'MRR-CW003', '2022-04-10', '', '6-14-010', 'SID-001', 0, 'vat547', 'gt', 'Credit', '2', '10', '1', NULL, 8000, 300, '1321', '2022-04-10', NULL, 'powerplus', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-10'),
(1769, 'MRR-CW004', '2022-04-11', '', '6-14-010', 'SID-001', 0, 'h', 'f', 'Credit', '2', '10', '1', NULL, 2000, 1000, '54', '2022-04-11', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-11'),
(1770, 'MRR-CW005', '2022-04-11', '', '6-14-010', 'SID-001', 0, 'g', 'kk', 'Credit', '2', '10', '1', NULL, 8000, 3000, 'ff', '2022-04-11', NULL, 'powerplus', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-11'),
(1771, 'MRR-CW006', '2022-04-11', '', '6-14-010', 'SID-001', 0, '111', 'Na', 'Credit', '2', '10', '1', NULL, 1660000, 200, '212', '2022-04-11', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-11'),
(1772, 'MRR-CW007', '2022-04-13', '', '6-14-010', 'SID-001', 0, '1818', 'na', 'Credit', '2', '10', '1', NULL, 2050000, 250, '1818', '2022-04-13', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-13'),
(1773, 'MRR-CW008', '2022-04-13', '', '6-14-010', 'SID-001', 0, '333', 'na', 'Credit', '2', '10', '1', NULL, 6840000, 800, '333', '2022-04-13', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-13'),
(1774, 'MRR-CW009', '2022-04-13', '', '6-14-010', 'SID-002', 0, '000', 'Na', 'Credit', '2', '10', '1', NULL, 8375000, 950, '555', '2022-04-13', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-13'),
(1775, 'MRR-CW010', '2022-04-13', '', '6-14-010', 'SID-001', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 4270000, 500, '999', '2022-04-13', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-13'),
(1776, 'MRR-CW011', '2022-04-20', '', '6-14-010', 'SID-003', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 6940000, 400, '525', '2022-04-20', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receivedetail`
--

INSERT INTO `inv_receivedetail` (`id`, `mrr_no`, `material_id`, `material_name`, `unit_id`, `receive_qty`, `unit_price`, `sl_no`, `total_receive`, `rd_serial_id`, `part_no`, `project_id`, `warehouse_id`, `approval_status`) VALUES
(2462, 'MRR-CW001', '01-02-002', '364', 1, 500, 1000, 1, 500000, '', 'IGNITE', '2', '10', 0),
(2463, 'MRR-CW002', '01-01-002', '362', 3, 200, 15, 1, 3000, '', 'IGNITE', '2', '10', 0),
(2464, 'MRR-CW002', '01-01-001', '361', 3, 300, 20, 1, 6000, '', 'IGNITE', '2', '10', 0),
(2465, 'MRR-CW002', '01-02-001', '363', 3, 400, 15, 1, 6000, '', 'powerplus', '2', '10', 0),
(2466, 'MRR-CW002', '01-02-002', '364', 1, 700, 25, 1, 17500, '', '', '2', '10', 0),
(2467, 'MRR-CW003', '01-01-002', '362', 3, 100, 20, 1, 2000, '', 'IGNITE', '2', '10', 0),
(2468, 'MRR-CW003', '01-02-001', '363', 3, 200, 30, 1, 6000, '', 'powerplus', '2', '10', 0),
(2469, 'MRR-CW004', '01-02-002', '364', 1, 1000, 2, 1, 2000, '', '', '2', '10', 0),
(2470, 'MRR-CW005', '01-02-002', '364', 1, 1000, 2, 1, 2000, '', '', '2', '10', 0),
(2471, 'MRR-CW005', '01-02-001', '363', 3, 2000, 3, 1, 6000, '', 'powerplus', '2', '10', 0),
(2472, 'MRR-CW006', '01-01-057', '431', 3, 200, 8300, 1, 1660000, '', '', '2', '10', 0),
(2473, 'MRR-CW007', '01-01-056', '430', 3, 250, 8200, 1, 2050000, '', '', '2', '10', 0),
(2474, 'MRR-CW008', '01-01-063', '437', 3, 200, 8700, 1, 1740000, '', '', '2', '10', 0),
(2475, 'MRR-CW008', '01-01-059', '433', 3, 200, 8500, 1, 1700000, '', '', '2', '10', 0),
(2476, 'MRR-CW008', '01-01-058', '432', 3, 200, 8400, 1, 1680000, '', '', '2', '10', 0),
(2477, 'MRR-CW008', '01-01-062', '436', 3, 200, 8600, 1, 1720000, '', '', '2', '10', 0),
(2478, 'MRR-CW009', '01-02-033', '532', 3, 200, 9000, 1, 1800000, '', '', '2', '10', 0),
(2479, 'MRR-CW009', '01-02-032', '531', 3, 300, 8700, 1, 2610000, '', '', '2', '10', 0),
(2480, 'MRR-CW009', '01-02-030', '529', 3, 200, 8700, 1, 1740000, '', '', '2', '10', 0),
(2481, 'MRR-CW009', '01-02-031', '530', 3, 250, 8900, 1, 2225000, '', '', '2', '10', 0),
(2482, 'MRR-CW010', '01-01-029', '403', 3, 200, 8300, 1, 1660000, '', '', '2', '10', 0),
(2483, 'MRR-CW010', '01-01-030', '404', 3, 300, 8700, 1, 2610000, '', '', '2', '10', 0),
(2484, 'MRR-CW011', '01-03-002', '373', 15, 200, 15700, 1, 3140000, '', '', '2', '10', 0),
(2485, 'MRR-CW011', '01-03-003', '374', 15, 200, 19000, 1, 3800000, '', '', '2', '10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_return`
--

INSERT INTO `inv_return` (`id`, `return_id`, `return_date`, `remarks`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(63, 'RTN-CW001', '2022-03-13', 'PRODUCT RETURN', '2', '10', '20', 'PA-5', ''),
(64, 'RTN-CW002', '2022-03-17', 'return', '2', '10', '20', 'pa-5', ''),
(65, 'RTN-CW003', '2022-04-03', 'm', '2', '10', '20', 'PA-5', ''),
(66, 'RTN-CW004', '2022-04-04', 'gh', '2', '10', '19', 'PA-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_returndetail`
--

INSERT INTO `inv_returndetail` (`id`, `return_id`, `return_date`, `material_id`, `material_name`, `unit`, `return_qty`, `return_price`, `part_no`, `project_id`, `warehouse_id`) VALUES
(82, 'RTN-CW001', '2022-03-13', '01-02-001', '363', '3', 2, 0, '', '2', '10'),
(83, 'RTN-CW002', '2022-03-17', '01-01-002', '362', '3', 1, 0, '', '2', '10'),
(84, 'RTN-CW003', '2022-04-03', '01-01-001', '361', '3', 21, 0, '', '2', '10'),
(85, 'RTN-CW004', '2022-04-04', '01-01-002', '362', '3', 20, 0, '', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_scrap`
--

CREATE TABLE `inv_scrap` (
  `id` int(11) NOT NULL,
  `ss_id` varchar(25) NOT NULL,
  `ss_date` date NOT NULL,
  `partner_id` varchar(21) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalamount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_scrap`
--

INSERT INTO `inv_scrap` (`id`, `ss_id`, `ss_date`, `partner_id`, `received_by`, `totalamount`, `paidamount`, `Dueamount`, `receiver_phone`, `remarks`, `project_id`, `warehouse_id`, `issued_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `issue_image`, `created_at`) VALUES
(2, 'SS-CW001', '2022-04-14', 'PID-001', '', 10000, 0, 0, '', '', '2', '10', '', 0, '', NULL, '', '', ''),
(3, 'SS-CW002', '2022-04-14', 'PID-001', '', 100000, 100000, 0, '', '', '2', '10', '', 0, '', NULL, '', '', ''),
(4, 'SS-CW003', '2022-04-14', 'PID-001', '', 36000, 36000, 0, '', '', '2', '10', '', 0, '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_scrapdetail`
--

CREATE TABLE `inv_scrapdetail` (
  `id` int(11) NOT NULL,
  `ss_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ss_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_scrapdetail`
--

INSERT INTO `inv_scrapdetail` (`id`, `ss_id`, `ss_date`, `material_id`, `material_name`, `unit`, `issue_qty`, `issue_price`, `amount`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`) VALUES
(2, 'SS-CW001', '2022-04-14', '01-05-001', '543', '1', 20, 500, 10000, 'Scrap', '2', '10', 'PID-001', '1', 0),
(3, 'SS-CW002', '2022-04-14', '01-05-001', '543', '1', 20, 5000, 100000, 'Scrap', '2', '10', 'PID-001', '1', 0),
(4, 'SS-CW003', '2022-04-14', '01-05-001', '543', '3', 18, 2000, 36000, 'Scrap', '2', '10', 'PID-001', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `receivermode` varchar(150) NOT NULL,
  `paymenttype` varchar(45) NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `receivermode`, `paymenttype`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(1588, 'MRR-CW001', '10', '2022-04-08', 'SID-001', 0, 500000, '', '', 'f', 'MRR-CW001', 0),
(1589, 'MRR-CW002', '10', '2022-04-10', 'SID-001', 0, 32500, '', '', 'jk', 'MRR-CW002', 0),
(1590, 'MRR-CW003', '10', '2022-04-10', 'SID-001', 0, 8000, '', '', 'gt', 'MRR-CW003', 0),
(1591, 'VID-004', '', '2022-04-10', 'SID-001', 5000, 0, '', '', 'hu', 'VID-004', 0),
(1592, 'MRR-CW004', '10', '2022-04-11', 'SID-001', 0, 2000, '', '', 'f', 'MRR-CW004', 0),
(1593, 'MRR-CW005', '10', '2022-04-11', 'SID-001', 0, 8000, '', '', 'kk', 'MRR-CW005', 0),
(1594, 'MRR-CW006', '10', '2022-04-11', 'SID-001', 0, 1660000, '', '', 'Na', 'MRR-CW006', 0),
(1595, 'MRR-CW007', '10', '2022-04-13', 'SID-001', 0, 2050000, '', '', 'na', 'MRR-CW007', 0),
(1596, 'MRR-CW008', '10', '2022-04-13', 'SID-001', 0, 6840000, '', '', 'na', 'MRR-CW008', 0),
(1597, 'MRR-CW009', '10', '2022-04-13', 'SID-002', 0, 8375000, '', '', 'Na', 'MRR-CW009', 0),
(1598, 'MRR-CW010', '10', '2022-04-13', 'SID-001', 0, 4270000, '', '', ' NAR', 'MRR-CW010', 0),
(1599, 'VID-005', '', '2022-04-16', 'SID-001', 2000000, 0, '', '', '', 'VID-005', 0),
(1600, 'VID-006', '', '2022-04-17', 'SID-001', 500000, 0, '', '', '', 'VID-006', 0),
(1601, 'VID-007', '', '2022-04-17', 'SID-001', 200000, 0, '', '', 'IBBL', 'VID-007', 0),
(1602, 'VID-008', '', '2022-04-18', 'SID-005', 101, 0, 'Biplob Hasan RM', 'cash', 'Good Payment paichi', 'VID-008', 0),
(1603, 'VID-008', '', '2022-04-18', 'SID-001', 1000, 0, 'Biplob sorker.Dhaka bank', 'credit', 'payment got Rahul,gulshan branch', 'VID-008', 0),
(1604, 'VID-008', '', '2022-04-18', 'SID-001', 0, 0, 'Kamal Hasan:017845124', 'credit', 'good', 'VID-008', 0),
(1605, 'VID-008', '', '2022-04-18', 'SID-001', 200, 0, 'Biplob Hasan RM', 'cash', 'desco', 'VID-008', 0),
(1606, 'VID-008', '', '2022-04-18', 'SID-001', 300, 0, 'Dhaka Bank.HASAN', 'Bank', 'paymeny collect from Hasan', 'VID-008', 0),
(1607, 'VID-008', '', '2022-04-18', 'SID-001', 50000, 0, ' BossZhoo', 'cash', '', 'VID-008', 0),
(1608, 'MRR-CW011', '10', '2022-04-20', 'SID-003', 0, 6940000, '', '', ' NAR', 'MRR-CW011', 0),
(1609, 'VID-008', '', '2022-04-20', 'SID-003', 500000, 0, 'Arshaful', 'cash', '', 'VID-008', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'WH-001', 'CENTRAL WAREHOUSE', 'CW', '2', '', NULL, 0, '2020-09-09 05:04:48', NULL, NULL),
(17, 'WH-002', 'MOHALHALIA', 'MO', '2', 'MOH', NULL, 0, '2022-01-09 09:04:18', NULL, NULL),
(18, 'WH-003', 'GAZIPUR', 'GA', '2', '', NULL, 0, '2022-02-12 10:14:41', NULL, NULL),
(19, 'WH-004', 'TANGAIL', 'TA', '2', '', NULL, 0, '2022-03-20 08:20:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `partner_id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(31, 'PID-001', 'ALAMGIR', '', '2022-03-25 20:17:27', NULL),
(32, 'PID-002', 'Anower', '', '2022-03-25 20:17:36', NULL),
(33, 'PID-003', 'Babu', '', '2022-03-25 20:17:43', NULL),
(34, 'PID-004', 'Faruk', '', '2022-03-25 20:17:49', NULL),
(35, 'PID-005', 'Rafiq', '', '2022-03-25 20:18:11', NULL),
(36, 'PID-006', 'Rezaul', '', '2022-03-25 20:18:16', NULL),
(37, 'PID-007', 'Sabuz', '', '2022-03-25 20:18:34', NULL),
(38, 'PID-008', 'Shahalam', '', '2022-03-25 20:18:40', NULL),
(39, 'PID-009', 'Sahadat', '', '2022-03-25 20:19:04', NULL),
(40, 'PID-010', 'Shapon', '', '2022-03-25 20:19:39', NULL),
(41, 'PID-011', 'Harun', '', '2022-03-26 11:27:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partnerpayment`
--

CREATE TABLE `partnerpayment` (
  `id` int(11) NOT NULL,
  `tranid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trandate` date NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `expensedesc` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trantype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amountdeposit` float NOT NULL,
  `amountwithdraw` float NOT NULL,
  `warehouse_id` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partnerpayment`
--

INSERT INTO `partnerpayment` (`id`, `tranid`, `trandate`, `partner_id`, `expensedesc`, `trantype`, `amountdeposit`, `amountwithdraw`, `warehouse_id`) VALUES
(10, 'TRN-001', '2022-05-07', '31', 'hghgf', 'payment/withdraw', 0, 100, '10'),
(11, 'TRN-002', '2022-05-07', '31', 'pppp', 'Deposit', 8000, 0, '10'),
(12, 'TRN-003', '2022-05-04', '31', 'desposit taka', 'Deposit', 200, 0, '10');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `partner_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `serial` int(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`id`, `party_id`, `partyname`, `partner_id`, `serial`, `created_at`, `updated_at`) VALUES
(2048, 'PA-001', 'Alam Nagorpur', '31', 1, '2022-03-25 20:32:34', NULL),
(2049, 'PA-002', 'Alamin Sagardighi', '31', 2, '2022-03-25 20:33:27', NULL),
(2050, 'PA-003', 'Anik Sokhipur', '31', 3, '2022-03-25 20:33:58', NULL),
(2051, 'PA-004', 'Arif Gatail', '31', 4, '2022-03-25 20:34:28', NULL),
(2052, 'PA-005', 'Arpon Tangil', '31', 5, '2022-03-25 20:35:13', NULL),
(2053, 'PA-006', 'Anas sicle Kaliganj', '32', 1, '2022-03-25 20:36:20', NULL),
(2054, 'PA-007', 'Harun Sicle Kaligonj', '32', 2, '2022-03-25 20:36:49', NULL),
(2055, 'PA-008', 'Islam Boardbazar', '32', 3, '2022-03-25 20:37:50', NULL),
(2056, 'PA-009', 'Jalal Majar', '32', 4, '2022-03-25 20:38:29', NULL),
(2057, 'PA-010', 'Rumi Boardbazar', '32', 5, '2022-03-25 20:39:00', NULL),
(2058, 'PA-011', 'shaharatali Bancharampur', '37', 1, '2022-03-26 11:26:02', NULL),
(2059, 'PA-012', 'Race Sonargaw', '41', 0, '2022-03-26 11:28:33', NULL),
(2060, 'PA-013', 'Maa Baba Dhoya Mirpur', '33', 1, '2022-03-26 11:29:33', NULL),
(2061, 'PA-014', 'Shaha amanot Gouripur', '33', 2, '2022-03-26 11:30:39', NULL),
(2062, 'PA-015', 'Bismilla Coxbazar', '37', 2, '2022-03-26 11:34:00', NULL),
(2063, 'PA-016', 'SB kapashiya', '36', 1, '2022-03-26 11:34:37', NULL),
(2064, 'PA-017', 'MK Mawna', '36', 2, '2022-03-26 11:35:34', NULL),
(2065, 'PA-018', 'Anik Charagali', '34', 1, '2022-03-26 11:36:23', NULL),
(2066, 'PA-019', 'Maa Baba Dhoya shilmun', '34', 2, '2022-03-26 11:38:03', NULL),
(2067, 'PA-020', 'Sidikiya Majar', '35', 1, '2022-03-26 11:39:32', NULL),
(2068, 'PA-021', 'Adunik Liton Hobigonj', '39', 0, '2022-03-29 18:17:47', NULL),
(2069, 'PA-022', 'Bismilla B. Baria', '39', 0, '2022-03-29 18:19:01', NULL),
(2070, 'PA-023', 'Bismilla Hobigonj', '39', 0, '2022-03-29 18:19:41', NULL),
(2071, 'PA-024', 'Doha Auto B.Bariya', '39', 0, '2022-03-29 18:20:51', NULL),
(2072, 'PA-025', 'Ershad Hobigonj', '39', 0, '2022-03-29 18:21:40', NULL),
(2073, 'PA-026', 'Fahim Suhilpur', '39', 0, '2022-03-29 18:22:43', NULL),
(2074, 'PA-027', 'Fariya Hobigonj', '39', 0, '2022-03-29 18:23:43', NULL),
(2075, 'PA-028', 'Jesika Voirub', '39', 0, '2022-03-29 18:25:12', NULL),
(2076, 'PA-029', 'Khaza Traders Hobigonj', '39', 0, '2022-03-29 18:25:58', NULL),
(2077, 'PA-030', 'Khurshed Savar', '39', 0, '2022-03-29 18:28:09', NULL),
(2078, 'PA-031', 'Maa Auto Hobigonj', '39', 0, '2022-03-29 18:30:01', NULL),
(2079, 'PA-032', 'Nazmul Hobigonj', '39', 0, '2022-03-29 18:30:51', NULL),
(2080, 'PA-033', 'New Adunik Hobigonj', '39', 0, '2022-03-29 18:31:44', NULL),
(2081, 'PA-034', 'Panch Vai Hobigonj', '39', 0, '2022-03-29 18:33:22', NULL),
(2082, 'PA-035', 'Reyead Hobigonj', '39', 0, '2022-03-29 18:34:36', NULL),
(2083, 'PA-036', 'Rishan Raipur', '39', 0, '2022-03-29 18:35:21', NULL),
(2084, 'PA-037', 'Riya kossba', '39', 0, '2022-03-29 18:36:01', NULL),
(2085, 'PA-038', 'Shahajalal (Tanvir) Hobigonj', '39', 0, '2022-03-29 18:37:33', NULL),
(2086, 'PA-039', 'Shahaporan Hobigonj', '39', 0, '2022-03-29 18:38:13', NULL),
(2087, 'PA-040', 'Sheikh Hobigonj', '39', 0, '2022-03-29 18:39:08', NULL),
(2088, 'PA-041', 'Siyam B.Bariya', '39', 0, '2022-03-29 18:40:13', NULL),
(2089, 'PA-042', 'Sojib Morjal', '39', 0, '2022-03-29 18:40:47', NULL),
(2090, 'PA-043', 'Sun Moon Sayetagonj', '39', 0, '2022-03-29 18:41:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `party_payment`
--

CREATE TABLE `party_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `warehouse_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partyid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'PR-001', 'MA MOTORS', '', '', NULL, NULL, '2020-07-22 06:25:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `values`, `data_type`, `post_type`, `created_at`, `updated_at`) VALUES
(1, NULL, '1547629427Saif--Power-tec-Logo-226x48.jpg', '1547632780Saif--Power-tec-Logo-favicon.jpg', 'Saif Inventory Management System', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-15 02:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(196, 'SID-001', 'ZHOO', 'NORSINDI', '', '', '', 'cash', '40'),
(197, 'SID-002', 'ZINANI', 'ZIRANI', '', '', '', 'cash', '40'),
(198, 'SID-003', 'DK', 'MAWNA', '', '', '', 'cash', '40'),
(199, 'SID-004', 'ECO', 'MAWNA', '', '', '', 'cash', '40'),
(200, 'SID-005', 'DONG YA', 'KASHIMPUR', '', '', '', 'cash', '40');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_payment`
--

INSERT INTO `supplier_payment` (`id`, `voucherid`, `voucherdate`, `supplierid`, `paymenttype`, `amount`, `remarks`, `sp_photo`) VALUES
(15, 'VID-001', '2022-02-06', 'SID-001', 'cash', 15000, 'paid', ''),
(16, 'VID-002', '2022-02-12', 'SID-002', 'cash', 40000, 'GDFGDFGDFGDF', ''),
(17, 'VID-003', '2022-03-17', 'SID-002', 'cash', 12000, 'imam paid', ''),
(18, 'VID-004', '2022-04-10', 'SID-001', 'cash', 5000, 'hu', ''),
(19, 'VID-005', '2022-04-16', 'SID-001', 'cash', 2000000, '', ''),
(20, 'VID-006', '2022-04-17', 'SID-001', 'cash', 500000, '', ''),
(21, 'VID-007', '2022-04-17', 'SID-001', 'credit', 200000, 'IBBL', '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `tranid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trandate` date NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `party_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trantype` varchar(20) CHARACTER SET latin1 NOT NULL,
  `amount` int(20) NOT NULL,
  `remarks` varchar(200) CHARACTER SET latin1 NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `tranid`, `trandate`, `partner_id`, `party_id`, `trantype`, `amount`, `remarks`, `warehouse_id`) VALUES
(1, 'TRN-001', '2022-04-26', '31', 'A', 'cash', 20, 'gh', '10'),
(2, 'TRN-002', '2022-04-27', '39', 'A', 'cash', 50, 'car', '10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `project_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `branch_id`, `department_id`, `id2`, `name`, `first_name`, `last_name`, `user_type`, `designation`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, NULL, 1, 'Ma Motors', 'Ma', 'Motors', 'admin', NULL, '2', '10', 'admin@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(2, 2, NULL, NULL, 2, 'Gazipur', 'Gazipur', 'Warehouse', 'whm', NULL, '2', '18', 'ga@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, NULL, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL),
(3, 2, NULL, NULL, 3, 'Londa Warehouse', 'Londa', 'Warehouse', 'whm', NULL, '2', '13', 'londa_230@eel.com', '7151a733f350b4003291116237ca76ba', 1, 'fe3ae4e0b22211d756922a0bede508cf', 1, 0, NULL, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL),
(4, 1, 1, 3, 4, 'Super Admin', 'Super', 'Admin', 'superAdmin', 16, '2', '1', 'superadmin@admin.com', 'be05977add575832dc52655d4ad5c42e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL),
(6, 2, NULL, NULL, 3, 'Lalua Warehouse', 'Lalua', 'Warehouse', 'whm', NULL, '2', '12', 'lalua_3541@eel.com', '115993e6efd414f7d2ebf560ee9d7b7c', 1, 'fe3ae4e0b22211d756922a0bede508cf', 1, 0, NULL, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inv_damage`
--
ALTER TABLE `inv_damage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damagebalance`
--
ALTER TABLE `inv_damagebalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damagedetail`
--
ALTER TABLE `inv_damagedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damageout`
--
ALTER TABLE `inv_damageout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damageoutdetail`
--
ALTER TABLE `inv_damageoutdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damaragedetailsale`
--
ALTER TABLE `inv_damaragedetailsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_damaragesale`
--
ALTER TABLE `inv_damaragesale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_profitshare`
--
ALTER TABLE `inv_profitshare`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `inv_profitsharescrap`
--
ALTER TABLE `inv_profitsharescrap`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_scrap`
--
ALTER TABLE `inv_scrap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_scrapdetail`
--
ALTER TABLE `inv_scrapdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partnerpayment`
--
ALTER TABLE `partnerpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_payment`
--
ALTER TABLE `party_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
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
-- AUTO_INCREMENT for table `inv_damage`
--
ALTER TABLE `inv_damage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `inv_damagebalance`
--
ALTER TABLE `inv_damagebalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44798;

--
-- AUTO_INCREMENT for table `inv_damagedetail`
--
ALTER TABLE `inv_damagedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `inv_damageout`
--
ALTER TABLE `inv_damageout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `inv_damageoutdetail`
--
ALTER TABLE `inv_damageoutdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `inv_damaragedetailsale`
--
ALTER TABLE `inv_damaragedetailsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `inv_damaragesale`
--
ALTER TABLE `inv_damaragesale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45082;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1777;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2486;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `inv_scrap`
--
ALTER TABLE `inv_scrap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_scrapdetail`
--
ALTER TABLE `inv_scrapdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1610;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `partnerpayment`
--
ALTER TABLE `partnerpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2091;

--
-- AUTO_INCREMENT for table `party_payment`
--
ALTER TABLE `party_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
