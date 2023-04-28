-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 09:26 AM
-- Server version: 10.4.24-MariaDB

-- Database: `qlhv`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_code` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_code`, `user_name`, `password`, `status`) VALUES
(1, 'tudinhle100@gmail.com', 'cacancap777', b'1'),
(2, 'test@gmail.com', 'cacancap777', b'0'),
(29, '1', '1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_desc` varchar(100) DEFAULT NULL,
  `course_duration` int(11) DEFAULT NULL,
  `course_fee` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `course_created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `course_desc`, `course_duration`, `course_fee`, `status`, `course_created_date`) VALUES
(1, 'Ruby On Rail', '', 2000, 3000, b'1', '2023-04-02 17:13:07'),
(2, 'Java', 'Cấp chứng chỉ', 3000, 2, b'1', '2023-04-03 17:13:07'),
(3, 'Vue Js cơ bản', 'Hỗ trợ xin việc', 1800, 2000, b'1', '2023-04-18 17:13:07'),
(4, 'Ruby on Rail Nâng cao', 'khó học', 24000, 4, b'1', '2023-04-27 17:13:07'),
(6, 'Git/Git lab cơ bản', 'miễn phí khi mua 1 khóa bất kì', 45, NULL, b'0', '2023-04-14 17:13:07'),
(7, 'Cấu trúc dữ liệu giải thuật', 'khó học', 2000, 100, b'0', '2023-04-09 17:13:07'),
(51, 'Html,css cơ bản', 'dành cho người mới', 5000, 50, b'1', '2023-04-25 17:13:07'),
(52, 'Next js cơ bản', '', 3000, 100, b'1', '2023-04-01 17:13:07'),
(55, 'PHP', '', 30, 200, b'1', '2023-04-17 03:11:06'),
(56, 'Python', '', 120, 500, b'1', '2023-04-17 03:11:57'),
(57, 'SQL', '', 12000, 57, b'1', '2023-04-17 03:12:28'),
(58, 'Javascript', '', 1800, 2000, b'1', '2023-04-17 03:13:17'),
(59, 'Boostrap', '', 18000, 5000, b'1', '2023-04-17 03:15:09'),
(60, 'ko co sinh vien', '', 1000, 2000, b'1', '2023-04-24 05:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_code` int(11) NOT NULL,
  `student_code` int(11) NOT NULL,
  `course_code` int(11) NOT NULL,
  `enrollment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_code`, `student_code`, `course_code`, `enrollment_date`) VALUES
(1, 292, 3, '2023-04-18'),
(2, 302, 3, '2023-04-02'),
(3, 838, 6, '2023-04-20'),
(4, 1393, 7, '2023-04-19'),
(5, 2929, 52, '2023-04-18'),
(6, 439, 7, '2023-04-19'),
(7, 439, 4, '2023-04-19'),
(8, 2929, 4, '2023-04-20'),
(9, 2929, 57, '2023-04-20'),
(10, 1393, 58, '2023-04-11'),
(11, 939, 52, '2023-04-20'),
(12, 939, 6, '2023-04-20'),
(13, 939, 57, '2023-04-12'),
(14, 3022, 57, '2023-04-03'),
(15, 100000004, 59, '2023-04-04'),
(16, 439, 6, '2023-04-02'),
(17, 1393, 52, '2023-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_code` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_code`, `full_name`, `date_of_birth`, `phone_number`, `gmail`, `status`, `sex`) VALUES
(292, 'Nguyên Lệ Chi', '2023-04-05', '+84292939393', '', b'1', b'0'),
(302, 'Vũ Văn Cườngg', '2023-03-01', '+84029299233', '', b'0', b'1'),
(439, 'Lưu Huy Hiếu', '2003-02-24', '+84304982920', '', b'1', b'0'),
(838, 'Hoàng Hồ Gia Khánh', '2023-03-14', '+84020020222', '', b'1', b'1'),
(939, 'Vũ Trọng Hoàng', '2023-04-12', '+84292929292', '', b'1', b'1'),
(1393, 'Nguyễn Trà My', '2023-04-05', '+84292939393', '', b'1', b'1'),
(2929, 'phạm phương nam', '2023-04-04', '+8492929299', 'test@gmail.com', b'1', b'1'),
(3022, 'Phạm Quang Núi', '2003-03-14', '+84029299292', '', b'1', b'0'),
(3029, 'Vũ Phúc Văn', '2023-03-01', '+84029299233', '', b'1', b'1'),
(3930, 'Mực Kho Tàu', '2003-10-01', '+84302929942', '', b'1', b'1'),
(9292, 'Hoàng Huy Hiếu', '2023-04-05', '+84828299222', '', b'0', b'1'),
(29298, 'Hoàng Liên', '2023-03-01', '+84029299233', '', b'1', b'1'),
(30300, 'Thanh Trà', '2023-03-14', '+84029299299', '', b'1', b'0'),
(30302, 'Phạm Huy Hoàng', '2003-03-14', '+84020202029', '', b'1', b'1'),
(393303, 'Lê Đình Tú', '2003-12-21', '+84030929202', '', b'1', b'1'),
(100000001, 'test 1', '2023-04-06', '+840209292', 'test@gmai.com', b'1', b'0'),
(100000002, 'Nguyễn Thị Thương', '2003-04-18', '0343310165', 'annhi18042@gmail.com', b'1', b'0'),
(100000003, 'Phan Thị Thưởng', '2003-07-16', '0358278192', 'phanthuong@gmail.com\n', b'1', b'0'),
(100000004, 'Nguyễn Như Thương', '2006-09-17', '0367287293', 'nhuthuong@gmail.com\n', b'1', b'0'),
(100000005, 'Nguyễn Thị Hồng', '2003-01-10', '0313310657', 'nguyenhong@gmail.com', b'1', b'0'),
(100000006, 'test 2', '2023-04-13', '0234213241', 'test2@gmail.com', b'1', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_code`) USING BTREE;

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`) USING BTREE;

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_code`) USING BTREE,
  ADD KEY `student_code` (`student_code`) USING BTREE,
  ADD KEY `course_code` (`course_code`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_code`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000011;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_code`) REFERENCES `student` (`student_code`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
