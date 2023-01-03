-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_page
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `review_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,1,1,'This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply','2022-02-15 06:07:05',NULL),(2,1,2,'This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply\r\n\r\n','2022-02-15 06:08:30',NULL),(3,2,2,'This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply','2022-02-15 06:11:56',NULL),(4,1,1,'This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply This is a reply','2022-02-15 06:23:20',NULL),(5,4,1,'This is a reply This is a reply This is a reply This is a reply','2022-02-19 22:57:08',NULL),(6,5,1,'This is a reply This is a reply This is a reply This is a reply','2022-02-19 23:07:08',NULL),(7,6,1,'This is a reply This is a reply This is a reply This is a reply','2022-02-19 23:15:48',NULL),(8,7,1,'This is a reply','2022-02-19 23:18:51',NULL),(9,9,1,'Hello','2023-01-03 22:01:23',NULL);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'Leave a review Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-15 06:06:09',NULL),(2,2,'Leave a review Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-15 06:10:47',NULL),(3,1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-15 20:19:53',NULL),(4,1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-19 22:56:52',NULL),(5,1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-19 23:06:50',NULL),(6,1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-19 23:15:33',NULL),(7,1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum provident aspernatur totam quidem facilis quibusdam voluptates ratione distinctio numquam aut asperiores ab quae, laboriosam fugiat nihil laborum magnam ipsa itaque. Beatae dignissimos tempore aut voluptatem nisi magnam aliquid porro, iste, voluptate facilis esse eius voluptates ea eveniet ab quam sapiente? Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores eum nemo ratione dolorem enim incidunt placeat porro culpa optio adipisci voluptatibus quam dolores officia omnis ipsum corporis aliquid sunt molestias! Similique asperiores fugit explicabo consequuntur libero earum quidem dicta possimus rerum maiores, delectus placeat obcaecati. Eius dolore dicta perspiciatis!','2022-02-19 23:18:25',NULL),(8,1,'Hello','2023-01-03 21:30:31',NULL),(9,1,'Hi Cherry','2023-01-03 22:01:11',NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cherry','nepomuceno','cherry@gmail.com','12345678','2022-02-15 05:59:44','2022-02-15 05:59:44'),(2,'chita ','nepomuceno','chita@gmail.com','be54acbb0d2fb110c2c9754cb8711ff0','2022-02-15 06:07:50','2022-02-15 06:07:50'),(3,'cherry','nepomuceno','cherry@gmail.com','c0b2e1e0c5a67aac3ea40b64382056ae','2022-02-19 23:18:03','2022-02-19 23:18:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 22:03:19
