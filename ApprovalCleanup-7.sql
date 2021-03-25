-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2021 at 01:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ApprovalCleanup`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval_routing`
--

CREATE TABLE `approval_routing` (
  `ID` int(7) NOT NULL,
  `LU_NAME` varchar(50) NOT NULL,
  `KEY_REF` varchar(250) NOT NULL,
  `STEP_NO` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `APP_DATE` datetime(6) DEFAULT NULL,
  `NOTE` varchar(1000) DEFAULT NULL,
  `PREV_APPROVAL_DATE` datetime(6) DEFAULT NULL,
  `GROUP_ID` varchar(50) DEFAULT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `APPROVAL_STATUS` varchar(50) DEFAULT NULL,
  `OBJKEY` varchar(50) NOT NULL,
  `OBJVERSION` float NOT NULL,
  `OBJID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval_routing`
--

INSERT INTO `approval_routing` (`ID`, `LU_NAME`, `KEY_REF`, `STEP_NO`, `DESCRIPTION`, `APP_DATE`, `NOTE`, `PREV_APPROVAL_DATE`, `GROUP_ID`, `PERSON_ID`, `APPROVAL_STATUS`, `OBJKEY`, `OBJVERSION`, `OBJID`) VALUES
(10, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3166110^DOC_REV=()^DOC_SHEET=1^', '10', 'QA - Initiate', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '', '100001', 'Pending ', '', 0, ''),
(12, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3151765^DOC_REV=()^DOC_SHEET=1^', '60', '2nd Eng- ECO review 2nd signature', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '', '102057', 'Approved', '', 0, ''),
(13, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3153651^DOC_REV=()^DOC_SHEET=1^', '60', '2nd Eng- ECO review 2nd signature', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '', '102057', 'Approved', '', 0, ''),
(16, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3143208^DOC_REV=()^DOC_SHEET=1^', '50', 'Tech Writer - Process ECO', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '', '103611', 'Approved', '', 0, ''),
(20, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3159654^DOC_REV=()^DOC_SHEET=1^', '50', 'Mfg Eng or Orig - Review ECR Disposition', '2021-01-19 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '', '110620', 'Approved ', '', 0, ''),
(22, 'OrderQuotation', 'QUOTATION_NO=1297976^', '80', 'Sales: Send quote to Engineering', '2021-01-19 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '', '103513', 'Approved', '', 0, ''),
(25, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2448^DOC_REV=()^DOC_SHEET=1^', '140', 'Create Customer Order', '2021-01-19 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '', '100294', 'Approved', '', 0, ''),
(27, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3156111^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Delete if initiator', '2021-01-04 00:00:00.000000', NULL, '2021-01-05 00:00:00.000000', '', '104118', 'Approved', '', 0, ''),
(28, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3151083^DOC_REV=()^DOC_SHEET=1^', '50', 'Initiator to review', '2021-01-04 00:00:00.000000', NULL, '2021-01-04 00:00:00.000000', '', '100011', 'Approved', '', 0, ''),
(29, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3153444^DOC_REV=()^DOC_SHEET=1^', '50', 'Initiator to review', '2021-01-04 00:00:00.000000', NULL, '2021-01-04 00:00:00.000000', '', '100133', 'Approved', '', 0, ''),
(63, 'MrbHead', 'MRB_NUMBER=4926^', '50', 'Initiator close MRB', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100740', '100740', 'Approved', 'B8E025B5D0D57EABE0532E8110AC1393', 20210100000000, 'AAATCCAAGAAE734AAY'),
(64, 'MrbHead', 'MRB_NUMBER=4925^', '50', 'Initiator close MRB', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100740', '100740', 'Approved', 'B8C85CD7E8FA6B47E0532E8110AC400C', 20210100000000, 'AAATCCAAGAAE73PAAZ'),
(66, 'NonConformanceReport', 'NCR_NO=817^', '50', 'Verify Correction Effectiveness w/ Evid.', '2021-01-20 00:00:00.000000', 'Review and changes captured in TS & FS.  Areas have been updated.', '2021-01-20 00:00:00.000000', '103721', '103721', 'Approved', 'A75C51724A9C50D2E0532E8110ACA781', 20210100000000, 'AAATCCAABAAHoFZAAE'),
(74, 'InventoryPart', 'CONTRACT=100^PART_NO=HL233880^', '270', 'DE - Documents Review/Sign Off', '2021-01-18 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '103020', '103020', 'Approved', 'B69A1CC95ADE4DF5E0532E8110AC4C0F', 20210100000000, 'AAATCCAAGAAE748AAc'),
(75, 'InventoryPart', 'CONTRACT=100^PART_NO=HL233880^', '260', 'DE - IFS Review/Sign Off', '2021-01-18 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '103020', '103020', 'Approved', 'B69A1CC95AD44DF5E0532E8110AC4C0F', 20210100000000, 'AAATCCAAGAAE748AAX'),
(76, 'InventoryPart', 'CONTRACT=100^PART_NO=HL233880^', '250', 'DE - Pre-Production Release Meeting', '2021-01-18 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '103020', '10302', 'Approved', 'B69A1CC95AD24DF5E0532E8110AC4C0F', 20210100000000, 'AAATCCAAGAAE748AAW'),
(77, 'InventoryPart', 'CONTRACT=100^PART_NO=S234114PD3E532^', '210', 'Cory-TSCS MFG Engineer - (1st Run Check)', '2021-01-18 00:00:00.000000', 'spec drawing update completed, to add notes regarding elastomer fill.  CDO', '2021-01-19 00:00:00.000000', NULL, '104101', 'Approved', 'B710AA16987E63E4E0532E8110AC587E', 20210100000000, 'AAATCCAAGAAE79NAAG'),
(78, 'InventoryPart', 'CONTRACT=100^PART_NO=AS7004PD381Z3A0X0XA^', '90', 'Planning: Set up planning data', '2021-01-18 00:00:00.000000', NULL, '2021-01-14 00:00:00.000000', NULL, '100413', 'Approved', 'B8C85CD7D5416B47E0532E8110AC400C', 20210100000000, 'AAATCCAAGAAE73PAAA'),
(79, 'InventoryPart', 'CONTRACT=100^PART_NO=S13282PD3E144CALA^', '80', 'Planning', '2021-01-18 00:00:00.000000', NULL, '2021-01-12 00:00:00.000000', NULL, '100413', 'Approved', 'B8542169648018C3E0532E8110ACBA65', 20210100000000, 'AAATCCAAGAAE7wSAAW'),
(80, 'InventoryPart', 'CONTRACT=100^PART_NO=AS100279PD20M^', '50', 'Planning', '2021-01-18 00:00:00.000000', NULL, '2021-01-15 00:00:00.000000', NULL, '100413', 'Approved', 'B854421CD86318BFE0532E8110ACB432', 20210100000000, 'AAATCCAAGAAE74DAAR');

-- --------------------------------------------------------

--
-- Table structure for table `company_emp`
--

CREATE TABLE `company_emp` (
  `COMPANY` varchar(50) NOT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `EMPLOYEE_ID` varchar(50) NOT NULL,
  `EXPIRE_DATE` varchar(50) DEFAULT NULL,
  `ROWKEY` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_emp`
--

INSERT INTO `company_emp` (`COMPANY`, `PERSON_ID`, `EMPLOYEE_ID`, `EXPIRE_DATE`, `ROWKEY`, `FNAME`, `LNAME`) VALUES
('US0100', '100001', '3280', NULL, 'AAATS+AAHAAACwsAB3', 'Madeleine', 'Kelly'),
('US0100', '100011', '4288', NULL, 'AAATS+AAHAAACwtADB', 'Amanda', 'Russell'),
('US0100', '100013', '2681', NULL, 'AAATS+AABAAMt9wABH', 'Karen', 'Taylor'),
('US0100', '100015', '2776', NULL, 'AAATS+AAHAAACwsAAc', 'Ryan', 'Vance'),
('US0100', '100100', '3534', NULL, 'AAATS+AAHAAACwsACr', 'Wendy', 'Mitchell'),
('US0100', '100102', '4187', NULL, 'AAATS+AAHAAACwtAB7', 'Bella', 'McLean'),
('US0100', '100103', '3448', NULL, 'AAATS+AAHAAACwsACV', 'Connor', 'Clarkson'),
('US0100', '100104', '2081', NULL, 'AAATS+AAHAAACwvADD', 'Heather', 'Mills'),
('US0100', '100105', '2423', NULL, 'AAATS+AABAAMt9wAAb', 'Angela', 'Hudson'),
('US0100', '100307', '8731', NULL, 'AAATS+AAHAAACwvABA', 'Joan', 'Miller'),
('US0100', '102508', '5551', '26-Jul-19', 'AAATS+AABAAMt9yACt', 'Christian', 'Marshall'),
('US0100', '102520', '5564', '27-Apr-12', 'AAATS+AABAAMt9zACN', 'Victoria', 'Russell'),
('US0100', '102542', '5587', '17-Feb-12', 'AAATS+AABAAMt9zACw', 'Michael', 'Hemmings'),
('US0100', '102556', '5601', '5-Apr-12', 'AAATS+AABAAMt9wAC8', 'Stewart', 'Wilkins'),
('US0100', '103051', '103051', '17-Jan-19', 'AAATS+AABAAMt90ABc', 'Ian', 'Scott'),
('US0100', '103057', '103057', NULL, 'AAATS+AABAAMt90ADL', 'Christopher', 'Scott'),
('US0100', '103058', '103058', NULL, 'AAATS+AABAAMt90ADK', 'Jack', 'Henderson'),
('US0100', '103063', '103063', NULL, 'AAATS+AABAAMt9yAAQ', 'Jane', 'Fisher'),
('US0100', '103068', '103068', NULL, 'AAATS+AABAAMt9zAAR', 'Angela', 'Turner'),
('US0100', '103069', '103069', NULL, 'AAATS+AABAAMt90ABm', 'Heather', 'Lawrence'),
('US0100', '103071', '103071', NULL, 'AAATS+AABAAMt9xAAg', 'Melanie', 'Wright'),
('US0100', '103076', '103076', NULL, 'AAATS+AABAAMt90AAU', 'Jessica', 'Ince'),
('US0100', '103077', '103077', NULL, 'AAATS+AABAAMt90AAW', 'Christian', 'Bond'),
('US0100', '103078', '103078', NULL, 'AAATS+AABAAMt90AAV', 'Jacob', 'Gill'),
('US0100', '103079', '103079', NULL, 'AAATS+AABAAMt9yABc', 'Molly', 'Baker'),
('US0100', '103082', '103082', '3-Jul-19', 'AAATS+AABAAMt9xAAn', 'Irene', 'Forsyth'),
('US0100', '103083', '103083', NULL, 'AAATS+AABAAMt9xAAp', 'Jake', 'Hill'),
('US0100', '103084', '103084', NULL, 'AAATS+AABAAMt9xAAo', 'Katherine', 'Carr'),
('US0100', '103087', '103087', NULL, 'AAATS+AABAAMt9yAAX', 'Justin', 'Avery'),
('US0100', '103090', '103090', NULL, 'AAATS+AABAAMt9zAAY', 'Stephen', 'Kerr'),
('US0100', '103091', '103091', NULL, 'AAATS+AABAAMt90AAc', 'Isaac', 'Butler'),
('US0100', '103097', '103097', NULL, 'AAATS+AABAAMt91ADS', 'Ryan', 'Sharp'),
('US0100', '103104', '103104', NULL, 'AAATS+AABAAMt9zAAZ', 'Justin', 'Poole'),
('US0100', '103106', '103106', NULL, 'AAATS+AABAAMt91ADW', 'Kevin', 'Mackenzie'),
('US0100', '103107', '103107', NULL, 'AAATS+AABAAMt9zAAi', 'John', 'Anderson'),
('US0100', '103113', '103113', NULL, 'AAATS+AABAAMt91ADZ', 'Dylan', 'McDonald'),
('US0100', '103114', '103114', NULL, 'AAATS+AABAAMt91ADa', 'Lily', 'Dyer'),
('US0100', '103118', '103118', NULL, 'AAATS+AABAAMt9zAAk', 'Nicola', 'Walker'),
('US0100', '103119', '103119', NULL, 'AAATS+AABAAMt9yAAe', 'Evan', 'Slater'),
('US0100', '103120', '103120', NULL, 'AAATS+AABAAMt9yAAf', 'Megan', 'Gray'),
('US0100', '103126', '103126', NULL, 'AAATS+AABAAMt91AAK', 'Carol', 'Paige'),
('US0100', '110618', '110618', NULL, 'AAATS+AABAAMt96ACd', 'Jacob', 'Avery'),
('US0100', '110620', '110620', '9-Dec-19', 'AAATS+AABAAMt97AB/', 'Fiona', 'Tucker'),
('US0100', '110626', '110626', '25-Nov-18', 'AAATS+AABAAMt98ABv', 'Elizabeth', 'Sanderson'),
('US0100', '110627', '110627', '8-Jan-19', 'AAATS+AABAAMt97ACB', 'Anne', 'Underwood'),
('US0100', '110629', '110629', '6-Jan-19', 'AAATS+AABAAMt97ACC', 'Adam', 'Davidson'),
('US0100', '110636', '110636', '4-Jan-19', 'AAATS+AABAAMt95ABC', 'Stephen', 'Jackson'),
('US0100', '110637', '110637', NULL, 'AAATS+AABAAMt95ABD', 'Sally', 'Avery'),
('US0100', '120003', '120003', NULL, 'AAATS+AABAAMt91AC1', 'Ruth', 'Hamilton'),
('US0100', '120006', '120006', NULL, 'AAATS+AABAAMt91AC8', 'Sue', 'Mills');

-- --------------------------------------------------------

--
-- Table structure for table `current_approval`
--

CREATE TABLE `current_approval` (
  `STEP_NO` int(14) NOT NULL,
  `LU_NAME` varchar(50) NOT NULL,
  `KEY_REF` varchar(1000) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `APPROVAL_STATUS` varchar(50) NOT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `NOTE` varchar(1000) NOT NULL,
  `CONNECTION_DESCRIPTION` varchar(1000) NOT NULL,
  `GROUP_ID` varchar(50) NOT NULL,
  `OBJID` varchar(50) NOT NULL,
  `OBJVERSION` float NOT NULL,
  `OBJKEY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `document_group_members`
--

CREATE TABLE `document_group_members` (
  `GROUP_ID` varchar(50) NOT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `NOTE` varchar(1000) NOT NULL,
  `VALID_FROM_DATE` datetime NOT NULL,
  `VALID_TO_DATE` datetime NOT NULL,
  `OBJKEY` varchar(50) NOT NULL,
  `OBJVERSION` float NOT NULL,
  `OBJID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document_group_members`
--

INSERT INTO `document_group_members` (`GROUP_ID`, `PERSON_ID`, `NOTE`, `VALID_FROM_DATE`, `VALID_TO_DATE`, `OBJKEY`, `OBJVERSION`, `OBJID`) VALUES
('DOC_ACC_FGCOORD', '100744', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '100519', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103605', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_ENG_SUP', '100519', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_MINCO_SA', '102322', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_ITAR', '100133', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_FLR_SUP', '100908', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103668', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('TS_MFG_TECHS', '100011', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103669', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103670', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '100744', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103673', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('ARG_RMA_MTL', '100294', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_ENG_SUP', '100541', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', 'WC3020', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SALES', '100755', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', 'WC3290', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103256', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SHOP_LEAD', '103619', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, ''),
('DOC_ACC_SALES', '102462', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_job_assign`
--

CREATE TABLE `emp_job_assign` (
  `COMPANY_ID` varchar(50) NOT NULL,
  `EMP_NO` varchar(50) NOT NULL,
  `VALID_FROM` datetime(6) NOT NULL,
  `JOB_ID` varchar(50) NOT NULL,
  `JOB_TITLE` varchar(50) NOT NULL,
  `VALID_TO` datetime(6) NOT NULL,
  `EMPLOYEE_STATUS` varchar(50) NOT NULL,
  `EMPLOYEE_STATUS_SEQ_NO` varchar(50) NOT NULL,
  `OBJID` varchar(50) NOT NULL,
  `OBJVERSION` float NOT NULL,
  `OBJKEY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_job_assign`
--

INSERT INTO `emp_job_assign` (`COMPANY_ID`, `EMP_NO`, `VALID_FROM`, `JOB_ID`, `JOB_TITLE`, `VALID_TO`, `EMPLOYEE_STATUS`, `EMPLOYEE_STATUS_SEQ_NO`, `OBJID`, `OBJVERSION`, `OBJKEY`) VALUES
('US0100', '1029', '2012-05-31 00:00:00.000000', 'ENG25', 'Supervisor, Engineering Support', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '110615', '2018-07-27 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-18 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '110618', '2018-08-08 00:00:00.000000', 'MATERIAL03', 'Materials Coordinator', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '110620', '2018-08-13 00:00:00.000000', 'MFG05', 'Assembler I', '2019-03-03 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '110626', '2018-08-27 00:00:00.000000', 'MATERIAL03', 'Materials Coordinator', '2018-11-25 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '110627', '2018-08-27 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-08 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '110629', '2018-08-29 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-06 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '110636', '2018-09-24 00:00:00.000000', 'HR03', 'HR Assistant', '2019-01-04 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '110637', '2018-10-08 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-20 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '120003', '2008-01-01 00:00:00.000000', 'ENG34', 'Engineer I, Applications', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '120006', '2008-01-01 00:00:00.000000', 'SALES04', 'Customer Service Representative I', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '2681', '2013-01-27 00:00:00.000000', 'ENG03', 'Engineer I, Design', '2013-02-25 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '2776', '2008-01-01 00:00:00.000000', 'ITD021', 'IT', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '3280', '2013-02-26 00:00:00.000000', 'ITD024', 'IT', '2021-05-27 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '4288', '2013-02-24 00:00:00.000000', 'SALES07', 'Customer Service Representative II', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5467', '2015-08-03 00:00:00.000000', 'IT07', 'Technician, IT', '2017-08-19 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5488', '2012-05-31 00:00:00.000000', 'MFG06', 'Assembler II', '2014-11-02 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5542', '2012-02-15 00:00:00.000000', 'SALES02', 'Regional Sales Manager', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5550', '2014-04-18 00:00:00.000000', 'MATERIAL07', 'Manager, Logistics', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5551', '2012-02-15 00:00:00.000000', 'SALES02', 'Regional Sales Manager', '2019-07-26 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5558', '2012-05-31 00:00:00.000000', 'HR01', 'HR Generalist Sr', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5564', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5587', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5601', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5628', '2012-04-08 00:00:00.000000', 'HR02', 'HR Generalist', '2013-03-10 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '5630', '2014-04-18 00:00:00.000000', 'ENG46', 'Sales Engineer', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5685', '2012-07-08 00:00:00.000000', 'MFG05', 'Assembler I', '1999-01-01 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5693', '2012-07-15 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2', '', 0, ''),
('US0100', '5695', '2012-07-01 00:00:00.000000', 'SALES02', 'Regional Sales Manager', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, ''),
('US0100', '8731', '2013-02-24 00:00:00.000000', 'MAGR8', 'Manager', '1999-12-31 00:00:00.000000', 'Active', '1', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_part`
--

CREATE TABLE `inventory_part` (
  `ID` int(11) NOT NULL,
  `CONTRACT` varchar(50) NOT NULL,
  `PART_NO` varchar(50) NOT NULL,
  `PART_STATUS` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `OBJKEY` varchar(50) NOT NULL,
  `OBJVERSION` float NOT NULL,
  `OBJID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_part`
--

INSERT INTO `inventory_part` (`ID`, `CONTRACT`, `PART_NO`, `PART_STATUS`, `DESCRIPTION`, `OBJKEY`, `OBJVERSION`, `OBJID`) VALUES
(1, '', '0RW25797', 'O', 'OBS HEATER', '', 0, ''),
(2, '', '100', 'O', 'OBS Flex Double Layer', '', 0, ''),
(3, '', '105', 'O', 'OBS Coil No Circuitry', '', 0, ''),
(4, '', '110', 'O', 'OBS Coil Single-Layer', '', 0, ''),
(5, '', '115', 'O', 'OBS Coil Double-Layer', '', 0, ''),
(6, '', '120', 'O', 'OBS Coil Multi-Layer', '', 0, ''),
(7, '', '125', 'O', 'OBS Coil Rigid-Flex', '', 0, ''),
(8, '', '130', 'O', 'OBS Coil Assembly', '', 0, ''),
(9, '', '135', 'O', 'OBS Flex Multi-Layer', '', 0, ''),
(10, '', '140', 'O', 'OBS Flex Rigid', '', 0, ''),
(11, '', '145', 'O', 'OBS Flex Assembly', '', 0, ''),
(12, '', '150', 'O', 'OBS Flex No Circuitry', '', 0, ''),
(13, '', '155', 'O', 'OBS Flex Single-Layer', '', 0, ''),
(14, '', '3010', 'O', 'OBS Instrumentation - Meter', '', 0, ''),
(15, '', '325', 'O', 'OBS Humidity', '', 0, ''),
(16, '', '400', 'O', 'Coil in Bore', '', 0, ''),
(17, '', '460', 'O', 'OBS Windscreen Thermistor', '', 0, ''),
(18, '', 'A10059', 'O', 'OBS see AC100375 TEFLON ENCAPSULATION FOR PROBE TYPE', '', 0, ''),
(19, '', 'A1012610.25', 'O', 'OBS /W A10126A0 Case SST .25OD', '', 0, ''),
(20, '', 'A1012611.25', 'O', 'OBS /W A10126A0 Case SST .25OD', '', 0, ''),
(21, '', 'A1012615.25', 'O', 'OBS /W A10126A0 Case SST .25OD', '', 0, ''),
(22, '', 'A1012616.25', 'O', 'OBS /W A10126A0 Case SST .25OD', '', 0, ''),
(23, '', 'A101263.75', 'O', 'OBS /W A10126A0 Case SST .25OD', '', 0, ''),
(24, '', 'A10215L409W1094', 'O', 'OBS Stator Cover EPYGL .093', '', 0, ''),
(25, '', 'A10300L15W1018', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(26, '', 'A10300L15W827', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(27, '', 'A10300L190W1160', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(28, '', 'A10300L190W1200', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(29, '', 'A10300L190W1280', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(30, '', 'A10300L190W1290', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(31, '', 'A10300L190W1360', 'O', 'OBS Cover EPYGL .022', '', 0, ''),
(32, '', 'A10300L190W1450', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(33, '', 'A10300L190W1500', 'O', 'OBS Stator Cover EPYGL .022', '', 0, ''),
(34, '', 'A10882L400W1900', 'O', 'OBS Stator Cover EPYGL .062', '', 0, ''),
(35, '', 'A10882L450W1900', 'O', 'OBS Stator Cover EPYGL .062', '', 0, ''),
(36, '', 'AC103224AH849O1S', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(37, '', 'AC103224AH849S1H', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(38, '', 'AC103224AH849S1KK', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(39, '', 'AC103224AH849S1NT', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(40, '', 'AC103224AH849S1S', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(41, '', 'AC103224AH849W1KK', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(42, '', 'AC103224AH880N25NT120FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(43, '', 'AC103224AH880S25EN60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(44, '', 'AC103224AH880S25NT120FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(45, '', 'AC103224AH880S25NT60FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(46, '', 'AC103224AH880S25S60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(47, '', 'AC103224AH885DN25EN60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(48, '', 'AC103224AH885DN25NT120FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, ''),
(49, '', 'AC103224D1S20AT1', 'O', 'OBS ASSEMBLY CHARGE VARIABLE', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_routing`
--
ALTER TABLE `approval_routing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `company_emp`
--
ALTER TABLE `company_emp`
  ADD PRIMARY KEY (`PERSON_ID`);

--
-- Indexes for table `emp_job_assign`
--
ALTER TABLE `emp_job_assign`
  ADD PRIMARY KEY (`EMP_NO`);

--
-- Indexes for table `inventory_part`
--
ALTER TABLE `inventory_part`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_routing`
--
ALTER TABLE `approval_routing`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `inventory_part`
--
ALTER TABLE `inventory_part`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
