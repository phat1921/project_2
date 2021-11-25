-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2021 lúc 01:27 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `prj2_fix`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Id_Admin` int(10) UNSIGNED NOT NULL,
  `Name_Admin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DoB` date NOT NULL,
  `Gender` tinyint(4) NOT NULL,
  `Phone_Number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PassWord` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` tinyint(4) NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id_Admin`, `Name_Admin`, `DoB`, `Gender`, `Phone_Number`, `Address`, `Email`, `User_Name`, `PassWord`, `Role`, `Status`) VALUES
(1, 'Đinh Đại Phát', '2001-08-01', 1, '0348935101', 'Tâ Hồ ', 'vkl704531@gmail.com', 'phat1921', '1', 1, 1),
(2, 'Đại', '2001-11-02', 1, '0472645182', 'Ba Đình', 'd2112001@gmail.com', 'dai1921', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `Id_Bill` int(10) UNSIGNED NOT NULL,
  `Id_Bill_Main` int(10) UNSIGNED NOT NULL,
  `Id_Student` int(10) UNSIGNED NOT NULL,
  `Id_Book` int(10) UNSIGNED NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`Id_Bill`, `Id_Bill_Main`, `Id_Student`, `Id_Book`, `Status`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 1, 1),
(3, 2, 3, 2, 0),
(4, 2, 4, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billho`
--

CREATE TABLE `billho` (
  `Id_BillHO` int(10) UNSIGNED NOT NULL,
  `Id_Student` int(10) UNSIGNED NOT NULL,
  `Id_Class` int(10) UNSIGNED NOT NULL,
  `Id_Book` int(10) UNSIGNED NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billho`
--

INSERT INTO `billho` (`Id_BillHO`, `Id_Student`, `Id_Class`, `Id_Book`, `Time`) VALUES
(1, 1, 1, 1, '2021-10-14 13:44:00'),
(2, 2, 1, 1, '2021-10-14 13:44:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billmain`
--

CREATE TABLE `billmain` (
  `Id_Bill_Main` int(10) UNSIGNED NOT NULL,
  `Id_Class` int(10) UNSIGNED NOT NULL,
  `Time` datetime NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billmain`
--

INSERT INTO `billmain` (`Id_Bill_Main`, `Id_Class`, `Time`, `Status`, `availabel`) VALUES
(1, 1, '2021-10-14 13:43:28', 1, 1),
(2, 2, '2021-10-14 13:43:48', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `Id_Book` int(10) UNSIGNED NOT NULL,
  `Name_Book` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Id_Subject` int(10) UNSIGNED NOT NULL,
  `Amount` int(11) NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`Id_Book`, `Name_Book`, `Id_Subject`, `Amount`, `availabel`) VALUES
(1, 'Lập Trình PHP', 1, 98, 1),
(2, 'Lập Trình Python', 2, 90, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classroom`
--

CREATE TABLE `classroom` (
  `Id_Class` int(10) UNSIGNED NOT NULL,
  `Name_Class` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Id_Course` int(10) UNSIGNED NOT NULL,
  `Id_Subject` int(10) UNSIGNED NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classroom`
--

INSERT INTO `classroom` (`Id_Class`, `Name_Class`, `Id_Course`, `Id_Subject`, `availabel`) VALUES
(1, 'BKD01k10', 1, 1, 1),
(2, 'BKN02K11', 2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `Id_Course` int(10) UNSIGNED NOT NULL,
  `Name_Course` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`Id_Course`, `Name_Course`, `availabel`) VALUES
(1, 'k10', 1),
(2, 'k11', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_06_20_064927_course', 1),
(2, '2021_06_20_065221_subject', 1),
(3, '2021_06_20_065245_classroom', 1),
(4, '2021_06_20_065246_book', 1),
(5, '2021_06_20_065421_student', 1),
(6, '2021_06_20_065422_main_bill', 1),
(7, '2021_06_20_065423_bill', 1),
(8, '2021_06_20_065433_admin', 1),
(9, '2021_07_15_072718_add_availabel_to_student', 1),
(10, '2021_07_15_081145_add_availabel_to_classroom_table', 1),
(11, '2021_07_15_131545_add_availabel_to_course_table', 1),
(12, '2021_07_15_132834_add_availabel_to_subject_table', 1),
(13, '2021_07_16_061039_add_availabel_to_book_table', 1),
(14, '2021_08_31_062145_bill_handing_out', 1),
(15, '2021_09_22_140320_add_availabel_to_billmain_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `Id_Student` int(10) UNSIGNED NOT NULL,
  `Name_Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` tinyint(4) NOT NULL,
  `DoB` date NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Id_Class` int(10) UNSIGNED NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`Id_Student`, `Name_Name`, `Gender`, `DoB`, `Email`, `Phone_Number`, `Id_Class`, `availabel`) VALUES
(1, 'Nguyễn Văn A', 1, '2000-02-04', 'nva@gmail.com', '0938274123', 1, 1),
(2, 'Nguyễn Thị B', 0, '2000-06-04', 'ntb@gmail.com', '0481723131', 1, 1),
(3, 'Trần Văn L', 1, '2001-08-12', 'tvl@gmail.com', '0908792135', 2, 1),
(4, 'Nguyễn Thị H', 0, '2001-07-10', 'nth@gmail.com', '0392847164', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `Id_Subject` int(10) UNSIGNED NOT NULL,
  `Name_Subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availabel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`Id_Subject`, `Name_Subject`, `availabel`) VALUES
(1, 'Lập trình', 1),
(2, 'Bảo mật', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_Admin`),
  ADD UNIQUE KEY `admin_phone_number_unique` (`Phone_Number`),
  ADD UNIQUE KEY `admin_email_unique` (`Email`),
  ADD UNIQUE KEY `admin_user_name_unique` (`User_Name`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Id_Bill`),
  ADD KEY `bill_id_bill_main_foreign` (`Id_Bill_Main`),
  ADD KEY `bill_id_student_foreign` (`Id_Student`),
  ADD KEY `bill_id_book_foreign` (`Id_Book`);

--
-- Chỉ mục cho bảng `billho`
--
ALTER TABLE `billho`
  ADD PRIMARY KEY (`Id_BillHO`),
  ADD KEY `billho_id_student_foreign` (`Id_Student`),
  ADD KEY `billho_id_class_foreign` (`Id_Class`),
  ADD KEY `billho_id_book_foreign` (`Id_Book`);

--
-- Chỉ mục cho bảng `billmain`
--
ALTER TABLE `billmain`
  ADD PRIMARY KEY (`Id_Bill_Main`),
  ADD KEY `billmain_id_class_foreign` (`Id_Class`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Id_Book`),
  ADD UNIQUE KEY `book_name_book_unique` (`Name_Book`),
  ADD KEY `book_id_subject_foreign` (`Id_Subject`);

--
-- Chỉ mục cho bảng `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`Id_Class`),
  ADD UNIQUE KEY `classroom_name_class_unique` (`Name_Class`),
  ADD KEY `classroom_id_course_foreign` (`Id_Course`),
  ADD KEY `classroom_id_subject_foreign` (`Id_Subject`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Id_Course`),
  ADD UNIQUE KEY `course_name_course_unique` (`Name_Course`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id_Student`),
  ADD UNIQUE KEY `student_email_unique` (`Email`),
  ADD UNIQUE KEY `student_phone_number_unique` (`Phone_Number`),
  ADD KEY `student_id_class_foreign` (`Id_Class`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Id_Subject`),
  ADD UNIQUE KEY `subject_name_subject_unique` (`Name_Subject`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_Admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `Id_Bill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `billho`
--
ALTER TABLE `billho`
  MODIFY `Id_BillHO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `billmain`
--
ALTER TABLE `billmain`
  MODIFY `Id_Bill_Main` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `Id_Book` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `classroom`
--
ALTER TABLE `classroom`
  MODIFY `Id_Class` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `Id_Course` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `Id_Student` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `Id_Subject` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_id_bill_main_foreign` FOREIGN KEY (`Id_Bill_Main`) REFERENCES `billmain` (`Id_Bill_Main`),
  ADD CONSTRAINT `bill_id_book_foreign` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id_Book`),
  ADD CONSTRAINT `bill_id_student_foreign` FOREIGN KEY (`Id_Student`) REFERENCES `student` (`Id_Student`);

