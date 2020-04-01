-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2020 at 08:22 PM
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
-- Table structure for table `tbl_biking`
--

CREATE TABLE `tbl_biking` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_biking`
--

INSERT INTO `tbl_biking` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'Diadora Orbita 27.5 Men\'s Mountain Bike 2019', 'S,M,L', 'black', '245.97', 'The Diadora Orbita is a great choice for your everyday mountain bike. The lightweight hardtail design, quality Shimano components and 18-speed drivetrain provides the rider with a versatile bike that is great for riding around the city and also performs well on recreational trails.'),
(3, 'Nakamura Ecko 26 Men\'s Mountain Bike 2019', 'S', 'white', '249.99', 'The Nakamura Ecko is an excellent choice entry level mountain bike. The hardtail design, quality components and an 18 speed drivetrain provides the rider with a versatile bike that is great for riding around the neighborhood and on recreational trails.'),
(4, 'Mongoose Excursion 24 Junior Boy\'s 2019', '', 'black', '219.99', 'Take on steep slopes and tough trails with glee on the Excursion Mountain Bike from Mongoose. Made for experienced mountain bikers and new riders alike, this hardtail mountain bike is built with a durable steel mountain frame and front suspension fork that are designed to take the abuse of bumps and dips found on dirt paths and trails.  '),
(5, 'Schwinn Breaker 24 Junior Boy\'s Mountain Bike 2019', '', 'black', '299.99', 'Get off your couch and straight into the action with a mountain bike that’s up for anything. The 24\" Boy’s Breaker from Schwinn is the perfect mountain bike to take you on your next trail adventure. This sweet hardtail sports an aluminum mountain-style frame with a Schwinn suspension fork in the front to absorb bumps and thumps along the way. '),
(6, 'Mongoose Kipawa 24 Junior 2019', '', 'orange', '299.99', 'Whether you’re just getting into the sport of mountain biking or wanting a quicker ride to school, the Kipawa Mountain Bike with 24\" wheels is ready to rip it all. The frame is 12” (seat post measurement) and should fit a rider 8+ years old, 56 to 66 inches tall. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_electronics`
--

CREATE TABLE `tbl_electronics` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_electronics`
--

INSERT INTO `tbl_electronics` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'GoPro HERO8 Black Action Camera', '', 'black', '469.98', 'This is HERO8 Black—the most versatile, unshakable HERO camera ever. A streamlined design makes it more pocketable than ever, and swapping mounts takes just seconds, thanks to built-in folding fingers. And with the optional Media Mod, you get ultimate expandability to add more lighting, pro audio and even another screen. There’s also game-changing HyperSmooth 2.0 stabilization with jaw-dropping slo-mo.'),
(2, 'GoPro MAX Action Camera', '', 'black', '669.99', 'Three cameras in one. Classic HERO-style skills. Spherical-capture wizardry. Vlogging powerhouse. Make way for MAX, the most creative GoPro ever. Capture traditional GoPro video and photos with unbreakable stabilization, shoot 360 footage of everything around you and vlog like a pro. '),
(3, 'GoPro Fusion Action Camera', '', 'black', '749.97', 'The GoPro Fusion Action Camera captures spherical video and photos, recording everything so you can find the best shots later. Play it back in VR or use OverCapture to create traditional videos and photos you can share right on your phone. With ultra smooth stabilization and 5.2K video, the Fusion is like having a professional film crew with you wherever you go. '),
(4, 'Apple Watch S5 GPS+LTE 44 Loop', '44', 'black', '1049.00', 'You no longer need to raise your wrist or touch the screen to see the time or other information on your watch face, because the display never sleeps. All you need to do is glance to find the time or your workout metrics right there where you want them. Battery Runtime: Up to 18 hours Removable Band: Yes Sleep Tracking: Yes Steps Tracking: Yes'),
(5, 'Fitbit Inspire HR Fitness Tracker', '', 'black', '129.95', 'Fitbit Inspire HR™ is a friendly heart rate & fitness tracker for every day that helps you build healthy habits. This encouraging companion motivates you to reach your weight and fitness goals and even enjoy the journey with 24/7 heart rate, workout features, calorie burn tracking, goal celebrations, sleep stages and up to 5 days of battery life. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fitnessAndTraining`
--

