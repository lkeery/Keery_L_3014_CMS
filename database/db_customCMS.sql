-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2020 at 09:04 PM
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
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_ID` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_ID`, `category_name`) VALUES
(1, 'biking'),
(2, 'skiing'),
(3, 'electronics'),
(4, 'hockey'),
(5, 'fitnessAndTraining'),
(6, 'yoga'),
(7, 'nutrition');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'GoPro HERO8 Black Action Camera', '', 'black', '469.98', 'This is HERO8 Black—the most versatile, unshakable HERO camera ever. A streamlined design makes it more pocketable than ever, and swapping mounts takes just seconds, thanks to built-in folding fingers. And with the optional Media Mod, you get ultimate expandability to add more lighting, pro audio and even another screen. There’s also game-changing HyperSmooth 2.0 stabilization with jaw-dropping slo-mo.'),
(2, 'GoPro MAX Action Camera', '', 'black', '669.99', 'Three cameras in one. Classic HERO-style skills. Spherical-capture wizardry. Vlogging powerhouse. Make way for MAX, the most creative GoPro ever. Capture traditional GoPro video and photos with unbreakable stabilization, shoot 360 footage of everything around you and vlog like a pro. '),
(3, 'GoPro Fusion Action Camera', '', 'black', '749.97', 'The GoPro Fusion Action Camera captures spherical video and photos, recording everything so you can find the best shots later. Play it back in VR or use OverCapture to create traditional videos and photos you can share right on your phone. With ultra smooth stabilization and 5.2K video, the Fusion is like having a professional film crew with you wherever you go. '),
(4, 'Apple Watch S5 GPS+LTE 44 Loop', 'L', 'black', '1049.00', 'You no longer need to raise your wrist or touch the screen to see the time or other information on your watch face, because the display never sleeps. All you need to do is glance to find the time or your workout metrics right there where you want them. Battery Runtime: Up to 18 hours Removable Band: Yes Sleep Tracking: Yes Steps Tracking: Yes'),
(5, 'Fitbit Inspire HR Fitness Tracker', '', 'black', '129.95', 'Fitbit Inspire HR™ is a friendly heart rate & fitness tracker for every day that helps you build healthy habits. This encouraging companion motivates you to reach your weight and fitness goals and even enjoy the journey with 24/7 heart rate, workout features, calorie burn tracking, goal celebrations, sleep stages and up to 5 days of battery life. '),
(6, 'Diadora Orbita 27.5 Men\'s Mountain Bike 2019', 'S', 'black', '245.97', 'The Diadora Orbita is a great choice for your everyday mountain bike. The lightweight hardtail design, quality Shimano components and 18-speed drivetrain provides the rider with a versatile bike that is great for riding around the city and also performs well on recreational trails.'),
(7, 'Nakamura Ecko 26 Men\'s Mountain Bike 2019', 'S', 'white', '249.99', 'The Nakamura Ecko is an excellent choice entry level mountain bike. The hardtail design, quality components and an 18 speed drivetrain provides the rider with a versatile bike that is great for riding around the neighborhood and on recreational trails.'),
(8, 'Mongoose Excursion 24 Junior Boy\'s 2019', 'M', 'black', '219.99', 'Take on steep slopes and tough trails with glee on the Excursion Mountain Bike from Mongoose. Made for experienced mountain bikers and new riders alike, this hardtail mountain bike is built with a durable steel mountain frame and front suspension fork that are designed to take the abuse of bumps and dips found on dirt paths and trails.  '),
(9, 'Schwinn Breaker 24 Junior Boy\'s Mountain Bike 2019', 'L', 'black', '299.99', 'Get off your couch and straight into the action with a mountain bike that’s up for anything. The 24\" Boy’s Breaker from Schwinn is the perfect mountain bike to take you on your next trail adventure. This sweet hardtail sports an aluminum mountain-style frame with a Schwinn suspension fork in the front to absorb bumps and thumps along the way. '),
(10, 'Mongoose Kipawa 24 Junior 2019', 'L', 'orange', '299.99', 'Whether you’re just getting into the sport of mountain biking or wanting a quicker ride to school, the Kipawa Mountain Bike with 24\" wheels is ready to rip it all. The frame is 12” (seat post measurement) and should fit a rider 8+ years old, 56 to 66 inches tall. '),
(11, 'Energetics Strength Tube Medium', '', '', '13.99', 'Featuring premium, non-slip TPR handles these resistance tubes are perfect for any kind of muscle and fat-burn exercises. Target all muscle groups and build strong, lean muscles with the varying resistances.'),
(12, 'Energetics Pro Series Multi Exercise Door Gym', '', '', '49.99', 'This door gym quickly attaches to your doorframe and allows you to execute a multitude of exercises in the comfort of your own home. It can be used for pull-ups, chin-ups, dips, and sit-ups. It’s easily removed from doorframes and stored in a matter of seconds returning your living space to it’s original condition.'),
(13, 'PTP MicroBandX - Woven Resistance Loop', 'M', 'orange', '17.99', 'Designed with durability and convenience in mind, the PTP MicroBandX allows you to activate your glute-hip complex and increase power in your legs with resisted squats, hip abductions/adductions, leg extensions and more. By effectively recruiting your lower body muscles, it will help you build the necessary strength to better support your joints and reduce your risk of injury.'),
(14, 'PTP FlexiBand Stretching Loop', 'S', 'orange', '21.99', 'The PTP FlexiBand is perfect for warm-up and recovery to ensure full muscle relaxation and improve overall performance. By providing leverage and resistance, it enables you to perform greater stretches and hold stretched positions within natural joint range and without excessive strain. Use it before, during and after a workout to effectively lengthen muscles, improve both upper and lower body flexibility and prevent injuries.'),
(15, 'Nike Resistance Training Loop', 'M', 'black', '25.49', 'The Nike Resistance Training Loop is constructed from a soft durable knit, with silicone interior grips for a zero distraction workout.'),
(16, 'Bauer Vapor X2.6 Senior Hockey Skates', 'M', 'black', '229.99', 'The Vapor X2.6 Skate is built to deliver a combination of instant step-in comfort and high level performance. A one-piece 3D Polycarb quarter construction provides a combination of support and comfort. A Microfiber Liner offers even more comfort and a soft internal feel. A 30 oz. felt tongue with metatarsal guard gives you an advanced level of support and flex.'),
(17, 'Bauer Vapor X2.7 Senior Hockey Skates', 'L', 'black', '249.99', 'The Vapor X2.7 Skate is built with Bauer’s new COMFORT FLEX SYSTEM, which offers step-in comfort, increased visual richness, and additional flex. A one-piece 3D Polycarb quarter construction provides comfort and makes it easier to flex. A Microfiber Liner offers even more comfort and a soft feel. A 40 oz. Felt tongue with exposed injected Metatarsal guard gives you advanced level comfort and additional skate flex for maximum agility.'),
(18, 'Bauer Vapor 2X Grip Senior Hockey Stick', '', 'black', '269.99', 'Get a dynamic release with every shot. The Vapor 2X is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.\r\n'),
(19, 'Bauer Vapor 2X Team Grip Senior Hockey Stick', '', 'black', '159.99', 'Get your shot off as quick as possible. The Vapor 2X Team features a new XE Taper geometry, designed to decrease weight while increasing release speed and stability. A Max Balance Blade provides reinforced blade edges to reduce weight and improve balance, without sacrificing durability. HP MOLD creates a true 1-piece feel to improve overall playability and consistency, offering a nice energy transfer all the way from shaft to blade. This allows you to experience a truly dynamic release.'),
(20, 'Bauer Vapor 2X Pro Grip Senior Hockey Stick', '', 'black', '299.99', 'Get a dynamic release with every shot. The Vapor 2X Pro is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.'),
(21, 'Jamieson C 1,000Mg', '', '', '14.99', 'Jamieson Vitamin C 1,000 mg Timed Release is a unique micro-encapsulation formula that provides the gradual release of Vitamin C over time. It is an antioxidant for the maintenance of good health.'),
(22, 'Ener-C 1000 Mg Vitamin - C (30 Pack) - Raspberry', '', '', '19.99', 'Ener-C was designed with you in mind. This delightful-tasting, effervescent vitamin drink mix is full of natural goodness. All vitamin and mineral sources have been chosen not only for their quality, but also for their ability to absorb easily in the body, ensuring that you get the greatest benefit from each and every packet of Ener-C. Ener-C will help to increase and maintain your energy levels, due to the invigorating force of the B-vitamin complexes and electrolytes it contains. '),
(23, 'C4 Original Pre-Workout Icy Blue Razz', '', '', '24.49', 'Explosive energy, heightened focus and an overwhelming urge to tackle any challenge...that’s the C4 experience. Millions of people­—ranging from beginners all the way up to the elite competitors, have relied on C4 to help them turn their ambitions into achievements.'),
(24, 'Clif Shot Energy Gel Chocolate', '', '', '1.49', 'Energizing chocolate that won’t melt in your pocket'),
(25, 'Rivalus Powder Burn 2.0 Blue Raspberry', '', '', '27.99', 'Some days you’re ready to take on the world, others you need extra inspiration to push through the paces. Powder Burn 2.0 contains ingredients aimed at enhancing alertness, muscle endurance, and hydration.'),
(26, 'Völkl Racetiger Junior Skis 2019/20', '', 'yellow', '148.98', 'The Volkl RaceTiger Yellow Jr ski has tip rocker and a New integrated Marker vMotion Jr binding. Power Shell technology and Composite Core make this a great ski for younger skiers of all levels, especially for on-piste terrain. '),
(27, 'K2 Indy Junior Skis 2019/20 & MARKER FDT 4.5', '', 'grey', '160.98', 'You love skiing, and so does your little one. Ditch the rental gear and aid their progression by getting them the skis you wish you had when you were their age. '),
(28, 'Atomic Redster J2 Junior Skis 2019/20', '', 'red', '160.98', 'You love skiing, and so does your little one. Ditch the rental gear and aid their progression by getting them the skis you wish you had when you were their age. '),
(29, 'Rossignol Experience Pro Kid-X Junior Skis 2018/19', '', 'blue', '124.98', 'Designed with the needs of first-timers in mind, the Rossignol Experience Pro Kid-X Junior Skis 2018/19 help kids develop essential skills on the mountain. The junior flex and rocker profile ensure easy steering and effortless turn initiation in varying snow conditions. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.'),
(30, 'K2 Juvy Junior Skis 2017/18 ', '', 'black', '209.97', 'The K2 Juvy ski gives the next generation of shredders the confidence to run fast while their all-mountain imaginations run wild. An ultra-light composite core and forgiving, molded cap construction make for a full day of fun for your little one.'),
(31, 'Nike Training Mat', '', 'white', '52.49', 'The Nike® 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session. Easily roll-up for storage as well as adjustable carry-strap for easy transport.'),
(32, 'Nike Training Mat 2.0', '', 'pink', '52.49', 'The Nike 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session.'),
(33, 'Gaiam Studio Select Premium Yoga Block - Medallion', '', 'black', '16.99', 'The Medallion Block is 50% denser than standard EVA blocks, supporting you during harder poses with a flare of style. A must-have for practitioners at all levels, this block safely unlocks advanced poses by providing a firm, comfortable seat for meditation and height for standing poses.'),
(34, 'Halfmoon 8\' Organic Loop Strap Lilac Weave', '', 'pink', '24.99', 'Do more with this strap. The fixed loop on one end is handy for so many poses. Deepen your leg stretches, correct your alignment, and extend your reach like never before.'),
(35, 'Halfmoon Meditation Cushion', '', 'sun spell', '90.00', 'The Halfmoon Zafu is designed to help you sit tall with relaxed, happier hips. It provides a wide, stable base of support with room to tuck your ankles in close to the body.');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
