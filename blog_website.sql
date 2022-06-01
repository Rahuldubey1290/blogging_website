-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 10:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'rahul', 'firstpost@gmail.com', '0123456789', 'first post', '2022-05-31 14:54:12'),
(2, 'rahul dubey', 'rahulsharma150292@gm', '09713893303', 'hhh', '2022-05-31 15:30:05'),
(3, 'SANDEEP JHA', 'mmartshops@gmail.com', '07415861269', 'heloo', '2022-05-31 19:54:37'),
(4, 'SANDEEP JHA', 'mmartshops@gmail.com', '07415861269', 'heloo', '2022-05-31 19:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tag_line` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tag_line`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'what is Heat Energy', 'To-Know-About-Heat-Energy', 'what is heat', 'In thermodynamics, heat is energy in transfer to or from a thermodynamic system, by mechanisms other than thermodynamic work or transfer of matter.[1][note 1]\r\n\r\nLike thermodynamic work, heat transfer is a process involving more than one system, not a property of any one system. In thermodynamics, energy transferred as heat contributes to change in the system\'s cardinal energy variable of state, for example its internal energy, or for example its enthalpy. This is to be distinguished from the ordinary language conception of heat as a property of an isolated system.\r\n\r\nThe quantity of energy transferred as heat in a process is the amount of transferred energy excluding any thermodynamic work that was done and any energy contained in matter transferred. For the precise definition of heat, it is necessary that it occur by a path that does not include transfer of matter.[2]\r\n\r\nThough not immediately by the definition, but in special kinds of process, quantity of energy transferred as heat can be measured by its effect on the states of interacting bodies. For example, respectively in special circumstances, heat transfer can be measured by the amount of ice melted, or by change in temperature of a body in the surroundings of the system.[3] Such methods are called calorimetry.\r\n\r\nThe conventional symbol used to represent the amount of heat transferred in a thermodynamic process is Q or q. As an amount of energy (being transferred), the SI unit of heat is the joule (J).', 'about-bg.jpg', '2022-06-01 10:38:46'),
(2, 'What Is Energy', 'Do you know about energy ?', 'What-Is-Energy', 'In physics, energy is the quantitative property that is transferred to a body or to a physical system, recognizable in the performance of work and in the form of heat and light. Energy is a conserved quantity; the law of conservation of energy states that energy can be converted in form, but not created or destroyed. The unit of measurement in the International System of Units (SI) of energy is the joule, which is the energy transferred to an object by the work of moving it a distance of one metre against a force of one newton.\r\n\r\nCommon forms of energy include the kinetic energy of a moving object, the potential energy stored by an object\'s position in a force field (gravitational, electric or magnetic), the elastic energy stored by stretching solid objects, the chemical energy released when a fuel burns, the radiant energy carried by light, and the thermal energy due to an object\'s temperature.', 'contact-bg.jpg', '2022-05-31 23:46:55'),
(3, 'Kinetic energy', 'know about kinetic energy...', 'what-is-kinetic-energy', 'In physics, the kinetic energy of an object is the energy that it possesses due to its motion.[1] It is defined as the work needed to accelerate a body of a given mass from rest to its stated velocity. Having gained this energy during its acceleration, the body maintains this kinetic energy unless its speed changes. The same amount of work is done by the body when decelerating from its current speed to a state of rest. Formally, a kinetic energy is any term in a system\'s Lagrangian which includes a derivative with respect to time. [2][3]\r\n\r\nIn classical mechanics, the kinetic energy of a non-rotating object of mass m traveling at a speed v is {\\textstyle {\\frac {1}{2}}mv^{2}}{\\textstyle {\\frac {1}{2}}mv^{2}}. In relativistic mechanics, this is a good approximation only when v is much less than the speed of light.', 'about-bg.jpg', '2022-05-31 23:55:03'),
(4, 'Motion', 'motion and its types', 'about-motion', 'In physics, motion is the phenomenon in which an object changes its position over time. Motion is mathematically described in terms of displacement, distance, velocity, acceleration, speed, and time. The motion of a body is observed by attaching a frame of reference to an observer and measuring the change in position of the body relative to that frame with change in time. The branch of physics describing the motion of objects without reference to its cause is kinematics; the branch studying forces and their effect on motion is dynamics.', 'contact-bg.jpg', '2022-05-31 23:56:15'),
(5, 'Velocity', 'know about velocity', 'velocity', 'Velocity is the directional speed of a object in motion as an indication of its rate of change in position as observed from a particular frame of reference and as measured by a particular standard of time (e.g. 60 km/h northbound).[1] Velocity is a fundamental concept in kinematics, the branch of classical mechanics that describes the motion of bodies.\r\n\r\nVelocity is a physical vector quantity; both magnitude and direction are needed to define it. The scalar absolute value (magnitude) of velocity is called speed, being a coherent derived unit whose quantity is measured in the SI (metric system) as metres per second (m/s or m⋅s−1). For example, \"5 metres per second\" is a scalar, whereas \"5 metres per second east\" is a vector. If there is a change in speed, direction or both, then the object is said to be undergoing an acceleration.', 'about-bg.jpg', '2022-05-31 23:57:31'),
(6, 'Acceleration', 'about acceleration', 'acceleration', 'In mechanics, acceleration is the rate of change of the velocity of an object with respect to time. Accelerations are vector quantities (in that they have magnitude and direction).[1][2] The orientation of an object\'s acceleration is given by the orientation of the net force acting on that object. The magnitude of an object\'s acceleration, as described by Newton\'s Second Law,[3] is the combined effect of two causes:\r\n\r\nthe net balance of all external forces acting onto that object — magnitude is directly proportional to this net resulting force;\r\nthat object\'s mass, depending on the materials out of which it is made — magnitude is inversely proportional to the object\'s mass.\r\nThe SI unit for acceleration is metre per second squared (m⋅s−2, {\\displaystyle {\\tfrac {\\operatorname {m} }{\\operatorname {s} ^{2}}}}{\\displaystyle {\\tfrac {\\operatorname {m} }{\\operatorname {s} ^{2}}}}).', 'about-bg.jpg', '2022-05-31 23:58:53'),
(7, 'Force', 'what is force', 'force', 'In physics, a force is an influence that can change the motion of an object. A force can cause an object with mass to change its velocity (e.g. moving from a state of rest), i.e., to accelerate. Force can also be described intuitively as a push or a pull. A force has both magnitude and direction, making it a vector quantity. It is measured in the SI unit of newton (N). Force is represented by the symbol F (formerly P).', 'about-bg.jpg', '2022-06-01 00:00:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