CREATE TABLE `tbl_fitnessAndTraining` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fitnessAndTraining`
--

INSERT INTO `tbl_fitnessAndTraining` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'Energetics Strength Tube Medium', '', '', '13.99', 'Featuring premium, non-slip TPR handles these resistance tubes are perfect for any kind of muscle and fat-burn exercises. Target all muscle groups and build strong, lean muscles with the varying resistances.'),
(2, 'Energetics Pro Series Multi Exercise Door Gym', '', '', '49.99', 'This door gym quickly attaches to your doorframe and allows you to execute a multitude of exercises in the comfort of your own home. It can be used for pull-ups, chin-ups, dips, and sit-ups. It’s easily removed from doorframes and stored in a matter of seconds returning your living space to it’s original condition.'),
(3, 'PTP MicroBandX - Woven Resistance Loop', 'M', 'orange', '17.99', 'Designed with durability and convenience in mind, the PTP MicroBandX allows you to activate your glute-hip complex and increase power in your legs with resisted squats, hip abductions/adductions, leg extensions and more. By effectively recruiting your lower body muscles, it will help you build the necessary strength to better support your joints and reduce your risk of injury.'),
(4, 'PTP FlexiBand Stretching Loop', 'M', 'orange', '21.99', 'The PTP FlexiBand is perfect for warm-up and recovery to ensure full muscle relaxation and improve overall performance. By providing leverage and resistance, it enables you to perform greater stretches and hold stretched positions within natural joint range and without excessive strain. Use it before, during and after a workout to effectively lengthen muscles, improve both upper and lower body flexibility and prevent injuries.'),
(5, 'Nike Resistance Training Loop', 'S,M,L', 'black', '25.49', 'The Nike Resistance Training Loop is constructed from a soft durable knit, with silicone interior grips for a zero distraction workout.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hockey`
--

CREATE TABLE `tbl_hockey` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hockey`
--

INSERT INTO `tbl_hockey` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'Bauer Vapor X2.6 Senior Hockey Skates', '8.5, 9', 'black', '229.99', 'The Vapor X2.6 Skate is built to deliver a combination of instant step-in comfort and high level performance. A one-piece 3D Polycarb quarter construction provides a combination of support and comfort. A Microfiber Liner offers even more comfort and a soft internal feel. A 30 oz. felt tongue with metatarsal guard gives you an advanced level of support and flex.'),
(2, 'Bauer Vapor X2.7 Senior Hockey Skates', '8.5, 9', 'black', '249.99', 'The Vapor X2.7 Skate is built with Bauer’s new COMFORT FLEX SYSTEM, which offers step-in comfort, increased visual richness, and additional flex. A one-piece 3D Polycarb quarter construction provides comfort and makes it easier to flex. A Microfiber Liner offers even more comfort and a soft feel. A 40 oz. Felt tongue with exposed injected Metatarsal guard gives you advanced level comfort and additional skate flex for maximum agility.'),
(3, 'Bauer Vapor 2X Grip Senior Hockey Stick', 'R,L', 'black', '269.99', 'Get a dynamic release with every shot. The Vapor 2X is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.\r\n'),
(4, 'Bauer Vapor 2X Team Grip Senior Hockey Stick', 'R,L', 'black', '159.99', 'Get your shot off as quick as possible. The Vapor 2X Team features a new XE Taper geometry, designed to decrease weight while increasing release speed and stability. A Max Balance Blade provides reinforced blade edges to reduce weight and improve balance, without sacrificing durability. HP MOLD creates a true 1-piece feel to improve overall playability and consistency, offering a nice energy transfer all the way from shaft to blade. This allows you to experience a truly dynamic release.'),
(5, 'Bauer Vapor 2X Pro Grip Senior Hockey Stick', 'R,L', 'black', '299.99', 'Get a dynamic release with every shot. The Vapor 2X Pro is designed for players looking for a very lightweight stick and a high level of performance. It’s made of lightweight, industry-leading carbon fiber to improve performance and reduce weight. The new XE Taper geometry is also used to decrease weight while increasing release speed and stability. An enhanced shaft thickness adds durability to the stick to withstand more force so that you can really lean into shots.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nutrition`
--

CREATE TABLE `tbl_nutrition` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nutrition`
--

INSERT INTO `tbl_nutrition` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(5, 'Jamieson C 1,000Mg', '', '', '14.99', 'Jamieson Vitamin C 1,000 mg Timed Release is a unique micro-encapsulation formula that provides the gradual release of Vitamin C over time. It is an antioxidant for the maintenance of good health.'),
(6, 'Ener-C 1000 Mg Vitamin - C (30 Pack) - Raspberry', '', '', '19.99', 'Ener-C was designed with you in mind. This delightful-tasting, effervescent vitamin drink mix is full of natural goodness. All vitamin and mineral sources have been chosen not only for their quality, but also for their ability to absorb easily in the body, ensuring that you get the greatest benefit from each and every packet of Ener-C. Ener-C will help to increase and maintain your energy levels, due to the invigorating force of the B-vitamin complexes and electrolytes it contains. '),
(7, 'C4 Original Pre-Workout Icy Blue Razz', '', '', '24.49', 'Explosive energy, heightened focus and an overwhelming urge to tackle any challenge...that’s the C4 experience. Millions of people­—ranging from beginners all the way up to the elite competitors, have relied on C4 to help them turn their ambitions into achievements.'),
(8, 'Clif Shot Energy Gel Chocolate', '', '', '1.49', 'Energizing chocolate that won’t melt in your pocket'),
(9, 'Rivalus Powder Burn 2.0 Blue Raspberry', '', '', '27.99', 'Some days you’re ready to take on the world, others you need extra inspiration to push through the paces. Powder Burn 2.0 contains ingredients aimed at enhancing alertness, muscle endurance, and hydration.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skiing`
--

