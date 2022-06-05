-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 06:50 AM
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
(7, 'RR-CW001', '2022-05-26', 'remrks-a', '2', '10', '31', 'PA-006', ''),
(8, 'RR-CW002', '2022-06-02', '', '2', '10', '31', 'PA-097', ''),
(9, 'RR-CW003', '2022-06-02', '', '2', '10', '32', 'PA-007', ''),
(10, 'RR-CW004', '2022-06-02', '', '2', '10', '31', 'PA-097', '');

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
  `remarks` varchar(150) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_damagebalance`
--

INSERT INTO `inv_damagebalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbout_qty`, `mbtype`, `mbunit_id`, `warehouse_id`, `partner_id`, `party_id`, `remarks`, `approval_status`, `created_at`) VALUES
(24, 'RR-CW001', '01-03-003', '2022-05-26', 200, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-097', 'remrks-a', 0, '2022-05-26 12:00:00'),
(25, 'RO-CW001', '01-03-003', '2022-05-26', 0, 2, 'REPLACE OUT', '2', '10', '31', 'PA-097', 're-out', 0, '2022-05-26 12:00:00'),
(27, 'RR-CW002', '01-03-006', '2022-06-02', 1, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-097', '', 0, '2022-06-02 12:00:00'),
(28, 'RR-CW003', '01-03-007', '2022-06-02', 12, 0, 'REPLACE RECEIVE', '2', '10', '32', 'PA-007', '', 0, '2022-06-02 12:00:00'),
(29, 'RO-CW002', '01-03-003', '2022-06-02', 0, 20, 'REPLACE OUT', '2', '10', '31', 'PA-097', '', 0, '2022-06-02 12:00:00'),
(30, 'RR-CW004', '01-03-001', '2022-06-02', 2, 0, 'REPLACE RECEIVE', '2', '10', '31', 'PA-097', '', 0, '2022-06-02 12:00:00');

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
(13, 'RR-CW001', '2022-05-26', '01-03-003', '374', '19', 200, 0, '', '2', '10'),
(15, 'RR-CW002', '2022-06-02', '01-03-006', '583', '4', 1, 0, '', '2', '10'),
(16, 'RR-CW003', '2022-06-02', '01-03-007', '584', '16', 12, 0, '', '2', '10'),
(17, 'RR-CW004', '2022-06-02', '01-03-001', '369', '15', 2, 0, '', '2', '10');

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
(16, 'RO-CW001', '2022-05-26', 're-out', '2', '10', '31', 'PA-097', ''),
(17, 'RO-CW002', '2022-06-02', '', '2', '10', '31', 'PA-097', '');

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
(22, 'RO-CW001', '2022-05-26', '01-03-003', '374', '19', 2, 0, '', '2', '10'),
(23, 'RO-CW002', '2022-06-02', '01-03-003', '374', '7', 20, 0, '', '2', '10');

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
(1, 'IS-CW001', '2022-05-01', 1971, 'PA-045', '39', 'UP', 26800, 29600, 0, 29600, 0, 29600, 2800, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-01'),
(2, 'IS-CW002', '2022-05-08', 5404, 'PA-165', '33', 'SA', 197800, 206900, 0, 206900, 0, 206900, 9100, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(3, 'IS-CW003', '2022-05-08', 5405, 'PA-130', '33', 'UP', 246500, 258100, 0, 258100, 0, 258100, 11600, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(4, 'IS-CW004', '2022-05-08', 5406, 'PA-115', '33', 'SA', 84000, 87000, 0, 87000, 0, 87000, 3000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(5, 'IS-CW005', '2022-05-01', 5116, 'PA-166', '41', 'UP', 255000, 265500, 0, 265500, 0, 265500, 10500, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-01'),
(6, 'IS-CW006', '2022-05-01', 5117, 'PA-167', '41', 'UP', 394350, 414740, 0, 414740, 0, 414740, 20390, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-01'),
(7, 'IS-CW007', '2022-05-01', 5118, 'PA-155', '41', 'UP', 86000, 93000, 0, 93000, 0, 93000, 7000, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-01'),
(8, 'IS-CW008', '2022-05-01', 5119, 'PA-168', '41', 'UP', 16100, 16600, 0, 16600, 0, 16600, 500, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-01'),
(9, 'IS-CW009', '2022-05-08', 5121, 'PA-170', '41', 'UP', 179800, 191200, 0, 191200, 0, 191200, 11400, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(10, 'IS-CW010', '2022-05-08', 5122, 'PA-166', '41', 'UP', 229500, 240000, 0, 240000, 0, 240000, 10500, '1', 'Discount Gift Less', '1', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(11, 'IS-CW011', '2022-05-08', 5123, 'PA-168', '41', 'UP', 127625, 132150, 0, 132150, 0, 132150, 4525, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(12, 'IS-CW012', '2022-05-09', 5124, 'PA-155', '41', 'SA', 378300, 389500, 0, 389500, 0, 389500, 11200, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(13, 'IS-CW013', '2022-05-09', 5125, 'PA-167', '41', 'UP', 80400, 86400, 0, 86400, 0, 86400, 6000, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(14, 'IS-CW014', '2022-05-09', 5126, 'PA-012', '41', 'SA', 204500, 216500, 0, 216500, 0, 216500, 12000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(15, 'IS-CW015', '2022-05-10', 2932, 'PA-171', '38', 'UP', 41250, 43500, 0, 43500, 0, 43500, 2250, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-10'),
(16, 'IS-CW016', '2022-05-10', 2934, 'PA-172', '38', 'UP', 28200, 29400, 100, 29300, 0, 29300, 1100, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-10'),
(17, 'IS-CW017', '2022-05-12', 2936, 'PA-175', '38', 'SA', 168000, 174000, 0, 174000, 0, 174000, 6000, '0', 'Battary ', '2', '10', '', 0, '', NULL, '', '', '2022-05-12'),
(18, 'IS-CW018', '2022-05-09', 2329, 'PA-176', '35', 'SA', 7300, 8000, 0, 8000, 0, 8000, 700, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(19, 'IS-CW019', '2022-05-10', 2330, 'PA-177', '35', 'SA', 85500, 95000, 0, 95000, 0, 95000, 9500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-10'),
(20, 'IS-CW020', '2022-05-10', 2331, 'PA-178', '35', 'SA', 79200, 91800, 0, 91800, 0, 91800, 12600, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-10'),
(21, 'IS-CW021', '2022-05-11', 2332, 'PA-179', '35', 'SA', 88500, 95000, 0, 95000, 0, 95000, 6500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(22, 'IS-CW022', '2022-05-11', 2333, 'PA-180', '35', 'SA', 114750, 119000, 0, 119000, 0, 119000, 4250, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(23, 'IS-CW023', '2022-05-11', 2334, 'PA-181', '35', 'SA', 70500, 72500, 0, 72500, 0, 72500, 2000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(24, 'IS-CW024', '2022-05-12', 2335, 'PA-180', '35', 'UP', 249650, 257400, 400, 257000, 0, 257000, 7350, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-12'),
(25, 'IS-CW025', '2022-05-11', 5127, 'PA-182', '41', 'SA', 430000, 440000, 5000, 435000, 0, 435000, 5000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(26, 'IS-CW026', '2022-05-11', 5128, 'PA-183', '41', 'SA', 96300, 98800, 0, 98800, 0, 98800, 2500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(27, 'IS-CW027', '2022-05-09', 5091, 'PA-010', '32', 'UP', 30200, 31600, 400, 31200, 0, 31200, 1000, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(28, 'IS-CW028', '2022-05-11', 5089, 'PA-107', '32', 'SA', 25800, 27300, 0, 27300, 0, 27300, 1500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(29, 'IS-CW029', '2022-05-11', 5087, 'PA-010', '32', 'SA', 16100, 16600, 0, 16600, 0, 16600, 500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(30, 'IS-CW030', '2022-05-12', 5081, 'PA-105', '32', 'SA', 28200, 29200, 0, 29200, 0, 29200, 1000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-12'),
(31, 'IS-CW031', '2022-05-08', 2477, 'PA-184', '42', 'SA', 123200, 128800, 0, 128800, 0, 128800, 5600, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(32, 'IS-CW032', '2022-05-07', 2478, 'PA-185', '42', 'SA', 27600, 29600, 0, 29600, 0, 29600, 2000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-07'),
(33, 'IS-CW033', '2022-05-09', 2479, 'PA-185', '42', 'SA', 45000, 47000, 200, 46800, 0, 47000, 1800, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(34, 'IS-CW034', '2022-05-09', 2480, 'PA-185', '42', 'SA', 27600, 29600, 0, 29600, 0, 29600, 2000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-09'),
(35, 'IS-CW035', '2022-05-11', 2481, 'PA-186', '42', 'SA', 217175, 235000, 0, 235000, 0, 235000, 17825, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(36, 'IS-CW036', '2022-05-12', 2482, 'PA-185', '42', 'UP', 44500, 47000, 0, 47000, 0, 47000, 2500, '1', '', '1', '10', '', 0, '', NULL, '', '', '2022-05-12'),
(37, 'IS-CW037', '2022-05-08', 5120, 'PA-169', '41', 'SA', 447500, 465000, 0, 465000, 0, 465000, 17500, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-08'),
(38, 'IS-CW038', '2022-05-12', 2336, 'PA-181', '35', 'SA', 120700, 126000, 1000, 125000, 0, 125000, 4300, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-12'),
(39, 'IS-CW039', '2022-05-11', 2935, 'PA-173', '38', 'SA', 545250, 573250, 0, 573250, 0, 573250, 28000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-11'),
(40, 'IS-CW040', '2022-05-06', 5093, 'PA-008', '32', 'SA', 28200, 29800, 0, 29800, 0, 29800, 1600, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-06'),
(41, 'IS-CW041', '2022-05-23', 2, 'PA-131', '33', 'SA', 41, 50, 0, 50, 0, 50, 9, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-23'),
(42, 'IS-CW042', '2022-05-23', 78, 'PA-104', '32', 'SA', 20, 30, 0, 30, 0, 30, 10, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-23'),
(43, 'IS-CW043', '2022-05-23', 123, 'PA-158', '35', 'SA', 200, 300, 0, 300, 0, 300, 100, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-23'),
(44, 'IS-CW044', '2022-05-23', 76, 'PA-018', '34', 'SA', 300, 400, 0, 400, 0, 400, 100, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-23'),
(45, 'IS-CW045', '2022-05-23', 420, 'PA-097', '31', 'SA', 4000, 6000, 0, 6000, 0, 6000, 2000, '0', '', '2', '10', '', 0, '', NULL, '', '', '2022-05-23');

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
(3, 'IS-CW001', '2022-05-01', 1971, '01-01-125', '499', '3', 6700, 26800, 4, 7400, 29600, 'U', '1', '10', '39', 'PA-045', 0),
(4, 'IS-CW002', '2022-05-08', 5404, '01-01-003', '370', '3', 6700, 53600, 8, 7100, 56800, 'S', '2', '10', '33', 'PA-165', 0),
(5, 'IS-CW002', '2022-05-08', 5404, '01-01-125', '499', '3', 6700, 53600, 8, 7100, 56800, 'S', '2', '10', '33', 'PA-165', 0),
(6, 'IS-CW002', '2022-05-08', 5404, '01-03-002', '373', '19', 16100, 48300, 3, 16600, 49800, 'S', '2', '10', '33', 'PA-165', 0),
(7, 'IS-CW002', '2022-05-08', 5404, '01-03-001', '369', '19', 14100, 42300, 3, 14500, 43500, 'S', '2', '10', '33', 'PA-165', 0),
(10, 'IS-CW004', '2022-05-08', 5406, '01-01-117', '491', '3', 8400, 84000, 10, 8700, 87000, 'S', '2', '10', '33', 'PA-115', 0),
(11, 'IS-CW003', '2022-05-08', 5405, '01-01-118', '492', '3', 8500, 246500, 29, 8900, 258100, 'U', '1', '10', '33', 'PA-130', 0),
(20, 'IS-CW006', '2022-05-01', 5117, '05-01-001', '590', '3', 45, 1350, 30, 58, 1740, 'U', '1', '10', '41', 'PA-167', 0),
(21, 'IS-CW006', '2022-05-01', 5117, '01-01-014', '388', '3', 8600, 215000, 25, 9000, 225000, 'U', '1', '10', '41', 'PA-167', 0),
(22, 'IS-CW006', '2022-05-01', 5117, '06-01-001', '592', '3', 2550, 51000, 20, 2800, 56000, 'U', '1', '10', '41', 'PA-167', 0),
(23, 'IS-CW006', '2022-05-01', 5117, '01-01-117', '491', '3', 8400, 84000, 10, 8700, 87000, 'U', '1', '10', '41', 'PA-167', 0),
(24, 'IS-CW006', '2022-05-01', 5117, '01-01-025', '399', '3', 8600, 43000, 5, 9000, 45000, 'U', '1', '10', '41', 'PA-167', 0),
(25, 'IS-CW007', '2022-05-01', 5118, '01-01-121', '495', '3', 8600, 86000, 10, 9300, 93000, 'U', '1', '10', '41', 'PA-155', 0),
(31, 'IS-CW008', '2022-05-01', 5119, '01-03-002', '373', '19', 16100, 16100, 1, 16600, 16600, 'U', '1', '10', '41', 'PA-168', 0),
(32, 'IS-CW009', '2022-05-08', 5121, '01-01-092', '466', '3', 8600, 146200, 17, 9200, 156400, 'U', '1', '10', '41', 'PA-170', 0),
(33, 'IS-CW009', '2022-05-08', 5121, '01-01-041', '415', '3', 8400, 33600, 4, 8700, 34800, 'U', '1', '10', '41', 'PA-170', 0),
(39, 'IS-CW012', '2022-05-09', 5124, '01-03-004', '581', '19', 14100, 141000, 10, 14500, 145000, 'S', '2', '10', '41', 'PA-155', 0),
(40, 'IS-CW012', '2022-05-09', 5124, '01-03-005', '582', '19', 14100, 70500, 5, 14500, 72500, 'S', '2', '10', '41', 'PA-155', 0),
(41, 'IS-CW012', '2022-05-09', 5124, '01-03-006', '583', '19', 14100, 42300, 3, 14500, 43500, 'S', '2', '10', '41', 'PA-155', 0),
(42, 'IS-CW012', '2022-05-09', 5124, '01-03-001', '369', '19', 14100, 98700, 7, 14500, 101500, 'S', '2', '10', '41', 'PA-155', 0),
(43, 'IS-CW012', '2022-05-09', 5124, '01-03-007', '584', '19', 12900, 25800, 2, 13500, 27000, 'S', '2', '10', '41', 'PA-155', 0),
(45, 'IS-CW013', '2022-05-09', 5125, '01-01-125', '499', '3', 6700, 80400, 12, 7200, 86400, 'U', '1', '10', '41', 'PA-167', 0),
(46, 'IS-CW014', '2022-05-09', 5126, '01-01-125', '499', '3', 6700, 134000, 20, 7200, 144000, 'S', '2', '10', '41', 'PA-012', 0),
(47, 'IS-CW014', '2022-05-09', 5126, '01-03-001', '369', '19', 14100, 70500, 5, 14500, 72500, 'S', '2', '10', '41', 'PA-012', 0),
(54, 'IS-CW015', '2022-05-10', 2932, '01-02-006', '505', '3', 8250, 41250, 5, 8700, 43500, 'U', '1', '10', '38', 'PA-171', 0),
(55, 'IS-CW017', '2022-05-12', 2936, '01-01-117', '491', '3', 8400, 84000, 10, 8700, 87000, 'S', '2', '10', '38', 'PA-175', 0),
(56, 'IS-CW017', '2022-05-12', 2936, '01-01-088', '462', '3', 8400, 84000, 10, 8700, 87000, 'S', '2', '10', '38', 'PA-175', 0),
(57, 'IS-CW018', '2022-05-09', 2329, '01-01-126', '500', '3', 7300, 7300, 1, 8000, 8000, 'S', '2', '10', '35', 'PA-176', 0),
(58, 'IS-CW019', '2022-05-10', 2330, '01-02-047', '580', '1', 8550, 85500, 10, 9500, 95000, 'S', '2', '10', '35', 'PA-177', 0),
(59, 'IS-CW020', '2022-05-10', 2331, '01-01-054', '428', '3', 8800, 79200, 9, 10200, 91800, 'S', '2', '10', '35', 'PA-178', 0),
(60, 'IS-CW021', '2022-05-11', 2332, '01-02-007', '506', '3', 8850, 88500, 10, 9500, 95000, 'S', '2', '10', '35', 'PA-179', 0),
(61, 'IS-CW022', '2022-05-11', 2333, '01-03-001', '369', '19', 14100, 70500, 5, 14500, 72500, 'S', '2', '10', '35', 'PA-180', 0),
(62, 'IS-CW022', '2022-05-11', 2333, '01-02-017', '516', '3', 8850, 44250, 5, 9300, 46500, 'S', '2', '10', '35', 'PA-180', 0),
(63, 'IS-CW023', '2022-05-11', 2334, '01-03-001', '369', '19', 14100, 70500, 5, 14500, 72500, 'S', '2', '10', '35', 'PA-181', 0),
(69, 'IS-CW024', '2022-05-12', 2335, '01-03-001', '369', '19', 14100, 141000, 10, 14500, 145000, 'U', '1', '10', '35', 'PA-180', 0),
(70, 'IS-CW024', '2022-05-12', 2335, '07-01-001', '602', '19', 2850, 17100, 6, 2900, 17400, 'U', '1', '10', '35', 'PA-180', 0),
(71, 'IS-CW024', '2022-05-12', 2335, '01-02-017', '516', '3', 8850, 44250, 5, 9300, 46500, 'U', '1', '10', '35', 'PA-180', 0),
(72, 'IS-CW024', '2022-05-12', 2335, '01-03-005', '582', '19', 14100, 28200, 2, 14500, 29000, 'U', '1', '10', '35', 'PA-180', 0),
(73, 'IS-CW024', '2022-05-12', 2335, '01-03-003', '374', '19', 19100, 19100, 1, 19500, 19500, 'U', '1', '10', '35', 'PA-180', 0),
(74, 'IS-CW025', '2022-05-11', 5127, '01-01-121', '495', '3', 8600, 430000, 50, 8800, 440000, 'S', '2', '10', '41', 'PA-182', 0),
(75, 'IS-CW026', '2022-05-11', 5128, '01-03-001', '369', '19', 14100, 70500, 5, 14400, 72000, 'S', '2', '10', '41', 'PA-183', 0),
(76, 'IS-CW026', '2022-05-11', 5128, '01-03-007', '584', '19', 12900, 25800, 2, 13400, 26800, 'S', '2', '10', '41', 'PA-183', 0),
(79, 'IS-CW028', '2022-05-11', 5089, '01-01-119', '493', '3', 8600, 25800, 3, 9100, 27300, 'S', '2', '10', '32', 'PA-107', 0),
(80, 'IS-CW029', '2022-05-11', 5087, '01-03-002', '373', '19', 16100, 16100, 1, 16600, 16600, 'S', '2', '10', '32', 'PA-010', 0),
(81, 'IS-CW030', '2022-05-12', 5081, '01-03-001', '369', '19', 14100, 28200, 2, 14600, 29200, 'S', '2', '10', '32', 'PA-105', 0),
(82, 'IS-CW031', '2022-05-08', 2477, '01-01-123', '497', '3', 8800, 123200, 14, 9200, 128800, 'S', '2', '10', '42', 'PA-184', 0),
(83, 'IS-CW032', '2022-05-07', 2478, '01-01-125', '499', '3', 6700, 26800, 4, 7200, 28800, 'S', '2', '10', '42', 'PA-185', 0),
(84, 'IS-CW032', '2022-05-07', 2478, '08-01-001', '605', '21', 20, 800, 40, 20, 800, 'S', '2', '10', '42', 'PA-185', 0),
(85, 'IS-CW033', '2022-05-09', 2479, '01-01-001', '367', '3', 8800, 44000, 5, 9200, 46000, 'S', '2', '10', '42', 'PA-185', 0),
(86, 'IS-CW033', '2022-05-09', 2479, '08-01-001', '605', '21', 20, 1000, 50, 20, 1000, 'S', '2', '10', '42', 'PA-185', 0),
(87, 'IS-CW034', '2022-05-09', 2480, '01-01-125', '499', '3', 6700, 26800, 4, 7200, 28800, 'S', '2', '10', '42', 'PA-185', 0),
(88, 'IS-CW034', '2022-05-09', 2480, '08-01-001', '605', '21', 20, 800, 40, 20, 800, 'S', '2', '10', '42', 'PA-185', 0),
(89, 'IS-CW035', '2022-05-11', 2481, '01-01-003', '370', '3', 6600, 59400, 9, 7200, 64800, 'S', '2', '10', '42', 'PA-186', 0),
(90, 'IS-CW035', '2022-05-11', 2481, '01-01-125', '499', '3', 6600, 52800, 8, 7300, 58400, 'S', '2', '10', '42', 'PA-186', 0),
(91, 'IS-CW035', '2022-05-11', 2481, '01-01-014', '388', '3', 8500, 34000, 4, 9200, 36800, 'S', '2', '10', '42', 'PA-186', 0),
(92, 'IS-CW035', '2022-05-11', 2481, '01-01-121', '495', '3', 8500, 34000, 4, 9200, 36800, 'S', '2', '10', '42', 'PA-186', 0),
(93, 'IS-CW035', '2022-05-11', 2481, '01-03-002', '373', '19', 16100, 32200, 2, 16600, 33200, 'S', '2', '10', '42', 'PA-186', 0),
(94, 'IS-CW035', '2022-05-11', 2481, '01-03-003', '374', '19', 19100, 4775, 0.25, 20000, 5000, 'S', '2', '10', '42', 'PA-186', 0),
(97, 'IS-CW036', '2022-05-12', 2482, '08-01-001', '605', '21', 20, 1000, 50, 20, 1000, 'U', '1', '10', '42', 'PA-185', 0),
(98, 'IS-CW036', '2022-05-12', 2482, '01-01-001', '367', '3', 8700, 43500, 5, 9200, 46000, 'U', '1', '10', '42', 'PA-185', 0),
(99, 'IS-CW037', '2022-05-08', 5120, '01-02-053', '604', '19', 8950, 447500, 50, 9300, 465000, 'S', '2', '10', '41', 'PA-169', 0),
(100, 'IS-CW011', '2022-05-08', 5123, '01-03-001', '369', '19', 14100, 98700, 7, 14600, 102200, 'U', '1', '10', '41', 'PA-168', 0),
(101, 'IS-CW011', '2022-05-08', 5123, '01-03-002', '373', '19', 16100, 20125, 1.25, 16600, 20750, 'U', '1', '10', '41', 'PA-168', 0),
(102, 'IS-CW011', '2022-05-08', 5123, '01-01-005', '372', '3', 8800, 8800, 1, 9200, 9200, 'U', '1', '10', '41', 'PA-168', 0),
(103, 'IS-CW038', '2022-05-12', 2336, '01-02-036', '535', '3', 8850, 88500, 10, 9300, 93000, 'S', '2', '10', '35', 'PA-181', 0),
(104, 'IS-CW038', '2022-05-12', 2336, '01-03-008', '603', '19', 16100, 32200, 2, 16500, 33000, 'S', '2', '10', '35', 'PA-181', 0),
(105, 'IS-CW039', '2022-05-11', 2935, '01-02-054', '606', '1', 8550, 213750, 25, 8950, 223750, 'S', '2', '10', '38', 'PA-173', 0),
(106, 'IS-CW039', '2022-05-11', 2935, '01-02-055', '607', '1', 8250, 206250, 25, 8800, 220000, 'S', '2', '10', '38', 'PA-173', 0),
(107, 'IS-CW039', '2022-05-11', 2935, '01-01-058', '432', '3', 8400, 42000, 5, 8650, 43250, 'S', '2', '10', '38', 'PA-173', 0),
(108, 'IS-CW039', '2022-05-11', 2935, '01-01-088', '462', '3', 8400, 42000, 5, 8650, 43250, 'S', '2', '10', '38', 'PA-173', 0),
(109, 'IS-CW039', '2022-05-11', 2935, '01-02-006', '505', '3', 8250, 41250, 5, 8600, 43000, 'S', '2', '10', '38', 'PA-173', 0),
(112, 'IS-CW016', '2022-05-10', 2934, '01-03-001', '369', '19', 14100, 28200, 2, 14700, 29400, 'U', '1', '10', '38', 'PA-172', 0),
(113, 'IS-CW005', '2022-05-01', 5116, '01-01-025', '399', '3', 8600, 129000, 15, 9000, 135000, 'U', '1', '10', '41', 'PA-166', 0),
(114, 'IS-CW005', '2022-05-01', 5116, '01-01-117', '491', '3', 8400, 126000, 15, 8700, 130500, 'U', '1', '10', '41', 'PA-166', 0),
(115, 'IS-CW010', '2022-05-08', 5122, '01-01-125', '499', '3', 6700, 134000, 20, 7100, 142000, 'U', '1', '10', '41', 'PA-166', 0),
(116, 'IS-CW010', '2022-05-08', 5122, '01-03-003', '374', '19', 19100, 95500, 5, 19600, 98000, 'U', '1', '10', '41', 'PA-166', 0),
(119, 'IS-CW040', '2022-05-06', 5093, '01-03-010', '613', '19', 14100, 14100, 1, 14900, 14900, 'S', '2', '10', '32', 'PA-008', 0),
(120, 'IS-CW040', '2022-05-06', 5093, '01-03-011', '614', '19', 14100, 14100, 1, 14900, 14900, 'S', '2', '10', '32', 'PA-008', 0),
(123, 'IS-CW027', '2022-05-09', 5091, '01-03-001', '369', '19', 14100, 14100, 1, 14600, 14600, 'U', '1', '10', '32', 'PA-010', 0),
(124, 'IS-CW027', '2022-05-09', 5091, '01-03-002', '373', '19', 16100, 16100, 1, 17000, 17000, 'U', '1', '10', '32', 'PA-010', 0),
(125, 'IS-CW041', '2022-05-23', 2, '01-03-005', '582', '19', 41, 41, 1, 50, 50, 'S', '2', '10', '33', 'PA-131', 0),
(126, 'IS-CW042', '2022-05-23', 78, '01-03-005', '582', '19', 20, 20, 1, 30, 30, 'S', '2', '10', '32', 'PA-104', 0),
(127, 'IS-CW043', '2022-05-23', 123, '01-03-005', '582', '19', 200, 200, 1, 300, 300, 'S', '2', '10', '35', 'PA-158', 0),
(128, 'IS-CW044', '2022-05-23', 76, '01-03-005', '582', '19', 300, 300, 1, 400, 400, 'S', '2', '10', '34', 'PA-018', 0),
(129, 'IS-CW045', '2022-05-23', 420, '01-03-001', '369', '19', 200, 4000, 20, 300, 6000, 'S', '2', '10', '31', 'PA-097', 0);

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
(19, 'set'),
(20, 'Box'),
(21, 'Liter');

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
(367, '01-01-001', '40', '160', 'H POWER 29KG G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(368, '01-01-002', '40', '160', 'Magnet 27Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(369, '01-03-001', '40', '162', '95AH DJDG', '', '', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(370, '01-01-003', '40', '160', 'Eilong 22kg w', 'Zhoo', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(371, '01-01-004', '40', '160', 'King Power 29kg N', 'Zhoo', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(372, '01-01-005', '40', '160', 'Power Plus 29kg G', 'Zhoo', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(373, '01-03-002', '40', '162', '120Ah DjDG', '', '', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(374, '01-03-003', '40', '162', '220Ah DjDG', '', '', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(375, '01-02-001', '40', '161', 'Power Plus MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(376, '01-02-002', '40', '161', '3 Dragon N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(377, '01-02-003', '40', '161', 'Henli Special MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(378, '01-01-006', '40', '160', 'Yuandi Borac 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(379, '01-02-004', '40', '161', 'Hangli 2', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(380, '01-01-007', '40', '160', 'Power Gold 28.5 N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(381, '01-02-005', '40', '161', 'MM high power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(382, '01-01-008', '40', '160', 'Eilong 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(383, '01-01-009', '40', '160', 'Eilong 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(384, '01-01-010', '40', '160', 'Eilong 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(385, '01-01-011', '40', '160', 'Eilong 28.5kgN', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(386, '01-01-012', '40', '160', 'Eilong 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(387, '01-01-013', '40', '160', 'Eilong 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(388, '01-01-014', '40', '160', 'Eilong 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(389, '01-01-015', '40', '160', 'Eilong 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(390, '01-01-016', '40', '160', 'Eilong 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(391, '01-01-017', '40', '160', 'Eilong 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(392, '01-01-018', '40', '160', 'Eilong 24kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(393, '01-01-019', '40', '160', 'H Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(394, '01-01-020', '40', '160', 'H Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(395, '01-01-021', '40', '160', 'H Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(396, '01-01-022', '40', '160', 'H Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(397, '01-01-023', '40', '160', 'H Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(398, '01-01-024', '40', '160', 'H Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(399, '01-01-025', '40', '160', 'H Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(400, '01-01-026', '40', '160', 'H Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(401, '01-01-027', '40', '160', 'H Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(402, '01-01-028', '40', '160', 'China Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(403, '01-01-029', '40', '160', 'China Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(404, '01-01-030', '40', '160', 'China Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(405, '01-01-031', '40', '160', 'China Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(406, '01-01-032', '40', '160', 'China Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(407, '01-01-033', '40', '160', 'China Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(408, '01-01-034', '40', '160', 'China Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(409, '01-01-035', '40', '160', 'China Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(410, '01-01-036', '40', '160', 'China Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(411, '01-01-037', '40', '160', 'China Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(412, '01-01-038', '40', '160', 'Power Plus 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(413, '01-01-039', '40', '160', 'Power Plus 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(414, '01-01-040', '40', '160', 'Power Plus 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(415, '01-01-041', '40', '160', 'Power Plus 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(416, '01-01-042', '40', '160', 'Power Plus 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(417, '01-01-043', '40', '160', 'Power Plus 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(418, '01-01-044', '40', '160', 'Power Plus 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(419, '01-01-045', '40', '160', 'Power Plus 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(420, '01-01-046', '40', '160', 'Power Plus 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(421, '01-01-047', '40', '160', 'Yuandi Borac 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(422, '01-01-048', '40', '160', 'Yuandi Borac 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(423, '01-01-049', '40', '160', 'Yuandi Borac 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(424, '01-01-050', '40', '160', 'Yuandi Borac 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(425, '01-01-051', '40', '160', 'Yuandi Borac 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(426, '01-01-052', '40', '160', 'Yuandi Borac 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(427, '01-01-053', '40', '160', 'Yuandi Borac 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(428, '01-01-054', '40', '160', 'Yuandi Borac 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(429, '01-01-055', '40', '160', 'Yuandi Borac 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(430, '01-01-056', '40', '160', 'Borac Super 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(431, '01-01-057', '40', '160', 'Borac Super 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(432, '01-01-058', '40', '160', 'Borac Super 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(433, '01-01-059', '40', '160', 'Borac Super 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(434, '01-01-060', '40', '160', 'Borac Super 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(435, '01-01-061', '40', '160', 'Borac Super 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(436, '01-01-062', '40', '160', 'Borac Super 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(437, '01-01-063', '40', '160', 'Borac Super 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(438, '01-01-064', '40', '160', 'Borac Super 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(439, '01-01-065', '40', '160', 'Borac Super 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(440, '01-01-066', '40', '160', 'Pacific 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(441, '01-01-067', '40', '160', 'Pacific 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(442, '01-01-068', '40', '160', 'Pacific 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(443, '01-01-069', '40', '160', 'Pacific 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(444, '01-01-070', '40', '160', 'Pacific 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(445, '01-01-071', '40', '160', 'Pacific 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(446, '01-01-072', '40', '160', 'Pacific 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(447, '01-01-073', '40', '160', 'Pacific 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(448, '01-01-074', '40', '160', 'Pacific 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(449, '01-01-075', '40', '160', 'Pacific 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(450, '01-01-076', '40', '160', 'SF 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(451, '01-01-077', '40', '160', 'SF 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(452, '01-01-078', '40', '160', 'SF 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(453, '01-01-079', '40', '160', 'SF 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(454, '01-01-080', '40', '160', 'SF 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(455, '01-01-081', '40', '160', 'SF 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(456, '01-01-082', '40', '160', 'SF 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(457, '01-01-083', '40', '160', 'SF 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(458, '01-01-084', '40', '160', 'SF 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(459, '01-01-085', '40', '160', 'SF 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(460, '01-01-086', '40', '160', 'Kin Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(461, '01-01-087', '40', '160', 'Kin Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(462, '01-01-088', '40', '160', 'Kin Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(463, '01-01-089', '40', '160', 'Kin Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(464, '01-01-090', '40', '160', 'Kin Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(465, '01-01-091', '40', '160', 'Kin Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(466, '01-01-092', '40', '160', 'Kin Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(467, '01-01-093', '40', '160', 'Kin Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(468, '01-01-094', '40', '160', 'Kin Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(469, '01-01-095', '40', '160', 'Kin Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(470, '01-01-096', '40', '160', 'Magnet 27.5Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(471, '01-01-097', '40', '160', 'Magnet 28Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(472, '01-01-098', '40', '160', 'Magnet 28.5Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(473, '01-01-099', '40', '160', 'Magnet 29Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(474, '01-01-100', '40', '160', 'Magnet 29.5Kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(475, '01-01-101', '40', '160', 'Magnet 28Kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(476, '01-01-102', '40', '160', 'Magnet 28.5Kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(477, '01-01-103', '40', '160', 'Magnet 29Kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(478, '01-01-104', '40', '160', 'Magnet 29.5Kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(479, '01-01-105', '40', '160', 'E Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(480, '01-01-106', '40', '160', 'E Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(481, '01-01-107', '40', '160', 'E Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(482, '01-01-108', '40', '160', 'E Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(483, '01-01-109', '40', '160', 'E Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(484, '01-01-110', '40', '160', 'E Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(485, '01-01-111', '40', '160', 'E Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(486, '01-01-112', '40', '160', 'E Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(487, '01-01-113', '40', '160', 'E Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(488, '01-01-114', '40', '160', 'E Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(489, '01-01-115', '40', '160', 'Power Plus Janding 27kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(490, '01-01-116', '40', '160', 'Power Plus Janding 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(491, '01-01-117', '40', '160', 'Power Plus Janding 28kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(492, '01-01-118', '40', '160', 'Power Plus Janding 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(493, '01-01-119', '40', '160', 'Power Plus Janding 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(494, '01-01-120', '40', '160', 'Power Plus Janding 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(495, '01-01-121', '40', '160', 'Power Plus Janding 28kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(496, '01-01-122', '40', '160', 'Power Plus Janding 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(497, '01-01-123', '40', '160', 'Power Plus Janding 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(498, '01-01-124', '40', '160', 'Power Plus Janding 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(499, '01-01-125', '40', '160', 'Power Plus 22kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(500, '01-01-126', '40', '160', 'Power Plus 24kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(501, '01-01-127', '40', '160', 'XS 22kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(502, '01-01-128', '40', '160', 'XS 24kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(503, '01-01-129', '40', '160', 'XP 22kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(504, '01-01-130', '40', '160', 'XP 24kg W', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(505, '01-02-006', '40', '161', 'Power Plus N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(506, '01-02-007', '40', '161', 'Power Plus MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(507, '01-02-008', '40', '161', 'Power Plus 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(508, '01-02-009', '40', '161', 'Power Plus 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(509, '01-02-010', '40', '161', 'Eilong N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(510, '01-02-011', '40', '161', 'Eilong MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(511, '01-02-012', '40', '161', 'Eilong MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(512, '01-02-013', '40', '161', 'Eilong 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(513, '01-02-014', '40', '161', 'Eilong 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(514, '01-02-015', '40', '161', 'OT Power N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(515, '01-02-016', '40', '161', 'OT Power MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(516, '01-02-017', '40', '161', 'OT Power MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(517, '01-02-018', '40', '161', 'OT Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(518, '01-02-019', '40', '161', 'OT Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(519, '01-02-020', '40', '161', 'Hangli N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(520, '01-02-021', '40', '161', 'Hangli MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(521, '01-02-022', '40', '161', 'Hangli MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(522, '01-02-023', '40', '161', 'Hangli 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(523, '01-02-024', '40', '161', 'Hangli 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(524, '01-02-025', '40', '161', 'Star Gold N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(525, '01-02-026', '40', '161', 'Star Gold MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(526, '01-02-027', '40', '161', 'Star Gold MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(527, '01-02-028', '40', '161', 'Star Gold 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(528, '01-02-029', '40', '161', 'Star Gold 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(529, '01-02-030', '40', '161', '3 Dragon MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(530, '01-02-031', '40', '161', '3 Dragon MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(531, '01-02-032', '40', '161', '3 Dragon 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(532, '01-02-033', '40', '161', '3 Dragon 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(533, '01-02-034', '40', '161', 'SA Power N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(534, '01-02-035', '40', '161', 'SA Power MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(535, '01-02-036', '40', '161', 'SA Power MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(536, '01-02-037', '40', '161', 'SA Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(537, '01-02-038', '40', '161', 'SA Power 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(538, '01-02-039', '40', '161', 'Borac Super N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(539, '01-02-040', '40', '161', 'Borac Super MM', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(540, '01-02-041', '40', '161', 'Borac Super MM G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(541, '01-02-042', '40', '161', 'Borac Super 29kg N', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(542, '01-02-043', '40', '161', 'Borac Super 29kg G', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(543, '01-05-001', '40', '164', 'Scrap Material', 'Scrap', '', 12, NULL, NULL, 0, '1', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(544, '02-01-001', '41', '165', 'Scrap material', 'Scrap', '', 100, NULL, NULL, 0, '3', 500, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(545, '01-01-131', '40', '160', 'TomTom 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(546, '01-01-132', '40', '160', 'TomTom 27.5Kg N', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(547, '01-01-133', '40', '160', 'TomTom 28 Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(548, '01-01-134', '40', '160', 'TomTom 28.5 kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(549, '01-01-135', '40', '160', 'TomTom 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(550, '01-01-136', '40', '160', 'TomTom 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(551, '01-01-137', '40', '160', 'TomTom 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(552, '01-01-138', '40', '160', 'TomTom 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(553, '01-01-139', '40', '160', 'TomTom 29 kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(554, '01-01-140', '40', '160', 'TomTom 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(555, '01-01-141', '40', '160', 'Dowedo 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(556, '01-01-142', '40', '160', 'Dowedo 27.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(557, '01-01-143', '40', '160', 'Dowedo 28kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(558, '01-01-144', '40', '160', 'Dowedo 28.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(559, '01-01-145', '40', '160', 'Dowedo 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(560, '01-01-146', '40', '160', 'Dowedo 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(561, '01-01-147', '40', '160', 'Dowedo 28kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(562, '01-01-148', '40', '160', 'Dowedo 28.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(563, '01-01-149', '40', '160', 'Dowedo 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(564, '01-01-150', '40', '160', 'Dowedo 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(565, '01-01-151', '40', '160', 'Power Gold 27Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(566, '01-01-152', '40', '160', 'Power Gold27.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(567, '01-01-153', '40', '160', 'Power Gold 28Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(568, '01-01-154', '40', '160', 'Power Gold 28.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(569, '01-01-155', '40', '160', 'Power Gold 29Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(570, '01-01-156', '40', '160', 'Power Gold 29.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(571, '01-01-157', '40', '160', 'Power Gold 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(572, '01-01-158', '40', '160', 'Power Gold 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(573, '01-01-159', '40', '160', 'Power Gold 29Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(574, '01-01-160', '40', '160', 'Power Gold 29.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(575, '01-01-161', '40', '160', 'Borac Super 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(576, '01-01-162', '40', '160', 'Borac Super 24Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(577, '01-02-044', '40', '161', '1Dragon MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(578, '01-02-045', '40', '161', '1Dragon MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(579, '01-02-046', '40', '161', 'Power plus modonpal MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(580, '01-02-047', '40', '161', 'Lotus MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(581, '01-03-004', '40', '162', '110Ah Power Plus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(582, '01-03-005', '40', '162', '110Ah Horse Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(583, '01-03-006', '40', '162', '95Ah DJking', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(584, '01-03-007', '40', '162', '70Ah DJDG', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(585, '01-02-048', '40', '161', 'King Power N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(586, '01-02-049', '40', '161', 'king Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(587, '01-02-050', '40', '161', 'king Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(588, '01-02-051', '40', '161', 'king Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(589, '01-02-052', '40', '161', 'king Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(590, '05-01-001', '44', '168', 'Single Casing', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(591, '05-01-002', '44', '168', 'Double casing', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(592, '06-01-001', '45', '169', 'Yuandi H Power glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(593, '06-01-002', '45', '169', 'Sandi H Power glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(594, '06-01-003', '45', '169', 'Main born H Power glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(595, '06-02-001', '45', '170', 'Borac Yuandi glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(596, '06-02-002', '45', '170', 'Borac Sandi glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(597, '06-02-003', '45', '170', 'Borac Main Born glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(598, '06-03-001', '45', '171', 'Trust Yuandi glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(599, '06-03-002', '45', '171', 'Trust Sandi Glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(600, '06-03-003', '45', '171', 'Trust Main Born glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(601, '06-01-004', '45', '169', 'H Power frame Glass', '', '', 0, NULL, NULL, 0, '3', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(602, '07-01-001', '46', '172', 'sk soket Jamper', '', '', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(603, '01-03-008', '40', '162', '130Ah Horse Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(604, '01-02-053', '40', '161', 'Mahadi Power G', '', 'CIVIL', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(605, '08-01-001', '47', '173', 'Acid Water', '', '', 0, NULL, NULL, 0, '21', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(606, '01-02-054', '40', '161', 'Long story MM', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(607, '01-02-055', '40', '161', 'Long story N', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(608, '01-02-056', '40', '161', 'Long story MM G', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(609, '01-02-057', '40', '161', 'Long story 29kg N', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(610, '01-02-058', '40', '161', 'Long story 29kg G', '', '', 0, NULL, NULL, 0, '1', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(611, '01-03-009', '40', '162', '130Ah Horse Power', '', '', 0, NULL, NULL, 0, '19', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(612, '01-01-163', '40', '160', 'XS Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(613, '01-03-010', '40', '162', '95Ah Sing Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(614, '01-03-011', '40', '162', '95Ah Power Plus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

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
(231, 'MRR-CW001', '01-01-014', '2022-05-01', 25, 215000, 0, 0, 8600, 'Receive', 1.1, '', '0', 'MRR-CW001', '', '', '10', '', '', 0, ''),
(232, 'MRR-CW001', '01-01-115', '2022-05-01', 25, 205000, 0, 0, 8200, 'Receive', 1.1, '', '0', 'MRR-CW001', '', '', '10', '', '', 0, ''),
(233, 'MRR-CW001', '01-01-025', '2022-05-01', 20, 172000, 0, 0, 8600, 'Receive', 1.1, '', '0', 'MRR-CW001', '', '', '10', '', '', 0, ''),
(234, 'MRR-CW001', '01-01-121', '2022-05-01', 10, 86000, 0, 0, 8600, 'Receive', 1.1, '', '0', 'MRR-CW001', '', '', '10', '', '', 0, ''),
(237, 'IS-CW001', '01-01-125', '2022-05-01', 0, 0, 4, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW001', 'U', '1', '10', '39', 'PA-045', 0, '2022-05-01'),
(238, 'IS-CW002', '01-01-003', '2022-05-08', 0, 0, 8, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', 'S', '2', '10', '33', 'PA-165', 0, '2022-05-08'),
(239, 'IS-CW002', '01-01-125', '2022-05-08', 0, 0, 8, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', 'S', '2', '10', '33', 'PA-165', 0, '2022-05-08'),
(240, 'IS-CW002', '01-03-002', '2022-05-08', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', 'S', '2', '10', '33', 'PA-165', 0, '2022-05-08'),
(241, 'IS-CW002', '01-03-001', '2022-05-08', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW002', 'S', '2', '10', '33', 'PA-165', 0, '2022-05-08'),
(244, 'IS-CW004', '01-01-117', '2022-05-08', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW004', 'S', '2', '10', '33', 'PA-115', 0, '2022-05-08'),
(245, 'IS-CW003', '01-01-118', '2022-05-08', 0, 0, 29, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW003', 'U', '1', '10', '33', 'PA-130', 0, '2022-05-08'),
(488, 'IS-CW006', '05-01-001', '2022-05-01', 0, 0, 30, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW006', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-01'),
(489, 'IS-CW006', '01-01-014', '2022-05-01', 0, 0, 25, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW006', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-01'),
(490, 'IS-CW006', '06-01-001', '2022-05-01', 0, 0, 20, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW006', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-01'),
(491, 'IS-CW006', '01-01-117', '2022-05-01', 0, 0, 10, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW006', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-01'),
(492, 'IS-CW006', '01-01-025', '2022-05-01', 0, 0, 5, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW006', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-01'),
(493, 'IS-CW007', '01-01-121', '2022-05-01', 0, 0, 10, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW007', 'U', '1', '10', '41', 'PA-155', 0, '2022-05-01'),
(499, 'IS-CW008', '01-03-002', '2022-05-01', 0, 0, 1, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW008', 'U', '1', '10', '41', 'PA-168', 0, '2022-05-01'),
(500, 'IS-CW009', '01-01-092', '2022-05-08', 0, 0, 17, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW009', 'U', '1', '10', '41', 'PA-170', 0, '2022-05-08'),
(501, 'IS-CW009', '01-01-041', '2022-05-08', 0, 0, 4, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW009', 'U', '1', '10', '41', 'PA-170', 0, '2022-05-08'),
(507, 'IS-CW012', '01-03-004', '2022-05-09', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW012', 'S', '2', '10', '41', 'PA-155', 0, '2022-05-09'),
(508, 'IS-CW012', '01-03-005', '2022-05-09', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW012', 'S', '2', '10', '41', 'PA-155', 0, '2022-05-09'),
(509, 'IS-CW012', '01-03-006', '2022-05-09', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW012', 'S', '2', '10', '41', 'PA-155', 0, '2022-05-09'),
(510, 'IS-CW012', '01-03-001', '2022-05-09', 0, 0, 7, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW012', 'S', '2', '10', '41', 'PA-155', 0, '2022-05-09'),
(511, 'IS-CW012', '01-03-007', '2022-05-09', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW012', 'S', '2', '10', '41', 'PA-155', 0, '2022-05-09'),
(513, 'IS-CW013', '01-01-125', '2022-05-09', 0, 0, 12, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW013', 'U', '1', '10', '41', 'PA-167', 0, '2022-05-09'),
(514, 'IS-CW014', '01-01-125', '2022-05-09', 0, 0, 20, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW014', 'S', '2', '10', '41', 'PA-012', 0, '2022-05-09'),
(515, 'IS-CW014', '01-03-001', '2022-05-09', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW014', 'S', '2', '10', '41', 'PA-012', 0, '2022-05-09'),
(522, 'IS-CW015', '01-02-006', '2022-05-10', 0, 0, 5, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW015', 'U', '1', '10', '38', 'PA-171', 0, '2022-05-10'),
(523, 'IS-CW017', '01-01-117', '2022-05-12', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW017', 'S', '2', '10', '38', 'PA-175', 0, '2022-05-12'),
(524, 'IS-CW017', '01-01-088', '2022-05-12', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW017', 'S', '2', '10', '38', 'PA-175', 0, '2022-05-12'),
(525, 'IS-CW018', '01-01-126', '2022-05-09', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW018', 'S', '2', '10', '35', 'PA-176', 0, '2022-05-09'),
(526, 'IS-CW019', '01-02-047', '2022-05-10', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW019', 'S', '2', '10', '35', 'PA-177', 0, '2022-05-10'),
(527, 'IS-CW020', '01-01-054', '2022-05-10', 0, 0, 9, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW020', 'S', '2', '10', '35', 'PA-178', 0, '2022-05-10'),
(528, 'IS-CW021', '01-02-007', '2022-05-11', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW021', 'S', '2', '10', '35', 'PA-179', 0, '2022-05-11'),
(529, 'IS-CW022', '01-03-001', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW022', 'S', '2', '10', '35', 'PA-180', 0, '2022-05-11'),
(530, 'IS-CW022', '01-02-017', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW022', 'S', '2', '10', '35', 'PA-180', 0, '2022-05-11'),
(531, 'IS-CW023', '01-03-001', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW023', 'S', '2', '10', '35', 'PA-181', 0, '2022-05-11'),
(773, 'IS-CW024', '01-03-001', '2022-05-12', 0, 0, 10, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW024', 'U', '1', '10', '35', 'PA-180', 0, '2022-05-12'),
(774, 'IS-CW024', '07-01-001', '2022-05-12', 0, 0, 6, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW024', 'U', '1', '10', '35', 'PA-180', 0, '2022-05-12'),
(775, 'IS-CW024', '01-02-017', '2022-05-12', 0, 0, 5, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW024', 'U', '1', '10', '35', 'PA-180', 0, '2022-05-12'),
(776, 'IS-CW024', '01-03-005', '2022-05-12', 0, 0, 2, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW024', 'U', '1', '10', '35', 'PA-180', 0, '2022-05-12'),
(777, 'IS-CW024', '01-03-003', '2022-05-12', 0, 0, 1, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW024', 'U', '1', '10', '35', 'PA-180', 0, '2022-05-12'),
(778, 'IS-CW025', '01-01-121', '2022-05-11', 0, 0, 50, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW025', 'S', '2', '10', '41', 'PA-182', 0, '2022-05-11'),
(779, 'IS-CW026', '01-03-001', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW026', 'S', '2', '10', '41', 'PA-183', 0, '2022-05-11'),
(780, 'IS-CW026', '01-03-007', '2022-05-11', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW026', 'S', '2', '10', '41', 'PA-183', 0, '2022-05-11'),
(783, 'IS-CW028', '01-01-119', '2022-05-11', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW028', 'S', '2', '10', '32', 'PA-107', 0, '2022-05-11'),
(784, 'IS-CW029', '01-03-002', '2022-05-11', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW029', 'S', '2', '10', '32', 'PA-010', 0, '2022-05-11'),
(785, 'IS-CW030', '01-03-001', '2022-05-12', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW030', 'S', '2', '10', '32', 'PA-105', 0, '2022-05-12'),
(786, 'IS-CW031', '01-01-123', '2022-05-08', 0, 0, 14, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW031', 'S', '2', '10', '42', 'PA-184', 0, '2022-05-08'),
(787, '01-01-001', '01-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(788, '01-01-002', '01-01-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(789, '01-01-003', '01-01-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(790, '01-01-004', '01-01-004', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(791, '01-01-005', '01-01-005', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(792, '01-01-006', '01-01-006', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(793, '01-01-007', '01-01-007', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(794, '01-01-008', '01-01-008', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(795, '01-01-009', '01-01-009', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(796, '01-01-010', '01-01-010', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(797, '01-01-011', '01-01-011', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(798, '01-01-012', '01-01-012', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(799, '01-01-013', '01-01-013', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(800, '01-01-014', '01-01-014', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(801, '01-01-015', '01-01-015', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(802, '01-01-016', '01-01-016', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(803, '01-01-017', '01-01-017', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(804, '01-01-018', '01-01-018', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(805, '01-01-019', '01-01-019', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(806, '01-01-020', '01-01-020', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(807, '01-01-021', '01-01-021', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(808, '01-01-022', '01-01-022', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(809, '01-01-023', '01-01-023', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(810, '01-01-024', '01-01-024', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(811, '01-01-025', '01-01-025', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(812, '01-01-026', '01-01-026', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(813, '01-01-027', '01-01-027', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(814, '01-01-028', '01-01-028', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(815, '01-01-029', '01-01-029', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(816, '01-01-030', '01-01-030', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(817, '01-01-031', '01-01-031', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(818, '01-01-032', '01-01-032', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(819, '01-01-033', '01-01-033', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(820, '01-01-034', '01-01-034', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(821, '01-01-035', '01-01-035', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(822, '01-01-036', '01-01-036', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(823, '01-01-037', '01-01-037', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(824, '01-01-038', '01-01-038', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(825, '01-01-039', '01-01-039', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(826, '01-01-040', '01-01-040', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(827, '01-01-041', '01-01-041', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(828, '01-01-042', '01-01-042', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(829, '01-01-043', '01-01-043', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(830, '01-01-044', '01-01-044', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(831, '01-01-045', '01-01-045', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(832, '01-01-046', '01-01-046', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(833, '01-01-047', '01-01-047', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(834, '01-01-048', '01-01-048', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(835, '01-01-049', '01-01-049', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(836, '01-01-050', '01-01-050', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(837, '01-01-051', '01-01-051', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(838, '01-01-052', '01-01-052', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(839, '01-01-053', '01-01-053', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(840, '01-01-054', '01-01-054', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(841, '01-01-055', '01-01-055', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(842, '01-01-056', '01-01-056', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(843, '01-01-057', '01-01-057', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(844, '01-01-058', '01-01-058', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(845, '01-01-059', '01-01-059', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(846, '01-01-060', '01-01-060', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(847, '01-01-061', '01-01-061', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(848, '01-01-062', '01-01-062', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(849, '01-01-063', '01-01-063', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(850, '01-01-064', '01-01-064', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(851, '01-01-065', '01-01-065', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(852, '01-01-066', '01-01-066', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(853, '01-01-067', '01-01-067', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(854, '01-01-068', '01-01-068', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(855, '01-01-069', '01-01-069', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(856, '01-01-070', '01-01-070', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(857, '01-01-071', '01-01-071', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(858, '01-01-072', '01-01-072', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(859, '01-01-073', '01-01-073', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(860, '01-01-074', '01-01-074', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(861, '01-01-075', '01-01-075', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(862, '01-01-076', '01-01-076', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(863, '01-01-077', '01-01-077', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(864, '01-01-078', '01-01-078', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(865, '01-01-079', '01-01-079', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(866, '01-01-080', '01-01-080', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(867, '01-01-081', '01-01-081', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(868, '01-01-082', '01-01-082', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(869, '01-01-083', '01-01-083', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(870, '01-01-084', '01-01-084', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(871, '01-01-085', '01-01-085', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(872, '01-01-086', '01-01-086', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(873, '01-01-087', '01-01-087', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(874, '01-01-088', '01-01-088', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(875, '01-01-089', '01-01-089', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(876, '01-01-090', '01-01-090', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(877, '01-01-091', '01-01-091', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(878, '01-01-092', '01-01-092', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(879, '01-01-093', '01-01-093', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(880, '01-01-094', '01-01-094', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(881, '01-01-095', '01-01-095', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(882, '01-01-096', '01-01-096', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(883, '01-01-097', '01-01-097', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(884, '01-01-098', '01-01-098', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(885, '01-01-099', '01-01-099', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(886, '01-01-100', '01-01-100', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(887, '01-01-101', '01-01-101', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(888, '01-01-102', '01-01-102', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(889, '01-01-103', '01-01-103', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(890, '01-01-104', '01-01-104', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(891, '01-01-105', '01-01-105', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(892, '01-01-106', '01-01-106', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(893, '01-01-107', '01-01-107', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(894, '01-01-108', '01-01-108', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(895, '01-01-109', '01-01-109', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(896, '01-01-110', '01-01-110', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(897, '01-01-111', '01-01-111', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(898, '01-01-112', '01-01-112', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(899, '01-01-113', '01-01-113', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(900, '01-01-114', '01-01-114', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(901, '01-01-115', '01-01-115', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(902, '01-01-116', '01-01-116', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(903, '01-01-117', '01-01-117', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(904, '01-01-118', '01-01-118', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(905, '01-01-119', '01-01-119', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(906, '01-01-120', '01-01-120', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(907, '01-01-121', '01-01-121', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(908, '01-01-122', '01-01-122', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(909, '01-01-123', '01-01-123', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(910, '01-01-124', '01-01-124', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(911, '01-01-125', '01-01-125', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(912, '01-01-126', '01-01-126', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(913, '01-01-127', '01-01-127', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(914, '01-01-128', '01-01-128', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(915, '01-01-129', '01-01-129', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(916, '01-01-130', '01-01-130', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(917, '01-01-131', '01-01-131', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(918, '01-01-132', '01-01-132', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(919, '01-01-133', '01-01-133', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(920, '01-01-134', '01-01-134', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(921, '01-01-135', '01-01-135', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(922, '01-01-136', '01-01-136', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(923, '01-01-137', '01-01-137', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(924, '01-01-138', '01-01-138', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(925, '01-01-139', '01-01-139', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(926, '01-01-140', '01-01-140', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(927, '01-01-141', '01-01-141', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(928, '01-01-142', '01-01-142', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(929, '01-01-143', '01-01-143', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(930, '01-01-144', '01-01-144', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(931, '01-01-145', '01-01-145', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(932, '01-01-146', '01-01-146', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(933, '01-01-147', '01-01-147', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(934, '01-01-148', '01-01-148', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(935, '01-01-149', '01-01-149', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(936, '01-01-150', '01-01-150', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(937, '01-01-151', '01-01-151', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(938, '01-01-152', '01-01-152', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(939, '01-01-153', '01-01-153', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(940, '01-01-154', '01-01-154', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(941, '01-01-155', '01-01-155', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(942, '01-01-156', '01-01-156', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(943, '01-01-157', '01-01-157', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(944, '01-01-158', '01-01-158', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(945, '01-01-159', '01-01-159', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(946, '01-01-160', '01-01-160', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(947, '01-01-161', '01-01-161', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(948, '01-01-162', '01-01-162', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(949, '01-02-001', '01-02-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(950, '01-02-002', '01-02-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(951, '01-02-003', '01-02-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(952, '01-02-004', '01-02-004', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(953, '01-02-005', '01-02-005', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(954, '01-02-006', '01-02-006', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(955, '01-02-007', '01-02-007', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(956, '01-02-008', '01-02-008', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(957, '01-02-009', '01-02-009', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(958, '01-02-010', '01-02-010', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(959, '01-02-011', '01-02-011', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(960, '01-02-012', '01-02-012', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(961, '01-02-013', '01-02-013', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(962, '01-02-014', '01-02-014', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(963, '01-02-015', '01-02-015', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(964, '01-02-016', '01-02-016', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(965, '01-02-017', '01-02-017', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(966, '01-02-018', '01-02-018', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(967, '01-02-019', '01-02-019', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(968, '01-02-020', '01-02-020', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(969, '01-02-021', '01-02-021', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(970, '01-02-022', '01-02-022', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(971, '01-02-023', '01-02-023', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(972, '01-02-024', '01-02-024', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(973, '01-02-025', '01-02-025', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(974, '01-02-026', '01-02-026', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(975, '01-02-027', '01-02-027', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(976, '01-02-028', '01-02-028', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(977, '01-02-029', '01-02-029', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(978, '01-02-030', '01-02-030', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(979, '01-02-031', '01-02-031', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(980, '01-02-032', '01-02-032', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(981, '01-02-033', '01-02-033', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(982, '01-02-034', '01-02-034', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(983, '01-02-035', '01-02-035', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(984, '01-02-036', '01-02-036', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(985, '01-02-037', '01-02-037', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(986, '01-02-038', '01-02-038', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(987, '01-02-039', '01-02-039', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(988, '01-02-040', '01-02-040', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(989, '01-02-041', '01-02-041', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(990, '01-02-042', '01-02-042', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(991, '01-02-043', '01-02-043', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(992, '01-02-044', '01-02-044', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(993, '01-02-045', '01-02-045', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(994, '01-02-046', '01-02-046', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(995, '01-02-047', '01-02-047', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(996, '01-02-048', '01-02-048', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(997, '01-02-049', '01-02-049', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(998, '01-02-050', '01-02-050', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(999, '01-02-051', '01-02-051', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1000, '01-02-052', '01-02-052', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1001, '01-02-053', '01-02-053', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1002, '01-03-001', '01-03-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1003, '01-03-002', '01-03-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1004, '01-03-003', '01-03-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1005, '01-03-004', '01-03-004', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1006, '01-03-005', '01-03-005', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1007, '01-03-006', '01-03-006', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1008, '01-03-007', '01-03-007', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1009, '01-03-008', '01-03-008', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1010, '01-05-001', '01-05-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1011, '02-01-001', '02-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1012, '05-01-001', '05-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1013, '05-01-002', '05-01-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1014, '06-01-001', '06-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1015, '06-01-002', '06-01-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1016, '06-01-003', '06-01-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1017, '06-01-004', '06-01-004', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1018, '06-02-001', '06-02-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1019, '06-02-002', '06-02-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1020, '06-02-003', '06-02-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1021, '06-03-001', '06-03-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1022, '06-03-002', '06-03-002', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1023, '06-03-003', '06-03-003', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1024, '07-01-001', '07-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1025, '08-01-001', '08-01-001', '2022-04-30', 500, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(1026, 'IS-CW032', '01-01-125', '2022-05-07', 0, 0, 4, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW032', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-07'),
(1027, 'IS-CW032', '08-01-001', '2022-05-07', 0, 0, 40, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW032', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-07'),
(1028, 'IS-CW033', '01-01-001', '2022-05-09', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW033', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-09'),
(1029, 'IS-CW033', '08-01-001', '2022-05-09', 0, 0, 50, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW033', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-09'),
(1030, 'IS-CW034', '01-01-125', '2022-05-09', 0, 0, 4, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW034', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-09'),
(1031, 'IS-CW034', '08-01-001', '2022-05-09', 0, 0, 40, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW034', 'S', '2', '10', '42', 'PA-185', 0, '2022-05-09'),
(1032, 'IS-CW035', '01-01-003', '2022-05-11', 0, 0, 9, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1033, 'IS-CW035', '01-01-125', '2022-05-11', 0, 0, 8, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1034, 'IS-CW035', '01-01-014', '2022-05-11', 0, 0, 4, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1035, 'IS-CW035', '01-01-121', '2022-05-11', 0, 0, 4, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1036, 'IS-CW035', '01-03-002', '2022-05-11', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1037, 'IS-CW035', '01-03-003', '2022-05-11', 0, 0, 0.25, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW035', 'S', '2', '10', '42', 'PA-186', 0, '2022-05-11'),
(1040, 'IS-CW036', '08-01-001', '2022-05-12', 0, 0, 50, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW036', 'U', '1', '10', '42', 'PA-185', 0, '2022-05-12'),
(1041, 'IS-CW036', '01-01-001', '2022-05-12', 0, 0, 5, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW036', 'U', '1', '10', '42', 'PA-185', 0, '2022-05-12'),
(1042, 'IS-CW037', '01-02-053', '2022-05-08', 0, 0, 50, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW037', 'S', '2', '10', '41', 'PA-169', 0, '2022-05-08'),
(1043, 'IS-CW011', '01-03-001', '2022-05-08', 0, 0, 7, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW011', 'U', '1', '10', '41', 'PA-168', 0, '2022-05-08'),
(1044, 'IS-CW011', '01-03-002', '2022-05-08', 0, 0, 1.25, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW011', 'U', '1', '10', '41', 'PA-168', 0, '2022-05-08'),
(1045, 'IS-CW011', '01-01-005', '2022-05-08', 0, 0, 1, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW011', 'U', '1', '10', '41', 'PA-168', 0, '2022-05-08'),
(1047, 'MRR-CW002', '01-03-008', '2022-05-01', 200, 3220000, 0, 0, 16100, 'Receive', 1.1, '', '0', 'MRR-CW002', '', '', '10', '', '', 0, ''),
(1048, 'IS-CW038', '01-02-036', '2022-05-12', 0, 0, 10, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW038', 'S', '2', '10', '35', 'PA-181', 0, '2022-05-12'),
(1049, 'IS-CW038', '01-03-008', '2022-05-12', 0, 0, 2, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW038', 'S', '2', '10', '35', 'PA-181', 0, '2022-05-12'),
(1054, 'MRR-CW003', '01-02-054', '2022-05-01', 500, 4275000, 0, 0, 8550, 'Receive', 1.1, '', '0', 'MRR-CW003', '', '', '10', '', '', 0, ''),
(1055, 'MRR-CW003', '01-02-055', '2022-05-01', 500, 4125000, 0, 0, 8250, 'Receive', 1.1, '', '0', 'MRR-CW003', '', '', '10', '', '', 0, ''),
(1056, 'IS-CW039', '01-02-054', '2022-05-11', 0, 0, 25, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW039', 'S', '2', '10', '38', 'PA-173', 0, '2022-05-11'),
(1057, 'IS-CW039', '01-02-055', '2022-05-11', 0, 0, 25, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW039', 'S', '2', '10', '38', 'PA-173', 0, '2022-05-11'),
(1058, 'IS-CW039', '01-01-058', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW039', 'S', '2', '10', '38', 'PA-173', 0, '2022-05-11'),
(1059, 'IS-CW039', '01-01-088', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW039', 'S', '2', '10', '38', 'PA-173', 0, '2022-05-11'),
(1060, 'IS-CW039', '01-02-006', '2022-05-11', 0, 0, 5, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW039', 'S', '2', '10', '38', 'PA-173', 0, '2022-05-11'),
(1063, 'IS-CW016', '01-03-001', '2022-05-10', 0, 0, 2, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW016', 'U', '1', '10', '38', 'PA-172', 0, '2022-05-10'),
(1064, 'IS-CW005', '01-01-025', '2022-05-01', 0, 0, 15, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW005', 'U', '1', '10', '41', 'PA-166', 0, '2022-05-01'),
(1065, 'IS-CW005', '01-01-117', '2022-05-01', 0, 0, 15, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW005', 'U', '1', '10', '41', 'PA-166', 0, '2022-05-01'),
(1066, 'IS-CW010', '01-01-125', '2022-05-08', 0, 0, 20, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW010', 'U', '1', '10', '41', 'PA-166', 0, '2022-05-08'),
(1067, 'IS-CW010', '01-03-003', '2022-05-08', 0, 0, 5, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW010', 'U', '1', '10', '41', 'PA-166', 0, '2022-05-08'),
(1070, 'MRR-CW004', '01-03-010', '2022-05-05', 200, 2820000, 0, 0, 14100, 'Receive', 1.1, '2', '0', 'MRR-CW004', '', '2', '10', '', '', 0, '2022-05-05'),
(1071, 'MRR-CW004', '01-03-011', '2022-05-05', 200, 2820000, 0, 0, 14100, 'Receive', 1.1, '2', '0', 'MRR-CW004', '', '2', '10', '', '', 0, '2022-05-05'),
(1072, 'IS-CW040', '01-03-010', '2022-05-06', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW040', 'S', '2', '10', '32', 'PA-008', 0, '2022-05-06'),
(1073, 'IS-CW040', '01-03-011', '2022-05-06', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW040', 'S', '2', '10', '32', 'PA-008', 0, '2022-05-06'),
(1076, 'IS-CW027', '01-03-001', '2022-05-09', 0, 0, 1, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW027', 'U', '1', '10', '32', 'PA-010', 0, '2022-05-09'),
(1077, 'IS-CW027', '01-03-002', '2022-05-09', 0, 0, 1, 0, 0, 'Issue', 1.1, '1', '0', 'IS-CW027', 'U', '1', '10', '32', 'PA-010', 0, '2022-05-09'),
(1078, 'IS-CW041', '01-03-005', '2022-05-23', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW041', 'S', '2', '10', '33', 'PA-131', 0, '2022-05-23'),
(1079, 'IS-CW042', '01-03-005', '2022-05-23', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW042', 'S', '2', '10', '32', 'PA-104', 0, '2022-05-23'),
(1080, 'IS-CW043', '01-03-005', '2022-05-23', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW043', 'S', '2', '10', '35', 'PA-158', 0, '2022-05-23'),
(1081, 'IS-CW044', '01-03-005', '2022-05-23', 0, 0, 1, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW044', 'S', '2', '10', '34', 'PA-018', 0, '2022-05-23'),
(1082, 'MRR-CW005', '01-03-001', '2022-05-15', 100, 20000, 0, 0, 200, 'Receive', 1.1, '2', '0', 'MRR-CW005', '', '2', '10', '', '', 0, '2022-05-15'),
(1083, 'IS-CW045', '01-03-001', '2022-05-23', 0, 0, 20, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW045', 'S', '2', '10', '31', 'PA-097', 0, '2022-05-23'),
(1084, 'MRR-CW006', '08-01-001', '2022-06-01', 12, 3600, 0, 0, 300, 'Receive', 1.1, '2', '0', 'MRR-CW006', '', '2', '10', '', '', 0, '2022-06-01');

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
(165, '02-01-000', '41', 'Scrap Material'),
(166, '01-06-000', '40', 'Shapon'),
(167, '03-01-000', '42', 'Anowar'),
(168, '05-01-000', '44', 'Masud Casing'),
(169, '06-01-000', '45', 'H power glass'),
(170, '06-02-000', '45', 'Borac glass'),
(171, '06-03-000', '45', 'Trust glass'),
(172, '07-01-000', '46', 'SK Soket Jamper'),
(173, '08-01-000', '47', 'Acid shenakolan Tongi');

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
(41, '02-00-000', 'Scrap Material', NULL, NULL, NULL),
(42, '03-00-000', 'Parts Brack Show', NULL, NULL, NULL),
(43, '04-00-000', 'Shapon', NULL, NULL, NULL),
(44, '05-00-000', 'Casing', NULL, NULL, NULL),
(45, '06-00-000', 'Glass', NULL, NULL, NULL),
(46, '07-00-000', 'Soket Jamper', NULL, NULL, NULL),
(47, '08-00-000', 'Acid Water', NULL, NULL, NULL);

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
  `receivermode` varchar(200) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_partybalance`
