-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 04:58 PM
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
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` varchar(500) NOT NULL
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
(20, 'Box');

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
(367, '01-01-001', '40', '160', 'H POWER 29KG G', '', '', 0, NULL, NULL, 0, '3', 20, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
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
(544, '02-01-001', '41', '165', 'Scrap material', 'Scrap', '', 100, NULL, NULL, 0, '3', 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(545, '01-01-131', '40', '160', 'TomTom 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(546, '01-01-132', '40', '160', 'TomTom 27.5Kg N', '', '', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(547, '01-01-133', '40', '160', 'TomTom 28 Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(548, '01-01-134', '40', '160', 'TomTom 28.5 kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(549, '01-01-135', '40', '160', 'TomTom 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(550, '01-01-136', '40', '160', 'TomTom 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(551, '01-01-137', '40', '160', 'TomTom 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(552, '01-01-138', '40', '160', 'TomTom 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(553, '01-01-139', '40', '160', 'TomTom 29 kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(554, '01-01-140', '40', '160', 'TomTom 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(555, '01-01-141', '40', '160', 'Dowedo 27kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(556, '01-01-142', '40', '160', 'Dowedo 27.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(557, '01-01-143', '40', '160', 'Dowedo 28kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(558, '01-01-144', '40', '160', 'Dowedo 28.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(559, '01-01-145', '40', '160', 'Dowedo 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(560, '01-01-146', '40', '160', 'Dowedo 29.5kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(561, '01-01-147', '40', '160', 'Dowedo 28kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(562, '01-01-148', '40', '160', 'Dowedo 28.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(563, '01-01-149', '40', '160', 'Dowedo 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(564, '01-01-150', '40', '160', 'Dowedo 29.5kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(565, '01-01-151', '40', '160', 'Power Gold 27Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(566, '01-01-152', '40', '160', 'Power Gold27.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(567, '01-01-153', '40', '160', 'Power Gold 28Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(568, '01-01-154', '40', '160', 'Power Gold 28.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(569, '01-01-155', '40', '160', 'Power Gold 29Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(570, '01-01-156', '40', '160', 'Power Gold 29.5Kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(571, '01-01-157', '40', '160', 'Power Gold 28Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(572, '01-01-158', '40', '160', 'Power Gold 28.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(573, '01-01-159', '40', '160', 'Power Gold 29Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(574, '01-01-160', '40', '160', 'Power Gold 29.5Kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(575, '01-01-161', '40', '160', 'Borac Super 22Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(576, '01-01-162', '40', '160', 'Borac Super 24Kg (W)', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(577, '01-02-044', '40', '161', '1Dragon MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(578, '01-02-045', '40', '161', '1Dragon MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(579, '01-02-046', '40', '161', 'Power plus modonpal MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(580, '01-02-047', '40', '161', 'Lotus MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(581, '01-03-004', '40', '162', '110Ah Power Plus', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(582, '01-03-005', '40', '162', '110Ah Horse Power', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(583, '01-03-006', '40', '162', '95Ah DJking', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(584, '01-03-007', '40', '162', '70Ah DJDG', '', 'CIVIL', 0, NULL, NULL, 0, '19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(585, '01-02-048', '40', '161', 'King Power N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(586, '01-02-049', '40', '161', 'king Power MM', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(587, '01-02-050', '40', '161', 'king Power MM G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(588, '01-02-051', '40', '161', 'king Power 29kg N', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(589, '01-02-052', '40', '161', 'king Power 29kg G', '', 'CIVIL', 0, NULL, NULL, 0, '1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

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
(1, 'MRR-CW001', '01-01-025', '2022-05-14', 500, 4300000, 0, 0, 8600, 'Receive', 1.1, '2', '0', 'MRR-CW001', '', '2', '10', '', '', 0, '2022-05-14'),
(2, 'MRR-CW001', '01-01-121', '2022-05-14', 500, 4300000, 0, 0, 8600, 'Receive', 1.1, '2', '0', 'MRR-CW001', '', '2', '10', '', '', 0, '2022-05-14'),
(3, 'MRR-CW001', '01-01-014', '2022-05-14', 500, 4300000, 0, 0, 8600, 'Receive', 1.1, '2', '0', 'MRR-CW001', '', '2', '10', '', '', 0, '2022-05-14');

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
(167, '03-01-000', '42', 'Anowar');

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
(43, '04-00-000', 'Shapon', NULL, NULL, NULL);

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

--
-- Dumping data for table `inv_receive`
--

INSERT INTO `inv_receive` (`id`, `mrr_no`, `mrr_date`, `purchase_id`, `receive_acct_id`, `supplier_id`, `postedtogl`, `vat_challan_no`, `remarks`, `receive_type`, `project_id`, `warehouse_id`, `receive_unit_id`, `chk_year_end`, `receive_total`, `no_of_material`, `challanno`, `challan_date`, `jv_no`, `part_no`, `requisitionno`, `requisition_date`, `received_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `mrr_image`, `created_at`) VALUES
(1, 'MRR-CW001', '2022-05-14', '', '6-14-010', 'SID-001', 0, 'NAV', ' NAR', 'Credit', '2', '10', '1', NULL, 12900000, 1500, '0', '2022-05-01', NULL, '', '', '0000-00-00 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-05-14');

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

