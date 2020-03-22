-- MySQL dump 10.13  Distrib 5.7.27, for osx10.12 (x86_64)
--
-- Host: localhost    Database: strashelp
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `bodytext` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_publication` datetime NOT NULL,
  `id_category` int(11) NOT NULL,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'5 bonnes raisons de se mettre au bricolage',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue sem, egestas ac elit vitae, auctor tempus nisl. Maecenas eget cursus neque, in pulvinar eros. Proin pretium vehicula dignissim. Vestibulum laoreet luctus libero, quis suscipit dolor condimentum sit amet. Etiam laoreet tincidunt lacus nec euismod. Donec mattis libero semper pharetra malesuada. Mauris imperdiet eget enim ut accumsan. Praesent eu elit sit amet tortor posuere laoreet eget in quam. Vivamus id dapibus est. Aliquam erat volutpat. Mauris id eleifend odio. Vestibulum nibh ante, sodales eu risus eu, aliquet pretium felis. Nulla in nisl ac turpis maximus rhoncus. Curabitur efficitur at magna a efficitur. Cras gravida felis justo, id sollicitudin nunc lacinia vel. Aenean laoreet ultricies diam, vel elementum urna hendrerit non.',1,'2019-11-11 12:24:14','2019-11-14 18:00:00',1,'/assets/images/blog/background-blank-business-craft-301703.jpg'),(2,'Le sel : ennemi invisible',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue sem, egestas ac elit vitae, auctor tempus nisl. Maecenas eget cursus neque, in pulvinar eros. Proin pretium vehicula dignissim. Vestibulum laoreet luctus libero, quis suscipit dolor condimentum sit amet. Etiam laoreet tincidunt lacus nec euismod. Donec mattis libero semper pharetra malesuada. Mauris imperdiet eget enim ut accumsan. Praesent eu elit sit amet tortor posuere laoreet eget in quam. Vivamus id dapibus est. Aliquam erat volutpat. Mauris id eleifend odio. Vestibulum nibh ante, sodales eu risus eu, aliquet pretium felis. Nulla in nisl ac turpis maximus rhoncus. Curabitur efficitur at magna a efficitur. Cras gravida felis justo, id sollicitudin nunc lacinia vel. Aenean laoreet ultricies diam, vel elementum urna hendrerit non.',1,'2019-11-03 18:11:14','2019-11-07 18:00:00',2,'/assets/images/blog/white-and-brown-cooked-dish-on-white-ceramic-bowls-958545.jpg'),(3,'Quel livre offrir à Noël',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue sem, egestas ac elit vitae, auctor tempus nisl. Maecenas eget cursus neque, in pulvinar eros. Proin pretium vehicula dignissim. Vestibulum laoreet luctus libero, quis suscipit dolor condimentum sit amet. Etiam laoreet tincidunt lacus nec euismod. Donec mattis libero semper pharetra malesuada. Mauris imperdiet eget enim ut accumsan. Praesent eu elit sit amet tortor posuere laoreet eget in quam. Vivamus id dapibus est. Aliquam erat volutpat. Mauris id eleifend odio. Vestibulum nibh ante, sodales eu risus eu, aliquet pretium felis. Nulla in nisl ac turpis maximus rhoncus. Curabitur efficitur at magna a efficitur. Cras gravida felis justo, id sollicitudin nunc lacinia vel. Aenean laoreet ultricies diam, vel elementum urna hendrerit non.',1,'2019-11-19 09:53:14','2019-11-20 10:00:00',3,'/assets/images/blog/assorted-books-1122870.jpg'),(4,'Décortiquer les moules à la tronçoneuse','<p>Lorem im saoule</p>',1,'2019-11-21 14:20:56','2019-11-21 14:12:00',1,'/assets/images/blog/Default_Bricolage.jpg');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'bricolage'),(2,'cuisine'),(3,'éducation');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1,38,2),(2,38,4),(3,38,14),(4,1,2),(5,1,3),(6,4,1),(7,2,1),(8,3,1),(9,13,2),(10,13,38),(11,13,24),(14,1,38),(15,4,38),(16,2,38),(17,16,38),(18,15,38),(19,17,38),(20,38,1);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpmessage`
--

DROP TABLE IF EXISTS `helpmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `theme` varchar(80) NOT NULL,
  `message` text NOT NULL,
  `message_date` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpmessage`
--