--

INSERT INTO `inv_partybalance` (`id`, `pb_ref_id`, `warehouse_id`, `pb_date`, `memono`, `partner_id`, `pb_party_id`, `pb_dr_amount`, `pb_cr_amount`, `pb_remark`, `pb_partac_id`, `receivermode`, `approval_status`) VALUES
(3, 'IS-CW001', '10', '2022-05-01', 1971, '39', 'PA-045', 29600, 0, '', 'IS-CW001', '', 0),
(4, 'IS-CW002', '10', '2022-05-08', 5404, '33', 'PA-165', 206900, 0, '', 'IS-CW002', '', 0),
(7, 'IS-CW004', '10', '2022-05-08', 5406, '33', 'PA-115', 87000, 0, '', 'IS-CW004', '', 0),
(8, 'IS-CW003', '10', '2022-05-08', 5405, '33', 'PA-130', 258100, 0, '', 'IS-CW003', '', 0),
(12, 'IS-CW006', '10', '2022-05-01', 5117, '41', 'PA-167', 414740, 0, '', 'IS-CW006', '', 0),
(13, 'IS-CW007', '10', '2022-05-01', 5118, '41', 'PA-155', 93000, 0, '', 'IS-CW007', '', 0),
(17, 'IS-CW008', '10', '2022-05-01', 5119, '41', 'PA-168', 16600, 0, '', 'IS-CW008', '', 0),
(18, 'IS-CW009', '10', '2022-05-08', 5121, '41', 'PA-170', 191200, 0, '', 'IS-CW009', '', 0),
(21, 'VID-021', '10', '2022-05-11', 5124, '35', 'PA-178', 0, 0, '', '', 'Check Pass', 0),
(23, 'VID-023', '10', '2022-05-12', 5125, '35', 'PA-181', 0, 0, '', '', 'Maruf', 0),
(24, 'IS-CW014', '10', '2022-05-09', 5126, '41', 'PA-012', 216500, 0, '', 'IS-CW014', '', 0),
(29, 'IS-CW015', '10', '2022-05-10', 2932, '38', 'PA-171', 43500, 0, '', 'IS-CW015', '', 0),
(30, 'IS-CW017', '10', '2022-05-12', 2936, '38', 'PA-175', 174000, 0, 'Battary ', 'IS-CW017', '', 0),
(31, 'VID-001', '10', '2022-05-15', 0, '38', 'PA-175', 0, 7800, 'Battery Cash Paid', 'VID-001', '', 0),
(32, 'IS-CW018', '10', '2022-05-09', 2329, '35', 'PA-176', 8000, 0, '', 'IS-CW018', '', 0),
(33, 'IS-CW019', '10', '2022-05-10', 2330, '35', 'PA-177', 95000, 0, '', 'IS-CW019', '', 0),
(34, 'IS-CW020', '10', '2022-05-10', 2331, '35', 'PA-178', 91800, 0, '', 'IS-CW020', '', 0),
(35, 'IS-CW021', '10', '2022-05-11', 2332, '35', 'PA-179', 95000, 0, '', 'IS-CW021', '', 0),
(36, 'IS-CW022', '10', '2022-05-11', 2333, '35', 'PA-180', 119000, 0, '', 'IS-CW022', '', 0),
(37, 'IS-CW023', '10', '2022-05-11', 2334, '35', 'PA-181', 72500, 0, '', 'IS-CW023', '', 0),
(39, 'IS-CW024', '10', '2022-05-12', 2335, '35', 'PA-180', 257000, 0, '', 'IS-CW024', '', 0),
(40, 'IS-CW025', '10', '2022-05-11', 5127, '41', 'PA-182', 435000, 0, '', 'IS-CW025', '', 0),
(41, 'IS-CW026', '10', '2022-05-11', 5128, '41', 'PA-183', 98800, 0, '', 'IS-CW026', '', 0),
(43, 'IS-CW028', '10', '2022-05-11', 5089, '32', 'PA-107', 27300, 0, '', 'IS-CW028', '', 0),
(44, 'IS-CW029', '10', '2022-05-11', 5087, '32', 'PA-010', 16600, 0, '', 'IS-CW029', '', 0),
(45, 'IS-CW030', '10', '2022-05-12', 5081, '32', 'PA-105', 29200, 0, '', 'IS-CW030', '', 0),
(46, 'IS-CW031', '10', '2022-05-08', 2477, '42', 'PA-184', 128800, 0, '', 'IS-CW031', '', 0),
(47, 'IS-CW032', '10', '2022-05-07', 2478, '42', 'PA-185', 29600, 0, '', 'IS-CW032', '', 0),
(48, 'IS-CW033', '10', '2022-05-09', 2479, '42', 'PA-185', 46800, 0, '', 'IS-CW033', '', 0),
(49, 'IS-CW034', '10', '2022-05-09', 2480, '42', 'PA-185', 29600, 0, '', 'IS-CW034', '', 0),
(50, 'IS-CW035', '10', '2022-05-11', 2481, '42', 'PA-186', 235000, 0, '', 'IS-CW035', '', 0),
(52, 'IS-CW036', '10', '2022-05-12', 2482, '42', 'PA-185', 47000, 0, '', 'IS-CW036', '', 0),
(53, 'IS-CW037', '10', '2022-05-08', 5120, '41', 'PA-169', 465000, 0, '', 'IS-CW037', '', 0),
(54, 'IS-CW011', '10', '2022-05-08', 5123, '41', 'PA-168', 132150, 0, '', 'IS-CW011', '', 0),
(55, 'IS-CW038', '10', '2022-05-12', 2336, '35', 'PA-181', 125000, 0, '', 'IS-CW038', '', 0),
(56, 'IS-CW039', '10', '2022-05-11', 2935, '38', 'PA-173', 573250, 0, '', 'IS-CW039', '', 0),
(58, 'IS-CW016', '10', '2022-05-10', 2934, '38', 'PA-172', 29300, 0, '', 'IS-CW016', '', 0),
(59, 'VID-002', '10', '2022-05-01', 0, '41', 'PA-166', 0, 365500, '', 'VID-002', '', 0),
(60, 'VID-003', '10', '2022-05-01', 0, '41', 'PA-167', 0, 114000, '', 'VID-003', '', 0),
(61, 'VID-004', '10', '2022-05-01', 0, '41', 'PA-155', 0, 93000, '', 'VID-004', '', 0),
(62, 'VID-005', '10', '2022-05-01', 0, '41', 'PA-168', 0, 16600, '', 'VID-005', '', 0),
(63, 'VID-006', '10', '2022-05-08', 0, '41', 'PA-169', 0, 370000, 'Check Pass', 'VID-006', '', 0),
(64, 'VID-007', '10', '2022-05-08', 0, '41', 'PA-170', 0, 141200, '', 'VID-007', '', 0),
(65, 'VID-008', '10', '2022-05-08', 0, '41', 'PA-166', 0, 240000, '', 'VID-008', '', 0),
(66, 'VID-009', '10', '2022-05-08', 0, '41', 'PA-168', 0, 122150, '', 'VID-009', '', 0),
(67, 'VID-010', '10', '2022-05-09', 0, '41', 'PA-155', 0, 65500, '', 'VID-010', '', 0),
(68, 'VID-011', '10', '2022-05-09', 0, '41', 'PA-167', 0, 86400, '', 'VID-011', '', 0),
(69, 'VID-012', '10', '2022-05-09', 0, '41', 'PA-012', 0, 312800, '', 'VID-012', '', 0),
(70, 'VID-013', '10', '2022-05-11', 0, '41', 'PA-182', 0, 10000, '', 'VID-013', '', 0),
(71, 'VID-014', '10', '2022-05-11', 0, '41', 'PA-183', 0, 98000, '', 'VID-014', '', 0),
(72, 'IS-CW005', '10', '2022-05-01', 5116, '41', 'PA-166', 265500, 0, '', 'IS-CW005', '', 0),
(73, 'IS-CW010', '10', '2022-05-08', 5122, '41', 'PA-166', 240000, 0, 'Discount Gift Less', 'IS-CW010', '', 0),
(74, 'VID-015', '10', '2022-05-10', 0, '38', 'PA-171', 0, 43500, '', 'VID-015', '', 0),
(75, 'VID-016', '10', '2022-05-10', 0, '38', 'PA-172', 0, 29300, '', 'VID-016', '', 0),
(76, 'VID-017', '10', '2022-05-11', 0, '38', 'PA-173', 0, 140000, 'IBBL', 'VID-017', '', 0),
(77, 'VID-018', '10', '2022-05-12', 0, '38', 'PA-175', 0, 166200, '', 'VID-018', '', 0),
(79, 'IS-CW040', '10', '2022-05-06', 5093, '32', 'PA-008', 29800, 0, '', 'IS-CW040', '', 0),
(81, 'IS-CW027', '10', '2022-05-09', 5091, '32', 'PA-010', 31200, 0, '', 'IS-CW027', '', 0),
(82, 'VID-019', '10', '2022-05-15', 0, '35', 'PA-159', 0, 60000, '', 'VID-019', '', 0),
(83, 'VID-020', '10', '2022-05-15', 0, '35', 'PA-177', 0, 60000, '', 'VID-020', '', 0),
(84, 'VID-021', '10', '2022-05-15', 0, '35', 'PA-178', 0, 34000, 'Check pass', 'VID-021', 'Check Pass', 0),
(85, 'VID-022', '10', '2022-05-16', 0, '35', 'PA-180', 0, 119000, '', 'VID-022', 'Maruf', 0),
(86, 'VID-023', '10', '2022-05-14', 0, '35', 'PA-181', 0, 90000, '', 'VID-023', 'Maruf', 0),
(87, 'VID-024', '10', '2022-05-12', 0, '35', 'PA-180', 0, 24, '', 'VID-024', 'Maruf-U', 0),
(88, 'VID-025', '10', '2022-05-12', 0, '35', 'PA-181', 0, 127000, '', 'VID-025', 'Maruf', 0),
(89, 'IS-CW041', '10', '2022-05-23', 2, '33', 'PA-131', 50, 0, '', 'IS-CW041', '', 0),
(90, 'IS-CW042', '10', '2022-05-23', 78, '32', 'PA-104', 30, 0, '', 'IS-CW042', '', 0),
(91, 'IS-CW043', '10', '2022-05-23', 123, '35', 'PA-158', 300, 0, '', 'IS-CW043', 'NAP', 0),
(92, 'IS-CW044', '10', '2022-05-23', 76, '34', 'PA-018', 400, 0, '', 'IS-CW044', 'NAP', 0),
(93, 'OP', '10', '2022-05-23', 0, '32', 'PA-009', 0, 600, '', 'OP', '', 0),
(94, 'OP', '10', '2022-05-23', 0, '42', 'PA-186', 0, 100, '', 'OP', '', 0),
(95, 'OP', '10', '2022-05-10', 0, '34', 'PA-019', 0, 1, '', 'OP', '', 0),
(96, 'OP', '10', '2022-05-23', 0, '35', 'PA-159', 0, 2, 'OP', 'OP', 'OP', 0),
(97, 'OP', '10', '0000-00-00', 0, '31', '', 0, 10, 'OP', 'OP', 'OP', 0),
(98, 'OP', '10', '2022-05-23', 0, '31', 'PA-097', 0, 100, 'OP', 'OP', 'OP', 0),
(100, 'OP', '10', '2022-05-23', 0, '36', 'PA-016', 0, 20, 'OP', 'OP', 'OP', 0),
(101, 'OP', '10', '2022-05-23', 0, '35', 'PA-177', 0, 0, 'OP', 'OP', 'OP', 0),
(102, 'OP', '10', '2022-05-23', 0, '33', 'PA-113', 5, 6, 'OP', 'OP', 'OP', 0),
(103, 'OP', '10', '2022-05-10', 0, '33', 'PA-120', 25, 30, 'OP', 'OP', 'OP', 0),
(104, 'IS-CW045', '10', '2022-05-23', 420, '31', 'PA-097', 6000, 0, '', 'IS-CW045', 'NAP', 0),
(105, 'VID-029', '10', '2022-05-24', 0, '31', 'PA-097', 0, 4000, 'gdgd', 'VID-029', 'gg', 0);

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
('IS-CW001', '2022-05-01', '39', 'MM-1', 'PA-045', 26800, 29600, 2800, 1400, 1400, '10'),
('IS-CW002', '2022-05-08', '33', 'MM-1', 'PA-165', 197800, 206900, 9100, 4550, 4550, '10'),
('IS-CW003', '2022-05-08', '33', 'MM-1', 'PA-130', 246500, 258100, 11600, 5800, 5800, '10'),
('IS-CW004', '2022-05-08', '33', 'MM-1', 'PA-115', 84000, 87000, 3000, 1500, 1500, '10'),
('IS-CW005', '2022-05-01', '41', 'MM-1', 'PA-166', 255000, 265500, 10500, 5250, 5250, '10'),
('IS-CW006', '2022-05-01', '41', 'MM-1', 'PA-167', 394350, 414740, 20390, 10195, 10195, '10'),
('IS-CW007', '2022-05-01', '41', 'MM-1', 'PA-155', 86000, 93000, 7000, 3500, 3500, '10'),
('IS-CW008', '2022-05-01', '41', 'MM-1', 'PA-168', 16100, 16600, 500, 250, 250, '10'),
('IS-CW009', '2022-05-08', '41', 'MM-1', 'PA-170', 179800, 191200, 11400, 5700, 5700, '10'),
('IS-CW010', '2022-05-08', '41', 'MM-1', 'PA-166', 229500, 240000, 10500, 5250, 5250, '10'),
('IS-CW011', '2022-05-08', '41', 'MM-1', 'PA-168', 127625, 132150, 4525, 2262.5, 2262.5, '10'),
('IS-CW012', '2022-05-09', '41', 'MM-1', 'PA-155', 378300, 389500, 11200, 5600, 5600, '10'),
('IS-CW013', '2022-05-09', '41', 'MM-1', 'PA-167', 80400, 86400, 6000, 3000, 3000, '10'),
('IS-CW014', '2022-05-09', '41', 'MM-1', 'PA-012', 204500, 216500, 12000, 6000, 6000, '10'),
('IS-CW015', '2022-05-10', '38', 'MM-1', 'PA-171', 41250, 43500, 2250, 1125, 1125, '10'),
('IS-CW016', '2022-05-10', '38', 'MM-1', 'PA-172', 28200, 29300, 1100, 550, 550, '10'),
('IS-CW017', '2022-05-12', '38', 'MM-1', 'PA-175', 168000, 174000, 6000, 3000, 3000, '10'),
('IS-CW018', '2022-05-09', '35', 'MM-1', 'PA-176', 7300, 8000, 700, 350, 350, '10'),
('IS-CW019', '2022-05-10', '35', 'MM-1', 'PA-177', 85500, 95000, 9500, 4750, 4750, '10'),
('IS-CW020', '2022-05-10', '35', 'MM-1', 'PA-178', 79200, 91800, 12600, 6300, 6300, '10'),
('IS-CW021', '2022-05-11', '35', 'MM-1', 'PA-179', 88500, 95000, 6500, 3250, 3250, '10'),
('IS-CW022', '2022-05-11', '35', 'MM-1', 'PA-180', 114750, 119000, 4250, 2125, 2125, '10'),
('IS-CW023', '2022-05-11', '35', 'MM-1', 'PA-181', 70500, 72500, 2000, 1000, 1000, '10'),
('IS-CW024', '2022-05-12', '35', 'MM-1', 'PA-180', 249650, 257000, 7350, 3675, 3675, '10'),
('IS-CW025', '2022-05-11', '41', 'MM-1', 'PA-182', 430000, 435000, 5000, 2500, 2500, '10'),
('IS-CW026', '2022-05-11', '41', 'MM-1', 'PA-183', 96300, 98800, 2500, 1250, 1250, '10'),
('IS-CW027', '2022-05-09', '32', 'MM-1', 'PA-010', 30200, 31200, 1000, 500, 500, '10'),
('IS-CW028', '2022-05-11', '32', 'MM-1', 'PA-107', 25800, 27300, 1500, 750, 750, '10'),
('IS-CW029', '2022-05-11', '32', 'MM-1', 'PA-010', 16100, 16600, 500, 250, 250, '10'),
('IS-CW030', '2022-05-12', '32', 'MM-1', 'PA-105', 28200, 29200, 1000, 500, 500, '10'),
('IS-CW031', '2022-05-08', '42', 'MM-1', 'PA-184', 123200, 128800, 5600, 2800, 2800, '10'),
('IS-CW032', '2022-05-07', '42', 'MM-1', 'PA-185', 27600, 29600, 2000, 1000, 1000, '10'),
('IS-CW033', '2022-05-09', '42', 'MM-1', 'PA-185', 45000, 46800, 1800, 900, 900, '10'),
('IS-CW034', '2022-05-09', '42', 'MM-1', 'PA-185', 27600, 29600, 2000, 1000, 1000, '10'),
('IS-CW035', '2022-05-11', '42', 'MM-1', 'PA-186', 217175, 235000, 17825, 8912.5, 8912.5, '10'),
('IS-CW036', '2022-05-12', '42', 'MM-1', 'PA-185', 44500, 47000, 2500, 1250, 1250, '10'),
('IS-CW037', '2022-05-08', '41', 'MM-1', 'PA-169', 447500, 465000, 17500, 8750, 8750, '10'),
('IS-CW038', '2022-05-12', '35', 'MM-1', 'PA-181', 120700, 125000, 4300, 2150, 2150, '10'),
('IS-CW039', '2022-05-11', '38', 'MM-1', 'PA-173', 545250, 573250, 28000, 14000, 14000, '10'),
('IS-CW040', '2022-05-06', '32', 'MM-1', 'PA-008', 28200, 29800, 1600, 800, 800, '10'),
('IS-CW041', '2022-05-23', '33', 'MM-1', 'PA-131', 41, 50, 9, 4.5, 4.5, '10'),
('IS-CW044', '2022-05-23', '34', 'MM-1', 'PA-018', 300, 400, 100, 50, 50, '10'),
('IS-CW045', '2022-05-23', '31', 'MM-1', 'PA-097', 4000, 6000, 2000, 1000, 1000, '10');

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
('SS-CW001', '2022-05-18', 'PID-001', 'MM-1', 15600, 7800, 7800, '10');

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
(1, 'MRR-CW001', '2022-05-01', '', '16-001-001', 'SID-001', 0, 'NAV', 'Receive Faruk2', 'Credit', '', '10', '1', NULL, 678000, 80, '4424', '2022-05-15', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-15'),
(2, 'MRR-CW002', '2022-05-01', '', '16-001-001', 'SID-003', 0, 'NAV', ' NAR', 'Credit', '', '10', '1', NULL, 3220000, 200, '', '2022-05-16', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-16'),
(3, 'MRR-CW003', '2022-05-01', '', '16-001-001', 'SID-002', 0, 'NAV', ' NAR', 'Credit', '', '10', '1', NULL, 8400000, 1000, '', '2022-05-16', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-16'),
(4, 'MRR-CW004', '2022-05-05', '', '6-14-010', 'SID-003', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 5640000, 400, '0', '2022-05-17', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-05'),
(5, 'MRR-CW005', '2022-05-15', '', '6-14-010', 'SID-007', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 20000, 100, '297', '2022-05-23', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-15'),
(6, 'MRR-CW006', '2022-06-01', '', '6-14-010', 'SID-001', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 3600, 12, 'sdfsd', '2022-06-01', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '1654061514mizan.jpg', '2022-06-01');

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
(5, 'MRR-CW001', '01-01-014', '388', 3, 25, 8600, 1, 215000, '', '', '', '10', 0),
(6, 'MRR-CW001', '01-01-115', '489', 3, 25, 8200, 1, 205000, '', '', '', '10', 0),
(7, 'MRR-CW001', '01-01-025', '399', 3, 20, 8600, 1, 172000, '', '', '', '10', 0),
(8, 'MRR-CW001', '01-01-121', '495', 3, 10, 8600, 1, 86000, '', '', '', '10', 0),
(10, 'MRR-CW002', '01-03-008', '603', 19, 200, 16100, 1, 3220000, '', '', '', '10', 0),
(15, 'MRR-CW003', '01-02-054', '606', 1, 500, 8550, 1, 4275000, '', '', '', '10', 0),
(16, 'MRR-CW003', '01-02-055', '607', 1, 500, 8250, 1, 4125000, '', '', '', '10', 0),
(17, 'MRR-CW004', '01-03-010', '613', 19, 200, 14100, 1, 2820000, '', '', '2', '10', 0),
(18, 'MRR-CW004', '01-03-011', '614', 19, 200, 14100, 1, 2820000, '', '', '2', '10', 0),
(19, 'MRR-CW005', '01-03-001', '369', 19, 100, 200, 1, 20000, '', '', '2', '10', 0),
(20, 'MRR-CW006', '08-01-001', '605', 21, 12, 300, 1, 3600, '', '', '2', '10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_replaceoutsupplier`
--

CREATE TABLE `inv_replaceoutsupplier` (
  `id` int(11) NOT NULL,
  `ros_id` varchar(25) NOT NULL,
  `ros_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_replaceoutsupplier`
--

INSERT INTO `inv_replaceoutsupplier` (`id`, `ros_id`, `ros_date`, `remarks`, `project_id`, `warehouse_id`, `supplier_id`, `party_id`, `approval_status`) VALUES
(5, 'SO-CW001', '2022-05-25', 'out to zoo 100', '2', '10', 'SID-001', '', ''),
(6, 'SO-CW002', '2022-05-25', 'out batting', '2', '10', 'SID-001', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_replaceoutsupplierdetails`
--

CREATE TABLE `inv_replaceoutsupplierdetails` (
  `id` int(11) NOT NULL,
  `ros_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ros_date` date NOT NULL,
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
-- Dumping data for table `inv_replaceoutsupplierdetails`
--

INSERT INTO `inv_replaceoutsupplierdetails` (`id`, `ros_id`, `ros_date`, `material_id`, `material_name`, `unit`, `return_qty`, `return_price`, `part_no`, `project_id`, `warehouse_id`) VALUES
(10, 'SO-CW001', '2022-05-25', '01-03-007', '584', '19', 100, 1, '', '2', '10'),
(12, 'SO-CW002', '2022-05-25', '01-03-003', '374', '19', 500, 1, '', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_replacerecivesupplier`
--

CREATE TABLE `inv_replacerecivesupplier` (
  `id` int(11) NOT NULL,
  `rrs_id` varchar(25) NOT NULL,
  `rrs_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_replacerecivesupplier`
--

INSERT INTO `inv_replacerecivesupplier` (`id`, `rrs_id`, `rrs_date`, `remarks`, `project_id`, `warehouse_id`, `supplier_id`, `party_id`, `approval_status`) VALUES
(2, 'SR-CW001', '2022-05-25', 'receive zoo 70', '2', '10', 'SID-001', '', ''),
(3, 'SR-CW002', '2022-05-25', 'receive in', '2', '10', 'SID-001', '', ''),
(4, 'SR-CW003', '2022-05-25', 'out remarks bn', '2', '10', 'SID-001', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_replacerecivesupplierdetails`
--

CREATE TABLE `inv_replacerecivesupplierdetails` (
  `id` int(11) NOT NULL,
  `rrs_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `rrs_date` date NOT NULL,
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
-- Dumping data for table `inv_replacerecivesupplierdetails`
--

INSERT INTO `inv_replacerecivesupplierdetails` (`id`, `rrs_id`, `rrs_date`, `material_id`, `material_name`, `unit`, `return_qty`, `return_price`, `part_no`, `project_id`, `warehouse_id`) VALUES
(3, 'SR-CW001', '2022-05-25', '01-03-007', '584', '19', 70, 1, '', '2', '10'),
(4, 'SR-CW002', '2022-05-25', '01-03-003', '374', '19', 220, 1, '', '2', '10'),
(6, 'SR-CW003', '2022-05-25', '01-03-003', '374', '19', 300, 1, '', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `inv_replacesupplierbalance`
--

CREATE TABLE `inv_replacesupplierbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(10) NOT NULL,
  `supplier_id` varchar(10) NOT NULL,
  `party_id` varchar(10) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_replacesupplierbalance`
--

INSERT INTO `inv_replacesupplierbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbout_qty`, `mbtype`, `mbunit_id`, `warehouse_id`, `supplier_id`, `party_id`, `remarks`, `approval_status`, `created_at`) VALUES
(12, 'SO-CW001', '01-03-007', '2022-05-25', 0, 100, 'REPLACE OUT', '2', '10', 'SID-001', '', '', 0, '2022-05-25 12:00:00'),
(13, 'SR-CW001', '01-03-007', '2022-05-25', 70, 0, 'REPLACE RECEIVE', '2', '10', 'SID-001', '', '', 0, '2022-05-25 12:00:00'),
(14, 'SR-CW002', '01-03-003', '2022-05-25', 220, 0, 'REPLACE RECEIVE', '2', '10', 'SID-001', '', 'receive in', 0, '2022-05-25 12:00:00'),
(17, 'SO-CW002', '01-03-003', '2022-05-25', 0, 500, 'REPLACE OUT', '2', '10', 'SID-001', '', 'out batting', 0, '2022-05-25 12:00:00'),
(18, 'SR-CW003', '01-03-003', '2022-05-25', 0, 300, 'REPLACE RECEIVE', '2', '10', 'SID-001', '', 'out remarks bn', 0, '2022-05-25 12:00:00');

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
(1, 'SS-CW001', '2022-05-18', 'PID-001', '', 15600, 15600, 0, '', '', '2', '10', '', 0, '', NULL, '', '', '');

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
(1, 'SS-CW001', '2022-05-18', '01-03-003', '374', '19', 3, 5200, 15600, '', '2', '10', 'PID-001', '1', 0);

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
(1, 'MRR-CW001', '10', '2022-05-01', 'SID-001', 0, 678000, '', '', 'Receive Faruk2', 'MRR-CW001', 0),
(2, 'MRR-CW002', '10', '2022-05-01', 'SID-003', 0, 3220000, '', '', ' NAR', 'MRR-CW002', 0),
(3, 'MRR-CW003', '10', '2022-05-01', 'SID-002', 0, 8400000, '', '', ' NAR', 'MRR-CW003', 0),
(4, 'MRR-CW004', '10', '2022-05-05', 'SID-003', 0, 5640000, '', '', ' NAR', 'MRR-CW004', 0),
(5, 'SPR-001', '10', '2022-05-23', 'SID-002', 0, 0, 'FF', 'cash', 'FSDFSF', 'SPR-001', 0),
(6, 'SPR-002', '10', '2022-05-11', 'SID-004', 300, 0, 'DFS', 'cash', 'FS', 'SPR-002', 0),
(11, 'MRR-CW005', '10', '2022-05-15', 'SID-007', 0, 20000, '', '', ' NAR', 'MRR-CW005', 0),
(12, 'OP', '10', '2022-05-10', 'SID-007', 0, 5000, 'OP', 'OP', 'OP', 'OP', 0),
(13, 'SPR-004', '10', '2022-05-23', 'SID-007', 3000, 0, 'Receiver Hasan. A/c:014785423', 'cash', 'REMARKS', 'SPR-004', 0),
(14, 'MRR-CW006', '10', '2022-06-01', 'SID-001', 0, 3600, '', '', ' NAR', 'MRR-CW006', 0);

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
(41, 'PID-011', 'Harun', '', '2022-03-26 11:27:02', NULL),
(42, 'PID-012', 'Zakir', '', '2022-05-16 09:59:19', NULL);

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
(1, 'TRN-001', '2022-05-12', '38', 'Battery Baboth Profi', 'payment/withdraw', 0, 560, '10'),
(2, 'TRN-002', '2022-05-27', '41', 'Gift Less', 'payment/withdraw', 0, 251, '10'),
(3, 'OP', '2022-05-26', '31', 'OP', 'OP', 10, 20, '10'),
(4, 'OP', '2022-05-26', '42', 'OP', 'OP', 1, 2, '10'),
(5, 'OP', '2022-05-26', '32', 'OP', 'OP', 2, 3, '10'),
(6, 'OP', '2022-05-26', '33', 'OP', 'OP', 100, 0, '10'),
(7, 'OP', '2022-05-26', '41', 'OP', 'OP', 4100, 0, '10'),
(8, 'OP', '2022-05-17', '39', 'OP', 'OP', 34, 0, '10'),
(12, 'TRN-009', '2022-05-24', '32', 'salary', 'Deposit', 100, 0, '10');

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
(2048, 'PA-001', 'Alam Nagorpur-u', '31', 1, '2022-03-25 20:32:34', NULL),
(2049, 'PA-002', 'Alamin Sagardighi-p', '31', 2, '2022-03-25 20:33:27', NULL),
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
(2090, 'PA-043', 'Sun Moon Sayetagonj', '39', 0, '2022-03-29 18:41:36', NULL),
(2091, 'PA-044', 'Jamir  Enterprize', '40', 0, '2022-05-02 19:01:50', NULL),
(2092, 'PA-045', 'Tamim Narshindi', '39', 0, '2022-05-08 19:12:44', NULL),
(2093, 'PA-046', 'Maa Arihazar', '41', 0, '2022-05-08 22:10:10', NULL),
(2094, 'PA-047', 'Razia Manikgonj', '41', 0, '2022-05-08 22:27:55', NULL),
(2095, 'PA-048', 'Asif Adib Sakhipur', '31', 0, '2022-05-09 18:31:16', NULL),
(2096, 'PA-049', 'Babul Auto dewhata', '31', 0, '2022-05-09 18:31:47', NULL),
(2097, 'PA-050', 'Bike Natiapara', '31', 0, '2022-05-09 18:32:27', NULL),
(2098, 'PA-051', 'Bismillah Silimpur', '31', 0, '2022-05-09 18:32:43', NULL),
(2099, 'PA-052', 'Bismillah Takterchala', '31', 0, '2022-05-09 18:33:21', NULL),
(2100, 'PA-053', 'Bondhu Nagarpur', '31', 0, '2022-05-09 18:33:46', NULL),
(2101, 'PA-054', 'China Bogra', '31', 0, '2022-05-09 18:33:59', NULL),
(2102, 'PA-055', 'Faisal Nagarpur', '31', 0, '2022-05-09 18:34:13', NULL),
(2103, 'PA-056', 'Haowa Auto Boalibazar', '31', 0, '2022-05-09 18:34:31', NULL),
(2104, 'PA-057', 'Jannat Sarishabari', '31', 0, '2022-05-09 18:34:45', NULL),
(2105, 'PA-058', 'Jewel Shantahar', '31', 0, '2022-05-09 18:34:59', NULL),
(2106, 'PA-059', 'JK Auto Savar', '31', 0, '2022-05-09 18:35:41', NULL),
(2107, 'PA-060', 'Kandu Pakulla', '31', 0, '2022-05-09 18:35:57', NULL),
(2108, 'PA-061', 'Khan Rajbari', '31', 0, '2022-05-09 18:37:00', NULL),
(2109, 'PA-062', 'Maa Janani Sirajganj', '31', 0, '2022-05-09 18:37:13', NULL),
(2110, 'PA-063', 'Madopur Auto Madopur', '31', 0, '2022-05-09 18:37:29', NULL),
(2111, 'PA-064', 'Mama Pakulla', '31', 0, '2022-05-09 18:37:45', NULL),
(2112, 'PA-065', 'Master auto Bhuyapur', '31', 0, '2022-05-09 18:38:12', NULL),
(2113, 'PA-066', 'MASUM TANGAIL', '31', 0, '2022-05-09 18:39:08', NULL),
(2114, 'PA-067', 'MAYER DOWA .NATIAPARA', '31', 0, '2022-05-09 18:40:36', NULL),
(2115, 'PA-068', 'Mayer Dowa Tangail', '31', 0, '2022-05-09 18:40:51', NULL),
(2116, 'PA-069', 'Milton Sirajgonj', '31', 0, '2022-05-09 18:41:07', NULL),
(2117, 'PA-070', 'Mintu Madhupur', '31', 0, '2022-05-09 18:41:16', NULL),
(2118, 'PA-071', 'Moklas gatail', '31', 0, '2022-05-09 18:41:28', NULL),
(2119, 'PA-072', 'Monir Tangail', '31', 0, '2022-05-09 18:41:39', NULL),
(2120, 'PA-073', 'Nizum Auto Ambag', '31', 0, '2022-05-09 18:41:52', NULL),
(2121, 'PA-074', 'NUR NABI KALIAKOUR', '31', 0, '2022-05-09 18:42:07', NULL),
(2122, 'PA-075', 'Rafi Sami Sakhipur', '31', 0, '2022-05-09 18:42:25', NULL),
(2123, 'PA-076', 'Ranju Sirajgonj', '31', 0, '2022-05-09 18:42:37', NULL),
(2124, 'PA-077', 'Razia Sakhipur', '31', 0, '2022-05-09 18:42:53', NULL),
(2125, 'PA-078', 'Rifat Auto Sarishabari', '31', 0, '2022-05-09 18:43:11', NULL),
(2126, 'PA-079', 'Rushni Sirajgonj', '31', 0, '2022-05-09 18:44:13', NULL),
(2127, 'PA-080', 'Sahidul Sirajgonj', '31', 0, '2022-05-09 18:44:27', NULL),
(2128, 'PA-081', 'Samiul Elenga', '31', 0, '2022-05-09 18:44:43', NULL),
(2129, 'PA-082', 'Shahin Gala', '31', 0, '2022-05-09 18:44:58', NULL),
(2130, 'PA-083', 'Shanta Sumaiya Gtl', '31', 0, '2022-05-09 18:45:15', NULL),
(2131, 'PA-084', 'Sheikh Rajbari', '31', 0, '2022-05-09 18:45:28', NULL),
(2132, 'PA-085', 'Sikder Lawhati', '31', 0, '2022-05-09 18:45:40', NULL),
(2133, 'PA-086', 'Talukder Bhuyapur', '31', 0, '2022-05-09 18:45:52', NULL),
(2134, 'PA-087', 'Tangail Alomgir Auto', '31', 0, '2022-05-09 18:46:04', NULL),
(2135, 'PA-088', 'Tanjila Kirtonkhola', '31', 0, '2022-05-09 18:46:16', NULL),
(2136, 'PA-089', 'Three Brothers Silimpur', '31', 0, '2022-05-09 18:46:33', NULL),
(2137, 'PA-090', 'Yamin Gorai', '31', 0, '2022-05-09 18:46:46', NULL),
(2138, 'PA-091', 'Jahirul Hemayetpur', '31', 0, '2022-05-09 18:51:07', NULL),
(2139, 'PA-092', 'Rifat Elachipur', '31', 0, '2022-05-09 18:51:31', NULL),
(2140, 'PA-093', 'Maruf Sakhipur', '31', 0, '2022-05-09 18:51:42', NULL),
(2141, 'PA-094', 'Mintu Madhupur', '31', 0, '2022-05-09 18:52:10', NULL),
(2142, 'PA-095', 'Zahangir Hemayetpur', '31', 0, '2022-05-09 18:56:01', NULL),
(2143, 'PA-096', 'Mama Vagina Tangail', '31', 0, '2022-05-09 18:56:18', NULL),
(2144, 'PA-097', 'Adnan Gorai', '31', 0, '2022-05-09 18:56:29', NULL),
(2145, 'PA-098', 'Maa Sherpur', '31', 0, '2022-05-09 18:56:44', NULL),
(2146, 'PA-099', 'Zinnah Goaliah', '31', 0, '2022-05-09 18:56:59', NULL),
(2147, 'PA-100', 'Jewel Jamalpur', '32', 0, '2022-05-09 19:07:38', NULL),
(2148, 'PA-101', 'MAA ENTERPRISE KALIGANJ', '32', 0, '2022-05-09 19:07:53', NULL),
(2149, 'PA-102', 'Samiya Mirerbazar', '32', 0, '2022-05-09 19:08:06', NULL),
(2150, 'PA-103', 'Mayer Dowa Narayangonj', '32', 0, '2022-05-09 19:08:19', NULL),
(2151, 'PA-104', 'Mithu Gazipur', '32', 0, '2022-05-09 19:08:32', NULL),
(2152, 'PA-105', 'Muktajul Kaligonj', '32', 0, '2022-05-09 19:09:06', NULL),
(2153, 'PA-106', 'Razib Boardbazar', '32', 0, '2022-05-09 19:09:18', NULL),
(2154, 'PA-107', 'Vai Vai Auto Borobari', '32', 0, '2022-05-09 19:09:49', NULL),
(2155, 'PA-108', 'Shahalm Boardbazar', '32', 0, '2022-05-09 19:10:04', NULL),
(2156, 'PA-109', 'Mukul Boardbazar', '32', 0, '2022-05-09 19:10:16', NULL),
(2157, 'PA-110', 'Riya Kaligonj', '32', 0, '2022-05-09 19:10:38', NULL),
(2158, 'PA-111', 'AL Aksha Feni', '33', 0, '2022-05-09 19:28:39', NULL),
(2159, 'PA-112', 'Alamin Chandpur', '33', 0, '2022-05-09 19:29:08', NULL),
(2160, 'PA-113', 'Atik Naogaon', '33', 0, '2022-05-09 19:30:11', NULL),
(2161, 'PA-114', 'Barek Narayangonj', '33', 0, '2022-05-09 19:30:29', NULL),
(2162, 'PA-115', 'Bismillah Modonpur', '33', 0, '2022-05-09 19:30:45', NULL),
(2163, 'PA-116', 'Bondhu Motors Cumilla', '33', 0, '2022-05-09 19:31:01', NULL),
(2164, 'PA-117', 'Dhaka auto Gouripur', '33', 0, '2022-05-09 19:32:57', NULL),
(2165, 'PA-118', 'Eshan Cumilla', '33', 0, '2022-05-09 19:33:15', NULL),
(2166, 'PA-119', 'Feni Motors Feni', '33', 0, '2022-05-09 19:33:28', NULL),
(2167, 'PA-120', 'Gausia Cumiila', '33', 0, '2022-05-09 19:33:39', NULL),
(2168, 'PA-121', 'Iqbal Karanigonj', '33', 0, '2022-05-09 19:33:51', NULL),
(2169, 'PA-122', 'Maruf Sicle Konabari', '33', 0, '2022-05-09 19:34:08', NULL),
(2170, 'PA-123', 'Mayer Dowa Rupgonj', '33', 0, '2022-05-09 19:34:31', NULL),
(2171, 'PA-124', 'Morium Demra', '33', 0, '2022-05-09 19:34:46', NULL),
(2172, 'PA-125', 'S Alom Goripur', '33', 0, '2022-05-09 19:35:11', NULL),
(2173, 'PA-126', 'Siddik Kadamtali', '33', 0, '2022-05-09 19:35:27', NULL),
(2174, 'PA-127', 'Taher Vai Cumilla', '33', 0, '2022-05-09 19:35:40', NULL),
(2175, 'PA-128', 'Vai Vai Kashempur', '33', 0, '2022-05-09 19:35:52', NULL),
(2176, 'PA-129', 'Mijan Dohar/Joypara', '33', 0, '2022-05-09 19:36:06', NULL),
(2177, 'PA-130', 'Maa Babar Dowa Joypara', '33', 0, '2022-05-09 19:36:24', NULL),
(2178, 'PA-131', 'Bahadur Vai Daudpur', '33', 0, '2022-05-09 19:37:01', NULL),
(2179, 'PA-132', 'Master Auto Netrokona', '33', 0, '2022-05-09 19:37:15', NULL),
(2180, 'PA-133', 'Ahsan Traders Naogao', '37', 0, '2022-05-09 20:47:07', NULL),
(2181, 'PA-134', 'Arik Naogao', '37', 0, '2022-05-09 20:47:46', NULL),
(2182, 'PA-135', 'Bhuyian Cumilla', '37', 0, '2022-05-09 20:48:01', NULL),
(2183, 'PA-136', 'Hasan Gazipur', '37', 0, '2022-05-09 20:49:31', NULL),
(2184, 'PA-137', 'Jahangir Auto Cumilla', '37', 0, '2022-05-09 20:49:51', NULL),
(2185, 'PA-138', 'Madina Naogao', '37', 0, '2022-05-09 20:50:20', NULL),
(2186, 'PA-139', 'Makka Naogao', '37', 0, '2022-05-09 20:50:36', NULL),
(2187, 'PA-140', 'MR Bogura', '37', 0, '2022-05-09 20:50:55', NULL),
(2188, 'PA-141', 'Rashed Rangpur', '37', 0, '2022-05-09 20:51:10', NULL),
(2189, 'PA-142', 'RB Rangpur', '37', 0, '2022-05-09 20:51:24', NULL),
(2190, 'PA-143', 'Riya Naogaon', '37', 0, '2022-05-09 20:51:35', NULL),
(2191, 'PA-144', 'Ruhul Rangpur', '37', 0, '2022-05-09 20:51:48', NULL),
(2192, 'PA-145', 'Setu 2 Bus Stand', '37', 0, '2022-05-09 20:52:21', NULL),
(2193, 'PA-146', 'Setu Coxsbazar', '37', 0, '2022-05-09 20:52:34', NULL),
(2194, 'PA-147', 'Shumsul Rangpur', '37', 0, '2022-05-09 20:52:56', NULL),
(2195, 'PA-148', 'Sukhirani Naogaon', '37', 0, '2022-05-09 20:53:17', NULL),
(2196, 'PA-149', 'Sumon Kurigram', '37', 0, '2022-05-09 20:53:31', NULL),
(2197, 'PA-150', 'Araf Coxsbazar', '37', 0, '2022-05-09 20:53:43', NULL),
(2198, 'PA-151', 'Urmi Bancharampur', '37', 0, '2022-05-09 20:54:06', NULL),
(2199, 'PA-152', 'Halima Naogao', '37', 0, '2022-05-09 20:54:27', NULL),
(2200, 'PA-153', 'RS Mohadebpur', '37', 0, '2022-05-09 20:54:43', NULL),
(2201, 'PA-154', 'Jannat Faria Manikgonj', '37', 0, '2022-05-09 20:55:52', NULL),
(2202, 'PA-155', 'Dui Vai Narayangonj', '41', 0, '2022-05-09 22:06:42', NULL),
(2203, 'PA-156', 'Abdullah Amtola', '35', 0, '2022-05-10 12:03:03', NULL),
(2204, 'PA-157', 'Allah Vorosha Muktagasa', '35', 0, '2022-05-10 12:03:19', NULL),
(2205, 'PA-158', 'Arif Mymensingh', '35', 0, '2022-05-10 12:03:32', NULL),
(2206, 'PA-159', 'Bithi Savar', '35', 0, '2022-05-10 12:03:49', NULL),
(2207, 'PA-160', 'Debnath Mymensingh', '35', 0, '2022-05-10 12:04:02', NULL),
(2208, 'PA-161', 'Ehtesham Auto Rajshahi', '35', 0, '2022-05-10 12:04:17', NULL),
(2209, 'PA-162', 'Fahim Voirub', '35', 0, '2022-05-10 12:04:31', NULL),
(2210, 'PA-163', 'Jabale Noor Ponchoboti', '35', 0, '2022-05-10 12:04:47', NULL),
(2211, 'PA-164', 'Jalal Amtola', '35', 0, '2022-05-10 12:05:01', NULL),
(2212, 'PA-165', 'Maa Babar Dowa shipahipara', '33', 0, '2022-05-15 09:49:42', NULL),
(2213, 'PA-166', 'Maa Motors Hajigonj', '41', 0, '2022-05-15 10:12:45', NULL),
(2214, 'PA-167', 'Bismillah Hajigonj', '41', 0, '2022-05-15 11:35:59', NULL),
(2215, 'PA-168', 'Jaman Hajigonj', '41', 0, '2022-05-15 12:25:05', NULL),
(2216, 'PA-169', 'Sowda Kishorgonj', '41', 0, '2022-05-15 12:26:15', NULL),
(2217, 'PA-170', 'Tisha Kishorgonj', '41', 0, '2022-05-15 12:26:47', NULL),
(2218, 'PA-171', 'Bismillah Mawna', '38', 0, '2022-05-15 18:00:34', NULL),
(2219, 'PA-172', 'Bondhu Auto Isshorgonj', '38', 0, '2022-05-15 18:02:00', NULL),
(2220, 'PA-173', 'Sara Isshorgonj', '38', 0, '2022-05-15 18:02:43', NULL),
(2221, 'PA-174', 'Allah r dan Auto Fulpur', '39', 0, '2022-05-15 18:04:05', NULL),
(2222, 'PA-175', 'Allah r dan Auto Fulpur', '38', 0, '2022-05-15 18:04:59', NULL),
(2223, 'PA-176', 'Borkat Chapainawbabgonj', '35', 0, '2022-05-15 19:44:16', NULL),
(2224, 'PA-177', 'Alamin Fulpur', '35', 0, '2022-05-15 19:46:23', NULL),
(2225, 'PA-178', 'Shohid Haluaghat', '35', 0, '2022-05-15 19:47:45', NULL),
(2226, 'PA-179', 'Sadia Gaibandha', '35', 0, '2022-05-15 19:48:46', NULL),
(2227, 'PA-180', 'Zakir Mymensingh', '35', 0, '2022-05-15 19:51:30', NULL),
(2228, 'PA-181', 'Sumon Mymensingh', '35', 0, '2022-05-15 19:51:54', NULL),
(2229, 'PA-182', 'MAA ENTERPRISE Kishorgonj', '41', 0, '2022-05-15 21:36:23', NULL),
(2230, 'PA-183', 'Dider Demra', '41', 0, '2022-05-15 21:37:19', NULL),
(2231, 'PA-184', 'Yousuf Savar', '42', 0, '2022-05-16 10:03:12', NULL),
(2232, 'PA-185', 'Rubel Borua', '42', 0, '2022-05-16 10:03:46', NULL),
(2233, 'PA-186', 'Bismillah keranigonj', '42', 0, '2022-05-16 10:05:02', NULL),
(2234, 'PA-187', 'RF Kishorgonj', '41', 0, '2022-05-16 20:03:04', NULL),
(2235, 'PA-188', 'Sohel Mawna', '38', 0, '2022-05-17 10:55:33', NULL),
(2236, 'PA-189', 'pabel', '31', 0, '2022-05-31 17:20:41', NULL),
(2237, 'PA-190', 'k', '33', 0, '2022-06-01 11:40:39', NULL);

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
  `receivermode` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party_payment`
--

INSERT INTO `party_payment` (`id`, `voucherid`, `voucherdate`, `warehouse_id`, `partner_id`, `partyid`, `paymenttype`, `amount`, `remarks`, `receivermode`) VALUES
(1, 'VID-001', '2022-05-15', '10', '38', 'PA-175', 'cash', 7800, 'Battery Cash Paid', ''),
(2, 'VID-002', '2022-05-01', '10', '41', 'PA-166', 'cash', 365500, '', ''),
(3, 'VID-003', '2022-05-01', '10', '41', 'PA-167', 'cash', 114000, '', ''),
(4, 'VID-004', '2022-05-01', '10', '41', 'PA-155', 'cash', 93000, '', ''),
(5, 'VID-005', '2022-05-01', '10', '41', 'PA-168', 'cash', 16600, '', ''),
(6, 'VID-006', '2022-05-08', '10', '41', 'PA-169', 'cash', 370000, 'Check Pass', ''),
(7, 'VID-007', '2022-05-08', '10', '41', 'PA-170', 'cash', 141200, '', ''),
(8, 'VID-008', '2022-05-08', '10', '41', 'PA-166', 'cash', 240000, '', ''),
(9, 'VID-009', '2022-05-08', '10', '41', 'PA-168', 'cash', 122150, '', ''),
(10, 'VID-010', '2022-05-09', '10', '41', 'PA-155', 'cash', 65500, '', ''),
(11, 'VID-011', '2022-05-09', '10', '41', 'PA-167', 'cash', 86400, '', ''),
(12, 'VID-012', '2022-05-09', '10', '41', 'PA-012', 'cash', 312800, '', ''),
(13, 'VID-013', '2022-05-11', '10', '41', 'PA-182', 'cash', 10000, '', ''),
(14, 'VID-014', '2022-05-11', '10', '41', 'PA-183', 'cash', 98000, '', ''),
(15, 'VID-015', '2022-05-10', '10', '38', 'PA-171', 'cash', 43500, '', ''),
(16, 'VID-016', '2022-05-10', '10', '38', 'PA-172', 'cash', 29300, '', ''),
(17, 'VID-017', '2022-05-11', '10', '38', 'PA-173', 'cash', 140000, 'IBBL', ''),
(18, 'VID-018', '2022-05-12', '10', '38', 'PA-175', 'cash', 166200, '', ''),
(19, 'VID-019', '2022-05-01', '10', '35', 'PA-159', 'cash', 60000, '', ''),
(20, 'VID-020', '2022-05-11', '10', '35', 'PA-177', 'cash', 60000, '', ''),
(21, 'VID-021', '2022-05-11', '10', '35', 'PA-178', 'cash', 34000, 'Check pass', 'Check Pass'),
(22, 'VID-022', '2022-05-11', '10', '35', 'PA-180', 'cash', 119000, 'palash', 'Maruf'),
(23, 'VID-023', '2022-05-12', '10', '35', 'PA-181', 'cash', 90000, '', 'Maruf'),
(24, 'VID-024', '2022-05-12', '10', '35', 'PA-180', 'cash', 24, '', 'Maruf-U'),
(25, 'VID-025', '2022-05-12', '10', '35', 'PA-181', 'cash', 127000, '', 'Maruf'),
(26, 'OP', '2022-05-23', '10', '32', 'PA-009', '', 600, '', ''),
(27, 'OP', '2022-05-23', '10', '42', 'PA-186', '', 100, '', ''),
(28, 'OP', '2022-05-10', '10', '34', 'PA-019', '', 1, '', ''),
(29, 'VID-029', '2022-05-24', '10', '31', 'PA-097', 'cash', 4000, 'gdgd', 'gg');

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
(2, 'PR-001', 'MA MOTORS', '', '', NULL, NULL, '2020-07-22 06:25:37', NULL, NULL),
(3, 'PR-002', 'Shapon Enterprize', 'Hasan', 'Masterpara', NULL, NULL, '2022-05-02 12:57:56', NULL, NULL);

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
(200, 'SID-005', 'DONG YA', 'KASHIMPUR', '', '', '', 'cash', '40'),
(201, 'SID-006', 'Supai', 'Magnaghat', '', '', '', 'cash', '40'),
(202, 'SID-007', 'PALASH', 'LAX', 'OP', '41', '10', 'credit', '40');

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
  `receivermode` varchar(150) CHARACTER SET latin1 NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_payment`
--

INSERT INTO `supplier_payment` (`id`, `voucherid`, `voucherdate`, `supplierid`, `paymenttype`, `amount`, `receivermode`, `remarks`, `sp_photo`) VALUES
(1, 'SPR-001', '2022-05-23', 'SID-002', 'cash', 0, 'FF', 'FSDFSF', ''),
(2, 'SPR-002', '2022-05-11', 'SID-004', 'cash', 300, 'DFS', 'FS', ''),
(3, 'SPR-003', '0000-00-00', '', 'cash', 300, 'DFS', 'FS', ''),
(4, 'SPR-004', '2022-05-23', 'SID-007', 'cash', 3000, 'Receiver Hasan. A/c:014785423', 'REMARKS', '');

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
(1, 'TRN-001', '2022-05-25', '41', 'A', 'cash', 10, 'transport remark', '10');

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
-- Indexes for table `inv_replaceoutsupplier`
--
ALTER TABLE `inv_replaceoutsupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_replaceoutsupplierdetails`
--
ALTER TABLE `inv_replaceoutsupplierdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_replacerecivesupplier`
--
ALTER TABLE `inv_replacerecivesupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_replacerecivesupplierdetails`
--
ALTER TABLE `inv_replacerecivesupplierdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_replacesupplierbalance`
--
ALTER TABLE `inv_replacesupplierbalance`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inv_damagebalance`
--
ALTER TABLE `inv_damagebalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `inv_damagedetail`
--
ALTER TABLE `inv_damagedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inv_damageout`
--
ALTER TABLE `inv_damageout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inv_damageoutdetail`
--
ALTER TABLE `inv_damageoutdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inv_damaragedetailsale`
--
ALTER TABLE `inv_damaragedetailsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inv_damaragesale`
--
ALTER TABLE `inv_damaragesale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1085;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inv_replaceoutsupplier`
--
ALTER TABLE `inv_replaceoutsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_replaceoutsupplierdetails`
--
ALTER TABLE `inv_replaceoutsupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inv_replacerecivesupplier`
--
ALTER TABLE `inv_replacerecivesupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_replacerecivesupplierdetails`
--
ALTER TABLE `inv_replacerecivesupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_replacesupplierbalance`
--
ALTER TABLE `inv_replacesupplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_scrap`
--
ALTER TABLE `inv_scrap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_scrapdetail`
--
ALTER TABLE `inv_scrapdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `partnerpayment`
--
ALTER TABLE `partnerpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2238;

--
-- AUTO_INCREMENT for table `party_payment`
--
ALTER TABLE `party_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
