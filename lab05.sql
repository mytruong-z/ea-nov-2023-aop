-- -------------------------------------------------------------
-- TablePlus 5.9.0(538)
--
-- https://tableplus.com/
--
-- Database: lab05
-- Generation Time: 2024-04-06 17:24:30.5740
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `date` date DEFAULT NULL,
  `duration` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `operation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `price` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `activity_log` (`date`, `duration`, `id`, `operation`) VALUES
('2024-04-06', 119, 1, 'ProductController.getAll()'),
('2024-04-06', 44, 2, 'ProductController.create(..)'),
('2024-04-06', 8, 3, 'ProductController.create(..)'),
('2024-04-06', 5, 4, 'ProductController.create(..)'),
('2024-04-06', 6, 5, 'ProductController.create(..)'),
('2024-04-06', 4, 6, 'ProductController.create(..)'),
('2024-04-06', 6, 7, 'ProductController.create(..)'),
('2024-04-06', 4, 8, 'ProductController.create(..)'),
('2024-04-06', 12, 9, 'ProductController.getAll()'),
('2024-04-06', 4, 10, 'ProductController.getAll()'),
('2024-04-06', 6, 11, 'ProductController.getAll()'),
('2024-04-06', 5, 12, 'ProductController.getAll()'),
('2024-04-06', 6, 13, 'ProductController.create(..)');

INSERT INTO `product` (`price`, `rating`, `id`, `name`) VALUES
(3, 4, 1, 'Product 1'),
(3, 4, 2, 'Product 1'),
(3, 4, 3, 'Product 1'),
(3, 4, 4, 'Product 2'),
(3, 4, 5, 'Product 2'),
(3, 4, 6, 'Product 2'),
(3, 4, 7, 'Product 2'),
(3, 4, 8, 'Product 2');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;