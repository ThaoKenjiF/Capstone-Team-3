-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2021 at 01:56 AM
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
  `ID` int(11) NOT NULL,
  `LU_NAME` varchar(50) NOT NULL,
  `KEY_REF` varchar(250) NOT NULL,
  `STEP_NO` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `APP_DATE` timestamp(6) NULL DEFAULT NULL,
  `NOTE` varchar(1000) DEFAULT NULL,
  `PREV_APPROVAL_DATE` timestamp(6) NULL DEFAULT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `APPROVAL_STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval_routing`
--

INSERT INTO `approval_routing` (`ID`, `LU_NAME`, `KEY_REF`, `STEP_NO`, `DESCRIPTION`, `APP_DATE`, `NOTE`, `PREV_APPROVAL_DATE`, `PERSON_ID`, `APPROVAL_STATUS`) VALUES
(1, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3166110^DOC_REV=()^DOC_SHEET=1^', '10', 'QA - Initiate', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '110620', 'Rejected'),
(2, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3151765^DOC_REV=()^DOC_SHEET=1^', '60', '2nd Eng- ECO review 2nd signature', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '110618', 'Pending'),
(3, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3153651^DOC_REV=()^DOC_SHEET=1^', '60', '2nd Eng- ECO review 2nd signature', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100794', ' Rejected '),
(4, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3143208^DOC_REV=()^DOC_SHEET=1^', '50', 'Tech Writer - Process ECO', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100001', 'Approved   '),
(5, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2448^DOC_REV=()^DOC_SHEET=1^', '140', 'Create Customer Order', '2021-01-19 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '100304', 'Approved '),
(6, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3156111^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Delete if initiator', '2021-01-04 00:00:00.000000', NULL, '2021-01-05 00:00:00.000000', '100800', 'Approved   '),
(7, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3151083^DOC_REV=()^DOC_SHEET=1^', '50', 'Initiator to review', '2021-01-04 00:00:00.000000', NULL, '2021-01-04 00:00:00.000000', '100001', 'Approved  '),
(8, 'MrbHead', 'MRB_NUMBER=4926^', '50', 'Initiator close MRB', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '110637', 'Approved  '),
(10, 'InventoryPart', 'CONTRACT=100^PART_NO=E2B237231^', '110', 'Finance - NPI Review Cost', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100794', 'Approved '),
(11, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3162767^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Review and Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100013', 'Approved '),
(12, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3162126^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Delete if initiator', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100013', 'Approved '),
(13, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '140', 'Create Customer Order', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100304', 'Approved '),
(14, 'CustomerInfo', 'CUSTOMER_ID=186935^', '50', 'CSR approve cust master; enter order', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100615', 'Approved'),
(15, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '130', 'Create shop order, Notify Planner', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100304', 'Rejected'),
(16, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '120', 'Request lead time', '2021-01-20 00:00:00.000000', '1/19 email LT', '2021-01-20 00:00:00.000000', '100304', 'Approved '),
(17, 'InventoryPart', 'CONTRACT=100^PART_NO=AS5005PD700Z2ACALA^', '40', 'Snsr/Inst Eng coordinator- Inactive', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '110618', 'Approved   '),
(18, 'DocIssue', 'DOC_CLASS=585^DOC_NO=3151807^DOC_REV=A^DOC_SHEET=1^', '30', 'Review & Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100453', 'Approved  '),
(19, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3141290^DOC_REV=()^DOC_SHEET=1^', '50', 'Planner-Review Tooling in IFS', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100933', 'Approved'),
(20, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3161837^DOC_REV=()^DOC_SHEET=1^', '50', 'Planner-Review Tooling in IFS', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100933', 'Approved'),
(21, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3164965^DOC_REV=()^DOC_SHEET=1^', '40', 'Eng-Approve Disposition', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100678', 'Approved '),
(22, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3160419^DOC_REV=()^DOC_SHEET=1^', '10', 'Cognizant Engineer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103107', 'Approved'),
(23, 'DocIssue', 'DOC_CLASS=735^DOC_NO=3165954^DOC_REV=()^DOC_SHEET=1^', '45', 'Prod Lead Approval_Delete if sup apprv', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100678', 'Approved '),
(25, 'DocIssue', 'DOC_CLASS=585^DOC_NO=3151807^DOC_REV=A^DOC_SHEET=1^', '20', 'Review & Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '102231', 'Approved '),
(26, 'DocIssue', 'DOC_CLASS=735^DOC_NO=3165954^DOC_REV=()^DOC_SHEET=1^', '40', 'QE Approval_Delete if QTech approves', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '102323', 'Approved '),
(27, 'DocIssue', 'DOC_CLASS=580^DOC_NO=2984828^DOC_REV=()^DOC_SHEET=1^', '30', 'Release Doc', '2021-01-20 00:00:00.000000', NULL, '2019-11-18 00:00:00.000000', '120003', 'Approved '),
(28, 'NonConformanceReport', 'NCR_NO=1409^', '60', 'QA Review & Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100265', 'Approved'),
(29, 'NonConformanceReport', 'NCR_NO=1409^', '10', 'Initiate Approval Routing', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100265', 'Approved'),
(30, 'InventoryPart', 'CONTRACT=100^PART_NO=HSFK229346^', '255', 'EC - Release to Technician/Status Q', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100259', 'Approved'),
(31, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3166308^DOC_REV=()^DOC_SHEET=1^', '10', 'QA-Initiate', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '104058', 'Approved'),
(32, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3166112^DOC_REV=()^DOC_SHEET=1^', '10', 'QA - Initiate', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103749', 'Approved'),
(33, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3166110^DOC_REV=()^DOC_SHEET=1^', '10', 'QA - Initiate', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103749', 'Approved'),
(34, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3162767^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Review and Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '104118', 'Approved'),
(35, 'InventoryPart', 'CONTRACT=100^PART_NO=272-237281^', '20', 'Buyer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100527', 'Approved'),
(36, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3165792^DOC_REV=()^DOC_SHEET=1^', '100', 'Release Documents', '2021-01-20 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '100259', 'Approved'),
(37, 'InventoryPart', 'CONTRACT=100^PART_NO=HSFAP236652^', '110', 'DE - Output Review/Sign off', '2021-01-20 00:00:00.000000', NULL, '2021-01-19 00:00:00.000000', '103022', 'Approved'),
(38, 'InventoryPart', 'CONTRACT=100^PART_NO=S236012PXPX^', '180', 'TSCS Design Eng (1st Run Meeting)', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100060', 'Approved'),
(39, 'DocIssue', 'DOC_CLASS=701^DOC_NO=3162126^DOC_REV=()^DOC_SHEET=1^', '20', 'MFG Eng - Delete if initiator', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100069', 'Approved'),
(40, 'DocIssue', 'DOC_CLASS=A2600^DOC_NO=3162248^DOC_REV=()^DOC_SHEET=1^', '20', 'Acknowledgement of Training', '2021-01-20 00:00:00.000000', NULL, '2021-01-12 00:00:00.000000', '103716', 'Approved'),
(41, 'DocIssue', 'DOC_CLASS=A2600^DOC_NO=3162218^DOC_REV=()^DOC_SHEET=1^', '20', 'Acknowledgement of Training', '2021-01-20 00:00:00.000000', NULL, '2021-01-12 00:00:00.000000', '100794', 'Approved'),
(42, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '140', 'Create Customer Order', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100294', 'Approved'),
(43, 'InventoryPart', 'CONTRACT=100^PART_NO=E2C237116^', '75', 'DE - Complete IFS Structures & Routings', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103905', 'Approved'),
(44, 'CustomerInfo', 'CUSTOMER_ID=186935^', '50', 'CSR approve cust master; enter order', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100615', 'Approved'),
(45, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '130', 'Create shop order, Notify Planner', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100294', 'Approved'),
(46, 'DocIssue', 'DOC_CLASS=842^DOC_NO=SEO-2436^DOC_REV=()^DOC_SHEET=1^', '120', 'Request lead time', '2021-01-20 00:00:00.000000', '1/19 email LT', '2021-01-20 00:00:00.000000', '100294', 'Approved'),
(47, 'DocIssue', 'DOC_CLASS=866^DOC_NO=3162971^DOC_REV=()^DOC_SHEET=1^', '2', 'Process Engineer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103913', 'Approved'),
(48, 'DocIssue', 'DOC_CLASS=866^DOC_NO=3162980^DOC_REV=()^DOC_SHEET=1^', '2', 'Process Engineer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103913', 'Approved'),
(49, 'InventoryPart', 'CONTRACT=100^PART_NO=AS5005PD700Z2ACALA^', '40', 'Snsr/Inst Eng coordinator- Inactive', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100309', 'Approved'),
(50, 'DocIssue', 'DOC_CLASS=585^DOC_NO=3151807^DOC_REV=A^DOC_SHEET=1^', '30', 'Review & Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103491', 'Approved'),
(53, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3141290^DOC_REV=()^DOC_SHEET=1^', '50', 'Planner-Review Tooling in IFS', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100933', 'Approved'),
(54, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3161837^DOC_REV=()^DOC_SHEET=1^', '50', 'Planner-Review Tooling in IFS', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100069', 'Approved'),
(55, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3164965^DOC_REV=()^DOC_SHEET=1^', '40', 'Eng-Approve Disposition', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100397', 'Approved'),
(56, 'InventoryPart', 'CONTRACT=100^PART_NO=HSR232307^', '340', 'EC - Schedule PBR when Receive Notice', '2021-01-20 00:00:00.000000', 'FR 11/30', '2021-01-20 00:00:00.000000', '100069', 'Approved'),
(57, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3160419^DOC_REV=()^DOC_SHEET=1^', '10', 'Cognizant Engineer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103107', 'Approved'),
(58, 'InventoryPart', 'CONTRACT=100^PART_NO=217-237283^', '20', 'Buyer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100527', 'Approved'),
(59, 'InventoryPart', 'CONTRACT=100^PART_NO=HSFK229346^', '245', 'DE - Output Review/Sign off', '2021-01-20 00:00:00.000000', 'There is an ECO that I have signed off on too.', '2021-01-20 00:00:00.000000', '102715', 'Approved'),
(60, 'InventoryPart', 'CONTRACT=100^PART_NO=HSFK229346^', '240', 'DE - Prototype Release Mtg', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '102715', 'Approved'),
(61, 'InventoryPart', 'CONTRACT=100^PART_NO=HSFK229346^', '235', 'DE - IFS Review/Sign Off', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '102715', 'Approved'),
(62, 'InventoryPart', 'CONTRACT=100^PART_NO=287-237288^', '20', 'Buyer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100527', 'Approved'),
(63, 'DocIssue', 'DOC_CLASS=735^DOC_NO=3165954^DOC_REV=()^DOC_SHEET=1^', '45', 'Prod Lead Approval_Delete if sup apprv', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100069', 'Approved'),
(64, 'InventoryPart', 'CONTRACT=100^PART_NO=AS202172TTU54SAC1C22J^', '50', 'Snsr/Inst Eng coordinator- Inactive', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100309', 'Approved'),
(65, 'InventoryPart', 'CONTRACT=100^PART_NO=259-237282^', '20', 'Buyer', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100527', 'Approved'),
(66, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3164965^DOC_REV=()^DOC_SHEET=1^', '30', 'QA-Disposition ECO', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '104058', 'Approved'),
(67, 'DocIssue', 'DOC_CLASS=585^DOC_NO=3151807^DOC_REV=A^DOC_SHEET=1^', '20', 'Review & Approve', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100355', 'Approved'),
(68, 'DocIssue', 'DOC_CLASS=585^DOC_NO=3151807^DOC_REV=A^DOC_SHEET=1^', '10', 'Initiate Approval Routing', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103749', 'Approved'),
(69, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3162453^DOC_REV=()^DOC_SHEET=1^', '30', 'Snsr/Inst: Drafter', '2021-01-20 00:00:00.000000', 'See Will\'s Email attached', '2021-01-20 00:00:00.000000', '103748', 'Approved'),
(70, 'InventoryPart', 'CONTRACT=100^PART_NO=HSK226242 DRILLED COVER^', '30', 'HEMI Team Audit', '2021-01-20 00:00:00.000000', 'Missed the inventory part approval when I sent the ECO for HEMI review. Please go ahead and approve.', '2021-01-20 00:00:00.000000', '110620', 'Approved '),
(71, 'InventoryPart', 'CONTRACT=100^PART_NO=HSK226242 WIRE^', '30', 'HEMI Team Audit', '2021-01-20 00:00:00.000000', 'Missed the inventory part approval when I sent the ECO for HEMI review. Please go ahead and approve.', '2021-01-20 00:00:00.000000', '100246', 'Approved'),
(73, 'InventoryPart', 'CONTRACT=100^PART_NO=HSK226242 LAMINATED^', '30', 'HEMI Team Audit', '2021-01-20 00:00:00.000000', 'Missed the inventory part approval when I sent the ECO for HEMI review. Please go ahead and approve.', '2021-01-20 00:00:00.000000', '100246', 'Approved'),
(74, 'InventoryPart', 'CONTRACT=100^PART_NO=HSK226242 CABLE^', '30', 'HEMI Team Audit', '2021-01-20 00:00:00.000000', 'Missed the inventory part approval when I sent the ECO for HEMI review. Please go ahead and approve.', '2021-01-20 00:00:00.000000', '100246', 'Approved'),
(75, 'DocIssue', 'DOC_CLASS=700^DOC_NO=3163053^DOC_REV=()^DOC_SHEET=1^', '290', 'Make changes to AI', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '100794', 'Approved'),
(76, 'DocIssue', 'DOC_CLASS=735^DOC_NO=3165954^DOC_REV=()^DOC_SHEET=1^', '40', 'QE Approval_Delete if QTech approves', '2021-01-20 00:00:00.000000', NULL, '2021-01-20 00:00:00.000000', '103385', 'Approved'),
(77, 'DocIssue', 'DOC_CLASS=580^DOC_NO=2984828^DOC_REV=()^DOC_SHEET=1^', '30', 'Release Doc', '2021-01-20 00:00:00.000000', NULL, '2019-11-18 00:00:00.000000', '103455', 'Approved'),
(136, 'NonConformanceReport', 'CONTRACT=100^PART_NO=370-C1000R^', '10', 'Create Customer Order', '2021-04-18 00:43:18.000000', 'Test', '2021-04-18 00:43:18.000000', '100794', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `company_emp`
--

CREATE TABLE `company_emp` (
  `ID` int(11) NOT NULL,
  `COMPANY` varchar(50) NOT NULL,
  `PERSON_ID` varchar(50) NOT NULL,
  `EXPIRE_DATE` varchar(50) DEFAULT NULL,
  `ROWKEY` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_emp`
--

INSERT INTO `company_emp` (`ID`, `COMPANY`, `PERSON_ID`, `EXPIRE_DATE`, `ROWKEY`, `FNAME`, `LNAME`) VALUES
(2, 'US0100', '100001', NULL, 'AAATS+AAHAAACwsAB3', 'Madeleine', 'Kelly'),
(10, 'US0100', '100013', NULL, 'AAATS+AABAAMt9wABH', 'Karen', 'Taylor'),
(19, 'US0100', '100031', NULL, 'AAATS+AAHAAACwsACI', 'Faith', 'Coleman'),
(26, 'US0100', '100051', '29-Jan-08', 'AAATS+AAHAAACwtAA6', 'Amelia', 'Rampling'),
(27, 'US0100', '100052', '3-Jun-09', 'AAATS+AAHAAACwtACl', 'Lucas', 'Quinn'),
(28, 'US0100', '100058', '28-Aug-20', 'AAATS+AAHAAACwtABN', 'Brandon', 'Turner'),
(29, 'US0100', '100061', NULL, 'AAATS+AAHAAACwuAAg', 'Christian', 'Walker'),
(30, 'US0100', '100065', '30-Mar-11', 'AAATS+AAHAAACwtAAl', 'Alexandra', 'McGrath'),
(31, 'US0100', '100067', '22-Aug-13', 'AAATS+AAHAAACwtACB', 'Warren', 'Wilkins'),
(32, 'US0100', '100069', '12-Sep-16', 'AAATS+AAHAAACwsABT', 'Paul', 'Cameron'),
(33, 'US0100', '100070', '1-Oct-07', 'AAATS+AAHAAACwuABC', 'Cameron', 'Fisher'),
(34, 'US0100', '100072', '23-Apr-12', 'AAATS+AAHAAACwsADh', 'Grace', 'Slater'),
(35, 'US0100', '100076', '3-Jun-09', 'AAATS+AAHAAACwsADe', 'Sophie', 'Anderson'),
(36, 'US0100', '100079', NULL, 'AAATS+AAHAAACwtAB3', 'Bella', 'Ball'),
(37, 'US0100', '100080', NULL, 'AAATS+AAHAAACwtAAx', 'Bella', 'Peters'),
(38, 'US0100', '100081', '17-Jan-12', 'AAATS+AAHAAACwtADc', 'Keith', 'Watson'),
(39, 'US0100', '100082', NULL, 'AAATS+AAHAAACwuAAQ', 'Rose', 'May'),
(40, 'US0100', '100083', NULL, 'AAATS+AAHAAACwsABy', 'Isaac', 'Thomson'),
(41, 'US0100', '100084', '1-Oct-07', 'AAATS+AAHAAACwsABY', 'Emma', 'Nolan'),
(42, 'US0100', '100088', '11-Jan-11', 'AAATS+AAHAAACwsABl', 'Yvonne', 'Wright'),
(43, 'US0100', '100090', '28-Jan-08', 'AAATS+AAHAAACwuABZ', 'Steven', 'MacDonald'),
(44, 'US0100', '100091', NULL, 'AAATS+AAHAAACwsACb', 'Nicola', 'Scott'),
(45, 'US0100', '100092', '22-Nov-13', 'AAATS+AAHAAACwsAAW', 'Diane', 'Coleman'),
(46, 'US0100', '100095', '16-Sep-09', 'AAATS+AAHAAACwsAAS', 'Amelia', 'Walsh'),
(47, 'US0100', '100100', NULL, 'AAATS+AAHAAACwsACr', 'Wendy', 'Mitchell'),
(48, 'US0100', '100102', NULL, 'AAATS+AAHAAACwtAB7', 'Bella', 'McLean'),
(49, 'US0100', '100103', NULL, 'AAATS+AAHAAACwsACV', 'Connor', 'Clarkson'),
(59, 'US0100', '100120', NULL, 'AAATS+AAHAAACwtAAD', 'Theresa', 'Gibson'),
(101, 'US0100', '100218', NULL, 'AAATS+AAHAAACwtABF', 'Theresa', 'Dickens'),
(102, 'US0100', '100220', NULL, 'AAATS+AAHAAACwtAAJ', 'Tim', 'McDonald'),
(106, 'US0100', '100237', NULL, 'AAATS+AAHAAACwsABn', 'Owen', 'Walker'),
(137, 'US0100', '100304', NULL, 'AAATS+AAHAAACwsAAw', 'Victoria', 'McGrath'),
(143, 'US0100', '100318', NULL, 'AAATS+AAHAAACwsACp', 'Kevin', 'Metcalfe'),
(146, 'US0100', '100329', NULL, 'AAATS+AAHAAACwtAAV', 'Jennifer', 'Henderson'),
(148, 'US0100', '100334', NULL, 'AAATS+AAHAAACwtAAa', 'Sally', 'Duncan'),
(158, 'US0100', '100367', NULL, 'AAATS+AAHAAACwtAAe', 'Isaac', 'Turner'),
(189, 'US0100', '100453', NULL, 'AAATS+AAHAAACwsADY', 'Gabrielle', 'Pullman'),
(227, 'US0100', '100555', NULL, 'AAATS+AAHAAACwtACr', 'Adam', 'Taylor'),
(246, 'US0100', '100615', NULL, 'AAATS+AAHAAACwtABC', 'Lily', 'Churchill'),
(264, 'US0100', '100678', NULL, 'AAATS+AAHAAACwsACx', 'Sarah', 'Jackson'),
(281, 'US0100', '100731', NULL, 'AAATS+AAHAAACwsADg', 'Victoria', 'Piper'),
(296, 'US0100', '100783', '22-Oct-07', 'AAATS+AAHAAACwtACF', 'Heather', 'Dowd'),
(297, 'US0100', '100786', '1-Oct-07', 'AAATS+AAHAAACwuABW', 'Ryan', 'Oliver'),
(298, 'US0100', '100790', '26-Feb-16', 'AAATS+AAHAAACwtAB/', 'Zoe', 'Underwood'),
(299, 'US0100', '100793', NULL, 'AAATS+AAHAAACwtABV', 'Anna', 'Mitchell'),
(300, 'US0100', '100794', '21-Mar-14', 'AAATS+AAHAAACwtADL', 'Amanda', 'Avery'),
(301, 'US0100', '100798', NULL, 'AAATS+AAHAAACwuAAh', 'Lillian', 'Burgess'),
(302, 'US0100', '100800', NULL, 'AAATS+AAHAAACwtAAT', 'Emma', 'Alsop'),
(303, 'US0100', '100801', '12-Apr-12', 'AAATS+AAHAAACwsABZ', 'Joseph', 'Stewart'),
(304, 'US0100', '100804', '5-May-08', 'AAATS+AAHAAACwtABq', 'Wendy', 'Fisher'),
(305, 'US0100', '100805', '9-May-08', 'AAATS+AAHAAACwsAA2', 'Gabrielle', 'Scott'),
(313, 'US0100', '100829', NULL, 'AAATS+AAHAAACwsADH', 'Nathan', 'Metcalfe'),
(336, 'US0100', '100892', NULL, 'AAATS+AAHAAACwtAAK', 'Alexander', 'Metcalfe'),
(344, 'US0100', '100906', NULL, 'AAATS+AAHAAACwtAAq', 'Cameron', 'Clark'),
(361, 'US0100', '100942', NULL, 'AAATS+AAHAAACwuACU', 'Andrea', 'Newman'),
(405, 'US0100', '102104', NULL, 'AAATS+AAHAAACwrAAW', 'Andrew', 'Peake'),
(536, 'US0100', '102508', '26-Jul-19', 'AAATS+AABAAMt9yACt', 'Christian', 'Marshall'),
(537, 'US0100', '102520', '27-Apr-12', 'AAATS+AABAAMt9zACN', 'Victoria', 'Russell'),
(538, 'US0100', '102542', '17-Feb-12', 'AAATS+AABAAMt9zACw', 'Michael', 'Hemmings'),
(539, 'US0100', '102556', '5-Apr-12', 'AAATS+AABAAMt9wAC8', 'Stewart', 'Wilkins'),
(545, 'US0100', '103069', NULL, 'AAATS+AABAAMt90ABm', 'Heather', 'Lawrence'),
(568, 'US0100', '110618', NULL, 'AAATS+AABAAMt96ACd', 'Jacob', 'Avery'),
(569, 'US0100', '110620', '9-Dec-19', 'AAATS+AABAAMt97AB/', 'Fiona', 'Tucker'),
(570, 'US0100', '110626', '25-Nov-18', 'AAATS+AABAAMt98ABv', 'Elizabeth', 'Sanderson'),
(572, 'US0100', '110629', '6-Jan-19', 'AAATS+AABAAMt97ACC', 'Adam', 'Davidson'),
(574, 'US0100', '110637', NULL, 'AAATS+AABAAMt95ABD', 'Sally', 'Avery'),
(575, 'US0100', '120003', NULL, 'AAATS+AABAAMt91AC1', 'Ruth', 'Hamilton'),
(576, 'US0100', '120006', NULL, 'AAATS+AABAAMt91AC8', 'Sue', 'Mills');

-- --------------------------------------------------------

--
-- Table structure for table `emp_job_assign`
--

CREATE TABLE `emp_job_assign` (
  `ID` int(11) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL,
  `EMPLOYEE_ID` varchar(50) NOT NULL,
  `VALID_FROM` datetime(6) NOT NULL,
  `JOB_ID` varchar(50) NOT NULL,
  `JOB_TITLE` varchar(50) NOT NULL,
  `VALID_TO` datetime(6) NOT NULL,
  `EMPLOYEE_STATUS` varchar(50) NOT NULL,
  `EMPLOYEE_STATUS_SEQ_NO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_job_assign`
--

INSERT INTO `emp_job_assign` (`ID`, `COMPANY_ID`, `EMPLOYEE_ID`, `VALID_FROM`, `JOB_ID`, `JOB_TITLE`, `VALID_TO`, `EMPLOYEE_STATUS`, `EMPLOYEE_STATUS_SEQ_NO`) VALUES
(14, 'US0100', '100001', '2013-02-26 00:00:00.000000', 'ITD024', 'IT', '2021-05-27 00:00:00.000000', 'Active', '1'),
(15, 'US0100', '100011', '2013-02-24 00:00:00.000000', 'SALES07', 'Customer Service Representative II', '1999-12-31 00:00:00.000000', 'Active', '1'),
(12, 'US0100', '100013', '2013-01-27 00:00:00.000000', 'ENG03', 'Manager', '2013-02-25 00:00:00.000000', 'Active', '1'),
(13, 'US0100', '100015', '2008-01-01 00:00:00.000000', 'ITD021', 'IT', '1999-12-31 00:00:00.000000', 'Terminated', '2'),
(80, 'US0100', '100031', '2015-02-09 00:00:00.000000', 'PLANNER01', 'Planner, Associate', '2017-02-18 00:00:00.000000', 'Active', '1'),
(110, 'US0100', '100069', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2016-09-12 00:00:00.000000', 'Terminated', '2'),
(175, 'US0100', '100120', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2015-11-15 00:00:00.000000', 'Active', '1'),
(33, 'US0100', '100181', '2012-05-30 00:00:00.000000', 'ADMIN01', 'Administrative Assistant, Sr', '2015-12-31 00:00:00.000000', 'Active', '1'),
(225, 'US0100', '100218', '2012-02-15 00:00:00.000000', 'SALES02', 'Regional Sales Manager', '1999-12-31 00:00:00.000000', 'Active', '1'),
(91, 'US0100', '100220', '2015-02-09 00:00:00.000000', 'ENG18', 'Engineer Sr, Process', '2018-02-03 00:00:00.000000', 'Active', '1'),
(112, 'US0100', '100237', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(105, 'US0100', '100304', '2015-08-24 00:00:00.000000', 'MFG22', 'Supervisor, Manufacturing Technician', '2015-10-18 00:00:00.000000', 'Active', '1'),
(117, 'US0100', '100318', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(178, 'US0100', '100329', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(179, 'US0100', '100334', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(180, 'US0100', '100367', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(215, 'US0100', '100453', '2012-05-31 00:00:00.000000', 'MFG08', 'Floater', '2016-02-07 00:00:00.000000', 'Active', '1'),
(189, 'US0100', '100555', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2018-02-03 00:00:00.000000', 'Active', '1'),
(231, 'US0100', '100615', '2012-02-15 00:00:00.000000', 'SALES04', 'Customer Service Representative I', '2015-02-08 00:00:00.000000', 'Active', '1'),
(104, 'US0100', '100678', '2014-08-11 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(174, 'US0100', '100731', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2014-06-15 00:00:00.000000', 'Active', '1'),
(192, 'US0100', '100794', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2014-03-21 00:00:00.000000', 'Terminated', '2'),
(196, 'US0100', '100798', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(173, 'US0100', '100829', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2019-08-16 00:00:00.000000', 'Active', '1'),
(176, 'US0100', '100892', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(181, 'US0100', '100906', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(202, 'US0100', '100942', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '2012-11-01 00:00:00.000000', 'Active', '1'),
(201, 'US0100', '102104', '2012-05-31 00:00:00.000000', 'MFG07', 'Assembler Sr', '1999-12-31 00:00:00.000000', 'Active', '1'),
(20, 'US0100', '102508', '2012-02-15 00:00:00.000000', 'SALES02', 'Manager', '2019-07-26 00:00:00.000000', 'Terminated', '2'),
(22, 'US0100', '102520', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2'),
(23, 'US0100', '102542', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2'),
(24, 'US0100', '102556', '2012-05-31 00:00:00.000000', 'MFG05', 'Assembler I', '1999-12-31 00:00:00.000000', 'Terminated', '2'),
(143, 'US0100', '103069', '2014-03-03 00:00:00.000000', 'EXEC04', 'Director of Business Unit', '2016-12-31 00:00:00.000000', 'Active', '1'),
(2, 'US0100', '110615', '2018-07-27 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-18 00:00:00.000000', 'Terminated', '2'),
(3, 'US0100', '110618', '2018-08-08 00:00:00.000000', 'MATERIAL03', 'Materials Coordinator', '1999-12-31 00:00:00.000000', 'Active', '1'),
(4, 'US0100', '110620', '2018-08-13 00:00:00.000000', 'MFG05', 'Assembler I', '2019-03-03 00:00:00.000000', 'Terminated', '2'),
(5, 'US0100', '110626', '2018-08-27 00:00:00.000000', 'MATERIAL03', 'Materials Coordinator', '2018-11-25 00:00:00.000000', 'Active', '1'),
(6, 'US0100', '110627', '2018-08-27 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-08 00:00:00.000000', 'Terminated', '2'),
(7, 'US0100', '110629', '2018-08-29 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-06 00:00:00.000000', 'Active', '1'),
(8, 'US0100', '110636', '2018-09-24 00:00:00.000000', 'HR03', 'HR Assistant', '2019-01-04 00:00:00.000000', 'Terminated', '2'),
(9, 'US0100', '110637', '2018-10-08 00:00:00.000000', 'MFG05', 'Assembler I', '2019-01-20 00:00:00.000000', 'Active', '1'),
(10, 'US0100', '120003', '2008-01-01 00:00:00.000000', 'ENG34', 'Engineer I, Applications', '1999-12-31 00:00:00.000000', 'Active', '1'),
(11, 'US0100', '120006', '2008-01-01 00:00:00.000000', 'SALES04', 'Customer Service Representative I', '1999-12-31 00:00:00.000000', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_part`
--

CREATE TABLE `inventory_part` (
  `ID` int(11) NOT NULL,
  `CONTRACT` varchar(50) NOT NULL,
  `PART_NO` varchar(50) NOT NULL,
  `PART_STATUS` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_part`
--

INSERT INTO `inventory_part` (`ID`, `CONTRACT`, `PART_NO`, `PART_STATUS`, `DESCRIPTION`) VALUES
(1, '', '0RW25797', 'O', 'OBS HEATER'),
(2, '', '100', 'O', 'OBS Flex Double Layer'),
(3, '', '105', 'O', 'OBS Coil No Circuitry'),
(4, '', '110', 'O', 'OBS Coil Single-Layer'),
(5, '', '115', 'O', 'OBS Coil Double-Layer'),
(6, '', '120', 'O', 'OBS Coil Multi-Layer'),
(7, '', '125', 'O', 'OBS Coil Rigid-Flex'),
(8, '', '130', 'O', 'OBS Coil Assembly'),
(9, '', '135', 'O', 'OBS Flex Multi-Layer'),
(10, '', '140', 'O', 'OBS Flex Rigid'),
(11, '', '145', 'O', 'OBS Flex Assembly'),
(12, '', '150', 'O', 'OBS Flex No Circuitry'),
(13, '', '155', 'O', 'OBS Flex Single-Layer'),
(14, '', '3010', 'O', 'OBS Instrumentation - Meter'),
(15, '', '325', 'O', 'OBS Humidity'),
(16, '', '400', 'O', 'Coil in Bore'),
(17, '', '460', 'O', 'OBS Windscreen Thermistor'),
(18, '', 'A10059', 'O', 'OBS see AC100375 TEFLON ENCAPSULATION FOR PROBE TYPE'),
(19, '', 'A1012610.25', 'O', 'OBS /W A10126A0 Case SST .25OD'),
(20, '', 'A1012611.25', 'O', 'OBS /W A10126A0 Case SST .25OD'),
(21, '', 'A1012615.25', 'O', 'OBS /W A10126A0 Case SST .25OD'),
(22, '', 'A1012616.25', 'O', 'OBS /W A10126A0 Case SST .25OD'),
(23, '', 'A101263.75', 'O', 'OBS /W A10126A0 Case SST .25OD'),
(24, '', 'A10215L409W1094', 'O', 'OBS Stator Cover EPYGL .093'),
(25, '', 'A10300L15W1018', 'O', 'OBS Stator Cover EPYGL .022'),
(26, '', 'A10300L15W827', 'O', 'OBS Stator Cover EPYGL .022'),
(27, '', 'A10300L190W1160', 'O', 'OBS Stator Cover EPYGL .022'),
(28, '', 'A10300L190W1200', 'O', 'OBS Stator Cover EPYGL .022'),
(29, '', 'A10300L190W1280', 'O', 'OBS Stator Cover EPYGL .022'),
(30, '', 'A10300L190W1290', 'O', 'OBS Stator Cover EPYGL .022'),
(31, '', 'A10300L190W1360', 'O', 'OBS Cover EPYGL .022'),
(32, '', 'A10300L190W1450', 'O', 'OBS Stator Cover EPYGL .022'),
(33, '', 'A10300L190W1500', 'O', 'OBS Stator Cover EPYGL .022'),
(34, '', 'A10882L400W1900', 'O', 'OBS Stator Cover EPYGL .062'),
(35, '', 'A10882L450W1900', 'O', 'OBS Stator Cover EPYGL .062'),
(36, '', 'AC103224AH849O1S', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(37, '', 'AC103224AH849S1H', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(38, '', 'AC103224AH849S1KK', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(39, '', 'AC103224AH849S1NT', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(40, '', 'AC103224AH849S1S', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(41, '', 'AC103224AH849W1KK', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(42, '', 'AC103224AH880N25NT120FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(43, '', 'AC103224AH880S25EN60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(44, '', 'AC103224AH880S25NT120FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(45, '', 'AC103224AH880S25NT60FX', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(46, '', 'AC103224AH880S25S60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(47, '', 'AC103224AH885DN25EN60FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(48, '', 'AC103224AH885DN25NT120FI', 'O', 'OBS ASSEMBLY CHARGE VARIABLE'),
(49, '', 'AC103224D1S20AT1', 'O', 'OBS ASSEMBLY CHARGE VARIABLE');

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
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PERSON_ID` (`PERSON_ID`) USING BTREE;

--
-- Indexes for table `emp_job_assign`
--
ALTER TABLE `emp_job_assign`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `company_emp`
--
ALTER TABLE `company_emp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `inventory_part`
--
ALTER TABLE `inventory_part`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
