-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 12:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ops`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'bhautik19', 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f'),
(4, 'Pranav62', '511a418e72591eb7e33f703f04c3fa16df6c90bd'),
(5, 'Harsh60', 'e6c3dd630428fd54834172b8fd2735fed9416da4');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Alex', 'alex@gmail.com', '321654987', 'nice plant, quality of products Are Best.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Alex', '321654987', 'alex@gmail.com', 'cash on delivery', '5, 1, abx, Rajkot, Rajkot, Gujarat, India - 360004', 'English Rose Light-Pink Plant (39 x 2) - Jasud-Hibiscus Red Dwarf Plant (59 x 1) - Bringal Seed (19 x 1) - 6” Classic Round Blue Plastic Pot (75 x 1) - ', 231, '2023-05-03', 'completed'),
(3, 2, 'Hevan', '369258147', 'Hevan@gmail.com', 'cash on delivery', '501, shreemad palace, punit nager, Kesod, Kesod, Gujarat, India - 370001', 'Aralia Variegated White Plant (45 x 2) - Jasud-Hibiscus Red Dwarf Plant (59 x 1) - Aquarium Pebbles(Mix Coloured)-1kg (159 x 1) - ', 308, '2023-05-03', 'pending'),
(4, 2, 'Hevan', '369258147', 'Hevan@gmail.com', 'cash on delivery', '501, shreemad palace, punit nager, Kesod, Kesod, Gujarat, India - 370001', 'Golden Fern Plant (89 x 1) - Green Chilli Seeds (25 x 1) - ', 114, '2023-05-03', 'pending'),
(5, 3, 'Khush patel', '456123798', 'khush@gmail.com', 'cash on delivery', '101, prmukh pride, abx, Rajkot, Rajkot, Gujarat, India - 360004', 'Aglaonema Baby Pink Plant (39 x 1) - Ficus Bonsai-plant (79 x 1) - Broken Heart Plant (69 x 1) - ', 187, '2023-05-03', 'pending'),
(6, 4, 'Griva', '963147852', 'griva@gmail.com', 'cash on delivery', '202, Possible height, mavdi, Rajkot, Rajkot, Gujarat, India - 360004', 'SweetCorn Seed (35 x 4) - Tulsi Seed (65 x 4) - 6” Classic Round Blue Plastic Pot (75 x 2) - ', 550, '2023-05-03', 'pending'),
(7, 5, 'Shivam', '486215937', 'shivam12@gmail.com', 'cash on delivery', '601, Syamal upavan, kalupur, ahemadabad, ahemadabad, Gujarat, India - 270014', 'Calathea Burle Marxi Plant (49 x 1) - Garden Gloves With Claws (119 x 1) - ', 168, '2023-05-03', 'pending'),
(9, 5, 'Shivam', '486215937', 'shivam12@gmail.com', 'paytm', '601, Syamal upavan, kalupur, ahemadabad, ahemadabad, Gujarat, India - 270014', 'Aglaonema Baby Pink Plant (39 x 1) - Aglaonema Snow White (35 x 1) - ', 74, '2023-05-04', 'pending'),
(10, 5, 'Shivam', '486215937', 'shivam12@gmail.com', 'cash on delivery', '601, Syamal upavan, kalupur, ahemadabad, ahemadabad, Gujarat, India - 270014', 'Golden Shrimp Plant (29 x 1) - English Rose Light-Pink Plant (39 x 1) - ', 68, '2023-05-04', 'pending'),
(11, 5, 'Shivam', '486215937', 'shivam12@gmail.com', 'cash on delivery', '601, Syamal upavan, kalupur, ahemadabad, ahemadabad, Gujarat, India - 270014', 'Aglaonema Snow White (35 x 1) - Aglaonema Baby Pink Plant (39 x 2) - Aralia Variegated White Plant (45 x 2) - ', 203, '2023-05-18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(10, 'Aglaonema Baby Pink Plant', 'Plants', 39, 'indoor-1.webp'),
(11, 'Aglaonema Snow White', 'Plants', 35, 'indoor-3.webp'),
(12, 'Aralia Green Plant', 'Plants', 49, 'indoor-5.jpg'),
(13, 'Aralia Variegated White Plant', 'Plants', 45, 'indoor-6.jpg'),
(14, 'English Rose Light-Pink Plant', 'Plants', 39, 'flower-1.webp'),
(15, 'Golden Shrimp Plant', 'Plants', 29, 'flower-2.webp'),
(16, 'MariGold Yellow Plant', 'Plants', 29, 'flower-5.webp'),
(17, 'Jasud-Hibiscus Red Dwarf Plant', 'Plants', 59, 'flower-6.webp'),
(18, 'Jade Bonsai', 'Plants', 89, 'bonsai-1.jpg'),
(19, 'Ficus Bonsai-plant', 'Plants', 79, 'bonsai-2.jpg'),
(20, 'Broken Heart Plant', 'Plants', 69, 'plant-3.jpg'),
(21, 'Spider-plant', 'Plants', 85, 'plant-1.jpeg'),
(22, 'Boston Fern', 'Plants', 99, 'plant-4.png'),
(23, 'Golden Fern Plant', 'Plants', 89, 'plant-7.jpeg'),
(24, 'Money Plant', 'Plants', 79, 'plant-8.jpeg'),
(25, 'Snake Plant', 'Plants', 69, 'plant-10.jpg'),
(26, 'Lucky-Bamboo Plant', 'Plants', 99, 'plant-9.jpg'),
(27, 'Calathea Burle Marxi Plant', 'Plants', 49, 'plant-5.jpeg'),
(28, 'Bringal Seed', 'seeds', 19, 'Bringal Seed.png'),
(29, 'Green Chilli Seeds', 'seeds', 25, 'Green Chilli Seed.png'),
(30, 'Red Capsicum Seed', 'seeds', 29, 'Red capsicum Seed.png'),
(31, 'SweetCorn Seed', 'seeds', 35, 'Sweetcorn Seed.png'),
(32, 'Papaya Seed', 'seeds', 29, 'Papaya Seed.png'),
(33, 'Watermelon Seed', 'seeds', 45, 'Watermelon Seed.png'),
(34, 'Tulsi Seed', 'seeds', 65, 'Tulsi Seed.png'),
(35, 'Basil Seed', 'seeds', 49, 'Basil Seed.png'),
(36, 'Marigold Seed', 'seeds', 35, 'Marigold Seed.png'),
(37, 'Sunflower Seed', 'seeds', 49, 'Sunflower Seed.png'),
(38, '6” Classic Round Blue Plastic Pot', 'Pots & Planter', 75, 'P-pot-1.webp'),
(39, '6” Classic Square Green Plastic pot', 'Pots & Planter', 65, 'P-pot-5.webp'),
(40, '10” Round Plastic Pot', 'Pots & Planter', 99, 'P-pot-3.webp'),
(41, 'Round Dotted Ceramic pot(7 inch Diameter)', 'Pots & Planter', 35, 'c-pot-2.jpg'),
(42, 'Football Ceramic pot(5.3 inch Diameter)', 'Pots & Planter', 79, 'c-pot-6.jpg'),
(43, '9” hanging Green Planter', 'Pots & Planter', 59, 'h-pot-1.webp'),
(44, '6” wall Hanging Blue Planter', 'Pots & Planter', 39, 'h-pot-3.webp'),
(45, '8” hanging Black Planter', 'Pots & Planter', 55, 'h-pot-5.webp'),
(46, 'Metal Planter Stand(Triangle shape,2.9X3.5ft)', 'Pots & Planter', 159, 'm-planter-1.jpg'),
(47, 'Metal planter Stand(Zig-zag, 2.4X5 ft)', 'Pots & Planter', 199, 'm-planter-2.jpg'),
(48, '12 inch Railing Oval Metal Planter(yellow)', 'Pots & Planter', 89, 'm-planter-4.jpg'),
(49, 'Foldable Hand Saw,wood cutter', 'Plant Care', 125, 'g-tool-1.webp'),
(50, 'Garden Gloves With Claws', 'Plant Care', 119, 'g-tool-2.webp'),
(51, 'Gardening Scissor,Flower Cutter', 'Plant Care', 119, 'g-tool-4.webp'),
(52, 'Galvanized Steel Can(3Liter)', 'Plant Care', 155, 'w-tool-2.jfif'),
(53, 'Pressure Spray Pump(2Liter)', 'Plant Care', 145, 'w-tool-3.webp'),
(54, 'Onex Pebbles(Blue,Medium)-1kg', 'Plant Care', 189, 'd-1.webp'),
(55, 'Aquarium Pebbles(Mix Coloured)-1kg', 'Plant Care', 159, 'd-3.webp'),
(56, 'Sea Shells pack of 500gm', 'Plant Care', 199, 'd-5.jfif'),
(57, 'River Pebbles polished(Navrang,Big)-1Kg', 'Plant Care', 259, 'd-4.webp'),
(58, 'Hand Trigger Spray(500ml)', 'Plant Care', 79, 'w-tool-1.webp'),
(59, 'Black Polished Pebbles-1kg', 'Plant Care', 129, 'd-2.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Alex', 'alex@gmail.com', '321654987', '5e06d22c8893e27d5a7243bd185faa94cc593072', '5, 1, abx, Rajkot, Rajkot, Gujarat, India - 360004'),
(2, 'Hevan', 'Hevan@gmail.com', '369258147', 'aca6d6e0ac7c6af640177fbc27eae8fbf9188dda', '501, shreemad palace, punit nager, Kesod, Kesod, Gujarat, India - 370001'),
(3, 'Khush patel', 'khush@gmail.com', '456123798', 'd60af283b62280a8d737359c8859c0142aaf28c0', '101, prmukh pride, abx, Rajkot, Rajkot, Gujarat, India - 360004'),
(4, 'Griva', 'griva@gmail.com', '963147852', 'bf0261735ead599ec9ba98bc7707febbff460d06', '202, Possible height, mavdi, Rajkot, Rajkot, Gujarat, India - 360004'),
(5, 'Shivam', 'shivam12@gmail.com', '486215937', 'd5dd462cbdd2e31e3f4d7a6a4bdc77460a115de9', '601, Syamal upavan, kalupur, ahemadabad, ahemadabad, Gujarat, India - 270014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