LOCK TABLES `helpmessage` WRITE;
/*!40000 ALTER TABLE `helpmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword_post`
--

DROP TABLE IF EXISTS `keyword_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyword_post` (
  `id_keyword` int(11) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_post`
--

LOCK TABLES `keyword_post` WRITE;
/*!40000 ALTER TABLE `keyword_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword_user`
--

DROP TABLE IF EXISTS `keyword_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyword_user` (
  `id_keyword` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_user`
--

LOCK TABLES `keyword_user` WRITE;
/*!40000 ALTER TABLE `keyword_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ordre` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participate`
--

DROP TABLE IF EXISTS `participate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participate`
--

LOCK TABLES `participate` WRITE;
/*!40000 ALTER TABLE `participate` DISABLE KEYS */;
/*!40000 ALTER TABLE `participate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `id_category` int(11) NOT NULL,
  `start_hour` datetime DEFAULT NULL,
  `end_hour` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `date_publication` datetime NOT NULL,
  `text_annoucement` text NOT NULL,
  `nbmin` int(11) DEFAULT NULL,
  `nbmax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,0,'Cours de maths',2,'2019-11-15 14:00:00','2019-11-15 14:00:00',1,'2019-06-12 08:21:13',"je propose des cours de maths de la primaire jusqu'à la 3e",1,1),(2,1,'Montage de meubles',0,'2019-11-23 09:00:00','2019-11-23 09:00:00',2,'2019-07-14 12:14:13',"J'ai besoin d'aide pour monter un ensemble de meubles ikea. J'offre l'apéro et des cookies.",1,3),(3,0,'prêt de tondeuse',0,'2019-11-30 16:00:00','2019-11-30 16:00:00',3,'2019-06-23 23:04:36','Je pars 2 mois en vacances, et je peux prêter ma tondeuse pendant cette période.',1,1),(4,1,'Cuisine thaï',1,'2019-11-02 21:00:00','2019-11-02 21:00:00',4,'2019-08-31 14:56:54',"J'ai une soirée chez moi le 18 septembre et j'aurais besoin de quelqu'un qui sait cuisiner thaï",1,1),(5,1,'kour 2 fronçé',2,'2019-11-29 14:00:00','2019-11-29 14:00:00',5,'2019-10-18 09:46:13','G bezouin de kour de fronçé pour pacer le bac',1,1),(6,0,'Cours de yoga',2,'2019-11-11 19:00:00','2019-11-11 19:00:00',2,'2019-06-12 08:24:13','En ce jour des morts, je vous propose une journée de yoga pour nous ressourcer tous ensemble',4,8),(7,1,'cours Test 1',1,'2019-11-01 18:00:00','2019-11-01 18:00:00',1,'2019-11-12 14:43:31','Cours test n°1',1,15),(8,1,'cours Test 2',1,'2019-11-01 13:00:00','2019-11-01 13:00:00',2,'2019-11-12 14:43:31','Cours test n°2',1,15),(9,0,'cours Test 3',2,'2019-11-08 20:00:00','2019-11-08 20:00:00',1,'2019-11-12 14:43:31','Cours test n°3',1,15),(10,0,'cours Test 4',3,'2019-11-30 16:00:00','2019-11-30 16:00:00',1,'2019-11-12 14:43:31','Cours test n°4',1,15),(11,1,'cours Test 5',2,'2019-11-02 14:00:00','2019-11-02 14:00:00',1,'2019-11-12 14:43:31','Cours test n°5',1,15),(12,0,'cours Test 6',3,'2019-11-09 17:00:00','2019-11-09 17:00:00',1,'2019-11-12 14:43:31','Cours test n°6',1,15),(13,1,'cours Test 7',1,'2019-11-13 17:00:00','2019-11-13 17:00:00',1,'2019-11-12 14:43:31','Cours test n°7',1,15),(14,1,'cours Test 8',1,'2019-11-07 10:00:00','2019-11-07 10:00:00',1,'2019-11-12 14:43:31','Cours test n°8',1,15),(15,0,'test',1,'2019-11-05 20:00:00','2019-11-05 20:00:00',1,'2019-12-17 00:00:00','<p>fdqsfdsqfqf</p>',2,1),(16,0,'Cours de maths',2,'2019-11-04 19:00:00','2019-11-04 19:00:00',1,'2019-06-12 08:21:13',"je propose des cours de maths de la primaire jusqu'à la 3e",1,1),(30,0,'Cours de maths',2,'2019-12-05 22:00:00','2019-12-05 22:00:00',1,'2019-06-12 08:21:13',"je propose des cours de maths de la primaire jusqu'à la 3e",1,1),(31,1,'Montage de meubles',0,'2019-12-04 15:00:00','2019-12-04 15:00:00',2,'2019-07-14 12:14:13',"J'ai besoin d'aide pour monter un ensemble de meubles ikea. J'offre l'apéro et des cookies.",1,3),(32,0,'prêt de tondeuse',0,'2019-12-12 19:00:00','2019-12-12 19:00:00',3,'2019-06-23 23:04:36','Je pars 2 mois en vacances, et je peux prêter ma tondeuse pendant cette période.',1,1),(33,1,'Cuisine thaï',1,'2019-12-03 15:00:00','2019-12-03 15:00:00',4,'2019-08-31 14:56:54',"J'ai une soirée chez moi le 18 septembre et j'aurais besoin de quelqu'un qui sait cuisiner thaï",1,1),(34,1,'kour 2 fronçé',2,'2019-12-19 13:00:00','2019-12-19 13:00:00',5,'2019-10-18 09:46:13','G bezouin de kour de fronçé pour pacer le bac',1,1),(35,0,'Cours de yoga',2,'2019-12-22 14:00:00','2019-12-22 14:00:00',2,'2019-06-12 08:24:13','En ce jour des morts, je vous propose une journée de yoga pour nous ressourcer tous ensemble',4,8),(36,1,'cours Test 1',1,'2019-12-15 17:00:00','2019-12-15 17:00:00',1,'2019-11-12 14:43:31','Cours test n°1',1,15),(37,1,'cours Test 2',1,'2019-12-23 17:00:00','2019-12-23 17:00:00',2,'2019-11-12 14:43:31','Cours test n°2',1,15),(38,0,'cours Test 3',2,'2019-12-30 16:00:00','2019-12-30 16:00:00',1,'2019-11-12 14:43:31','Cours test n°3',1,15),(39,0,'cours Test 4',3,'2019-12-20 20:00:00','2019-12-20 20:00:00',1,'2019-11-12 14:43:31','Cours test n°4',1,15),(40,1,'cours Test 5',2,'2019-12-22 11:00:00','2019-12-22 11:00:00',1,'2019-11-12 14:43:31','Cours test n°5',1,15),(41,0,'cours Test 6',3,'2019-12-27 10:00:00','2019-12-27 10:00:00',1,'2019-11-12 14:43:31','Cours test n°6',1,15),(42,1,'cours Test 7',1,'2019-12-04 20:00:00','2019-12-04 20:00:00',1,'2019-11-12 14:43:31','Cours test n°7',1,15),(43,1,'cours Test 8',1,'2019-11-19 19:00:00','2019-11-19 22:00:00',1,'2019-11-12 14:43:31','Cours test n°8',1,15),(44,0,'COURS de couture ',1,'2019-11-15 19:00:00','2019-11-15 22:00:00',38,'2019-11-21 19:46:10','<p>Uniquement création, pas reprisage ni ourlet</p>',3,3);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postalert`
--

DROP TABLE IF EXISTS `postalert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postalert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(80) NOT NULL,
  `user_login` varchar(80) NOT NULL,
  `post_id` varchar(80) NOT NULL,
  `alert_message` text NOT NULL,
  `alert_date` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postalert`
--

LOCK TABLES `postalert` WRITE;
/*!40000 ALTER TABLE `postalert` DISABLE KEYS */;
INSERT INTO `postalert` VALUES (1,'1','berdup','8','fdqfds\r\n','2019-11-18',NULL),(2,'1','berdup','8','connasse','2019-11-18',NULL),(3,'1','berdup','8','dqfsdf','2019-11-18',NULL);
/*!40000 ALTER TABLE `postalert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pouet`
--

DROP TABLE IF EXISTS `pouet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pouet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pouet`
--

LOCK TABLES `pouet` WRITE;
/*!40000 ALTER TABLE `pouet` DISABLE KEYS */;
/*!40000 ALTER TABLE `pouet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,1,2),(2,2,1),(3,2,3),(4,2,4),(5,6,1),(6,6,4),(7,6,13),(8,12,13),(9,8,22),(10,8,1),(11,8,3),(12,8,4),(13,8,1);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `id_keyword` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  KEY `id_keyword` (`id_keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(120) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `adresse_1` text NOT NULL,
  `adresse_2` text,
  `zipcode` int(5) NOT NULL,
  `city` varchar(130) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `birthday` date NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `avatar` text,
  `password` text NOT NULL,
  `description` text,
  `bricolage` tinyint(1) DEFAULT NULL,
  `cuisine` tinyint(1) DEFAULT NULL,
  `éducation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'DUPONT','Bernard','berdup','5, rue des Oies','',67000,'Strasbourg','0612345678','bernard.dupont@wanadoo.fr','1963-12-12',1,'/assets/images/avatars/pexels-photo-220453.jpeg','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','',1,1,1),(2,'SCHNEIDER','Janine','MamieGateaux67','11, allée des Chats',NULL,67000,'Strasbourg','0388736173','janine.schneider@hotmail.fr','1948-03-07',0,'/assets/images/profil.png','39dfa55283318d31afe5a3ff4a0e3253e2045e43',NULL,0,0,0),(3,'STEIN','Berthe','Berthy','1, rue Pressante',NULL,67000,'Strasbourg','0612121212','brethy@gmail.fr','1972-08-21',0,'/assets/images/profil.png','011c945f30ce2cbafc452f39840f025693339c42',NULL,0,1,0),(4,'PNOUT','Kévin','KevP','23, place Gutenberg',NULL,67000,'Strasbourg','0734251324','kevin.pnout@gmail.fr','2000-01-14',0,'/assets/images/profil.png','cb5e83048572cb97499e0066a8e6413c4b0a28da',NULL,1,0,1),(13,'ffdqsmf','fdqslmkf','comtedex','11 rue des poissons','11 rue des poissons',67000,'STRASBOURG','0606060606','a@a.com','1979-10-23',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',1,1,0),(14,'AAa','AA','AAAAA','dazd','dqsdsq',67000,'STRASBOURG','0600000000','aa@a.com','1901-01-01',0,'/assets/images/profil.png','fe1fc4e50cceefb2845a887c1133524eabd72790','il fait beau',0,1,1),(15,'azer','a','abcd','11, rue des Lilas','',67100,'STRASBOURG','0681918191','a@a.com','1979-10-23',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',0,0,1),(16,'Bursa','Atilla','atilla','11, rue des Lilas','',67000,'STRASBOURG','0606060600','atilla@bursa.com','1998-03-10',0,'/assets/images/profil.png','fe1fc4e50cceefb2845a887c1133524eabd72790','',1,0,1),(17,'Comte','de X','comtedex2','42, rue des Oiseaux','',67000,'STRASBOURG','0606060606','comtedex@gmail.com','1979-10-23',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',0,1,0),(18,'aer','earz','velo','earaezra','',67000,'STRASBOURG','0691919191','a@a.com','1979-10-23',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',1,0,0),(19,'mamis','baba','mamie','37, rue des Oiseaux','',67100,'STRASBOURG','0300000010','baba@baba.com','1934-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','J\'aime le chocolat',1,1,0),(20,'ffdggdf','ggfsdg','bidule','gdgg','g',67000,'STRASBOURG','0612345678','abc@a.com','1921-01-05',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',0,1,1),(21,'fdqsf','ffsqdf','pjpoj','fqfdsqds','',67000,'STRASBOURG','0612345678','pj@pj.com','1921-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',0,1,0),(22,'fsqfd','fqsfdsdfdqs','toto','fdqsfd','',67000,'STRASBOURG','0612345678','ab@a.com','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','',1,0,1),(23,'lk','lk,','pikachu','dfsfd','lk',67000,'STRASBOURG','0612345678','123@a.com','1920-01-01',0,'/assets/images/profil.png','87318118c0bd038019ae30dc18f180fa9a12fb57','',0,1,1),(24,'lk','lk,','pikachu2','dfsfd','lk',67000,'STRASBOURG','0612345678','1234@a.com','1920-01-01',0,'/assets/images/profil.png','87318118c0bd038019ae30dc18f180fa9a12fb57','',1,1,1),(25,'fsqfd','fdqf','machine','fdqfsd','',67000,'STRASBOURG','0612345678','aa@aaaaa.xom','1920-01-01',0,'/assets/images/profil.png','ab3ecd66e7f9f5a1ef7224e92a20ee36a231f37f','',1,0,0),(26,'fdsqf','kjnflkj','erazrea','flksnqffss','f',67000,'STRASBOURG','0612345678','aezra@eztarea.ezar','1920-01-01',0,'/assets/images/profil.png','0d9ffc30e8f5dd15fbebd092cc641f63cf87d3cf','fdqfdsqfdsqfsdf',NULL,NULL,NULL),(27,'kljn','lkjnl','Entree23','kjblb','lkjb',67000,'STRASBOURG','0612345678','entree23@gmail.com','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','lknmlknm',1,0,1),(28,'fqsmoi','moifmnqdk','TEmsejfnmsqf','fdmqsiofksq','',67000,'STRASBOURG','0612345678','123@aaa.com','1920-01-01',0,'/assets/images/avatars/avatar_5dcef757db9d1.jpg','a90544e8e79f1fa4e60b08438d0b415e89052acd','fdqdfqsdf',1,1,1),(29,'flsqjkn','kljn','fqfdqs','kjb','',67000,'STRASBOURG','0612345678','entree23@gmail.coma','1920-01-01',0,'/assets/images/avatars/avatar_5dcef7c1a9b27.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','Je suis trop fort',1,0,1),(30,'flsqjkn','kljn','fqfdqsss','kjb','',67000,'STRASBOURG','0612345678','entree23@gmail.comab','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','Je suis trop fort',1,0,1),(31,'pojfqds','moqdsfmlk','pouet','smldfkqmlsdk','',67000,'STRASBOURG','0606060606','pouet@pouet.pouet','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','Il y a une photo de profil',1,0,0),(32,'AP','ap','POI','fqmdsoifj','',67000,'STRASBOURG','0606060606','poi@poi.poi','1920-01-01',0,'/assets/images/avatars/avatar_5dcefe6853874.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','CJO',1,0,0),(33,'hio','pik','lmksqfjdmlqks','ink','',67000,'STRASBOURG','0612345678','ohoh@oh.oh','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','fsqfsdfqsdf',1,0,0),(34,'Aazdf','efds','hohoh','fdsgr','',67000,'STRASBOURG','0612345678','hohoh@hohoh.com','1920-01-01',0,'/assets/images/avatars/avatar_5dcf03279254b.jpg','e2c00126859b4102392e5a8e73f0b4a2534b26d9','photo mise',1,1,0),(35,'fgh','jknjn','kllglglgiugi','&11','',67000,'STRASBOURG','0388888888','aqw@aw.c','1920-01-01',0,'/assets/images/avatars/avatar_5dcf0cfdd4472.png','fcce1d7b26bd40bf46789eede8da797782b2fcaa','lkk',1,0,0),(36,'fEd','fdqsf','foairjfoi','fdoqifdjsf','',67000,'STRASBOURG','0388888888','1111@1111.com','1920-01-01',0,'/assets/images/profil.png','44d41bc624514ae9c22172682e309462e390b5c2','',0,0,0),(37,'lfdksqf','fdsqijfd','sfdqfs','fdsqoifjqsd','',67000,'STRASBOURG','0388888888','hohoh@hohoho.com','1920-01-01',0,'/assets/images/profil.png','fe1fc4e50cceefb2845a887c1133524eabd72790','',0,0,0),(38,'Dupont','Marguerite','Mardup','par là','',67000,'STRASBOURG','0612345678','mardup@gmail.com','1920-01-01',0,'/assets/images/profil.png','a90544e8e79f1fa4e60b08438d0b415e89052acd','J&#039;en peux plus de Berdup, il m\'énerve',0,1,0),(39,'Maria','Maria','maria','12, rue des Pouets','',67000,'STRASBOURG','0388888888','maria.maria@maria.com','1920-01-01',0,'/assets/images/avatars/avatars_5dd7b6549d840.jpg','a90544e8e79f1fa4e60b08438d0b415e89052acd','J&#039;aime les sushis',1,0,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useralert`
--

DROP TABLE IF EXISTS `useralert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useralert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `user_login` varchar(80) NOT NULL,
  `signaled_user_id` varchar(150) NOT NULL,
  `alert_message` text NOT NULL,
  `alert_date` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useralert`
--

LOCK TABLES `useralert` WRITE;
/*!40000 ALTER TABLE `useralert` DISABLE KEYS */;
INSERT INTO `useralert` VALUES (1,'1','berdup','2','je ne la supporte pas','2019-11-16',NULL);
/*!40000 ALTER TABLE `useralert` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 19:54:47