--
-- Các ràng buộc cho bảng `billho`
--
ALTER TABLE `billho`
  ADD CONSTRAINT `billho_id_book_foreign` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id_Book`),
  ADD CONSTRAINT `billho_id_class_foreign` FOREIGN KEY (`Id_Class`) REFERENCES `classroom` (`Id_Class`),
  ADD CONSTRAINT `billho_id_student_foreign` FOREIGN KEY (`Id_Student`) REFERENCES `student` (`Id_Student`);

--
-- Các ràng buộc cho bảng `billmain`
--
ALTER TABLE `billmain`
  ADD CONSTRAINT `billmain_id_class_foreign` FOREIGN KEY (`Id_Class`) REFERENCES `classroom` (`Id_Class`);

--
-- Các ràng buộc cho bảng `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_id_subject_foreign` FOREIGN KEY (`Id_Subject`) REFERENCES `subject` (`Id_Subject`);

--
-- Các ràng buộc cho bảng `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_id_course_foreign` FOREIGN KEY (`Id_Course`) REFERENCES `course` (`Id_Course`),
  ADD CONSTRAINT `classroom_id_subject_foreign` FOREIGN KEY (`Id_Subject`) REFERENCES `subject` (`Id_Subject`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_id_class_foreign` FOREIGN KEY (`Id_Class`) REFERENCES `classroom` (`Id_Class`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
