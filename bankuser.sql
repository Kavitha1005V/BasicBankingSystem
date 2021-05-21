

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Kavitha', 'Deepika', 1000, '2021-05-07 06:19:25'),
(2, 'Aishwarya', 'Abitha', 5000, '2021-05-07 06:23:46'),
(3, 'Jennifer', 'Aishwarya', 10000, '2021-05-07 06:25:07'),
(4, 'Abitha', 'Akshatha', 10000, '2021-05-08 06:31:25'),
(5, 'Akshatha', 'Ashok', 10000, '2021-05-08 07:43:34'),
(6, 'Akshita', 'Hajira', 20000, '2021-05-08 07:43:52'),
(7, 'Hajira', 'Payal', 15000, '2021-05-09 07:44:15'),
(8, 'Payal', 'Akshita', 20000, '2021-05-09 07:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Kavitha', 'kavitha@gmail.com', 50000),
(2, 'Aishwarya', 'Aishwarya@gmail.com', 85000),
(3, 'Jennifer', 'jennifer@gmail.com', 50000),
(4, 'Deepika', 'deepika@gmail.com', 50000),
(5, 'Abitha', 'abitha@gmail.com', 60000),
(6, 'Akshatha', 'akshatha@gmail.com', 85000),
(7, 'Akshita', 'akshita@gmail.com', 56000),
(8, 'Hajira', 'hajira@gmail.com', 50000),
(9, 'Payal', 'payal@gmail.com', 85000),
(10, 'Ashok', 'ashok@gmail.com', 105000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
