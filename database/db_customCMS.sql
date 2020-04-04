-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 04, 2020 at 02:32 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_customCMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_ID` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_ID`, `category_name`) VALUES
(1, 'Biking'),
(2, 'Skiing'),
(3, 'Electronics'),
(4, 'Hockey'),
(5, 'Fitness'),
(6, 'Yoga'),
(7, 'Nutrition');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_ID`, `name`, `size`, `color`, `price`, `description`, `image`) VALUES
(1, 'GoPro HERO8 Black Action Camera', 'N/A', 'Black', '469.98', 'This is HERO8 Black—the most versatile, unshakable HERO camera ever. A streamlined design makes it more pocketable than ever, and swapping mounts takes just seconds, thanks to built-in folding fingers. And with the optional Media Mod, you get ultimate expandability to add more lighting, pro audio and even another screen. There’s also game-changing HyperSmooth 2.0 stabilization with jaw-dropping slo-mo.', 'product_17.png'),
(2, 'GoPro MAX Action Camera', 'N/A', 'Black', '669.99', 'Three cameras in one. Classic HERO-style skills. Spherical-capture wizardry. Vlogging powerhouse. Make way for MAX, the most creative GoPro ever. Capture traditional GoPro video and photos with unbreakable stabilization, shoot 360 footage of everything around you and vlog like a pro. ', 'product_18.png'),
(3, 'GoPro Fusion Action Camera', 'N/A', 'Black', '749.97', 'The GoPro Fusion Action Camera captures spherical video and photos, recording everything so you can find the best shots later. Play it back in VR or use OverCapture to create traditional videos and photos you can share right on your phone. With ultra smooth stabilization and 5.2K video, the Fusion is like having a professional film crew with you wherever you go. ', 'product_16.png'),
(4, 'Apple Watch S5 GPS+LTE 44 Loop', 'L', 'Black', '1049.00', 'You no longer need to raise your wrist or touch the screen to see the time or other information on your watch face, because the display never sleeps. All you need to do is glance to find the time or your workout metrics right there where you want them. Battery Runtime: Up to 18 hours Removable Band: Yes Sleep Tracking: Yes Steps Tracking: Yes', 'product_1.png'),
(5, 'Fitbit Inspire HR Fitness Tracker', 'N/A', 'Black', '129.95', 'Fitbit Inspire HR™ is a friendly heart rate & fitness tracker for every day that helps you build healthy habits. This encouraging companion motivates you to reach your weight and fitness goals and even enjoy the journey with 24/7 heart rate, workout features, calorie burn tracking, goal celebrations, sleep stages and up to 5 days of battery life. ', 'product_14.png'),
(6, 'Diadora Orbita 27.5 Men\'s Mountain Bike 2019', 'S', 'Black', '245.97', 'The Diadora Orbita is a great choice for your everyday mountain bike. The lightweight hardtail design, quality Shimano components and 18-speed drivetrain provides the rider with a versatile bike that is great for riding around the city and also performs well on recreational trails.', 'product_10.png'),
(7, 'Nakamura Ecko 26 Men\'s Mountain Bike 2019', 'S', 'White', '249.99', 'The Nakamura Ecko is an excellent choice entry level mountain bike. The hardtail design, quality components and an 18 speed drivetrain provides the rider with a versatile bike that is great for riding around the neighborhood and on recreational trails.', 'product_26.png'),
(8, 'Mongoose Excursion 24 Junior Boy\'s 2019', 'M', 'Black', '219.99', 'Take on steep slopes and tough trails with glee on the Excursion Mountain Bike from Mongoose. Made for experienced mountain bikers and new riders alike, this hardtail mountain bike is built with a durable steel mountain frame and front suspension fork that are designed to take the abuse of bumps and dips found on dirt paths and trails.  ', 'product_24.png'),
(9, 'Schwinn Breaker 24 Junior Boy\'s Mountain Bike 2019', 'L', 'Black', '299.99', 'Get off your couch and straight into the action with a mountain bike that’s up for anything. The 24\" Boy’s Breaker from Schwinn is the perfect mountain bike to take you on your next trail adventure. This sweet hardtail sports an aluminum mountain-style frame with a Schwinn suspension fork in the front to absorb bumps and thumps along the way. ', 'product_34.png'),
(10, 'Mongoose Kipawa 24 Junior 2019', 'L', 'Orange', '299.99', 'Whether you’re just getting into the sport of mountain biking or wanting a quicker ride to school, the Kipawa Mountain Bike with 24\" wheels is ready to rip it all. The frame is 12” (seat post measurement) and should fit a rider 8+ years old, 56 to 66 inches tall. ', 'product_25.png'),
(11, 'Energetics Strength Tube Medium', 'N/A', 'N/A', '13.99', 'Featuring premium, non-slip TPR handles these resistance tubes are perfect for any kind of muscle and fat-burn exercises. Target all muscle groups and build strong, lean muscles with the varying resistances.', 'product_13.png'),
(12, 'Energetics Pro Series Multi Exercise Door Gym', 'N/A', 'N/A', '49.99', 'This door gym quickly attaches to your doorframe and allows you to execute a multitude of exercises in the comfort of your own home. It can be used for pull-ups, chin-ups, dips, and sit-ups. It’s easily removed from doorframes and stored in a matter of seconds returning your living space to it’s original condition.', 'product_12.png'),
(13, 'PTP MicroBandX - Woven Resistance Loop', 'M', 'Orange', '17.99', 'Designed with durability and convenience in mind, the PTP MicroBandX allows you to activate your glute-hip complex and increase power in your legs with resisted squats, hip abductions/adductions, leg extensions and more. By effectively recruiting your lower body muscles, it will help you build the necessary strength to better support your joints and reduce your risk of injury.', 'product_31.png'),
(14, 'PTP FlexiBand Stretching Loop', 'S', 'Orange', '21.99', 'The PTP FlexiBand is perfect for warm-up and recovery to ensure full muscle relaxation and improve overall performance. By providing leverage and resistance, it enables you to perform greater stretches and hold stretched positions within natural joint range and without excessive strain. Use it before, during and after a workout to effectively lengthen muscles, improve both upper and lower body flexibility and prevent injuries.', 'product_30.png'),
(15, 'Nike Resistance Training Loop', 'M', 'Black', '25.49', 'The Nike Resistance Training Loop is constructed from a soft durable knit, with silicone interior grips for a zero distraction workout.', 'product_27.png'),
(16, 'Bauer Vapor X2.6 Senior Hockey Skates', 'M', 'Black', '229.99', 'The Vapor X2.6 Skate is built to deliver a combination of instant step-in comfort and high level performance. A one-piece 3D Polycarb quarter construction provides a combination of support and comfort. A Microfiber Liner offers even more comfort and a soft internal feel. A 30 oz. felt tongue with metatarsal guard gives you an advanced level of support and flex.', 'product_6.png'),
(17, 'Bauer Vapor X2.7 Senior Hockey Skates', 'L', 'Black', '249.99', 'The Vapor X2.7 Skate is built with Bauer’s new COMFORT FLEX SYSTEM, which offers step-in comfort, increased visual richness, and additional flex. A one-piece 3D Polycarb quarter construction provides comfort and makes it easier to flex. A Microfiber Liner offers even more comfort and a soft feel. A 40 oz. Felt tongue with exposed injected Metatarsal guard gives you advanced level comfort and additional skate flex for maximum agility.', 'product_7.png'),
(18, 'Bauer Vapor 2X Grip Senior Hockey Stick', 'N/A', 'Black', '269.99', 'Get a dynamic release with every shot. The Vapor 2X is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.\r\n', 'product_5.png'),
(19, 'Bauer Vapor 2X Team Grip Senior Hockey Stick', 'N/A', 'Black', '159.99', 'Get your shot off as quick as possible. The Vapor 2X Team features a new XE Taper geometry, designed to decrease weight while increasing release speed and stability. A Max Balance Blade provides reinforced blade edges to reduce weight and improve balance, without sacrificing durability. HP MOLD creates a true 1-piece feel to improve overall playability and consistency, offering a nice energy transfer all the way from shaft to blade. This allows you to experience a truly dynamic release.', 'product_4.png'),
(20, 'Bauer Vapor 2X Pro Grip Senior Hockey Stick', 'N/A', 'Black', '299.99', 'Get a dynamic release with every shot. The Vapor 2X Pro is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.', 'product_3.png'),
(21, 'Jamieson C 1,000Mg', 'N/A', 'N/A', '14.99', 'Jamieson Vitamin C 1,000 mg Timed Release is a unique micro-encapsulation formula that provides the gradual release of Vitamin C over time. It is an antioxidant for the maintenance of good health.', 'product_21.png'),
(22, 'Ener-C 1000 Mg Vitamin - C (30 Pack) - Raspberry', 'N/A', 'N/A', '19.99', 'Ener-C was designed with you in mind. This delightful-tasting, effervescent vitamin drink mix is full of natural goodness. All vitamin and mineral sources have been chosen not only for their quality, but also for their ability to absorb easily in the body, ensuring that you get the greatest benefit from each and every packet of Ener-C. Ener-C will help to increase and maintain your energy levels, due to the invigorating force of the B-vitamin complexes and electrolytes it contains. ', 'product_11.png'),
(23, 'C4 Original Pre-Workout Icy Blue Razz', 'N/A', 'N/A', '24.49', 'Explosive energy, heightened focus and an overwhelming urge to tackle any challenge...that’s the C4 experience. Millions of people­—ranging from beginners all the way up to the elite competitors, have relied on C4 to help them turn their ambitions into achievements.', 'product_8.png'),
(24, 'Clif Shot Energy Gel Chocolate', 'N/A', 'N/A', '1.49', 'Energizing chocolate that won’t melt in your pocket', 'product_9.png'),
(25, 'Rivalus Powder Burn 2.0 Blue Raspberry', 'N/A', 'N/A', '27.99', 'Some days you’re ready to take on the world, others you need extra inspiration to push through the paces. Powder Burn 2.0 contains ingredients aimed at enhancing alertness, muscle endurance, and hydration.', 'product_32.png'),
(26, 'Völkl Racetiger Junior Skis 2019/20', 'N/A', 'Yellow', '148.98', 'The Volkl RaceTiger Yellow Jr ski has tip rocker and a New integrated Marker vMotion Jr binding. Power Shell technology and Composite Core make this a great ski for younger skiers of all levels, especially for on-piste terrain. ', 'product_35.png'),
(27, 'K2 Indy Junior Skis 2019/20 & MARKER FDT 4.5', 'N/A', 'Grey', '160.98', 'You love skiing, and so does your little one. Ditch the rental gear and aid their progression by getting them the skis you wish you had when you were their age. ', 'product_22.png'),
(28, 'Atomic Redster J2 Junior Skis 2019/20', 'N/A', 'Red', '160.98', 'You love skiing, and so does your little one. Ditch the rental gear and aid their progression by getting them the skis you wish you had when you were their age. ', 'product_2.png'),
(29, 'Rossignol Experience Pro Kid-X Junior Skis 2018/19', 'N/A', 'Blue', '124.98', 'Designed with the needs of first-timers in mind, the Rossignol Experience Pro Kid-X Junior Skis 2018/19 help kids develop essential skills on the mountain. The junior flex and rocker profile ensure easy steering and effortless turn initiation in varying snow conditions. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.', 'product_33.png'),
(30, 'K2 Juvy Junior Skis 2017/18 ', 'N/A', 'Black', '209.97', 'The K2 Juvy ski gives the next generation of shredders the confidence to run fast while their all-mountain imaginations run wild. An ultra-light composite core and forgiving, molded cap construction make for a full day of fun for your little one.', 'product_23.png'),
(31, 'Nike Training Mat', 'N/A', 'White', '52.49', 'The Nike® 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session. Easily roll-up for storage as well as adjustable carry-strap for easy transport.', 'product_29.png'),
(32, 'Nike Training Mat 2.0', 'N/A', 'Pink', '52.49', 'The Nike 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session.', 'product_28.png'),
(33, 'Gaiam Studio Select Premium Yoga Block - Medallion', 'N/A', 'Black', '16.99', 'The Medallion Block is 50% denser than standard EVA blocks, supporting you during harder poses with a flare of style. A must-have for practitioners at all levels, this block safely unlocks advanced poses by providing a firm, comfortable seat for meditation and height for standing poses.', 'product_15.png'),
(34, 'Halfmoon 8\' Organic Loop Strap Lilac Weave', 'N/A', 'Pink', '24.99', 'Do more with this strap. The fixed loop on one end is handy for so many poses. Deepen your leg stretches, correct your alignment, and extend your reach like never before.', 'product_19.png'),
(35, 'Halfmoon Meditation Cushion', 'N/A', 'Sun Spell', '90.00', 'The Halfmoon Zafu is designed to help you sit tall with relaxed, happier hips. It provides a wide, stable base of support with room to tuck your ankles in close to the body.', 'product_20.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_category`
--

CREATE TABLE `tbl_products_category` (
  `ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_category`
--

INSERT INTO `tbl_products_category` (`ID`, `category_ID`, `product_ID`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 5, 11),
(12, 5, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 7, 21),
(22, 7, 22),
(23, 7, 23),
(24, 7, 24),
(25, 7, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 6, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 34),
(35, 6, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'Admin', 'admin', 'sportchek', 'admin@sportchek.ca', '2020-04-01 23:52:16', '::1'),
(4, 'Liam', 'lkeery', 'password', 'l_keery@fanshaweonline.ca', '2020-04-02 17:26:35', '::1'),
(5, 'Noah', 'nfainer', 'password', 'nfainer@gmail.com', '2020-04-02 17:26:47', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