--
-- Dumping data for table `inv_receivedetail`
--

INSERT INTO `inv_receivedetail` (`id`, `mrr_no`, `material_id`, `material_name`, `unit_id`, `receive_qty`, `unit_price`, `sl_no`, `total_receive`, `rd_serial_id`, `part_no`, `project_id`, `warehouse_id`, `approval_status`) VALUES
(1, 'MRR-CW001', '01-01-025', '399', 3, 500, 8600, 1, 4300000, '', '', '2', '10', 0),
(2, 'MRR-CW001', '01-01-121', '495', 3, 500, 8600, 1, 4300000, '', '', '2', '10', 0),
(3, 'MRR-CW001', '01-01-014', '388', 3, 500, 8600, 1, 4300000, '', '', '2', '10', 0);

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

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `receivermode`, `paymenttype`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(1, 'MRR-CW001', '10', '2022-05-14', 'SID-001', 0, 12900000, '', '', ' NAR', 'MRR-CW001', 0);

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
(2211, 'PA-164', 'Jalal Amtola', '35', 0, '2022-05-10 12:05:01', NULL);

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
(197, 'SID-002', 'ZINANI', 'ZIRANI', '', '', '', 'cash', '40'),
(198, 'SID-003', 'DK', 'MAWNA', '', '', '', 'cash', '40'),
(199, 'SID-004', 'ECO', 'MAWNA', '', '', '', 'cash', '40'),
(200, 'SID-005', 'DONG YA', 'KASHIMPUR', '', '', '', 'cash', '40'),
(201, 'SID-006', 'Supai', 'Magnaghat', '', '', '', 'cash', '40');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damagebalance`
--
ALTER TABLE `inv_damagebalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damagedetail`
--
ALTER TABLE `inv_damagedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damageout`
--
ALTER TABLE `inv_damageout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damageoutdetail`
--
ALTER TABLE `inv_damageoutdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damaragedetailsale`
--
ALTER TABLE `inv_damaragedetailsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_damaragesale`
--
ALTER TABLE `inv_damaragesale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;
--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inv_replaceoutsupplier`
--
ALTER TABLE `inv_replaceoutsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_replaceoutsupplierdetails`
--
ALTER TABLE `inv_replaceoutsupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_replacerecivesupplier`
--
ALTER TABLE `inv_replacerecivesupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_replacerecivesupplierdetails`
--
ALTER TABLE `inv_replacerecivesupplierdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_replacesupplierbalance`
--
ALTER TABLE `inv_replacesupplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_scrapdetail`
--
ALTER TABLE `inv_scrapdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2212;
--
-- AUTO_INCREMENT for table `party_payment`
--
ALTER TABLE `party_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
