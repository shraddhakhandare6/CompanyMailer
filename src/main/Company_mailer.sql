use JD32;

CREATE TABLE  COMPANY_MAILER_USER 
   ( NAME varchar(255), EMAIL varchar(255), PASSWORD varchar(255),GENDER varchar(255),DOB DATE, 
	ADDRESSLINE varchar(255),CITY varchar(255),STATE varchar(255), COUNTRY varchar(255),CONTACT varchar(255),
	REGISTEREDDATE DATE, AUTHORIZED varchar(255)
   );

drop table COMPANY_MAILER_USER;
drop table COMPANY_MAILER_MESSAGE;

CREATE TABLE  COMPANY_MAILER_MESSAGE 
   ( SENDER varchar(255), RECEIVER varchar(255), 
	SUBJECT varchar(255), MESSAGE varchar(255), TRASH varchar(255), MESSAGEDATE DATE
   );
select * from COMPANY_MAILER_USER;
select *from COMPANY_MAILER_MESSAGE;
use JD32;
CREATE TABLE  FEE_STUDENT 
   (ROLLNO varchar(255), NAME varchar(255),  EMAIL varchar(255), 
	SEX varchar(255), COURSE varchar(255), FEE double, PAID double, 
	DUE double, ADDRESS varchar(255), CONTACT varchar(255), PRIMARY KEY (ROLLNO) 
   );

CREATE TABLE  FEE_ACCOUNTANT 
   (	ID int, NAME varchar(255),EMAIL varchar(255),PASSWORD varchar(255),
	ADDRESS varchar(255),CONTACT varchar(255),PRIMARY KEY (ID)
   );
   
   select * from FEE_STUDENT;
   select *from FEE_ACCOUNTANT;
   
   
   create database patientmanagementsystem;
   use patientmanagementsystem;
   SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `patientmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE patients (
  id int(10) NOT NULL,
  Name varchar(255) NOT NULL,
  Age varchar(10) NOT NULL,
  Gender varchar(25) NOT NULL,
  Email varchar(255) NOT NULL,
  Phone varchar(25) NOT NULL,
  AadharNo varchar(50) NOT NULL,
  Disease varchar(500) NOT NULL,
  ReportId varchar(50) NOT NULL,
  ReportStatus varchar(2000) NOT NULL,
  Medicine varchar(2000) NOT NULL,
  Note varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table patients;
--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `AadharNo`, `Disease`, `ReportId`, `ReportStatus`, `Medicine`, `Note`) VALUES
(6, 'example5', '6', 'Female', 'example@gmail.com', '234523454', '324534523452345', 'Cough', 'ABC100', '', '', ''),
(7, 'Arjun', '10', 'Male', 'arjun@gmail.com', '9876543210', '1234 5678 9876', 'Fever', 'ABC200', 'Positive', 'Paracetamol', 'Take PCM when you feel your body is fell weak'),
(4, 'Example', '10', 'Male', 'example@gmail.com', '546346356', '32452345234523', 'fever', 'ABC456', '', '', ''),
(5, 'Example', '12', 'Female', 'example@gmail.com', '456245634', '45364543', 'COVID', 'ABC500', 'Negative', 'NA', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--

ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ReportId` (`ReportId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--

ALTER TABLE `patients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