CREATE TABLE `tbl_skiing` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_skiing`
--

INSERT INTO `tbl_skiing` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'Völkl Racetiger Junior Skis 2019/20', '140,150', 'yellow', '148.98', 'The Volkl RaceTiger Yellow Jr ski has tip rocker and a New integrated Marker vMotion Jr binding. Power Shell technology and Composite Core make this a great ski for younger skiers of all levels, especially for on-piste terrain. '),
(2, 'K2 Indy Junior Skis 2019/20 & MARKER FDT 4.5', '88,100', 'grey', '160.98', 'You love skiing, and so does your little one. Ditch the rental gear and aid their progression by getting them the skis you wish you had when you were their age. '),
(3, 'Atomic Redster J2 Junior Skis 2019/20', '100,110', 'red,black', '135.98', 'The Atomic Redster J2 100-120 is an awesome ski for super-keen youngsters aged 5-8. With Bend-X Technology, young fans of Mikaela and Marcel can make controlled turns even earlier, because the special flex zone in the binding area allows the ski to bend with less effort. '),
(4, 'Rossignol Experience Pro Kid-X Junior Skis 2018/19', '128,140', 'blue', '124.98', 'Designed with the needs of first-timers in mind, the Rossignol Experience Pro Kid-X Junior Skis 2018/19 help kids develop essential skills on the mountain. The junior flex and rocker profile ensure easy steering and effortless turn initiation in varying snow conditions. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.'),
(5, 'K2 Juvy Junior Skis 2017/18 ', '119,129', 'back', '209.97', 'The K2 Juvy ski gives the next generation of shredders the confidence to run fast while their all-mountain imaginations run wild. An ultra-light composite core and forgiving, molded cap construction make for a full day of fun for your little one.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yoga`
--

CREATE TABLE `tbl_yoga` (
  `ID` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_yoga`
--

INSERT INTO `tbl_yoga` (`ID`, `product`, `size`, `color`, `price`, `description`) VALUES
(1, 'Nike Training Mat', '', 'black, white', '52.49', 'The Nike® 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session. Easily roll-up for storage as well as adjustable carry-strap for easy transport.'),
(2, 'Nike Training Mat 2.0', '', 'grey, pink', '52.49', 'The Nike 2.0 Training Mat is designed with thick, textured foam for great grip and cushioned comfort during your training session.'),
(3, 'Gaiam Studio Select Premium Yoga Block - Medallion', '', 'black', '16.99', 'The Medallion Block is 50% denser than standard EVA blocks, supporting you during harder poses with a flare of style. A must-have for practitioners at all levels, this block safely unlocks advanced poses by providing a firm, comfortable seat for meditation and height for standing poses.'),
(4, 'Halfmoon 8\' Organic Loop Strap Lilac Weave', '', 'pink', '24.99', 'Do more with this strap. The fixed loop on one end is handy for so many poses. Deepen your leg stretches, correct your alignment, and extend your reach like never before.'),
(5, 'Halfmoon Meditation Cushion', '', 'sun spell', '90.00', 'The Halfmoon Zafu is designed to help you sit tall with relaxed, happier hips. It provides a wide, stable base of support with room to tuck your ankles in close to the body.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biking`
--
ALTER TABLE `tbl_biking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_electronics`
--
ALTER TABLE `tbl_electronics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_fitnessAndTraining`
--
ALTER TABLE `tbl_fitnessAndTraining`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_hockey`
--
ALTER TABLE `tbl_hockey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_nutrition`
--
ALTER TABLE `tbl_nutrition`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_skiing`
--
ALTER TABLE `tbl_skiing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_yoga`
--
ALTER TABLE `tbl_yoga`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biking`
--
ALTER TABLE `tbl_biking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_electronics`
--
ALTER TABLE `tbl_electronics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_fitnessAndTraining`
--
ALTER TABLE `tbl_fitnessAndTraining`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_hockey`
--
ALTER TABLE `tbl_hockey`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_nutrition`
--
ALTER TABLE `tbl_nutrition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_skiing`
--
ALTER TABLE `tbl_skiing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_yoga`
--
ALTER TABLE `tbl_yoga`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
