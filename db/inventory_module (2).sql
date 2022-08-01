-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 04:45 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` varchar(500) NOT NULL,
  `unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(21, 'Liter'),
(22, 'packet');

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
(369, '01-03-001', '40', '162', '95AH DJDG', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(370, '01-01-003', '40', '160', 'Eilong 22kg w', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(371, '01-01-004', '40', '160', 'King Power 29kg N', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(372, '01-01-005', '40', '160', 'Power Plus 29kg G', 'Zhoo', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(373, '01-03-002', '40', '162', '120Ah DjDG', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(374, '01-03-003', '40', '162', '220Ah DjDG', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(375, '01-02-001', '40', '161', 'Power Plus MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(376, '01-02-002', '40', '161', '3 Dragon N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(377, '01-02-003', '40', '161', 'Henli Special MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(378, '01-01-006', '40', '160', 'Yuandi Borac 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(379, '01-02-004', '40', '161', 'Hangli 2', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(380, '01-01-007', '40', '160', 'Power Gold 28.5 N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(381, '01-02-005', '40', '161', 'MM high power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(382, '01-01-008', '40', '160', 'Eilong 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(383, '01-01-009', '40', '160', 'Eilong 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(384, '01-01-010', '40', '160', 'Eilong 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(385, '01-01-011', '40', '160', 'Eilong 28.5kgN', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(386, '01-01-012', '40', '160', 'Eilong 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
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
(499, '01-01-125', '40', '160', 'Power Plus Jinding22kg W', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
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
(544, '02-01-001', '41', '165', 'Scrap material', 'Scrap', '', 100, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(545, '01-01-131', '40', '160', 'TomTom 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(546, '01-01-132', '40', '160', 'TomTom 27.5Kg N', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(547, '01-01-133', '40', '160', 'TomTom 28 Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(548, '01-01-134', '40', '160', 'TomTom 28.5 kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(549, '01-01-135', '40', '160', 'TomTom 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(550, '01-01-136', '40', '160', 'TomTom 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(551, '01-01-137', '40', '160', 'TomTom 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(552, '01-01-138', '40', '160', 'TomTom 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(553, '01-01-139', '40', '160', 'TomTom 29 kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(554, '01-01-140', '40', '160', 'TomTom 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(555, '01-01-141', '40', '160', 'Dowedo 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(556, '01-01-142', '40', '160', 'Dowedo 27.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(557, '01-01-143', '40', '160', 'Dowedo 28kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(558, '01-01-144', '40', '160', 'Dowedo 28.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(559, '01-01-145', '40', '160', 'Dowedo 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(560, '01-01-146', '40', '160', 'Dowedo 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(561, '01-01-147', '40', '160', 'Dowedo 28kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(562, '01-01-148', '40', '160', 'Dowedo 28.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(563, '01-01-149', '40', '160', 'Dowedo 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(564, '01-01-150', '40', '160', 'Dowedo 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(565, '01-01-151', '40', '160', 'Power Gold 27Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(566, '01-01-152', '40', '160', 'Power Gold27.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(567, '01-01-153', '40', '160', 'Power Gold 28Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(568, '01-01-154', '40', '160', 'Power Gold 28.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(569, '01-01-155', '40', '160', 'Power Gold 29Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(570, '01-01-156', '40', '160', 'Power Gold 29.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(571, '01-01-157', '40', '160', 'Power Gold 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(572, '01-01-158', '40', '160', 'Power Gold 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(573, '01-01-159', '40', '160', 'Power Gold 29Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(574, '01-01-160', '40', '160', 'Power Gold 29.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(575, '01-01-161', '40', '160', 'Borac Super 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(576, '01-01-162', '40', '160', 'Borac Super 24Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(577, '01-02-044', '40', '161', '1Dragon MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(578, '01-02-045', '40', '161', '1Dragon MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(579, '01-02-046', '40', '161', 'Power plus modonpal MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(580, '01-02-047', '40', '161', 'Lotus N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(581, '01-03-004', '40', '162', '110Ah Power Plus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(582, '01-03-005', '40', '162', '110Ah Horse Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(583, '01-03-006', '40', '162', '95Ah DJking', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(584, '01-03-007', '40', '162', '70Ah DJDG', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(585, '01-02-048', '40', '161', 'OX power N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(586, '01-02-049', '40', '161', 'king Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(587, '01-02-050', '40', '161', 'king Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(588, '01-02-051', '40', '161', 'king Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(589, '01-02-052', '40', '161', 'king Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(590, '05-01-001', '44', '168', 'Single Casing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 45, NULL, NULL, NULL, ''),
(591, '05-01-002', '44', '168', 'Double casing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(592, '06-01-001', '45', '169', 'Yuandi H Power glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(593, '06-01-002', '45', '169', 'Sandi H Power glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1030, NULL, NULL, NULL, ''),
(594, '06-01-003', '45', '169', 'Main born H Power glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1000, NULL, NULL, NULL, ''),
(595, '06-02-001', '45', '170', 'Borac Yuandi glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(596, '06-02-002', '45', '170', 'Borac Sandi glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(597, '06-02-003', '45', '170', 'Borac Main Born glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(598, '06-03-001', '45', '171', 'Trust Yuandi glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(599, '06-03-002', '45', '171', 'Trust Sandi Glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(600, '06-03-003', '45', '171', 'Trust Main Born glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(601, '06-01-004', '45', '169', 'H Power frame Glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(602, '07-01-001', '46', '172', 'sk soket Jamper', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(603, '01-03-008', '40', '162', '130Ah high power MM', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(604, '01-02-053', '40', '161', 'Mahadi Power G', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(605, '08-01-001', '47', '173', 'Acid Water', '', '', 0, NULL, NULL, 0, '21', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(606, '01-02-054', '40', '161', 'Long story MM', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(607, '01-02-055', '40', '161', 'Long story N', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(608, '01-02-056', '40', '161', 'Long story MM G', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(609, '01-02-057', '40', '161', 'Long story 29kg N', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(610, '01-02-058', '40', '161', 'Long story 29kg G', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(611, '01-03-009', '40', '162', '130Ah Horse Power', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(612, '01-01-163', '40', '160', 'XS Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(613, '01-03-010', '40', '162', '95Ah Sing Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(614, '01-03-011', '40', '162', '95Ah Power Plus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(615, '01-02-059', '40', '161', 'Mars Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(616, '09-01-001', '48', '174', 'J R 250Ah Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(617, '01-01-164', '40', '160', 'Magnet 22kg (W)', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(618, '01-01-165', '40', '160', 'Yuandi Borac 22kg W', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(619, '01-01-166', '40', '160', 'Yuandi Borac 24kg W', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(620, '09-01-002', '48', '174', '100Ah Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(621, '01-03-012', '40', '162', '100Ah MM', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(622, '01-03-013', '40', '162', '120Ah MM', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(623, '09-01-003', '48', '174', '60V Tamar Charger ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 3600, NULL, NULL, NULL, ''),
(624, '03-02-001', '42', '175', 'Datai Motors', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(625, '03-02-002', '42', '175', 'Datai motors set', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(626, '01-03-014', '40', '162', '150Ah Xing Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(627, '01-02-060', '40', '161', 'LOTUS MM', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(628, '03-03-001', '42', '176', 'Chaclet Dabule', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(629, '09-01-004', '48', '174', '48V Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(630, '03-03-002', '42', '176', 'Borac Chasma ', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(631, '03-03-003', '42', '176', '3.25.16 Hossen tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 167, NULL, NULL, NULL, ''),
(632, '11-01-001', '50', '178', 'Old Battery', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(633, '03-03-004', '42', '176', 'Tie Cable Parts', '', 'CIVIL', 0, NULL, NULL, 0, '2', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(634, '03-03-005', '42', '176', 'Tie Cable big', '', '', 0, NULL, NULL, 0, '2', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(635, '03-03-006', '42', '176', 'Tie Cable middle', '', '', 0, NULL, NULL, 0, '2', 0, 0, NULL, NULL, 30, NULL, NULL, NULL, ''),
(636, '03-03-007', '42', '176', '48v Headlight', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(637, '13-01-001', '52', '180', 'Body ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(638, '03-03-008', '42', '176', 'Dram', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(639, '03-03-009', '42', '176', 'XL China 19 \"inch\"', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(640, '03-03-010', '42', '176', 'XL Bangla 19 \"inch\"', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(641, '03-03-011', '42', '176', 'Jahajs Cable', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(642, '09-02-001', '48', '177', '150Ah Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(643, '01-02-061', '40', '161', '130Ah MM Plate', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(644, '09-01-005', '48', '174', '250Ah Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(645, '12-01-001', '51', '179', '2.75.14 Megna Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 120, NULL, NULL, NULL, ''),
(646, '03-03-012', '42', '176', '12 no. nut Full pess', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(647, '03-03-013', '42', '176', 'Borac Spandle', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(648, '01-07-001', '40', '182', 'Power Plus Strong Eco', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(649, '10-01-001', '49', '183', 'Tiner Daowt', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 98, NULL, NULL, NULL, ''),
(650, '01-02-062', '40', '161', 'Power Plus Jinding MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(651, '01-02-063', '40', '161', '1 Dragon N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(652, '03-03-014', '42', '176', '17 dater Defensial', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(653, '03-03-015', '42', '176', '220Ah Smart Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(654, '01-07-002', '40', '182', 'Power Plus Strong Bluo (N)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(655, '01-07-003', '40', '182', 'Lhina Power (N)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(656, '13-01-002', '52', '180', 'Borac Show ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(657, '01-02-064', '40', '161', 'MM high power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(658, '01-02-065', '40', '161', 'MM high power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(659, '01-02-066', '40', '161', 'MM high Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(660, '01-02-067', '40', '161', 'MM high power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(661, '01-02-068', '40', '161', 'Lotus MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(662, '01-02-069', '40', '161', 'Lotus 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(663, '01-02-070', '40', '161', 'Lotus 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(664, '01-02-071', '40', '161', 'Hangly N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(665, '01-02-072', '40', '161', 'Hangly MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(666, '01-02-073', '40', '161', 'Hangly MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(667, '01-02-074', '40', '161', 'Hangly 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(668, '01-02-075', '40', '161', 'Hangly 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(669, '01-02-076', '40', '161', 'Kin power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(670, '01-02-077', '40', '161', 'OX Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(671, '01-02-078', '40', '161', 'OX Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(672, '01-02-079', '40', '161', 'OX Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(673, '01-02-080', '40', '161', 'OX Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(674, '01-02-081', '40', '161', 'Horse Power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(675, '01-02-082', '40', '161', 'Horse Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(676, '01-02-083', '40', '161', 'Horse Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(677, '01-02-084', '40', '161', 'Horse Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(678, '01-02-085', '40', '161', 'Horse Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(679, '01-02-086', '40', '161', '1 Dragon MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(680, '01-02-087', '40', '161', '1 Dragon MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(681, '01-02-088', '40', '161', '1 Dragon 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(682, '01-02-089', '40', '161', '1 Dragon 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(683, '01-02-090', '40', '161', 'MS Horse Power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(684, '01-02-091', '40', '161', 'MS Horse Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(685, '01-02-092', '40', '161', 'MS Horse Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(686, '01-02-093', '40', '161', 'MS Horse Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(687, '01-02-094', '40', '161', 'MS Horse Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(688, '01-02-095', '40', '161', 'Power Plus 2022 (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(689, '01-02-096', '40', '161', 'Eilong  (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(690, '01-02-097', '40', '161', 'Power Plus (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(691, '01-02-098', '40', '161', 'OT Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(692, '01-02-099', '40', '161', 'SA Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(693, '01-02-100', '40', '161', '3 Dragon (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(694, '01-02-101', '40', '161', 'Lotus (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(695, '01-02-102', '40', '161', 'Hangly (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(696, '01-02-103', '40', '161', 'Kin Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(697, '01-02-104', '40', '161', '1 Dragon (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(698, '01-02-105', '40', '161', 'Star Gold (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(699, '01-02-106', '40', '161', 'MS Horse Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(700, '01-02-107', '40', '161', 'OX Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(701, '01-02-108', '40', '161', 'Horse Power (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(702, '01-02-109', '40', '161', 'MM High Power  (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(703, '01-02-110', '40', '161', 'Borac Supper (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(704, '01-02-111', '40', '161', 'Mahadi 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(705, '01-02-112', '40', '161', 'Mahadi 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(706, '01-02-113', '40', '161', 'Mahadi MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(707, '01-02-114', '40', '161', 'Mahadi MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(708, '01-02-115', '40', '161', 'Mahadi N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(709, '01-02-116', '40', '161', 'UND Power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(710, '01-02-117', '40', '161', 'UND Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(711, '01-02-118', '40', '161', 'UND Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(712, '01-02-119', '40', '161', 'UND Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(713, '01-02-120', '40', '161', 'UND Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(714, '01-02-121', '40', '161', 'Champion N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(715, '01-02-122', '40', '161', 'Champion MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(716, '01-02-123', '40', '161', 'Champion MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(717, '01-02-124', '40', '161', 'Champion G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(718, '01-02-125', '40', '161', 'Champion 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(719, '01-02-126', '40', '161', 'Champion 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(720, '01-02-127', '40', '161', 'Mars Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(721, '01-02-128', '40', '161', 'Mars Power G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(722, '01-02-129', '40', '161', 'Mars Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(723, '01-02-130', '40', '161', 'Mars Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(724, '01-02-131', '40', '161', 'Mars Power N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(725, '01-04-001', '40', '163', 'China Eilong Dong ya', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(726, '01-03-015', '40', '162', '130Ah Power Plus ', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(727, '01-03-016', '40', '162', '95ah Jufing', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(728, '01-03-017', '40', '162', '120ah Jufing', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(729, '01-01-167', '40', '160', 'E Power 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(730, '01-01-168', '40', '160', 'Chaina power 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(731, '01-02-132', '40', '161', 'SR Modhon pal Normal Plate', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(732, '01-01-169', '40', '160', 'H Power 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(733, '01-03-018', '40', '162', '95Ah Gufing', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(734, '01-03-019', '40', '162', '95Ah Chaina man ', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(735, '01-01-170', '40', '160', 'King Power 28.5kg n', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(736, '01-03-020', '40', '162', ' 120Ah China man ', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(737, '01-03-021', '40', '162', '220Ah Chaina man ', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(738, '03-03-016', '42', '176', '17 dater Footbal', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(739, '01-03-022', '40', '162', '95Ah China Manus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(740, '01-01-171', '40', '160', 'Power Gold 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(741, '01-02-133', '40', '161', 'Champion 29Kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(742, '01-02-134', '40', '161', 'Power plus IP 29Kg', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(743, '03-03-017', '42', '176', '1000W Contolar', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(744, '03-03-018', '42', '176', '19.44 Cross set', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(745, '03-03-019', '42', '176', 'H Power Break Show', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(746, '03-03-020', '42', '176', '4 Stik Dram Chaina', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(747, '01-01-172', '40', '160', 'Power Plus Jinding (W) 22Kg', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(748, '03-03-021', '42', '176', '2.75.14 tyre Hossen', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(749, '03-03-022', '42', '176', '6005 N7V bearing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(750, '03-03-023', '42', '176', '22 Dater Plastic Prinium', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(751, '03-03-024', '42', '176', 'Looking Glass Goal mm', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(752, '03-03-025', '42', '176', 'Patti Dolnar Nat chikun', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(753, '03-03-026', '42', '176', 'Patti Dolner nut Mota', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(754, '03-03-027', '42', '176', 'Dattai pikup', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 128, NULL, NULL, NULL, ''),
(755, '03-03-028', '42', '176', 'Charger cot', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(756, '03-03-029', '42', '176', '2.75.14 Rim', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(757, '03-03-030', '42', '176', '2.75.14 Tyre', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(758, '01-01-173', '40', '160', 'King Power 28.5Kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '');
INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_description`, `brand_name`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`) VALUES
(759, '05-01-003', '44', '168', 'Three Quater Casing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 35, NULL, NULL, NULL, ''),
(760, '05-01-004', '44', '168', 'Tray Casing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 22, NULL, NULL, NULL, ''),
(761, '03-04-001', '42', '184', 'Flasher ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(762, '03-03-031', '42', '176', '3.25.16 Mat Ghat ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(763, '03-04-002', '42', '184', '32005 bearing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(764, '03-03-032', '42', '176', '2.75.14 Beg light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(765, '03-03-033', '42', '176', 'Borac beg light komdami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 180, NULL, NULL, NULL, ''),
(766, '03-05-001', '42', '185', '3.25.16 Tube ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(767, '03-05-002', '42', '185', '2.75.16 Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(768, '03-03-034', '42', '176', '17 Dhat Gach', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(769, '03-03-035', '42', '176', '60V Miter Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 315, NULL, NULL, NULL, ''),
(770, '03-03-036', '42', '176', '5 Point conector', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(771, '03-03-037', '42', '176', '3 Point Conector ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(772, '03-03-038', '42', '176', 'Horn Swich', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(773, '03-03-039', '42', '176', 'Magnet Pikup Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(774, '03-03-040', '42', '176', 'Controller (W) dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(775, '03-03-041', '42', '176', 'Controller (W) kom dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(776, '09-01-006', '48', '174', '60v Charger Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(777, '03-03-042', '42', '176', 'Dtai controller Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(778, '03-03-043', '42', '176', '52 Dater Prinium', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(779, '03-03-044', '42', '176', '14 dater babul prinium', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(780, '03-05-003', '42', '185', '2.75.14 Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(781, '01-02-135', '40', '161', 'Power Plus SR modhon pal 28Kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(782, '01-02-136', '40', '161', 'Power plus IP Global 29Kg', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(783, '01-02-137', '40', '161', 'Power plus Jinding Normal plate', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(784, '01-02-138', '40', '161', 'Borac Gold Normal Plate ', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(785, '03-03-045', '42', '167', '6302 Bearing MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(786, '03-03-046', '42', '176', 'Borac break Show', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(787, '03-03-047', '42', '176', '10 No. Yulo Clip', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(788, '03-01-001', '42', '167', 'L E D MM ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(789, '03-03-047', '42', '176', 'BODY SANDY ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(790, '01-01-174', '40', '160', 'Power plus SR modhon pal 28kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(791, '01-03-023', '40', '162', '100Ah Power plus ', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(792, '01-03-024', '40', '162', '30Ah DJDG', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(793, '13-01-003', '52', '180', 'Sandi bike Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(794, '03-03-048', '42', '176', 'Digital Miter Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(795, '03-03-049', '42', '176', 'TT Horn', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(796, '03-03-050', '42', '176', 'Kan Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(797, '03-03-051', '42', '176', 'Defencial Mishuk CD', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 10550, NULL, NULL, NULL, ''),
(798, '03-03-052', '42', '176', 'Motor Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 4000, NULL, NULL, NULL, ''),
(799, '03-03-053', '42', '176', 'Unit Motors', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(800, '03-03-054', '42', '176', '71 Dater Primium', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 400, NULL, NULL, NULL, ''),
(801, '03-03-055', '42', '176', 'Borac Paddle', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(802, '03-03-056', '42', '176', '12 no.Nut', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(803, '03-03-057', '42', '176', '10 no. Nut', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(804, '03-03-058', '42', '176', 'Dui Tana Spring Mota', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(805, '03-03-059', '42', '176', 'Bush Norom chikon', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(806, '03-03-060', '42', '176', 'Bush Norom Mota', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(807, '03-03-061', '42', '176', 'Black Horse', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(808, '03-03-062', '42', '176', 'Selfi Headlight', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(809, '03-03-063', '42', '176', 'Horen Klip', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(810, '03-03-064', '42', '176', 'Beg Light Mishuk', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 95, NULL, NULL, NULL, ''),
(811, '03-03-065', '42', '176', 'Break Road boro', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(812, '03-03-066', '42', '176', 'Afa mishuk Patti', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(813, '03-03-067', '42', '176', 'Mut ghat Nut', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(814, '03-03-068', '42', '176', '20*55 cross shept', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(815, '03-03-069', '42', '176', 'charger cot dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(816, '03-03-070', '42', '176', '120ah charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(817, '03-03-071', '42', '176', '35 dat bati', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(818, '01-03-025', '40', '162', '110Ah Xing Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(819, '01-01-175', '40', '160', 'Power Plus 23kg W', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(820, '03-03-072', '42', '176', 'Riskaw Motors Set', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(821, '03-03-073', '42', '176', 'Charger Meter Kata', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(822, '13-01-004', '52', '180', 'controller zhoo', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(823, '01-03-026', '40', '162', '130Ah mm', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(824, '03-03-074', '42', '176', 'Tala chabi Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(825, '03-03-075', '42', '176', 'Chapa Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 220, NULL, NULL, NULL, ''),
(826, '03-03-076', '42', '176', 'Highdrow Meter', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 65, NULL, NULL, NULL, ''),
(827, '03-03-077', '42', '176', 'Warring Mishuk', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(828, '03-03-078', '42', '176', 'Uvol sonali', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(829, '03-03-079', '42', '176', '4 stick Rim', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(830, '03-03-080', '42', '176', '6 mm 2nd patti', '', 'ELECTRICAL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(831, '05-01-005', '44', '168', 'Casing Hafs ', 'Caching', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(832, '03-03-081', '42', '176', 'Babul primium', 'Caching', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(833, '03-02-003', '42', '175', 'Datai Contolar', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(834, '01-02-139', '40', '161', 'Henli N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(835, '01-03-027', '40', '162', '200Ah Super ', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(836, '13-01-005', '52', '180', 'Easy bike Yuandi  Auto', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(837, '13-01-006', '52', '180', 'Easy bike Mini Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(838, '01-01-176', '40', '160', 'High Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(839, '01-01-177', '40', '160', 'Borac Gold 28Kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(840, '01-01-178', '40', '160', 'High Power 27kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(841, '01-01-179', '40', '160', 'High Power 27.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(842, '01-01-180', '40', '160', 'High Power 28kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(843, '01-01-181', '40', '160', 'High Power 28.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(844, '01-01-182', '40', '160', 'High Power 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(845, '01-01-183', '40', '160', 'High Power 29.5kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(846, '01-01-184', '40', '160', 'High Power 28kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(847, '01-01-185', '40', '160', 'High Power 28.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(848, '01-01-186', '40', '160', 'High Power 29.5kg G', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(849, '03-03-082', '42', '176', 'Defential H Power', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(850, '01-01-187', '40', '160', 'Power plus strong (W) 22Kg', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(851, '01-03-028', '40', '162', '120Ah Djking', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(852, '03-06-001', '42', '186', 'Unit Motors', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(853, '03-03-083', '42', '176', 'H Power Defencial ', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(854, '01-01-188', '40', '160', 'Chaina Power 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(855, '01-01-189', '40', '160', 'Borac gold 29kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(856, '01-01-190', '40', '160', 'RE power 29kg (G)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(857, '09-01-007', '48', '174', 'Charger Fan Soto', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(858, '09-02-002', '48', '177', 'Charger Fan Boro', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(859, '03-03-084', '42', '176', '12 No Clip', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(860, '03-03-085', '42', '176', '5 stick Dram China', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(861, '03-03-086', '42', '176', '2.75.14 Anti katar', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(862, '03-03-087', '42', '176', '6mm 2nd patti', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(863, '03-03-088', '42', '176', '2.75.14 Dise Plate', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(864, '03-03-089', '42', '176', '6206 Dise Plate', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(865, '03-03-090', '42', '176', '19 no stick nut tupi', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(866, '03-03-091', '42', '176', 'Motor Nut', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(867, '01-01-191', '40', '160', 'Xing shung Gold 29kg N', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(868, '03-03-092', '42', '176', 'Motor ic chikun', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(869, '03-07-001', '42', '187', '2.75.14 Kan', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(870, '01-02-140', '40', '161', 'Kin Power (MM)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(871, '06-02-004', '45', '170', 'Borac Glass 5mm', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1160, NULL, NULL, NULL, ''),
(872, '03-03-093', '42', '176', 'China break show', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(873, '03-03-094', '42', '176', 'H Power Break show zebra', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(874, '03-03-095', '42', '176', '6206 bearing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(875, '03-03-096', '42', '176', 'chosmar nut big', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(876, '03-03-097', '42', '176', 'Chosmar nut soto', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(877, '01-01-192', '40', '160', 'Kin power 22kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(878, '01-01-193', '40', '160', 'Power plus 22kg W', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(879, '03-03-098', '42', '176', 'Cup weel sil', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(880, '03-03-099', '42', '176', '43/55/11 weel sil', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(881, '01-01-194', '40', '160', 'Power plus Jinding 22kg W', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(882, '03-03-100', '42', '176', '36 dater Bati', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(883, '03-03-101', '42', '176', 'JR LED 15 bati', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(884, '03-03-102', '42', '176', '24 dat prinium', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(885, '03-03-103', '42', '176', 'LED Light Selfi', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(886, '03-03-104', '42', '176', '3.25.16 samner chakar Rim', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(887, '03-03-105', '42', '176', '30.20.4 Bearing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(888, '03-03-106', '42', '176', 'H.P porda without poli', '', '', 0, NULL, NULL, 0, '3', 61, 54900, NULL, NULL, 900, NULL, NULL, NULL, ''),
(889, '03-03-107', '42', '176', 'MM charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(890, '01-01-195', '40', '160', 'Xing sung gold 28.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(891, '01-01-196', '40', '160', 'Power plus 27kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(892, '01-01-197', '40', '160', 'H Power 27kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(893, '01-01-198', '40', '160', 'E Power 27Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(894, '03-03-108', '42', '176', 'Bush H Power (black+green)', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 3, NULL, NULL, NULL, ''),
(895, '01-01-199', '40', '160', 'Power plus janding 27kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(896, '12-01-002', '51', '179', '3.16 Megna Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(897, '12-01-003', '51', '179', '4.12 Megna Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(898, '03-03-109', '42', '176', 'Break Road Soto', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(899, '03-03-110', '42', '176', '6205 FND Bearing', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(900, '03-03-111', '42', '176', 'Antrigators Mishuk', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 85, NULL, NULL, NULL, ''),
(901, '03-03-112', '42', '176', 'Horen Cover', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(902, '03-03-113', '42', '176', '3.25.16 Handle', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(903, '03-03-114', '42', '176', 'Mut Ghut Rabar', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(904, '03-03-115', '42', '176', 'Dolner Nut Chikun Mohuri', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(905, '03-03-116', '42', '176', 'Chosmar nut Fulpes', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(906, '03-03-117', '42', '176', 'Looking Glass Driver', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(907, '03-03-118', '42', '176', '5 stick Hafs Body soho', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(908, '01-01-200', '40', '160', 'China Power 22kg W', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(909, '03-08-001', '42', '188', '3.25.16 Good Right Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(910, '03-08-002', '42', '188', '3.25.16 Juboraz', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(911, '03-08-003', '42', '188', '3.25.16 Loud Star', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(912, '03-08-004', '42', '188', '3.25.16 Union', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(913, '03-03-119', '42', '176', '1000W Misuk motor', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(914, '03-03-120', '42', '176', '4 Stick ring 16', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(915, '03-03-121', '42', '176', 'Ganer box ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(916, '03-03-122', '42', '176', '3.25.16 Rim', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(917, '03-03-123', '42', '176', 'hand break', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(918, '03-03-124', '42', '176', '14 no. Uvol', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(919, '03-03-125', '42', '176', 'Dise Plate Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(920, '03-03-126', '42', '176', 'chosma nut ', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(921, '03-03-127', '42', '176', 'XL Wosher plastic', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(922, '01-01-201', '40', '160', 'Datai 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(923, '06-01-005', '45', '169', 'Sandi H Power glass old Dagpora', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 950, NULL, NULL, NULL, ''),
(924, '06-01-006', '45', '169', 'Sandi H Power glass without Logo', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 900, NULL, NULL, NULL, ''),
(925, '06-01-007', '45', '169', 'Yuandi H Power glass old', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 850, NULL, NULL, NULL, ''),
(926, '03-03-128', '42', '176', 'Head Light red', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 275, NULL, NULL, NULL, ''),
(927, '03-03-129', '42', '176', 'Head Light Green', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 245, NULL, NULL, NULL, ''),
(928, '03-03-130', '42', '176', 'LED Light MM', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 55, NULL, NULL, NULL, ''),
(929, '03-03-131', '42', '176', 'H.P Porda Sandi', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 950, NULL, NULL, NULL, ''),
(930, '03-03-132', '42', '176', 'Motor Pakha', '', '', 0, NULL, NULL, 0, '3', 545, 3815, NULL, NULL, 7, NULL, NULL, NULL, ''),
(931, '03-03-133', '42', '176', 'Break Padle Bangla', '', '', 0, NULL, NULL, 0, '3', 196, 29400, NULL, NULL, 150, NULL, NULL, NULL, ''),
(932, '03-03-134', '42', '176', 'Horen Break', '', '', 0, NULL, NULL, 0, '3', 62, 9300, NULL, NULL, 150, NULL, NULL, NULL, ''),
(933, '03-03-135', '42', '176', 'Thala with Break Show', '', '', 0, NULL, NULL, 0, '3', 56, 10080, NULL, NULL, 180, NULL, NULL, NULL, ''),
(934, '03-03-136', '42', '176', 'Thala', '', '', 0, NULL, NULL, 0, '3', 39, 4680, NULL, NULL, 120, NULL, NULL, NULL, ''),
(935, '03-03-137', '42', '176', 'Borac Mut Ghat', '', '', 0, NULL, NULL, 0, '3', 50, 10000, NULL, NULL, 200, NULL, NULL, NULL, ''),
(936, '03-03-138', '42', '176', 'Mick Horen', '', '', 0, NULL, NULL, 0, '3', 150, 9750, NULL, NULL, 65, NULL, NULL, NULL, ''),
(937, '03-03-139', '42', '176', 'Break padle', '', '', 0, NULL, NULL, 0, '3', 49, 7840, NULL, NULL, 160, NULL, NULL, NULL, ''),
(938, '03-03-140', '42', '176', 'H.P Mile miter Tar', '', '', 0, NULL, NULL, 0, '3', 590, 22420, NULL, NULL, 38, NULL, NULL, NULL, ''),
(939, '03-03-141', '42', '176', 'Grip Cover', '', '', 0, NULL, NULL, 0, '3', 293, 5274, NULL, NULL, 18, NULL, NULL, NULL, ''),
(940, '03-03-142', '42', '176', 'Borac Mut Ghat without Kan', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 180, NULL, NULL, NULL, ''),
(941, '03-03-143', '42', '176', 'Sight porda dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 650, NULL, NULL, NULL, ''),
(942, '03-03-144', '42', '176', 'Borac porda', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1200, NULL, NULL, NULL, ''),
(943, '03-03-145', '42', '176', 'H.P Dise plate', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 215, NULL, NULL, NULL, ''),
(944, '03-03-146', '42', '176', 'Dise plate Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 155, NULL, NULL, NULL, ''),
(945, '03-03-147', '42', '176', 'Hatul Holud', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 17, NULL, NULL, NULL, ''),
(946, '03-03-148', '42', '176', 'Hatul Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 34, NULL, NULL, NULL, ''),
(947, '03-03-149', '42', '176', 'Riskaw Pikup', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 90, NULL, NULL, NULL, ''),
(948, '03-03-150', '42', '176', 'Pikup Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 110, NULL, NULL, NULL, ''),
(949, '03-03-151', '42', '176', '48v Miter Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 315, NULL, NULL, NULL, ''),
(950, '03-03-152', '42', '176', '60v Miter Old', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 290, NULL, NULL, NULL, ''),
(951, '03-03-153', '42', '176', '48v Miter Old', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 290, NULL, NULL, NULL, ''),
(952, '03-03-154', '42', '176', 'Handle Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 200, NULL, NULL, NULL, ''),
(953, '03-03-155', '42', '176', 'Defencial looking Glass', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 135, NULL, NULL, NULL, ''),
(954, '03-03-156', '42', '176', '4 LED Light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 105, NULL, NULL, NULL, ''),
(955, '03-03-157', '42', '176', 'Borac Warring Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1300, NULL, NULL, NULL, ''),
(956, '03-03-158', '42', '176', '15 LED Light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 115, NULL, NULL, NULL, ''),
(957, '03-03-159', '42', '176', 'Good LED Light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 160, NULL, NULL, NULL, ''),
(958, '03-03-160', '42', '176', 'LED Pathla', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 48, NULL, NULL, NULL, ''),
(959, '03-03-161', '42', '176', 'MM LED Pathla', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 55, NULL, NULL, NULL, ''),
(960, '09-02-003', '48', '177', 'Charger cot Kalo', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 35, NULL, NULL, NULL, ''),
(961, '09-02-004', '48', '177', 'Charger cot komla', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 48, NULL, NULL, NULL, ''),
(962, '09-02-005', '48', '177', 'Charger cot komla Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 75, NULL, NULL, NULL, ''),
(963, '09-02-006', '48', '177', 'Charger cot sada', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 45, NULL, NULL, NULL, ''),
(964, '03-03-162', '42', '176', 'Tala chabi ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 45, NULL, NULL, NULL, ''),
(965, '03-03-163', '42', '176', '9 LED Light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 98, NULL, NULL, NULL, ''),
(966, '03-03-164', '42', '176', 'Borac soket Jamper', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 2850, NULL, NULL, NULL, ''),
(967, '03-03-165', '42', '176', 'H.P Chosma', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 950, NULL, NULL, NULL, ''),
(968, '03-03-166', '42', '176', 'Borac Chosma', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 780, NULL, NULL, NULL, ''),
(969, '03-03-167', '42', '176', '5 Stick Hafs', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 420, NULL, NULL, NULL, ''),
(970, '03-03-168', '42', '176', '4 Stick Hafs', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 400, NULL, NULL, NULL, ''),
(971, '03-03-169', '42', '176', '2.75.14 Gazi Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 120, NULL, NULL, NULL, ''),
(972, '12-01-004', '51', '179', '3.25.16 Gazi Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 167, NULL, NULL, NULL, ''),
(973, '12-01-005', '51', '179', '412 Gazi Tube', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 180, NULL, NULL, NULL, ''),
(974, '09-02-007', '48', '177', 'JR charger 250Ah', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1250, NULL, NULL, NULL, ''),
(975, '09-02-008', '48', '177', '160Ah Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 930, NULL, NULL, NULL, ''),
(976, '09-02-009', '48', '177', '60v Charger ', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 3600, NULL, NULL, NULL, ''),
(977, '03-03-170', '42', '176', 'Break Padle Boro', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 160, NULL, NULL, NULL, ''),
(978, '03-03-171', '42', '176', 'H.P Break Show', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 95, NULL, NULL, NULL, ''),
(979, '03-03-172', '42', '176', 'H.P Break Show dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 155, NULL, NULL, NULL, ''),
(980, '03-03-173', '42', '176', 'Dui Chokh Miter', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 115, NULL, NULL, NULL, ''),
(981, '03-03-174', '42', '176', 'Head Light', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 290, NULL, NULL, NULL, ''),
(982, '03-03-175', '42', '176', 'Handle cover', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 20, NULL, NULL, NULL, ''),
(983, '03-03-176', '42', '176', 'Controller Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1620, NULL, NULL, NULL, ''),
(984, '03-03-177', '42', '176', 'Borac kan Sada', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 70, NULL, NULL, NULL, ''),
(985, '03-03-178', '42', '176', '5 stick Rim Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1080, NULL, NULL, NULL, ''),
(986, '03-03-179', '42', '176', '4 stick rim Borac', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1100, NULL, NULL, NULL, ''),
(987, '03-03-180', '42', '176', 'Chakar Cover', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 20, NULL, NULL, NULL, ''),
(988, '03-03-181', '42', '176', 'Hatul Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 180, NULL, NULL, NULL, ''),
(989, '03-03-182', '42', '176', 'Borac beg light Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 250, NULL, NULL, NULL, ''),
(990, '03-03-183', '42', '176', 'Motor Mishuk Dami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 4000, NULL, NULL, NULL, ''),
(991, '03-03-184', '42', '176', 'Dolner soto Part', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 9, NULL, NULL, NULL, ''),
(992, '03-03-185', '42', '176', 'Dolnar Boro Part 4 chidro', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 17, NULL, NULL, NULL, ''),
(993, '03-03-186', '42', '176', 'Borac Bush Holud', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1, NULL, NULL, NULL, ''),
(994, '03-03-187', '42', '176', 'Borac bush Norom', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 1, NULL, NULL, NULL, ''),
(995, '03-03-188', '42', '176', 'Borac patti Abc', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 2180, NULL, NULL, NULL, ''),
(996, '03-03-189', '42', '176', 'Looking Glass  Jambo', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 46, NULL, NULL, NULL, ''),
(997, '03-03-190', '42', '176', 'Borac main patti', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 190, NULL, NULL, NULL, ''),
(998, '03-03-191', '42', '176', 'H.P second patti', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 320, NULL, NULL, NULL, ''),
(999, '03-03-192', '42', '176', 'H.P patti Set', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 1900, NULL, NULL, NULL, ''),
(1000, '03-03-193', '42', '176', 'Patti set Mishuk', '', '', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, 855, NULL, NULL, NULL, ''),
(1001, '03-03-194', '42', '176', 'Fast Patti  Mishuk', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 185, NULL, NULL, NULL, ''),
(1002, '03-03-195', '42', '176', '8mm Patti', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 135, NULL, NULL, NULL, ''),
(1003, '03-03-196', '42', '176', 'Tie Cable Soto', '', '', 0, NULL, NULL, 0, '22', 0, 0, NULL, NULL, 18, NULL, NULL, NULL, ''),
(1004, '03-03-197', '42', '176', 'H.P Glass Sada', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 900, NULL, NULL, NULL, ''),
(1005, '03-03-198', '42', '176', 'Casing Big', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 85, NULL, NULL, NULL, ''),
(1006, '03-03-199', '42', '176', 'Sight porda komdami', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 300, NULL, NULL, NULL, ''),
(1007, '03-03-200', '42', '176', 'H.P Porda Old', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1008, '03-03-201', '42', '176', '100ah MM Charger', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1009, '03-03-202', '42', '176', 'Riskaw Charger Cot', '', '', 0, NULL, NULL, 0, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`, `created_at`) VALUES
(9791, 'OP', '01-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9792, 'OP', '01-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9793, 'OP', '01-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9794, 'OP', '01-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9795, 'OP', '01-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9796, 'OP', '01-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9797, 'OP', '01-01-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9798, 'OP', '01-01-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9799, 'OP', '01-01-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9800, 'OP', '01-01-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9801, 'OP', '01-01-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9802, 'OP', '01-01-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9803, 'OP', '01-01-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9804, 'OP', '01-01-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9805, 'OP', '01-01-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9806, 'OP', '01-01-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9807, 'OP', '01-01-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9808, 'OP', '01-01-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9809, 'OP', '01-01-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9810, 'OP', '01-01-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9811, 'OP', '01-01-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9812, 'OP', '01-01-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9813, 'OP', '01-01-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9814, 'OP', '01-01-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9815, 'OP', '01-01-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9816, 'OP', '01-01-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9817, 'OP', '01-01-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9818, 'OP', '01-01-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9819, 'OP', '01-01-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9820, 'OP', '01-01-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9821, 'OP', '01-01-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9822, 'OP', '01-01-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9823, 'OP', '01-01-033', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9824, 'OP', '01-01-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9825, 'OP', '01-01-035', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9826, 'OP', '01-01-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9827, 'OP', '01-01-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9828, 'OP', '01-01-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9829, 'OP', '01-01-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9830, 'OP', '01-01-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9831, 'OP', '01-01-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9832, 'OP', '01-01-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9833, 'OP', '01-01-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9834, 'OP', '01-01-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9835, 'OP', '01-01-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9836, 'OP', '01-01-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9837, 'OP', '01-01-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9838, 'OP', '01-01-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9839, 'OP', '01-01-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9840, 'OP', '01-01-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9841, 'OP', '01-01-051', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9842, 'OP', '01-01-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9843, 'OP', '01-01-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9844, 'OP', '01-01-054', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9845, 'OP', '01-01-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9846, 'OP', '01-01-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9847, 'OP', '01-01-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9848, 'OP', '01-01-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9849, 'OP', '01-01-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9850, 'OP', '01-01-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9851, 'OP', '01-01-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9852, 'OP', '01-01-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9853, 'OP', '01-01-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9854, 'OP', '01-01-064', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9855, 'OP', '01-01-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9856, 'OP', '01-01-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9857, 'OP', '01-01-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9858, 'OP', '01-01-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9859, 'OP', '01-01-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9860, 'OP', '01-01-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9861, 'OP', '01-01-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9862, 'OP', '01-01-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9863, 'OP', '01-01-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9864, 'OP', '01-01-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9865, 'OP', '01-01-075', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9866, 'OP', '01-01-076', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9867, 'OP', '01-01-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9868, 'OP', '01-01-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9869, 'OP', '01-01-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9870, 'OP', '01-01-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9871, 'OP', '01-01-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9872, 'OP', '01-01-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9873, 'OP', '01-01-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9874, 'OP', '01-01-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9875, 'OP', '01-01-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9876, 'OP', '01-01-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9877, 'OP', '01-01-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9878, 'OP', '01-01-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9879, 'OP', '01-01-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9880, 'OP', '01-01-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9881, 'OP', '01-01-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9882, 'OP', '01-01-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9883, 'OP', '01-01-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9884, 'OP', '01-01-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9885, 'OP', '01-01-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9886, 'OP', '01-01-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9887, 'OP', '01-01-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9888, 'OP', '01-01-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9889, 'OP', '01-01-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9890, 'OP', '01-01-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9891, 'OP', '01-01-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9892, 'OP', '01-01-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9893, 'OP', '01-01-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9894, 'OP', '01-01-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9895, 'OP', '01-01-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9896, 'OP', '01-01-106', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9897, 'OP', '01-01-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9898, 'OP', '01-01-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9899, 'OP', '01-01-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9900, 'OP', '01-01-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9901, 'OP', '01-01-111', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9902, 'OP', '01-01-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9903, 'OP', '01-01-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9904, 'OP', '01-01-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9905, 'OP', '01-01-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9906, 'OP', '01-01-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9907, 'OP', '01-01-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9908, 'OP', '01-01-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9909, 'OP', '01-01-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9910, 'OP', '01-01-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9911, 'OP', '01-01-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9912, 'OP', '01-01-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9913, 'OP', '01-01-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9914, 'OP', '01-01-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9915, 'OP', '01-01-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9916, 'OP', '01-01-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9917, 'OP', '01-01-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9918, 'OP', '01-01-128', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9919, 'OP', '01-01-129', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9920, 'OP', '01-01-130', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9921, 'OP', '01-01-131', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9922, 'OP', '01-01-132', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9923, 'OP', '01-01-133', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9924, 'OP', '01-01-134', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9925, 'OP', '01-01-135', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9926, 'OP', '01-01-136', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9927, 'OP', '01-01-137', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9928, 'OP', '01-01-138', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9929, 'OP', '01-01-139', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9930, 'OP', '01-01-140', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9931, 'OP', '01-01-141', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9932, 'OP', '01-01-142', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9933, 'OP', '01-01-143', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9934, 'OP', '01-01-144', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9935, 'OP', '01-01-145', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9936, 'OP', '01-01-146', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9937, 'OP', '01-01-147', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9938, 'OP', '01-01-148', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9939, 'OP', '01-01-149', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9940, 'OP', '01-01-150', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9941, 'OP', '01-01-151', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9942, 'OP', '01-01-152', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9943, 'OP', '01-01-153', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9944, 'OP', '01-01-154', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9945, 'OP', '01-01-155', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9946, 'OP', '01-01-156', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9947, 'OP', '01-01-157', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9948, 'OP', '01-01-158', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9949, 'OP', '01-01-159', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9950, 'OP', '01-01-160', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9951, 'OP', '01-01-161', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9952, 'OP', '01-01-162', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9953, 'OP', '01-01-163', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9954, 'OP', '01-01-164', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9955, 'OP', '01-01-165', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9956, 'OP', '01-01-166', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9957, 'OP', '01-01-167', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9958, 'OP', '01-01-168', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9959, 'OP', '01-01-169', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9960, 'OP', '01-01-170', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9961, 'OP', '01-01-171', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9962, 'OP', '01-01-172', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9963, 'OP', '01-01-173', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9964, 'OP', '01-01-174', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9965, 'OP', '01-01-175', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9966, 'OP', '01-01-176', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9967, 'OP', '01-01-177', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9968, 'OP', '01-01-178', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9969, 'OP', '01-01-179', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9970, 'OP', '01-01-180', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9971, 'OP', '01-01-181', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9972, 'OP', '01-01-182', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9973, 'OP', '01-01-183', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9974, 'OP', '01-01-184', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9975, 'OP', '01-01-185', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9976, 'OP', '01-01-186', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9977, 'OP', '01-01-187', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9978, 'OP', '01-01-188', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9979, 'OP', '01-01-189', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9980, 'OP', '01-01-190', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9981, 'OP', '01-01-191', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9982, 'OP', '01-01-192', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9983, 'OP', '01-01-193', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9984, 'OP', '01-01-194', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9985, 'OP', '01-01-195', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9986, 'OP', '01-01-196', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9987, 'OP', '01-01-197', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9988, 'OP', '01-01-198', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9989, 'OP', '01-01-199', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9990, 'OP', '01-01-200', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9991, 'OP', '01-01-201', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9992, 'OP', '01-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9993, 'OP', '01-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9994, 'OP', '01-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9995, 'OP', '01-02-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9996, 'OP', '01-02-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9997, 'OP', '01-02-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9998, 'OP', '01-02-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(9999, 'OP', '01-02-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10000, 'OP', '01-02-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10001, 'OP', '01-02-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10002, 'OP', '01-02-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10003, 'OP', '01-02-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10004, 'OP', '01-02-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10005, 'OP', '01-02-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10006, 'OP', '01-02-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10007, 'OP', '01-02-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10008, 'OP', '01-02-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10009, 'OP', '01-02-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10010, 'OP', '01-02-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10011, 'OP', '01-02-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10012, 'OP', '01-02-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10013, 'OP', '01-02-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10014, 'OP', '01-02-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10015, 'OP', '01-02-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10016, 'OP', '01-02-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10017, 'OP', '01-02-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10018, 'OP', '01-02-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10019, 'OP', '01-02-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10020, 'OP', '01-02-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10021, 'OP', '01-02-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10022, 'OP', '01-02-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10023, 'OP', '01-02-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10024, 'OP', '01-02-033', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10025, 'OP', '01-02-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10026, 'OP', '01-02-035', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10027, 'OP', '01-02-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10028, 'OP', '01-02-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10029, 'OP', '01-02-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10030, 'OP', '01-02-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10031, 'OP', '01-02-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10032, 'OP', '01-02-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10033, 'OP', '01-02-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10034, 'OP', '01-02-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10035, 'OP', '01-02-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10036, 'OP', '01-02-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10037, 'OP', '01-02-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10038, 'OP', '01-02-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10039, 'OP', '01-02-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10040, 'OP', '01-02-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10041, 'OP', '01-02-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10042, 'OP', '01-02-051', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10043, 'OP', '01-02-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10044, 'OP', '01-02-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10045, 'OP', '01-02-054', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10046, 'OP', '01-02-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10047, 'OP', '01-02-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10048, 'OP', '01-02-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10049, 'OP', '01-02-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10050, 'OP', '01-02-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10051, 'OP', '01-02-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10052, 'OP', '01-02-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10053, 'OP', '01-02-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10054, 'OP', '01-02-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10055, 'OP', '01-02-064', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10056, 'OP', '01-02-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10057, 'OP', '01-02-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10058, 'OP', '01-02-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10059, 'OP', '01-02-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10060, 'OP', '01-02-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10061, 'OP', '01-02-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10062, 'OP', '01-02-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10063, 'OP', '01-02-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10064, 'OP', '01-02-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10065, 'OP', '01-02-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10066, 'OP', '01-02-075', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10067, 'OP', '01-02-076', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10068, 'OP', '01-02-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10069, 'OP', '01-02-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10070, 'OP', '01-02-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10071, 'OP', '01-02-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10072, 'OP', '01-02-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10073, 'OP', '01-02-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10074, 'OP', '01-02-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10075, 'OP', '01-02-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10076, 'OP', '01-02-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10077, 'OP', '01-02-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10078, 'OP', '01-02-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10079, 'OP', '01-02-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10080, 'OP', '01-02-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10081, 'OP', '01-02-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10082, 'OP', '01-02-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10083, 'OP', '01-02-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10084, 'OP', '01-02-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10085, 'OP', '01-02-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10086, 'OP', '01-02-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10087, 'OP', '01-02-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10088, 'OP', '01-02-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10089, 'OP', '01-02-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10090, 'OP', '01-02-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10091, 'OP', '01-02-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10092, 'OP', '01-02-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10093, 'OP', '01-02-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10094, 'OP', '01-02-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10095, 'OP', '01-02-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10096, 'OP', '01-02-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10097, 'OP', '01-02-106', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10098, 'OP', '01-02-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10099, 'OP', '01-02-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10100, 'OP', '01-02-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10101, 'OP', '01-02-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10102, 'OP', '01-02-111', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10103, 'OP', '01-02-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10104, 'OP', '01-02-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10105, 'OP', '01-02-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10106, 'OP', '01-02-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10107, 'OP', '01-02-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10108, 'OP', '01-02-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10109, 'OP', '01-02-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10110, 'OP', '01-02-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10111, 'OP', '01-02-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10112, 'OP', '01-02-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10113, 'OP', '01-02-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10114, 'OP', '01-02-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10115, 'OP', '01-02-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10116, 'OP', '01-02-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10117, 'OP', '01-02-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10118, 'OP', '01-02-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10119, 'OP', '01-02-128', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10120, 'OP', '01-02-129', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10121, 'OP', '01-02-130', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10122, 'OP', '01-02-131', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10123, 'OP', '01-02-132', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10124, 'OP', '01-02-133', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10125, 'OP', '01-02-134', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10126, 'OP', '01-02-135', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10127, 'OP', '01-02-136', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10128, 'OP', '01-02-137', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10129, 'OP', '01-02-138', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10130, 'OP', '01-02-139', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10131, 'OP', '01-02-140', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10132, 'OP', '01-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10133, 'OP', '01-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10134, 'OP', '01-03-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10135, 'OP', '01-03-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10136, 'OP', '01-03-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10137, 'OP', '01-03-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10138, 'OP', '01-03-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10139, 'OP', '01-03-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10140, 'OP', '01-03-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10141, 'OP', '01-03-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10142, 'OP', '01-03-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10143, 'OP', '01-03-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10144, 'OP', '01-03-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10145, 'OP', '01-03-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10146, 'OP', '01-03-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10147, 'OP', '01-03-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10148, 'OP', '01-03-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10149, 'OP', '01-03-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10150, 'OP', '01-03-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10151, 'OP', '01-03-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10152, 'OP', '01-03-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10153, 'OP', '01-03-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10154, 'OP', '01-03-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10155, 'OP', '01-03-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10156, 'OP', '01-03-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10157, 'OP', '01-03-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10158, 'OP', '01-03-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10159, 'OP', '01-03-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10160, 'OP', '01-04-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10161, 'OP', '01-05-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10162, 'OP', '01-07-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10163, 'OP', '01-07-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10164, 'OP', '01-07-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10165, 'OP', '02-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10166, 'OP', '03-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10167, 'OP', '03-03-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10168, 'OP', '03-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10169, 'OP', '03-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10170, 'OP', '03-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10171, 'OP', '03-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10172, 'OP', '03-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10173, 'OP', '03-03-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10174, 'OP', '03-03-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10175, 'OP', '03-03-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10176, 'OP', '03-03-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10177, 'OP', '03-03-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10178, 'OP', '03-03-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10179, 'OP', '03-03-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10180, 'OP', '03-03-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10181, 'OP', '03-03-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10182, 'OP', '03-03-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10183, 'OP', '03-03-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10184, 'OP', '03-03-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10185, 'OP', '03-03-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10186, 'OP', '03-03-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10187, 'OP', '03-03-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10188, 'OP', '03-03-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10189, 'OP', '03-03-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10190, 'OP', '03-03-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10191, 'OP', '03-03-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10192, 'OP', '03-03-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10193, 'OP', '03-03-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10194, 'OP', '03-03-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10195, 'OP', '03-03-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10196, 'OP', '03-03-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10197, 'OP', '03-03-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10198, 'OP', '03-03-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10199, 'OP', '03-03-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10200, 'OP', '03-03-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10201, 'OP', '03-03-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10202, 'OP', '03-03-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10203, 'OP', '03-03-033', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10204, 'OP', '03-03-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10205, 'OP', '03-03-035', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10206, 'OP', '03-03-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10207, 'OP', '03-03-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10208, 'OP', '03-03-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10209, 'OP', '03-03-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10210, 'OP', '03-03-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10211, 'OP', '03-03-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10212, 'OP', '03-03-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10213, 'OP', '03-03-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10214, 'OP', '03-03-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10215, 'OP', '03-03-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10216, 'OP', '03-03-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10217, 'OP', '03-03-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10218, 'OP', '03-03-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10219, 'OP', '03-03-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10220, 'OP', '03-03-051', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10221, 'OP', '03-03-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10222, 'OP', '03-03-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10223, 'OP', '03-03-054', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10224, 'OP', '03-03-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10225, 'OP', '03-03-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10226, 'OP', '03-03-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10227, 'OP', '03-03-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10228, 'OP', '03-03-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10229, 'OP', '03-03-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10230, 'OP', '03-03-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10231, 'OP', '03-03-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10232, 'OP', '03-03-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10233, 'OP', '03-03-064', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10234, 'OP', '03-03-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10235, 'OP', '03-03-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10236, 'OP', '03-03-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10237, 'OP', '03-03-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10238, 'OP', '03-03-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10239, 'OP', '03-03-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10240, 'OP', '03-03-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10241, 'OP', '03-03-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10242, 'OP', '03-03-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10243, 'OP', '03-03-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10244, 'OP', '03-03-075', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10245, 'OP', '03-03-076', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10246, 'OP', '03-03-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10247, 'OP', '03-03-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10248, 'OP', '03-03-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10249, 'OP', '03-03-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10250, 'OP', '03-03-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10251, 'OP', '03-03-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10252, 'OP', '03-03-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, '');
INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`, `created_at`) VALUES
(10253, 'OP', '03-03-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10254, 'OP', '03-03-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10255, 'OP', '03-03-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10256, 'OP', '03-03-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10257, 'OP', '03-03-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10258, 'OP', '03-03-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10259, 'OP', '03-03-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10260, 'OP', '03-03-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10261, 'OP', '03-03-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10262, 'OP', '03-03-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10263, 'OP', '03-03-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10264, 'OP', '03-03-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10265, 'OP', '03-03-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10266, 'OP', '03-03-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10267, 'OP', '03-03-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10268, 'OP', '03-03-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10269, 'OP', '03-03-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10270, 'OP', '03-03-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10271, 'OP', '03-03-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10272, 'OP', '03-03-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10273, 'OP', '03-03-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10274, 'OP', '03-03-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10275, 'OP', '03-03-106', '2022-07-01', 125, 118750, 0, 0, 950, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10276, 'OP', '03-03-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10277, 'OP', '03-03-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10278, 'OP', '03-03-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10279, 'OP', '03-03-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10280, 'OP', '03-03-111', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10281, 'OP', '03-03-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10282, 'OP', '03-03-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10283, 'OP', '03-03-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10284, 'OP', '03-03-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10285, 'OP', '03-03-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10286, 'OP', '03-03-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10287, 'OP', '03-03-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10288, 'OP', '03-03-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10289, 'OP', '03-03-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10290, 'OP', '03-03-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10291, 'OP', '03-03-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10292, 'OP', '03-03-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10293, 'OP', '03-03-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10294, 'OP', '03-03-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10295, 'OP', '03-03-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10296, 'OP', '03-03-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10297, 'OP', '03-03-128', '2022-07-01', 840, 231000, 0, 0, 275, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10298, 'OP', '03-03-129', '2022-07-01', 660, 161700, 0, 0, 245, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10299, 'OP', '03-03-130', '2022-07-01', 1500, 82500, 0, 0, 55, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10300, 'OP', '03-03-131', '2022-07-01', 250, 237500, 0, 0, 950, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10301, 'OP', '03-04-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10302, 'OP', '03-04-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10303, 'OP', '03-05-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10304, 'OP', '03-05-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10305, 'OP', '03-05-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10306, 'OP', '03-06-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10307, 'OP', '03-07-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10308, 'OP', '03-08-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10309, 'OP', '03-08-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10310, 'OP', '03-08-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10311, 'OP', '03-08-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10312, 'OP', '05-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10313, 'OP', '05-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10314, 'OP', '05-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10315, 'OP', '05-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10316, 'OP', '05-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10317, 'OP', '06-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10318, 'OP', '06-01-002', '2022-07-01', 600, 618000, 0, 0, 1030, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10319, 'OP', '06-01-003', '2022-07-01', 652, 652000, 0, 0, 1000, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10320, 'OP', '06-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10321, 'OP', '06-01-005', '2022-07-01', 100, 95000, 0, 0, 950, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10322, 'OP', '06-01-006', '2022-07-01', 132, 118800, 0, 0, 900, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10323, 'OP', '06-01-007', '2022-07-01', 37, 31450, 0, 0, 850, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10324, 'OP', '06-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10325, 'OP', '06-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10326, 'OP', '06-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10327, 'OP', '06-02-004', '2022-07-01', 848, 983680, 0, 0, 1160, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10328, 'OP', '06-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10329, 'OP', '06-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10330, 'OP', '06-03-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10331, 'OP', '07-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10332, 'OP', '08-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10333, 'OP', '09-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10334, 'OP', '09-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10335, 'OP', '09-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10336, 'OP', '09-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10337, 'OP', '09-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10338, 'OP', '09-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10339, 'OP', '09-01-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10340, 'OP', '09-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10341, 'OP', '09-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10342, 'OP', '10-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10343, 'OP', '11-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10344, 'OP', '12-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10345, 'OP', '12-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10346, 'OP', '12-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10347, 'OP', '13-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10348, 'OP', '13-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10349, 'OP', '13-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10350, 'OP', '13-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10351, 'OP', '13-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10352, 'OP', '13-01-006', '2022-07-01', 1, 92000, 0, 0, 92000, 'OP', 0, '', '', '', NULL, '2', '20', '', '', 0, ''),
(10353, 'OP', '01-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10354, 'OP', '01-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10355, 'OP', '01-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10356, 'OP', '01-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10357, 'OP', '01-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10358, 'OP', '01-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10359, 'OP', '01-01-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10360, 'OP', '01-01-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10361, 'OP', '01-01-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10362, 'OP', '01-01-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10363, 'OP', '01-01-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10364, 'OP', '01-01-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10365, 'OP', '01-01-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10366, 'OP', '01-01-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10367, 'OP', '01-01-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10368, 'OP', '01-01-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10369, 'OP', '01-01-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10370, 'OP', '01-01-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10371, 'OP', '01-01-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10372, 'OP', '01-01-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10373, 'OP', '01-01-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10374, 'OP', '01-01-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10375, 'OP', '01-01-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10376, 'OP', '01-01-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10377, 'OP', '01-01-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10378, 'OP', '01-01-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10379, 'OP', '01-01-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10380, 'OP', '01-01-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10381, 'OP', '01-01-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10382, 'OP', '01-01-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10383, 'OP', '01-01-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10384, 'OP', '01-01-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10385, 'OP', '01-01-033', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10386, 'OP', '01-01-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10387, 'OP', '01-01-035', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10388, 'OP', '01-01-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10389, 'OP', '01-01-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10390, 'OP', '01-01-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10391, 'OP', '01-01-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10392, 'OP', '01-01-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10393, 'OP', '01-01-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10394, 'OP', '01-01-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10395, 'OP', '01-01-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10396, 'OP', '01-01-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10397, 'OP', '01-01-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10398, 'OP', '01-01-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10399, 'OP', '01-01-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10400, 'OP', '01-01-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10401, 'OP', '01-01-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10402, 'OP', '01-01-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10403, 'OP', '01-01-051', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10404, 'OP', '01-01-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10405, 'OP', '01-01-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10406, 'OP', '01-01-054', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10407, 'OP', '01-01-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10408, 'OP', '01-01-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10409, 'OP', '01-01-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10410, 'OP', '01-01-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10411, 'OP', '01-01-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10412, 'OP', '01-01-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10413, 'OP', '01-01-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10414, 'OP', '01-01-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10415, 'OP', '01-01-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10416, 'OP', '01-01-064', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10417, 'OP', '01-01-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10418, 'OP', '01-01-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10419, 'OP', '01-01-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10420, 'OP', '01-01-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10421, 'OP', '01-01-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10422, 'OP', '01-01-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10423, 'OP', '01-01-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10424, 'OP', '01-01-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10425, 'OP', '01-01-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10426, 'OP', '01-01-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10427, 'OP', '01-01-075', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10428, 'OP', '01-01-076', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10429, 'OP', '01-01-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10430, 'OP', '01-01-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10431, 'OP', '01-01-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10432, 'OP', '01-01-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10433, 'OP', '01-01-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10434, 'OP', '01-01-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10435, 'OP', '01-01-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10436, 'OP', '01-01-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10437, 'OP', '01-01-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10438, 'OP', '01-01-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10439, 'OP', '01-01-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10440, 'OP', '01-01-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10441, 'OP', '01-01-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10442, 'OP', '01-01-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10443, 'OP', '01-01-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10444, 'OP', '01-01-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10445, 'OP', '01-01-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10446, 'OP', '01-01-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10447, 'OP', '01-01-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10448, 'OP', '01-01-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10449, 'OP', '01-01-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10450, 'OP', '01-01-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10451, 'OP', '01-01-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10452, 'OP', '01-01-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10453, 'OP', '01-01-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10454, 'OP', '01-01-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10455, 'OP', '01-01-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10456, 'OP', '01-01-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10457, 'OP', '01-01-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10458, 'OP', '01-01-106', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10459, 'OP', '01-01-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10460, 'OP', '01-01-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10461, 'OP', '01-01-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10462, 'OP', '01-01-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10463, 'OP', '01-01-111', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10464, 'OP', '01-01-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10465, 'OP', '01-01-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10466, 'OP', '01-01-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10467, 'OP', '01-01-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10468, 'OP', '01-01-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10469, 'OP', '01-01-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10470, 'OP', '01-01-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10471, 'OP', '01-01-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10472, 'OP', '01-01-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10473, 'OP', '01-01-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10474, 'OP', '01-01-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10475, 'OP', '01-01-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10476, 'OP', '01-01-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10477, 'OP', '01-01-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10478, 'OP', '01-01-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10479, 'OP', '01-01-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10480, 'OP', '01-01-128', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10481, 'OP', '01-01-129', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10482, 'OP', '01-01-130', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10483, 'OP', '01-01-131', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10484, 'OP', '01-01-132', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10485, 'OP', '01-01-133', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10486, 'OP', '01-01-134', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10487, 'OP', '01-01-135', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10488, 'OP', '01-01-136', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10489, 'OP', '01-01-137', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10490, 'OP', '01-01-138', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10491, 'OP', '01-01-139', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10492, 'OP', '01-01-140', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10493, 'OP', '01-01-141', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10494, 'OP', '01-01-142', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10495, 'OP', '01-01-143', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10496, 'OP', '01-01-144', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10497, 'OP', '01-01-145', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10498, 'OP', '01-01-146', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10499, 'OP', '01-01-147', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10500, 'OP', '01-01-148', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10501, 'OP', '01-01-149', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10502, 'OP', '01-01-150', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10503, 'OP', '01-01-151', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10504, 'OP', '01-01-152', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10505, 'OP', '01-01-153', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10506, 'OP', '01-01-154', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10507, 'OP', '01-01-155', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10508, 'OP', '01-01-156', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10509, 'OP', '01-01-157', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10510, 'OP', '01-01-158', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10511, 'OP', '01-01-159', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10512, 'OP', '01-01-160', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10513, 'OP', '01-01-161', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10514, 'OP', '01-01-162', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10515, 'OP', '01-01-163', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10516, 'OP', '01-01-164', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10517, 'OP', '01-01-165', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10518, 'OP', '01-01-166', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10519, 'OP', '01-01-167', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10520, 'OP', '01-01-168', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10521, 'OP', '01-01-169', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10522, 'OP', '01-01-170', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10523, 'OP', '01-01-171', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10524, 'OP', '01-01-172', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10525, 'OP', '01-01-173', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10526, 'OP', '01-01-174', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10527, 'OP', '01-01-175', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10528, 'OP', '01-01-176', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10529, 'OP', '01-01-177', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10530, 'OP', '01-01-178', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10531, 'OP', '01-01-179', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10532, 'OP', '01-01-180', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10533, 'OP', '01-01-181', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10534, 'OP', '01-01-182', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10535, 'OP', '01-01-183', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10536, 'OP', '01-01-184', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10537, 'OP', '01-01-185', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10538, 'OP', '01-01-186', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10539, 'OP', '01-01-187', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10540, 'OP', '01-01-188', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10541, 'OP', '01-01-189', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10542, 'OP', '01-01-190', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10543, 'OP', '01-01-191', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10544, 'OP', '01-01-192', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10545, 'OP', '01-01-193', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10546, 'OP', '01-01-194', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10547, 'OP', '01-01-195', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10548, 'OP', '01-01-196', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10549, 'OP', '01-01-197', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10550, 'OP', '01-01-198', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10551, 'OP', '01-01-199', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10552, 'OP', '01-01-200', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10553, 'OP', '01-01-201', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10554, 'OP', '01-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10555, 'OP', '01-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10556, 'OP', '01-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10557, 'OP', '01-02-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10558, 'OP', '01-02-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10559, 'OP', '01-02-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10560, 'OP', '01-02-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10561, 'OP', '01-02-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10562, 'OP', '01-02-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10563, 'OP', '01-02-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10564, 'OP', '01-02-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10565, 'OP', '01-02-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10566, 'OP', '01-02-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10567, 'OP', '01-02-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10568, 'OP', '01-02-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10569, 'OP', '01-02-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10570, 'OP', '01-02-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10571, 'OP', '01-02-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10572, 'OP', '01-02-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10573, 'OP', '01-02-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10574, 'OP', '01-02-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10575, 'OP', '01-02-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10576, 'OP', '01-02-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10577, 'OP', '01-02-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10578, 'OP', '01-02-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10579, 'OP', '01-02-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10580, 'OP', '01-02-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10581, 'OP', '01-02-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10582, 'OP', '01-02-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10583, 'OP', '01-02-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10584, 'OP', '01-02-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10585, 'OP', '01-02-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10586, 'OP', '01-02-033', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10587, 'OP', '01-02-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10588, 'OP', '01-02-035', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10589, 'OP', '01-02-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10590, 'OP', '01-02-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10591, 'OP', '01-02-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10592, 'OP', '01-02-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10593, 'OP', '01-02-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10594, 'OP', '01-02-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10595, 'OP', '01-02-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10596, 'OP', '01-02-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10597, 'OP', '01-02-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10598, 'OP', '01-02-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10599, 'OP', '01-02-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10600, 'OP', '01-02-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10601, 'OP', '01-02-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10602, 'OP', '01-02-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10603, 'OP', '01-02-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10604, 'OP', '01-02-051', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10605, 'OP', '01-02-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10606, 'OP', '01-02-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10607, 'OP', '01-02-054', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10608, 'OP', '01-02-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10609, 'OP', '01-02-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10610, 'OP', '01-02-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10611, 'OP', '01-02-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10612, 'OP', '01-02-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10613, 'OP', '01-02-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10614, 'OP', '01-02-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10615, 'OP', '01-02-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10616, 'OP', '01-02-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10617, 'OP', '01-02-064', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10618, 'OP', '01-02-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10619, 'OP', '01-02-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10620, 'OP', '01-02-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10621, 'OP', '01-02-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10622, 'OP', '01-02-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10623, 'OP', '01-02-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10624, 'OP', '01-02-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10625, 'OP', '01-02-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10626, 'OP', '01-02-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10627, 'OP', '01-02-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10628, 'OP', '01-02-075', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10629, 'OP', '01-02-076', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10630, 'OP', '01-02-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10631, 'OP', '01-02-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10632, 'OP', '01-02-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10633, 'OP', '01-02-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10634, 'OP', '01-02-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10635, 'OP', '01-02-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10636, 'OP', '01-02-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10637, 'OP', '01-02-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10638, 'OP', '01-02-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10639, 'OP', '01-02-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10640, 'OP', '01-02-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10641, 'OP', '01-02-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10642, 'OP', '01-02-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10643, 'OP', '01-02-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10644, 'OP', '01-02-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10645, 'OP', '01-02-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10646, 'OP', '01-02-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10647, 'OP', '01-02-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10648, 'OP', '01-02-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10649, 'OP', '01-02-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10650, 'OP', '01-02-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10651, 'OP', '01-02-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10652, 'OP', '01-02-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10653, 'OP', '01-02-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10654, 'OP', '01-02-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10655, 'OP', '01-02-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10656, 'OP', '01-02-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10657, 'OP', '01-02-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10658, 'OP', '01-02-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10659, 'OP', '01-02-106', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10660, 'OP', '01-02-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10661, 'OP', '01-02-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10662, 'OP', '01-02-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10663, 'OP', '01-02-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10664, 'OP', '01-02-111', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10665, 'OP', '01-02-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10666, 'OP', '01-02-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10667, 'OP', '01-02-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10668, 'OP', '01-02-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10669, 'OP', '01-02-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10670, 'OP', '01-02-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10671, 'OP', '01-02-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10672, 'OP', '01-02-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10673, 'OP', '01-02-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10674, 'OP', '01-02-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10675, 'OP', '01-02-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10676, 'OP', '01-02-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10677, 'OP', '01-02-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10678, 'OP', '01-02-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10679, 'OP', '01-02-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10680, 'OP', '01-02-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10681, 'OP', '01-02-128', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10682, 'OP', '01-02-129', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10683, 'OP', '01-02-130', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10684, 'OP', '01-02-131', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10685, 'OP', '01-02-132', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10686, 'OP', '01-02-133', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10687, 'OP', '01-02-134', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10688, 'OP', '01-02-135', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10689, 'OP', '01-02-136', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10690, 'OP', '01-02-137', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10691, 'OP', '01-02-138', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10692, 'OP', '01-02-139', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10693, 'OP', '01-02-140', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10694, 'OP', '01-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10695, 'OP', '01-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10696, 'OP', '01-03-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10697, 'OP', '01-03-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10698, 'OP', '01-03-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10699, 'OP', '01-03-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10700, 'OP', '01-03-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10701, 'OP', '01-03-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10702, 'OP', '01-03-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10703, 'OP', '01-03-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10704, 'OP', '01-03-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10705, 'OP', '01-03-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10706, 'OP', '01-03-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10707, 'OP', '01-03-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10708, 'OP', '01-03-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10709, 'OP', '01-03-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10710, 'OP', '01-03-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10711, 'OP', '01-03-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, '');
INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `partner_id`, `party_id`, `approval_status`, `created_at`) VALUES
(10712, 'OP', '01-03-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10713, 'OP', '01-03-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10714, 'OP', '01-03-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10715, 'OP', '01-03-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10716, 'OP', '01-03-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10717, 'OP', '01-03-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10718, 'OP', '01-03-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10719, 'OP', '01-03-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10720, 'OP', '01-03-027', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10721, 'OP', '01-03-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10722, 'OP', '01-04-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10723, 'OP', '01-05-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10724, 'OP', '01-07-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10725, 'OP', '01-07-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10726, 'OP', '01-07-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10727, 'OP', '02-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10728, 'OP', '03-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10729, 'OP', '03-03-045', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10730, 'OP', '03-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10731, 'OP', '03-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10732, 'OP', '03-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10733, 'OP', '03-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10734, 'OP', '03-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10735, 'OP', '03-03-003', '2022-07-01', 550, 91850, 0, 0, 167, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10736, 'OP', '03-03-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10737, 'OP', '03-03-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10738, 'OP', '03-03-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10739, 'OP', '03-03-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10740, 'OP', '03-03-008', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10741, 'OP', '03-03-009', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10742, 'OP', '03-03-010', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10743, 'OP', '03-03-011', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10744, 'OP', '03-03-012', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10745, 'OP', '03-03-013', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10746, 'OP', '03-03-014', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10747, 'OP', '03-03-015', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10748, 'OP', '03-03-016', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10749, 'OP', '03-03-017', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10750, 'OP', '03-03-018', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10751, 'OP', '03-03-019', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10752, 'OP', '03-03-020', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10753, 'OP', '03-03-021', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10754, 'OP', '03-03-022', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10755, 'OP', '03-03-023', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10756, 'OP', '03-03-024', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10757, 'OP', '03-03-025', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10758, 'OP', '03-03-026', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10759, 'OP', '03-03-027', '2022-07-01', 133, 17024, 0, 0, 128, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10760, 'OP', '03-03-028', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10761, 'OP', '03-03-029', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10762, 'OP', '03-03-030', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10763, 'OP', '03-03-031', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10764, 'OP', '03-03-032', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10765, 'OP', '03-03-033', '2022-07-01', 24, 4320, 0, 0, 180, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10766, 'OP', '03-03-034', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10767, 'OP', '03-03-035', '2022-07-01', 51, 16065, 0, 0, 315, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10768, 'OP', '03-03-036', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10769, 'OP', '03-03-037', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10770, 'OP', '03-03-038', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10771, 'OP', '03-03-039', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10772, 'OP', '03-03-040', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10773, 'OP', '03-03-041', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10774, 'OP', '03-03-042', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10775, 'OP', '03-03-043', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10776, 'OP', '03-03-044', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10777, 'OP', '03-03-046', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10778, 'OP', '03-03-047', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10779, 'OP', '03-03-048', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10780, 'OP', '03-03-049', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10781, 'OP', '03-03-050', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10782, 'OP', '03-03-051', '2022-07-01', 2, 21100, 0, 0, 10550, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10783, 'OP', '03-03-052', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10784, 'OP', '03-03-053', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10785, 'OP', '03-03-054', '2022-07-01', 9, 3600, 0, 0, 400, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10786, 'OP', '03-03-055', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10787, 'OP', '03-03-056', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10788, 'OP', '03-03-057', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10789, 'OP', '03-03-058', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10790, 'OP', '03-03-059', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10791, 'OP', '03-03-060', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10792, 'OP', '03-03-061', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10793, 'OP', '03-03-062', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10794, 'OP', '03-03-063', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10795, 'OP', '03-03-064', '2022-07-01', 80, 7600, 0, 0, 95, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10796, 'OP', '03-03-065', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10797, 'OP', '03-03-066', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10798, 'OP', '03-03-067', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10799, 'OP', '03-03-068', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10800, 'OP', '03-03-069', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10801, 'OP', '03-03-070', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10802, 'OP', '03-03-071', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10803, 'OP', '03-03-072', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10804, 'OP', '03-03-073', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10805, 'OP', '03-03-074', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10806, 'OP', '03-03-075', '2022-07-01', 50, 11000, 0, 0, 220, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10807, 'OP', '03-03-076', '2022-07-01', 19, 1235, 0, 0, 65, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10808, 'OP', '03-03-077', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10809, 'OP', '03-03-078', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10810, 'OP', '03-03-079', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10811, 'OP', '03-03-080', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10812, 'OP', '03-03-081', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10813, 'OP', '03-03-082', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10814, 'OP', '03-03-083', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10815, 'OP', '03-03-084', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10816, 'OP', '03-03-085', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10817, 'OP', '03-03-086', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10818, 'OP', '03-03-087', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10819, 'OP', '03-03-088', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10820, 'OP', '03-03-089', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10821, 'OP', '03-03-090', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10822, 'OP', '03-03-091', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10823, 'OP', '03-03-092', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10824, 'OP', '03-03-093', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10825, 'OP', '03-03-094', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10826, 'OP', '03-03-095', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10827, 'OP', '03-03-096', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10828, 'OP', '03-03-097', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10829, 'OP', '03-03-098', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10830, 'OP', '03-03-099', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10831, 'OP', '03-03-100', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10832, 'OP', '03-03-101', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10833, 'OP', '03-03-102', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10834, 'OP', '03-03-103', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10835, 'OP', '03-03-104', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10836, 'OP', '03-03-105', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10837, 'OP', '03-03-106', '2022-07-01', 61, 54900, 0, 0, 900, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10838, 'OP', '03-03-107', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10839, 'OP', '03-03-108', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10840, 'OP', '03-03-109', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10841, 'OP', '03-03-110', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10842, 'OP', '03-03-111', '2022-07-01', 189, 16065, 0, 0, 85, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10843, 'OP', '03-03-112', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10844, 'OP', '03-03-113', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10845, 'OP', '03-03-114', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10846, 'OP', '03-03-115', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10847, 'OP', '03-03-116', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10848, 'OP', '03-03-117', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10849, 'OP', '03-03-118', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10850, 'OP', '03-03-119', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10851, 'OP', '03-03-120', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10852, 'OP', '03-03-121', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10853, 'OP', '03-03-122', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10854, 'OP', '03-03-123', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10855, 'OP', '03-03-124', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10856, 'OP', '03-03-125', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10857, 'OP', '03-03-126', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10858, 'OP', '03-03-127', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10859, 'OP', '03-03-128', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10860, 'OP', '03-03-129', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10861, 'OP', '03-03-130', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10862, 'OP', '03-03-131', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10863, 'OP', '03-03-132', '2022-07-01', 545, 3815, 0, 0, 7, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10864, 'OP', '03-03-133', '2022-07-01', 196, 29400, 0, 0, 150, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10865, 'OP', '03-03-134', '2022-07-01', 62, 9300, 0, 0, 150, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10866, 'OP', '03-03-135', '2022-07-01', 56, 10080, 0, 0, 180, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10867, 'OP', '03-03-136', '2022-07-01', 39, 4680, 0, 0, 120, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10868, 'OP', '03-03-137', '2022-07-01', 50, 10000, 0, 0, 200, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10869, 'OP', '03-03-138', '2022-07-01', 150, 9750, 0, 0, 65, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10870, 'OP', '03-03-139', '2022-07-01', 49, 7840, 0, 0, 160, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10871, 'OP', '03-03-140', '2022-07-01', 590, 22420, 0, 0, 38, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10872, 'OP', '03-03-141', '2022-07-01', 293, 5274, 0, 0, 18, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10873, 'OP', '03-03-142', '2022-07-01', 70, 12600, 0, 0, 180, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10874, 'OP', '03-03-143', '2022-07-01', 92, 59800, 0, 0, 650, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10875, 'OP', '03-03-144', '2022-07-01', 29, 34800, 0, 0, 1200, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10876, 'OP', '03-03-145', '2022-07-01', 100, 21500, 0, 0, 215, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10877, 'OP', '03-03-146', '2022-07-01', 27, 4185, 0, 0, 155, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10878, 'OP', '03-03-147', '2022-07-01', 564, 9588, 0, 0, 17, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10879, 'OP', '03-03-148', '2022-07-01', 242, 8228, 0, 0, 34, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10880, 'OP', '03-03-149', '2022-07-01', 232, 20880, 0, 0, 90, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10881, 'OP', '03-03-150', '2022-07-01', 91, 10010, 0, 0, 110, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10882, 'OP', '03-03-151', '2022-07-01', 39, 12285, 0, 0, 315, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10883, 'OP', '03-03-152', '2022-07-01', 51, 14790, 0, 0, 290, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10884, 'OP', '03-03-153', '2022-07-01', 33, 9570, 0, 0, 290, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10885, 'OP', '03-03-154', '2022-07-01', 43, 8600, 0, 0, 200, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10886, 'OP', '03-03-155', '2022-07-01', 218, 29430, 0, 0, 135, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10887, 'OP', '03-03-156', '2022-07-01', 903, 94815, 0, 0, 105, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10888, 'OP', '03-03-157', '2022-07-01', 15, 19500, 0, 0, 1300, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10889, 'OP', '03-03-158', '2022-07-01', 128, 14720, 0, 0, 115, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10890, 'OP', '03-03-159', '2022-07-01', 120, 19200, 0, 0, 160, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10891, 'OP', '03-03-160', '2022-07-01', 250, 12000, 0, 0, 48, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10892, 'OP', '03-03-161', '2022-07-01', 200, 11000, 0, 0, 55, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10893, 'OP', '03-03-162', '2022-07-01', 700, 31500, 0, 0, 45, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10894, 'OP', '03-03-163', '2022-07-01', 30, 2940, 0, 0, 98, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10895, 'OP', '03-03-164', '2022-07-01', 36, 102600, 0, 0, 2850, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10896, 'OP', '03-03-165', '2022-07-01', 2, 1900, 0, 0, 950, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10897, 'OP', '03-03-166', '2022-07-01', 3, 2340, 0, 0, 780, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10898, 'OP', '03-03-167', '2022-07-01', 44, 18480, 0, 0, 420, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10899, 'OP', '03-03-168', '2022-07-01', 8, 3200, 0, 0, 400, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10900, 'OP', '03-03-169', '2022-07-01', 300, 36000, 0, 0, 120, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10901, 'OP', '03-03-170', '2022-07-01', 40, 6400, 0, 0, 160, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10902, 'OP', '03-03-171', '2022-07-01', 210, 19950, 0, 0, 95, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10903, 'OP', '03-03-172', '2022-07-01', 60, 9300, 0, 0, 155, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10904, 'OP', '03-03-173', '2022-07-01', 800, 92000, 0, 0, 115, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10905, 'OP', '03-03-174', '2022-07-01', 30, 8700, 0, 0, 290, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10906, 'OP', '03-03-175', '2022-07-01', 1100, 22000, 0, 0, 20, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10907, 'OP', '03-03-176', '2022-07-01', 52, 84240, 0, 0, 1620, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10908, 'OP', '03-03-177', '2022-07-01', 200, 14000, 0, 0, 70, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10909, 'OP', '03-03-178', '2022-07-01', 6, 6480, 0, 0, 1080, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10910, 'OP', '03-03-179', '2022-07-01', 7, 7700, 0, 0, 1100, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10911, 'OP', '03-03-180', '2022-07-01', 126, 2520, 0, 0, 20, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10912, 'OP', '03-03-181', '2022-07-01', 90, 16200, 0, 0, 180, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10913, 'OP', '03-04-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10914, 'OP', '03-04-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10915, 'OP', '03-05-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10916, 'OP', '03-05-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10917, 'OP', '03-05-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10918, 'OP', '03-06-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10919, 'OP', '03-07-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10920, 'OP', '03-08-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10921, 'OP', '03-08-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10922, 'OP', '03-08-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10923, 'OP', '03-08-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10924, 'OP', '05-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10925, 'OP', '05-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10926, 'OP', '05-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10927, 'OP', '05-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10928, 'OP', '05-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10929, 'OP', '06-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10930, 'OP', '06-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10931, 'OP', '06-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10932, 'OP', '06-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10933, 'OP', '06-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10934, 'OP', '06-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10935, 'OP', '06-01-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10936, 'OP', '06-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10937, 'OP', '06-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10938, 'OP', '06-02-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10939, 'OP', '06-02-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10940, 'OP', '06-03-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10941, 'OP', '06-03-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10942, 'OP', '06-03-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10943, 'OP', '07-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10944, 'OP', '08-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10945, 'OP', '09-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10946, 'OP', '09-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10947, 'OP', '09-01-003', '2022-07-01', 1, 3600, 0, 0, 3600, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10948, 'OP', '09-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10949, 'OP', '09-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10950, 'OP', '09-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10951, 'OP', '09-01-007', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10952, 'OP', '09-02-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10953, 'OP', '09-02-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10954, 'OP', '09-02-003', '2022-07-01', 1300, 45500, 0, 0, 35, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10955, 'OP', '09-02-004', '2022-07-01', 200, 9600, 0, 0, 48, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10956, 'OP', '09-02-005', '2022-07-01', 400, 30000, 0, 0, 75, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10957, 'OP', '09-02-006', '2022-07-01', 120, 5400, 0, 0, 45, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10958, 'OP', '09-02-007', '2022-07-01', 46, 57500, 0, 0, 1250, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10959, 'OP', '09-02-008', '2022-07-01', 30, 27900, 0, 0, 930, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10960, 'OP', '09-02-009', '2022-07-01', 5, 18000, 0, 0, 3600, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10961, 'OP', '10-01-001', '2022-07-01', 300, 29400, 0, 0, 98, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10962, 'OP', '11-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10963, 'OP', '12-01-001', '2022-07-01', 18, 2160, 0, 0, 120, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10964, 'OP', '12-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10965, 'OP', '12-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10966, 'OP', '12-01-004', '2022-07-01', 90, 15030, 0, 0, 167, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10967, 'OP', '12-01-005', '2022-07-01', 11, 1980, 0, 0, 180, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10968, 'OP', '13-01-001', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10969, 'OP', '13-01-002', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10970, 'OP', '13-01-003', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10971, 'OP', '13-01-004', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10972, 'OP', '13-01-005', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, ''),
(10973, 'OP', '13-01-006', '2022-07-01', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', NULL, '2', '10', '', '', 0, '');

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
(173, '08-01-000', '47', 'Acid shenakolan Tongi'),
(174, '09-01-000', '48', 'Charger'),
(175, '03-02-000', '42', 'Luminus'),
(176, '03-03-000', '42', 'Sk'),
(177, '09-02-000', '48', 'Charger'),
(178, '11-01-000', '50', 'Warehouse'),
(179, '12-01-000', '51', 'Megna Company'),
(180, '13-01-000', '52', 'Zhoo Manikgonj'),
(181, '13-02-000', '52', 'CNG Body '),
(182, '01-07-000', '40', 'Eco Company'),
(183, '10-01-000', '49', 'Khushiara Company'),
(184, '03-04-000', '42', 'AIR International'),
(185, '03-05-000', '42', 'Hossen Company  '),
(186, '03-06-000', '42', 'Bengal Company'),
(187, '03-07-000', '42', 'Kurban Auto'),
(188, '03-08-000', '42', 'Magna company');

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
(42, '03-00-000', 'Parts', NULL, NULL, NULL),
(43, '04-00-000', 'Shapon', NULL, NULL, NULL),
(44, '05-00-000', 'Casing', NULL, NULL, NULL),
(45, '06-00-000', 'Glass', NULL, NULL, NULL),
(46, '07-00-000', 'Soket Jamper', NULL, NULL, NULL),
(47, '08-00-000', 'Acid Water', NULL, NULL, NULL),
(48, '09-00-000', 'Charger', NULL, NULL, NULL),
(49, '10-00-000', 'P', NULL, NULL, NULL),
(50, '11-00-000', 'Old Battery', NULL, NULL, NULL),
(51, '12-00-000', 'Tube/Tyer', NULL, NULL, NULL),
(52, '13-00-000', 'Easy Bike', NULL, NULL, NULL),
(53, '14-00-000', 'Car', NULL, NULL, NULL),
(54, '15-00-000', 'Bengal Company', NULL, NULL, NULL);

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'WH-001', 'CENTRAL WAREHOUSE', 'CW', '2', '', NULL, 0, '2020-09-09 05:04:48', NULL, NULL),
(17, 'WH-002', 'Tangail', 'TA', '2', '', NULL, 0, '2022-01-09 09:04:18', NULL, NULL),
(18, 'WH-003', 'Masterpara', 'MP', '2', '', NULL, 0, '2022-02-12 10:14:41', NULL, NULL),
(20, 'WH-004', 'Gazipur', 'GP', '2', '', NULL, 0, '2022-02-12 10:14:41', NULL, NULL);

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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
(2059, 'PA-012', 'Race Narayangonj', '41', 0, '2022-03-26 11:28:33', NULL),
(2060, 'PA-013', 'Maa Baba Dhoya Mirpur', '33', 1, '2022-03-26 11:29:33', NULL),
(2061, 'PA-014', 'Shaha amanot Gouripur', '33', 2, '2022-03-26 11:30:39', NULL),
(2062, 'PA-015', 'Bismilla Coxbazar', '37', 2, '2022-03-26 11:34:00', NULL),
(2063, 'PA-016', 'SB kapashiya', '36', 1, '2022-03-26 11:34:37', NULL),
(2064, 'PA-017', 'MK Mawna', '36', 2, '2022-03-26 11:35:34', NULL),
(2065, 'PA-018', 'Yousuf Keraniganj', '34', 1, '2022-03-26 11:36:23', NULL),
(2066, 'PA-019', 'Maa', '34', 2, '2022-03-26 11:38:03', NULL),
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
(2091, 'PA-044', 'J', '40', 0, '2022-05-02 19:01:50', NULL),
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
(2105, 'PA-058', 'J', '31', 0, '2022-05-09 18:34:59', NULL),
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
(2141, 'PA-094', 'Hasan-Baipail', '31', 0, '2022-05-09 18:52:10', NULL),
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
(2236, 'PA-189', 'Anower Chadpur', '41', 0, '2022-05-23 19:34:46', NULL),
(2237, 'PA-190', 'Mamun Auto Majar', '41', 0, '2022-05-23 20:13:08', NULL),
(2238, 'PA-191', 'Bismillah Debiddar', '33', 0, '2022-05-25 12:05:09', NULL),
(2239, 'PA-192', 'Aditi Kashrmpur', '38', 0, '2022-05-28 10:14:27', NULL),
(2240, 'PA-193', '', '38', 0, '2022-05-28 10:14:39', NULL),
(2241, 'PA-194', 'Al Amin Electric Fulpur', '38', 0, '2022-05-28 10:15:17', NULL),
(2242, 'PA-195', 'Al Mamun Tarakanda', '38', 0, '2022-05-28 10:15:31', NULL),
(2243, 'PA-196', 'Alamgir kendua', '38', 0, '2022-05-28 10:15:43', NULL),
(2244, 'PA-197', 'Alamin Mawna', '38', 0, '2022-05-28 10:16:01', NULL),
(2245, 'PA-198', 'Allahar Dan Kendua', '38', 0, '2022-05-28 10:16:20', NULL),
(2246, 'PA-199', 'Anwar Chandpur', '38', 0, '2022-05-28 10:16:49', NULL),
(2247, 'PA-200', 'Ariyan Mymensingh', '38', 0, '2022-05-28 10:17:03', NULL),
(2248, 'PA-201', 'Asheke Rasul Isshorgonj', '38', 0, '2022-05-28 10:17:17', NULL),
(2249, 'PA-202', 'BROTHERS AUTO MAWNA', '38', 0, '2022-05-28 10:17:38', NULL),
(2250, 'PA-203', 'Choice Auto Valuka', '38', 0, '2022-05-28 10:17:54', NULL),
(2251, 'PA-204', 'Chowa Motors Mawna', '38', 0, '2022-05-28 10:18:10', NULL),
(2252, 'PA-205', 'Dina Rajendrapur', '38', 0, '2022-05-28 10:18:22', NULL),
(2253, 'PA-206', 'Ekram Esshorgonj', '38', 0, '2022-05-28 10:18:38', NULL),
(2254, 'PA-207', 'GM Electronics ', '38', 0, '2022-05-28 10:18:49', NULL),
(2255, 'PA-208', 'Harun Fulpur', '38', 0, '2022-05-28 10:18:59', NULL),
(2256, 'PA-209', 'Iqbal Fulpur', '38', 0, '2022-05-28 10:19:08', NULL),
(2257, 'PA-210', 'Jaman Chandpur', '38', 0, '2022-05-28 10:19:21', NULL),
(2258, 'PA-211', 'Jaman Fulpur', '38', 0, '2022-05-28 10:19:39', NULL),
(2259, 'PA-212', 'Jaman Trishal ', '38', 0, '2022-05-28 10:19:51', NULL),
(2260, 'PA-213', 'Kamal Fulpur', '38', 0, '2022-05-28 10:20:03', NULL),
(2261, 'PA-214', 'Khan Solar Mawna', '38', 0, '2022-05-28 10:20:21', NULL),
(2262, 'PA-215', 'Liza Isshorgonj 01718885760', '38', 0, '2022-05-28 10:20:47', NULL),
(2263, 'PA-216', 'Loknath Chadpur', '38', 0, '2022-05-28 10:21:05', NULL),
(2264, 'PA-217', 'Maa Rajendrapur', '38', 0, '2022-05-28 10:21:15', NULL),
(2265, 'PA-218', 'Madina Fulpur', '38', 0, '2022-05-28 10:21:26', NULL),
(2266, 'PA-219', 'Masud Mawna', '38', 0, '2022-05-28 10:21:37', NULL),
(2267, 'PA-220', 'Mayer Dowa Isshorgonj', '38', 0, '2022-05-28 10:22:00', NULL),
(2268, 'PA-221', 'Motlab auto chandpur', '38', 0, '2022-05-28 10:23:27', NULL),
(2269, 'PA-222', 'Munshi Chandpur', '38', 0, '2022-05-28 10:23:58', NULL),
(2270, 'PA-223', 'Muntahar Mawna', '38', 0, '2022-05-28 10:24:15', NULL),
(2271, 'PA-224', 'Nure Alom kanarampur', '38', 0, '2022-05-28 10:25:09', NULL),
(2272, 'PA-225', 'Ohi Shamgonj', '38', 0, '2022-05-28 10:25:22', NULL),
(2273, 'PA-226', 'Padma Sicle Fulpur', '38', 0, '2022-05-28 10:25:45', NULL),
(2274, 'PA-227', 'Poler Bari Fulpur', '38', 0, '2022-05-28 10:26:03', NULL),
(2275, 'PA-228', 'Ponir  Fulpur', '38', 0, '2022-05-28 10:26:15', NULL),
(2276, 'PA-229', 'Pritom Mawna', '38', 0, '2022-05-28 10:26:28', NULL),
(2277, 'PA-230', 'Ripon Auto Fulpur', '38', 0, '2022-05-28 10:27:00', NULL),
(2278, 'PA-231', 'Rudra Atharbari', '38', 0, '2022-05-28 10:27:13', NULL),
(2279, 'PA-232', 'sagar and Bristy', '38', 0, '2022-05-28 10:27:29', NULL),
(2280, 'PA-233', 'Sagar Auto Joinabazar', '38', 0, '2022-05-28 10:27:44', NULL),
(2281, 'PA-234', 'Sanjid Seba Ramgopal', '38', 0, '2022-05-28 10:27:59', NULL),
(2282, 'PA-235', 'SHARIF MYMENSINGH', '38', 0, '2022-05-28 10:28:12', NULL),
(2283, 'PA-236', 'Sirajul Mymensingh', '38', 0, '2022-05-28 10:28:33', NULL),
(2284, 'PA-237', 'Tanha (Selim) Shamgonj', '38', 0, '2022-05-28 10:29:02', NULL),
(2285, 'PA-238', 'Vai Vai Fulpur ', '38', 0, '2022-05-28 10:29:14', NULL),
(2286, 'PA-239', 'Akikul Fulpur ', '38', 0, '2022-05-28 10:37:02', NULL),
(2287, 'PA-240', 'National Mymensingh ', '38', 0, '2022-05-28 11:15:14', NULL),
(2288, 'PA-241', 'Selim Kasempur', '35', 0, '2022-05-28 12:09:35', NULL),
(2289, 'PA-242', 'Riju Mymensingh', '35', 0, '2022-05-28 12:31:30', NULL),
(2290, 'PA-243', 'Raton Mymensingh', '35', 0, '2022-05-28 12:44:00', NULL),
(2291, 'PA-244', 'Pervez store Natore', '35', 0, '2022-05-28 13:01:58', NULL),
(2292, 'PA-245', 'Tanjila Jamalpur', '35', 0, '2022-05-28 13:13:21', NULL),
(2293, 'PA-246', 'Boshir Amtola', '35', 0, '2022-05-28 13:43:37', NULL),
(2294, 'PA-247', 'Manik Mymensingh', '35', 0, '2022-05-28 16:03:48', NULL),
(2295, 'PA-248', 'Kazi Auto Mymensingh', '35', 0, '2022-05-28 16:24:00', NULL),
(2296, 'PA-249', 'Maa Enterprise Arshad Noghor', '35', 0, '2022-05-28 17:03:27', NULL),
(2297, 'PA-250', 'Jewel Naogah', '31', 0, '2022-05-28 18:14:40', NULL),
(2298, 'PA-251', 'Atik Naogaon', '42', 0, '2022-05-29 11:23:43', NULL),
(2299, 'PA-252', 'Bismillah Araihajar', '42', 0, '2022-05-29 11:24:00', NULL),
(2300, 'PA-253', 'Bismillah Bonosri', '42', 0, '2022-05-29 11:24:15', NULL),
(2301, 'PA-254', 'Hafsa Taltola', '42', 0, '2022-05-29 11:24:29', NULL),
(2302, 'PA-255', 'Billal Isshorgonj', '42', 0, '2022-05-29 11:24:38', NULL),
(2303, 'PA-256', 'Abdullah Savar', '42', 0, '2022-05-29 11:24:51', NULL),
(2304, 'PA-257', 'Manju Gazipur', '42', 0, '2022-05-29 11:25:31', NULL),
(2305, 'PA-258', 'Motiur Zirani', '42', 0, '2022-05-29 11:25:41', NULL),
(2306, 'PA-259', 'Aramn B.Bariya', '42', 0, '2022-05-29 11:25:52', NULL),
(2307, 'PA-260', 'Bismillah Savar', '42', 0, '2022-05-29 11:26:04', NULL),
(2308, 'PA-261', 'Abdullah Gofurgao', '36', 0, '2022-05-29 11:29:51', NULL),
(2309, 'PA-262', 'Ahammed Gazipur', '36', 0, '2022-05-29 11:30:04', NULL),
(2310, 'PA-263', 'Altaf Modonpur', '36', 0, '2022-05-29 11:30:15', NULL),
(2311, 'PA-264', 'Awal vai/Adil', '36', 0, '2022-05-29 11:30:31', NULL),
(2312, 'PA-265', 'Bismillah Munshigonj', '36', 0, '2022-05-29 11:30:47', NULL),
(2313, 'PA-266', 'Bithi Kapasia', '36', 0, '2022-05-29 11:30:59', NULL),
(2314, 'PA-267', 'Borhan Araihajar', '36', 0, '2022-05-29 11:31:14', NULL),
(2315, 'PA-268', 'Dada Nati Hemayatpur', '36', 0, '2022-05-29 11:31:43', NULL),
(2316, 'PA-269', 'Diya Manikgonj', '36', 0, '2022-05-29 11:32:04', NULL),
(2317, 'PA-270', 'Falan Baluka', '36', 0, '2022-05-29 11:32:14', NULL),
(2318, 'PA-271', 'Gazi Motors Munshigonj', '36', 0, '2022-05-29 11:32:24', NULL),
(2319, 'PA-272', 'GELMON GAZIPUR', '36', 0, '2022-05-29 11:32:46', NULL),
(2320, 'PA-273', 'Hossain Motors Munshigonj', '36', 0, '2022-05-29 11:33:07', NULL),
(2321, 'PA-274', 'Emon Auto Bancharampur', '36', 0, '2022-05-29 11:33:39', NULL),
(2322, 'PA-275', 'Habib Manikgonj', '36', 0, '2022-05-29 11:33:51', NULL),
(2323, 'PA-276', 'Jalil Munshigonj', '36', 0, '2022-05-29 11:34:03', NULL),
(2324, 'PA-277', 'Joynal Bancharampur', '36', 0, '2022-05-29 11:34:13', NULL),
(2325, 'PA-278', 'Kadija Enterprise Gazipurpur', '36', 0, '2022-05-29 11:35:19', NULL),
(2326, 'PA-279', 'Loknath Coxsbazar', '36', 0, '2022-05-29 11:35:32', NULL),
(2327, 'PA-280', 'Loknath Coxsbazar', '36', 0, '2022-05-29 11:36:22', NULL),
(2328, 'PA-281', 'Maa Auto Araihajar', '36', 0, '2022-05-29 11:36:32', NULL),
(2329, 'PA-282', 'Maa babar Dowa Munshigong', '36', 0, '2022-05-29 11:36:41', NULL),
(2330, 'PA-283', 'Maa Ent. Gazipur', '36', 0, '2022-05-29 11:36:52', NULL),
(2331, 'PA-284', 'Madina Araihazar', '36', 0, '2022-05-29 11:37:03', NULL),
(2332, 'PA-285', 'Maa Ent. Mirzapur', '36', 0, '2022-05-29 11:37:14', NULL),
(2333, 'PA-286', 'Manik Bancharampur', '36', 0, '2022-05-29 11:37:28', NULL),
(2334, 'PA-287', 'Mirzapur Auto Mirzapur', '36', 0, '2022-05-29 11:37:39', NULL),
(2335, 'PA-288', 'Mizanor Faridpur', '36', 0, '2022-05-29 11:37:49', NULL),
(2336, 'PA-289', 'Monir Auto Mirzapur', '36', 0, '2022-05-29 11:38:13', NULL),
(2337, 'PA-290', 'Musshulli Mirzapur', '36', 0, '2022-05-29 11:38:23', NULL),
(2338, 'PA-291', 'Nahid Munshigonj', '36', 0, '2022-05-29 11:38:32', NULL),
(2339, 'PA-292', 'Nana Savar', '36', 0, '2022-05-29 11:38:42', NULL),
(2340, 'PA-293', 'Nazmul vai Mirzapur', '36', 0, '2022-05-29 11:38:51', NULL),
(2341, 'PA-294', 'NEW SAGAR BANDORA', '36', 0, '2022-05-29 11:39:01', NULL),
(2342, 'PA-295', 'New SB Mawna', '36', 0, '2022-05-29 11:39:08', NULL),
(2343, 'PA-296', 'Nure Madina Munshigonj', '36', 0, '2022-05-29 11:39:17', NULL),
(2344, 'PA-297', 'Rafiqul Gazipur', '36', 0, '2022-05-29 11:39:31', NULL),
(2345, 'PA-298', 'Ratul Kapasia', '36', 0, '2022-05-29 11:39:55', NULL),
(2346, 'PA-299', 'Razib Kapasia', '36', 0, '2022-05-29 11:40:05', NULL),
(2347, 'PA-300', 'Razzak Manikgonj', '36', 0, '2022-05-29 11:40:12', NULL),
(2348, 'PA-301', 'Rezaul  Gazipur', '36', 0, '2022-05-29 11:40:22', NULL),
(2349, 'PA-302', 'Sada Vai Dewangonj', '36', 0, '2022-05-29 11:40:30', NULL),
(2350, 'PA-303', 'Sadaf Gazipur', '36', 0, '2022-05-29 11:40:40', NULL),
(2351, 'PA-304', 'Samith Tarakandi', '36', 0, '2022-05-29 11:40:52', NULL),
(2352, 'PA-305', 'Shakil Bandura', '36', 0, '2022-05-29 11:41:09', NULL),
(2353, 'PA-306', 'Shapon Gazipur', '36', 0, '2022-05-29 11:41:20', NULL),
(2354, 'PA-307', 'Sohag Latapatabazar', '36', 0, '2022-05-29 11:41:33', NULL),
(2355, 'PA-308', 'Sohel Vai Gazipur', '36', 0, '2022-05-29 11:41:43', NULL),
(2356, 'PA-309', 'Sumi Gazipur', '36', 0, '2022-05-29 11:41:54', NULL),
(2357, 'PA-310', 'TAZUDDIN GAZIPUR', '36', 0, '2022-05-29 11:42:04', NULL),
(2358, 'PA-311', 'Zakiya Lalmonirhat', '36', 0, '2022-05-29 11:42:17', NULL),
(2359, 'PA-312', 'Akash Auto Mazar', '40', 0, '2022-05-29 11:53:34', NULL),
(2360, 'PA-313', 'AKOTA ASHULIYA', '40', 0, '2022-05-29 11:54:00', NULL),
(2361, 'PA-314', 'Alo and Battery', '40', 0, '2022-05-29 11:54:13', NULL),
(2362, 'PA-315', 'Anower Rangpur', '40', 0, '2022-05-29 11:54:26', NULL),
(2363, 'PA-316', 'Aziz Bandare', '40', 0, '2022-05-29 11:54:39', NULL),
(2364, 'PA-317', 'Babu vai Choity', '40', 0, '2022-05-29 11:54:50', NULL),
(2365, 'PA-318', 'Joy Patuakhali', '40', 0, '2022-05-29 11:55:01', NULL),
(2366, 'PA-319', 'Chopma Ent Bogra', '40', 0, '2022-05-29 11:55:15', NULL),
(2367, 'PA-320', 'Dipok Da ', '40', 0, '2022-05-29 11:55:30', NULL),
(2368, 'PA-321', 'Jamir enterprise gazipur', '40', 0, '2022-05-29 11:55:41', NULL),
(2369, 'PA-322', 'Jugajug Thakurgaon', '40', 0, '2022-05-29 11:55:51', NULL),
(2370, 'PA-323', 'Khurshed Choity', '40', 0, '2022-05-29 11:56:01', NULL),
(2371, 'PA-324', 'Maa Babar Dowa barishal', '40', 0, '2022-05-29 11:56:13', NULL),
(2372, 'PA-325', 'MB Motors Thakurgao', '40', 0, '2022-05-29 11:56:25', NULL),
(2373, 'PA-326', 'Mehedi Barishal', '40', 0, '2022-05-29 11:56:38', NULL),
(2374, 'PA-327', 'Mizan Tyre And Battery', '40', 0, '2022-05-29 11:56:48', NULL),
(2375, 'PA-328', 'Niloy Enterprise Chalaban', '40', 0, '2022-05-29 11:57:08', NULL),
(2376, 'PA-329', 'Rida masterpara', '40', 0, '2022-05-29 11:57:19', NULL),
(2377, 'PA-330', 'Ripon Gouripur', '40', 0, '2022-05-29 11:57:34', NULL),
(2378, 'PA-331', 'Shanta Elenga', '40', 0, '2022-05-29 11:58:26', NULL),
(2379, 'PA-332', 'Shifa Gazipur', '40', 0, '2022-05-29 11:58:56', NULL),
(2380, 'PA-333', 'Sohag EPZ', '40', 0, '2022-05-29 11:59:12', NULL),
(2381, 'PA-334', 'Vai Vai konabari', '40', 0, '2022-05-29 11:59:31', NULL),
(2382, 'PA-335', 'Asif Enterprise Gualihat', '31', 0, '2022-05-29 13:46:43', NULL),
(2383, 'PA-336', 'Hashan Baipal', '31', 0, '2022-05-29 15:17:41', NULL),
(2384, 'PA-337', 'Dui vai Pakulla', '31', 0, '2022-05-30 10:40:15', NULL),
(2385, 'PA-338', 'Mayer Dowa Lawhati', '31', 0, '2022-05-30 23:47:15', NULL),
(2386, 'PA-339', 'Abdullah Srinagar', '34', 0, '2022-05-31 11:37:29', NULL),
(2387, 'PA-340', 'AL MAdina CHARAGALI', '34', 0, '2022-05-31 11:37:39', NULL),
(2388, 'PA-341', 'Al Madina Majar', '34', 0, '2022-05-31 11:37:49', NULL),
(2389, 'PA-342', 'Alamin Nawabpur', '34', 0, '2022-05-31 11:38:00', NULL),
(2390, 'PA-343', 'Amar Bangla Chapai', '34', 0, '2022-05-31 11:38:08', NULL),
(2391, 'PA-344', 'Amin Charagali', '34', 0, '2022-05-31 11:38:22', NULL),
(2392, 'PA-345', 'Anik Sicle Charagali', '34', 0, '2022-05-31 11:38:35', NULL),
(2393, 'PA-346', 'Anis Ashuliya', '34', 0, '2022-05-31 11:38:46', NULL),
(2394, 'PA-347', 'APON ZIABUG', '34', 0, '2022-05-31 11:38:57', NULL),
(2395, 'PA-348', 'Babul Natunbazar', '34', 0, '2022-05-31 11:39:07', NULL),
(2396, 'PA-349', 'Barek Ruposhi', '34', 0, '2022-05-31 11:39:20', NULL),
(2397, 'PA-350', 'Bismillah Charagali', '34', 0, '2022-05-31 11:39:32', NULL),
(2398, 'PA-351', 'Chowdhury Nawabpur', '34', 0, '2022-05-31 11:39:46', NULL),
(2399, 'PA-352', 'Dhaka Auto Nawabpur', '34', 0, '2022-05-31 11:39:57', NULL),
(2400, 'PA-353', 'Farhana Kamlapur', '34', 0, '2022-05-31 11:40:07', NULL),
(2401, 'PA-354', 'Fuad Nabinagar', '34', 0, '2022-05-31 11:40:19', NULL),
(2402, 'PA-355', 'Habib Shilmoon', '34', 0, '2022-05-31 11:40:28', NULL),
(2403, 'PA-356', 'Haque Nawabpur', '34', 0, '2022-05-31 11:40:36', NULL),
(2404, 'PA-357', 'Harez Thakurgaon', '34', 0, '2022-05-31 11:40:49', NULL),
(2405, 'PA-358', 'HR Nawabpur', '34', 0, '2022-05-31 11:41:01', NULL),
(2406, 'PA-359', 'Jaman Majar', '34', 0, '2022-05-31 11:41:10', NULL),
(2407, 'PA-360', 'Jannat Bandura', '34', 0, '2022-05-31 11:41:19', NULL),
(2408, 'PA-361', 'Jannat Majar', '34', 0, '2022-05-31 11:41:28', NULL),
(2409, 'PA-362', 'JIHAD BOARDBAZAR', '34', 0, '2022-05-31 11:41:37', NULL),
(2410, 'PA-363', 'JK Auto Chittagong', '34', 0, '2022-05-31 11:41:49', NULL),
(2411, 'PA-364', 'Jn Nawabpur', '34', 0, '2022-05-31 11:41:57', NULL),
(2412, 'PA-365', 'Khazababa Charagali', '34', 0, '2022-05-31 11:42:10', NULL),
(2413, 'PA-366', 'Liton Rajbari', '34', 0, '2022-05-31 11:42:26', NULL),
(2414, 'PA-367', 'Luminius Gazipur', '34', 0, '2022-05-31 11:42:35', NULL),
(2415, 'PA-368', 'MAA BABAR DOWA SHILMOON', '34', 0, '2022-05-31 11:42:51', NULL),
(2416, 'PA-369', 'Mahbub Natunbazar', '34', 0, '2022-05-31 11:43:01', NULL),
(2417, 'PA-370', 'Mahid Dhamrai', '34', 0, '2022-05-31 11:43:12', NULL),
(2418, 'PA-371', 'Mamun Charagali', '34', 0, '2022-05-31 11:43:20', NULL),
(2419, 'PA-372', 'Marof charagali', '34', 0, '2022-05-31 11:43:33', NULL),
(2420, 'PA-373', 'Master ponchogarh', '34', 0, '2022-05-31 11:44:05', NULL),
(2421, 'PA-374', 'Mayer Dowa Savar', '34', 0, '2022-05-31 11:44:14', NULL),
(2422, 'PA-375', 'MK Tongi', '34', 0, '2022-05-31 11:44:28', NULL),
(2423, 'PA-376', 'MT Ziabug', '34', 0, '2022-05-31 11:44:39', NULL),
(2424, 'PA-377', 'New Mukti Charagali', '34', 0, '2022-05-31 11:45:04', NULL),
(2425, 'PA-378', 'Nazmul Kamlapur', '34', 0, '2022-05-31 11:45:45', NULL),
(2426, 'PA-379', 'Nishad Joinabazar', '34', 0, '2022-05-31 11:46:02', NULL),
(2427, 'PA-380', 'NS Nawabpur', '34', 0, '2022-05-31 11:47:11', NULL),
(2428, 'PA-381', 'Ohid Charagali', '34', 0, '2022-05-31 11:47:22', NULL),
(2429, 'PA-382', 'Rafiq Ashuliya', '34', 0, '2022-05-31 11:47:30', NULL),
(2430, 'PA-383', 'Rahim Charagali', '34', 0, '2022-05-31 11:48:00', NULL),
(2431, 'PA-384', 'Rasel Shilmoon', '34', 0, '2022-05-31 11:48:12', NULL),
(2432, 'PA-385', 'Rifat Gazipura', '34', 0, '2022-05-31 11:48:21', NULL),
(2433, 'PA-386', 'RN Nawabpur', '34', 0, '2022-05-31 11:49:27', NULL),
(2434, 'PA-387', 'Road King Hemayetpur', '34', 0, '2022-05-31 11:49:38', NULL),
(2435, 'PA-388', 'Rubel Charagali', '34', 0, '2022-05-31 11:49:49', NULL),
(2436, 'PA-389', 'Ghotok Savar', '34', 0, '2022-05-31 11:50:09', NULL),
(2437, 'PA-390', 'Pubail Sicle Pubail', '34', 0, '2022-05-31 11:50:23', NULL),
(2438, 'PA-391', 'Sa Tyre & Battery Shilmoon', '34', 0, '2022-05-31 11:51:23', NULL),
(2439, 'PA-392', 'Saiful  Sripur', '34', 0, '2022-05-31 11:51:33', NULL),
(2440, 'PA-393', 'Saiful Cokoriya', '34', 0, '2022-05-31 11:51:43', NULL),
(2441, 'PA-394', 'Sakil Ashuliya', '34', 0, '2022-05-31 11:51:54', NULL),
(2442, 'PA-395', 'Shadin Kuturiya', '34', 0, '2022-05-31 11:52:02', NULL),
(2443, 'PA-396', 'Shakil Charagali', '34', 0, '2022-05-31 11:52:12', NULL),
(2444, 'PA-397', 'Shomsher Bandura', '34', 0, '2022-05-31 11:52:21', NULL),
(2445, 'PA-398', 'Sohel Auto Shilmoon', '34', 0, '2022-05-31 11:52:31', NULL),
(2446, 'PA-399', 'Sourov Charagali', '34', 0, '2022-05-31 11:53:50', NULL),
(2447, 'PA-400', 'SS LAKSHAM', '34', 0, '2022-05-31 11:54:01', NULL),
(2448, 'PA-401', 'Sufia Ziabug', '34', 0, '2022-05-31 11:54:10', NULL),
(2449, 'PA-402', 'Sumaiya Natunbazar', '34', 0, '2022-05-31 11:54:19', NULL),
(2450, 'PA-403', 'Super Trading Nawabpur', '34', 0, '2022-05-31 11:54:28', NULL),
(2451, 'PA-404', 'Tania Borobari', '34', 0, '2022-05-31 11:54:38', NULL),
(2452, 'PA-405', 'Tanmoy Bogura', '34', 0, '2022-05-31 11:54:48', NULL),
(2453, 'PA-406', 'Towhid Kuturiya', '34', 0, '2022-05-31 11:54:57', NULL),
(2454, 'PA-407', 'Vision Charagali', '34', 0, '2022-05-31 11:55:06', NULL),
(2455, 'PA-408', 'YOUSUF MAZAR', '34', 0, '2022-05-31 11:55:14', NULL),
(2456, 'PA-409', 'Zakir Ponchogarh', '34', 0, '2022-05-31 11:55:22', NULL),
(2457, 'PA-410', 'Sarder Natunbazar', '34', 0, '2022-05-31 12:03:05', NULL),
(2458, 'PA-411', 'Hadi Sayestaganj', '34', 0, '2022-05-31 12:03:16', NULL),
(2459, 'PA-412', 'Shahin Natunbazar', '34', 0, '2022-05-31 12:03:26', NULL),
(2460, 'PA-413', 'Mac Traders Holan', '34', 0, '2022-05-31 12:03:35', NULL),
(2461, 'PA-414', 'Rokomari Nawabpur', '34', 0, '2022-05-31 12:03:46', NULL),
(2462, 'PA-415', 'Mahin Atipara', '34', 0, '2022-05-31 12:03:59', NULL),
(2463, 'PA-416', 'Khan Faridpur', '34', 0, '2022-05-31 12:04:18', NULL),
(2464, 'PA-417', 'Agrozatra Gazipura', '34', 0, '2022-05-31 12:05:03', NULL),
(2465, 'PA-418', 'Bhola Dakshinkhan', '34', 0, '2022-05-31 12:05:12', NULL),
(2466, 'PA-419', 'Mayer Dowa Nawabpur', '34', 0, '2022-05-31 12:05:23', NULL),
(2467, 'PA-420', 'Vai Vai Gopalganj', '34', 0, '2022-05-31 12:05:47', NULL),
(2468, 'PA-421', 'Arif Nawabpur', '34', 0, '2022-05-31 12:05:59', NULL),
(2469, 'PA-422', 'Khokon Shilmoon', '34', 0, '2022-05-31 12:06:18', NULL),
(2470, 'PA-423', 'Soshi Dakshin khan', '34', 0, '2022-05-31 13:01:32', NULL),
(2471, 'PA-424', 'Parvez (2) Natore', '35', 0, '2022-05-31 20:10:15', NULL),
(2472, 'PA-425', 'Alamin Kaliganj', '32', 0, '2022-05-31 23:57:17', NULL),
(2473, 'PA-426', 'Akash Modonpur', '41', 0, '2022-06-01 11:17:10', NULL),
(2474, 'PA-427', 'Alamgir Kendua', '41', 0, '2022-06-01 11:17:54', NULL),
(2475, 'PA-428', 'Allahar dan Shibchor', '41', 0, '2022-06-01 11:18:36', NULL),
(2476, 'PA-429', 'Best Auto Monohordi', '41', 0, '2022-06-01 11:19:13', NULL),
(2477, 'PA-430', 'Maa Babar Dowa Kanchan', '41', 0, '2022-06-01 11:22:11', NULL),
(2478, 'PA-431', 'Maa Kishoregonj', '41', 0, '2022-06-01 11:22:37', NULL),
(2479, 'PA-432', 'Mayer Dowa Sonargoan', '41', 0, '2022-06-01 11:23:04', NULL),
(2480, 'PA-433', 'MN Power Chapai', '41', 0, '2022-06-01 11:24:39', NULL),
(2481, 'PA-434', 'Monowar Shibchor', '41', 0, '2022-06-01 11:25:00', NULL),
(2482, 'PA-435', 'Nava auto Kishoregonj', '41', 0, '2022-06-01 11:25:18', NULL),
(2483, 'PA-436', 'Nayem Rupgonj', '41', 0, '2022-06-01 11:25:36', NULL),
(2484, 'PA-437', 'Ripon Araihajar', '41', 0, '2022-06-01 11:25:55', NULL),
(2485, 'PA-438', 'SA Zirani', '41', 0, '2022-06-01 11:26:17', NULL),
(2486, 'PA-439', 'Saidul Kishoregonj', '41', 0, '2022-06-01 11:26:29', NULL),
(2487, 'PA-440', 'SARKER MIRZAPUR', '41', 0, '2022-06-01 11:26:43', NULL),
(2488, 'PA-441', 'Sharna Narayanganj', '41', 0, '2022-06-01 11:27:02', NULL),
(2489, 'PA-442', 'Sicle Hajigonj', '41', 0, '2022-06-01 11:27:22', NULL),
(2490, 'PA-443', 'SUMSUL AUTO KASHEMPUR', '41', 0, '2022-06-01 11:27:35', NULL),
(2491, 'PA-444', ' Vai Vai Pachdona', '41', 0, '2022-06-01 11:27:51', NULL),
(2492, 'PA-445', 'Zidan Kishoregonj', '41', 0, '2022-06-01 11:28:07', NULL),
(2493, 'PA-446', 'Sohor Ali Pubail', '41', 0, '2022-06-01 11:51:43', NULL),
(2494, 'PA-447', 'Mijan Manikganj', '41', 0, '2022-06-01 11:51:57', NULL),
(2495, 'PA-448', 'Sabbir Kanchan', '41', 0, '2022-06-01 11:52:08', NULL),
(2496, 'PA-449', 'Hridoy Boardbzar', '32', 0, '2022-06-02 11:47:51', NULL),
(2497, 'PA-450', 'Alhamdulilih kesorgonj', '41', 0, '2022-06-08 14:35:52', NULL),
(2498, 'PA-451', 'Omor Battery Mymensingh ', '35', 0, '2022-06-08 17:48:49', NULL),
(2499, 'PA-452', 'Halal Bandaria', '38', 0, '2022-06-08 22:49:23', NULL),
(2500, 'PA-453', 'vai vai pakulla', '31', 0, '2022-06-09 00:02:05', NULL),
(2501, 'PA-454', 'Mayer Dua Mymenshingh', '38', 0, '2022-06-11 13:40:51', NULL),
(2502, 'PA-455', 'Ripon  Auto Mymensingh ', '35', 0, '2022-06-11 16:04:03', NULL),
(2503, 'PA-456', 'Milon Norsindi', '35', 0, '2022-06-11 16:18:53', NULL),
(2504, 'PA-457', 'Kobir Gaoaer', '35', 0, '2022-06-11 17:43:51', NULL),
(2505, 'PA-458', 'Alam Dumar', '35', 0, '2022-06-12 13:27:21', NULL),
(2506, 'PA-459', 'Naim Mymensingh', '35', 0, '2022-06-12 21:50:19', NULL),
(2507, 'PA-460', 'Tasmin Karanigonj', '34', 0, '2022-06-12 22:58:22', NULL),
(2508, 'PA-461', 'Asif Nikrail', '31', 0, '2022-06-13 10:21:28', NULL),
(2509, 'PA-462', 'Saidul Majar', '40', 0, '2022-06-13 10:26:20', NULL),
(2510, 'PA-463', '', '34', 0, '2022-06-14 10:55:20', NULL),
(2511, 'PA-464', 'Raju Lalmonirhat', '42', 0, '2022-06-14 12:08:08', NULL),
(2512, 'PA-465', 'Mahabub Master Bari', '41', 0, '2022-06-14 18:58:54', NULL),
(2513, 'PA-466', 'Seba Fulpur', '35', 0, '2022-06-14 20:59:31', NULL),
(2514, 'PA-467', 'Rafiq Kajchura', '35', 0, '2022-06-14 21:49:18', NULL),
(2515, 'PA-468', 'Insaf Charagali', '34', 0, '2022-06-15 00:01:28', NULL),
(2516, 'PA-469', 'Khan Ulukhola', '40', 0, '2022-06-15 19:10:52', NULL),
(2517, 'PA-470', 'Sahidul Ponchogor', '34', 0, '2022-06-15 19:46:36', NULL),
(2518, 'PA-471', 'Anower Gagipur', '36', 0, '2022-06-16 11:12:01', NULL),
(2519, 'PA-472', 'Anamul Fulbaria', '35', 0, '2022-06-16 19:48:10', NULL),
(2520, 'PA-473', 'Bismillah Naoga', '31', 0, '2022-06-16 21:57:20', NULL),
(2521, 'PA-474', 'R.N Mazu Khan', '34', 0, '2022-06-17 17:20:29', NULL),
(2522, 'PA-475', 'RN Majukhan', '34', 0, '2022-06-18 11:02:15', NULL),
(2523, 'PA-476', 'Mayer Dowa PTC', '31', 0, '2022-06-18 11:49:29', NULL),
(2524, 'PA-477', 'Vai Vai Netrokona', '33', 0, '2022-06-19 10:07:16', NULL),
(2525, 'PA-478', 'Shamim Manikgonj', '36', 0, '2022-06-19 18:51:18', NULL),
(2526, 'PA-479', 'Afia Araihajer', '36', 0, '2022-06-19 19:11:04', NULL),
(2527, 'PA-480', 'Bhuya Sorishabari', '31', 0, '2022-06-19 20:22:17', NULL),
(2528, 'PA-481', 'New Shotota Chamurkhan', '34', 0, '2022-06-19 21:57:58', NULL),
(2529, 'PA-482', 'Liton Hobigonj', '39', 0, '2022-06-20 15:20:39', NULL),
(2530, 'PA-483', 'Marof Konabari', '40', 0, '2022-06-20 23:32:01', NULL),
(2531, 'PA-484', 'Mamun Board Bazar', '32', 0, '2022-06-21 10:42:30', NULL),
(2532, 'PA-485', 'Oyon Savar', '42', 0, '2022-06-21 11:28:48', NULL),
(2533, 'PA-486', 'Akash Araihazar', '41', 0, '2022-06-21 14:38:51', NULL),
(2534, 'PA-487', 'S', '37', 0, '2022-06-22 22:18:36', NULL),
(2535, 'PA-487', 'Sumon Buringabari', '37', 0, '2022-06-22 22:18:36', NULL),
(2536, 'PA-489', 'Mahamudul Kawrith', '34', 0, '2022-06-23 22:13:59', NULL),
(2537, 'PA-490', 'Roki Mererbazar', '34', 0, '2022-06-23 22:46:21', NULL),
(2538, 'PA-491', 'Bhai Bhai Charagali', '34', 0, '2022-06-23 22:49:48', NULL),
(2539, 'PA-492', 'Boilor Auto Bonomala', '34', 0, '2022-06-25 12:23:39', NULL),
(2540, 'PA-493', 'Allahr Dan Joypurhat', '34', 0, '2022-06-25 19:03:19', NULL),
(2541, 'PA-494', 'Aysha Muradnogor', '33', 0, '2022-06-26 11:09:04', NULL),
(2542, 'PA-495', 'Shamim Naoga', '37', 0, '2022-06-26 12:06:16', NULL),
(2543, 'PA-496', 'Eva Fulpur', '38', 0, '2022-06-26 12:25:55', NULL),
(2544, 'PA-497', 'Sha-Amanot Guripur', '33', 0, '2022-06-26 12:41:32', NULL),
(2545, 'PA-498', 'Harez Comilla', '37', 0, '2022-06-26 12:53:35', NULL),
(2546, 'PA-499', 'khokon Natrokona', '35', 0, '2022-06-26 19:34:48', NULL),
(2547, 'PA-500', '3 Star Charagali', '34', 0, '2022-06-26 20:47:03', NULL),
(2548, 'PA-501', 'Emon Auto Saver', '35', 0, '2022-06-26 22:16:15', NULL),
(2549, 'PA-502', 'Samia Auto Charagali', '34', 0, '2022-06-27 23:12:04', NULL),
(2550, 'PA-503', 'Jihad cycle Charagali', '34', 0, '2022-06-27 23:18:27', NULL),
(2551, 'PA-504', 'Lamiya Charagali', '34', 0, '2022-06-28 12:07:09', NULL),
(2552, 'PA-505', 'Rakib Gazipur', '36', 0, '2022-06-29 12:46:40', NULL),
(2553, 'PA-506', 'Gouciya Bottola Shilmoon', '34', 0, '2022-06-29 22:33:01', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
  `seo_keyword` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `disclaimer` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci,
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
(197, 'SID-002', 'ZIRANI', 'ZIRANI', '', '', '', 'cash', '40'),
(198, 'SID-003', 'DK', 'MAWNA', '', '', '', 'cash', '40'),
(199, 'SID-004', 'ECO', 'MAWNA', '', '', '', 'cash', '40'),
(200, 'SID-005', 'DONG YA', 'KASHIMPUR', '', '', '', 'cash', '40'),
(201, 'SID-006', 'Supai', 'Magnaghat', '', '', '', 'cash', '40'),
(202, 'SID-007', 'Charger Company', 'Tongi', '', '', '', 'cash', '48'),
(203, 'SID-008', 'Luminus ', 'Gazipur', '', '', '', 'cash', '42'),
(204, 'SID-009', 'Sk', '', '', '', '', 'cash', '42'),
(205, 'SID-010', 'Megna Company', 'Lalbag', '', '', '', 'cash', '51'),
(206, 'SID-011', 'Khushiara', 'Nawbabpur', '', '', '', 'cash', '49'),
(207, 'SID-012', 'RS ', 'Nawbabpur', 'Faruk', '01654982567', '', 'cash', '42'),
(208, 'SID-013', 'Hazi auto and Bearing', 'Nawbabpur', '', '', '', 'cash', '42'),
(209, 'SID-014', 'Air International', 'Gazipur', '', '', '', 'cash', '49'),
(210, 'SID-015', 'Hossen Company', 'Naraongonj', '', '', '', 'cash', '42'),
(211, 'SID-016', 'Masud Casing', 'CNG Pump', '', '', '', 'cash', '44'),
(212, 'SID-017', 'Zhoo Manikgonj', 'Manikgonj', '', '', '', 'cash', '52'),
(213, 'SID-018', 'Kurban Auto', 'Uttara', '', '', '', 'cash', '42');

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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_term_accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 = not accepted,1 = accepted',
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
(1, 2, 1, 3, 1, 'Ma Motors', 'Ma', 'Motors', 'admin', NULL, '2', '10', 'admin@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(2, 2, 1, 3, 2, 'Tangail', 'Tangail', 'Warehouse', 'whm', NULL, '2', '17', 'tangail@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, NULL, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL),
(3, 2, 1, 3, 3, 'Masterpara', 'Masterpara', 'Warehouse', 'whm', NULL, '2', '18', 'masterpara@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'fe3ae4e0b22211d756922a0bede508cf', 1, 0, NULL, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL),
(4, 1, 1, 3, 4, 'Super Admin', 'Super', 'Admin', 'superAdmin', 16, '2', '1', 'superadmin@admin.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL),
(7, 2, 1, 3, 5, 'Gazipur', 'gazipur', 'gazipur', 'whm', 16, '2', '20', 'gazipur@mamotors.com', 'b3c8a5f4fb861eee77d109b79d0a4b55', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `inv_damagebalance`
--
ALTER TABLE `inv_damagebalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;
--
-- AUTO_INCREMENT for table `inv_damagedetail`
--
ALTER TABLE `inv_damagedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `inv_damageout`
--
ALTER TABLE `inv_damageout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `inv_damageoutdetail`
--
ALTER TABLE `inv_damageoutdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `inv_damaragedetailsale`
--
ALTER TABLE `inv_damaragedetailsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `inv_damaragesale`
--
ALTER TABLE `inv_damaragesale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;
--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2216;
--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10974;
--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1774;
--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;
--
-- AUTO_INCREMENT for table `inv_replaceoutsupplier`
--
ALTER TABLE `inv_replaceoutsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `inv_replaceoutsupplierdetails`
--
ALTER TABLE `inv_replaceoutsupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `inv_replacerecivesupplier`
--
ALTER TABLE `inv_replacerecivesupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `inv_replacerecivesupplierdetails`
--
ALTER TABLE `inv_replacerecivesupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `inv_replacesupplierbalance`
--
ALTER TABLE `inv_replacesupplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2554;
--
-- AUTO_INCREMENT for table `party_payment`
--
ALTER TABLE `party_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
