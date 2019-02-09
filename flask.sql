CREATE TABLE IF NOT EXISTS `phone_book` (
  `id` int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_book`
--

INSERT INTO `phone_book` (`id`, `name`, `phone`, `address`) VALUES
(1, 'Hendi Santika', '081321411551', 'Bandung'),
(2, 'Uzumaki Naruto', '081321411552', 'Bandung'),
(3, 'Uchiha Sasuke', '081321411553', 'Bandung'),
(4, 'Haruno Sakura', '081321411554', 'Bandung'),
(5, 'Hatake Kakashi', '081321411555', 'Bandung');
