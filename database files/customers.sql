-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2024 at 02:57 PM
-- Server version: 8.0.36-28
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PHPAJAXOOP`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(103, 'tom hardy', 'uv@gmail.com', '123', 'Mumbai', '2024-10-17 06:15:15', '2024-10-17 06:15:15'),
(11, 'harry potter', 'ivy@example.com', '321-654-9870', '808 Palm St', '2024-10-12 06:52:28', '2024-10-16 06:22:51'),
(12, 'Jack Hill', 'jack@example.com', '234-567-8901', '909 Cedar Ave', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(13, 'Kate Miller', 'kate@example.com', '890-123-4560', '101 Poplar St', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(14, 'Liam Clark', 'liam@example.com', '345-678-9012', '202 Willow St', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(15, 'Mia Evans', 'mia@example.com', '123-678-5432', '303 Magnolia Blvd', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(16, 'Noah Parker', 'noah@example.com', '987-234-8765', '404 Laurel St', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(17, 'Olivia White', 'olivia@example.com', '234-876-4321', '505 Redwood Dr', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(18, 'Paul Brown', 'paul@example.com', '654-789-1234', '606 Maple Ave', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(19, 'Quincy Smith', 'quincy@example.com', '987-654-3212', '707 Birch Rd', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(21, 'Sam Foster', 'sam@example.com', '789-012-3456', '909 Spruce Blvd', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(22, 'Tina Carter', 'tina@example.com', '456-789-0123', '101 Chestnut Ct', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(23, 'Umar Davis', 'umar@example.com', '321-123-6547', '202 Maple Grove', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(24, 'Vera Lewis', 'vera@example.com', '789-567-2341', '303 Oak Meadow', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(26, 'Xena Gray', 'xena@example.com', '234-432-6789', '505 Birchwood', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(27, 'Yara Brooks', 'yara@example.com', '654-321-9874', '606 Cedar Glen', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(28, 'Zack Martin', 'zack@example.com', '876-123-2345', '707 Redwood Park', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(29, 'Adam Young', 'adam@example.com', '234-567-8910', '808 Willow Ln', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(30, 'Bella Hayes', 'bella@example.com', '987-654-2301', '909 Maple Ridge', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(31, 'Caleb Hughes', 'caleb@example.com', '123-234-4567', '101 Oak Hill', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(32, 'Diana Knight', 'diana@example.com', '345-678-8901', '202 Spruce Way', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(33, 'Ethan Reed', 'ethan@example.com', '678-789-2345', '303 Laurel Bend', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(34, 'Faith Harper', 'faith@example.com', '432-321-6780', '404 Chestnut St', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(35, 'George Lane', 'george@example.com', '890-567-1234', '505 Willow Wood', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(36, 'Hannah Cole', 'hannah@example.com', '765-432-1098', '606 Maple Brook', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(37, 'Isaac Ross', 'isaac@example.com', '567-890-1234', '707 Cedar Valley', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(38, 'Julia Webb', 'julia@example.com', '345-789-5670', '808 Pine Corner', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(39, 'Kevin Stone', 'kevin@example.com', '789-123-6543', '909 Birch Way', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(40, 'Linda Walsh', 'linda@example.com', '654-234-5678', '101 Oakview', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(41, 'Mark Blake', 'mark@example.com', '876-543-2109', '202 Redwood Path', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(42, 'Nina Kim', 'nina@example.com', '543-678-2345', '303 Maple Crest', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(43, 'Oscar Nash', 'oscar@example.com', '321-987-4321', '404 Laurel Grove', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(44, 'Penny Long', 'penny@example.com', '654-789-9876', '505 Cedar Park', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(45, 'Quinn Nash', 'quinn@example.com', '789-012-8901', '606 Pinehurst Dr', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(46, 'Rita Lowe', 'rita@example.com', '432-567-8765', '707 Willow Run', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(47, 'Steve Fox', 'steve@example.com', '234-567-8901', '808 Maple Walk', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(48, 'Tara Hale', 'tara@example.com', '890-345-6789', '909 Birch Pond', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(49, 'Uma Hill', 'uma@example.com', '567-432-1234', '101 Pine View', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(51, 'Wendy Lee', 'wendy@example.com', '123-456-7890', '303 Cedar Hill', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(52, 'Xander Hill', 'xander@example.com', '789-012-5678', '404 Willow Path', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(53, 'Yvonne King', 'yvonne@example.com', '890-123-3456', '505 Birch Bend', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(54, 'Zara Moore', 'zara@example.com', '654-987-1234', '606 Pine Knoll', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(55, 'Aaron Clark', 'aaron@example.com', '987-654-3210', '707 Maple Field', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(56, 'Brenda Fox', 'brenda@example.com', '123-456-6789', '808 Cedar Hill', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(57, 'Carl Martin', 'carl@example.com', '890-567-2345', '909 Oakview', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(58, 'Daphne Reed', 'daphne@example.com', '567-890-3456', '101 Laurel Way', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(59, 'Edward Wells', 'edward@example.com', '345-678-5678', '202 Pine Hollow', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(60, 'Fiona Harris', 'fiona@example.com', '432-987-6543', '303 Cedar Lane', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(61, 'Gavin White', 'gavin@example.com', '789-345-6789', '404 Oak Path', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(62, 'Helen Scott', 'helen@example.com', '654-789-0123', '505 Maple Field', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(63, 'Iris Neal', 'iris@example.com', '321-678-9876', '606 Willow Way', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(64, 'Jake Brown', 'jake@example.com', '234-123-4567', '707 Birch Walk', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(65, 'Karen Young', 'karen@example.com', '890-456-7891', '808 Cedar Trail', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(66, 'Lana West', 'lana@example.com', '567-321-8765', '909 Pinecrest', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(67, 'Mike Brown', 'mike@example.com', '345-789-0123', '101 Maple Dr', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(68, 'Nancy Ford', 'nancy@example.com', '789-654-2345', '202 Oak Meadow', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(69, 'Olga Price', 'olga@example.com', '654-567-8901', '303 Pine Ridge', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(70, 'Peter Knight', 'peter@example.com', '987-432-1234', '404 Cedar Brook', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(71, 'Quincy Miles', 'quincy.m@example.com', '234-567-2345', '505 Willow Ridge', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(72, 'Rose Ford', 'rose@example.com', '123-678-4567', '606 Oak Grove', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(73, 'Shane Cole', 'shane@example.com', '456-789-6789', '707 Maple Walk', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(74, 'Tom Black', 'tom@example.com', '890-321-5678', '808 Cedar Blvd', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(75, 'Ursula Blake', 'ursula@example.com', '321-567-8901', '909 Pine Hill', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(76, 'Vince Hall', 'vince@example.com', '654-890-2345', '101 Maple Glen', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(77, 'Walt King', 'walt@example.com', '123-654-7890', '202 Oak Corner', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(78, 'Xena Waters', 'xena.w@example.com', '432-123-7890', '303 Willow Ave', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(79, 'Yuri Novak', 'yuri@example.com', '789-456-0123', '404 Cedar Park', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(80, 'Zoe Clark', 'zoe@example.com', '567-890-2345', '505 Maple Hill', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(81, 'Alex Green', 'alex.g@example.com', '321-876-5432', '606 Pine Run', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(82, 'Beth White', 'beth.w@example.com', '654-321-2345', '707 Oak Bend', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(83, 'Cody Harris', 'cody.h@example.com', '890-567-8901', '808 Cedar Path', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(84, 'Dylan Cole', 'dylan.c@example.com', '234-567-8901', '909 Maple Grove', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(85, 'Eve Mills', 'eve.m@example.com', '123-456-7890', '101 Pine Ridge', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(86, 'Frank Lee', 'frank.l@example.com', '654-789-1234', '202 Cedar Walk', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(87, 'Gail Ross', 'ironman@gmail.com', '345-678-9012', '303 Oak Hill', '2024-10-12 06:52:28', '2024-10-12 06:56:22'),
(88, 'Henry Scott', 'henry.s@example.com', '789-012-3456', '404 Willow Run', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(89, 'Irene Ray', 'irene.r@example.com', '432-567-8901', '505 Maple Park', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(90, 'Jason Moore', 'jason.m@example.com', '567-890-2345', '606 Pine Valley', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(91, 'Kelly Ward', 'kelly.w@example.com', '890-123-4567', '707 Cedar Grove', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(92, 'Leo Brooks', 'leo.b@example.com', '321-654-9876', '808 Oak Path', '2024-10-12 06:52:28', '2024-10-12 06:52:28'),
(99, 'tom holland', 'spidy@gmail.com', '456123789', 'New York', '2024-10-16 05:21:53', '2024-10-16 05:21:53'),
(104, 'tom holland', 'tmh@gmail.com', '321654987', 'Dubai', '2024-10-17 06:49:13', '2024-10-17 06:49:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
