-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retail_store
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
-- Table structure for table `add_to_cart`
--

DROP TABLE IF EXISTS `add_to_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_to_cart` (
  `cart_id` int NOT NULL,
  `c_id` int NOT NULL,
  `p_id` int NOT NULL,
  `quantity` int NOT NULL,
  `purchased` varchar(5) NOT NULL,
  `time_added` time NOT NULL,
  PRIMARY KEY (`cart_id`,`time_added`,`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_cart`
--

LOCK TABLES `add_to_cart` WRITE;
/*!40000 ALTER TABLE `add_to_cart` DISABLE KEYS */;
INSERT INTO `add_to_cart` VALUES (1,1,1,4,'TRUE','04:30:56'),(2,2,2,7,'TRUE','01:56:12'),(3,3,3,2,'TRUE','08:27:58'),(4,4,4,7,'TRUE','19:52:29'),(5,5,5,2,'TRUE','02:09:39'),(6,6,6,8,'TRUE','09:40:45'),(7,7,7,1,'TRUE','01:07:50'),(8,8,8,5,'TRUE','11:14:33'),(9,9,9,4,'TRUE','21:58:43'),(10,10,10,1,'TRUE','06:36:31'),(11,11,11,8,'TRUE','15:00:43'),(12,12,12,8,'TRUE','03:17:44'),(13,13,13,1,'TRUE','09:04:51'),(14,14,14,1,'TRUE','00:35:07'),(15,15,15,1,'TRUE','09:41:49'),(16,16,16,1,'TRUE','05:50:37'),(17,17,17,2,'TRUE','19:58:13'),(18,18,18,5,'TRUE','03:14:11'),(19,19,19,7,'TRUE','06:44:18'),(20,20,20,1,'TRUE','22:25:32'),(21,21,21,8,'TRUE','06:59:43'),(22,22,22,2,'TRUE','15:10:53'),(23,23,23,4,'TRUE','11:35:44'),(24,24,24,4,'TRUE','16:06:43'),(25,25,25,7,'TRUE','12:16:02'),(26,26,26,5,'TRUE','03:07:02'),(27,27,27,6,'TRUE','18:46:57'),(28,28,28,4,'TRUE','05:37:29'),(29,29,29,7,'TRUE','13:48:40'),(30,30,30,2,'TRUE','22:41:11'),(31,31,31,4,'TRUE','18:57:25'),(32,32,32,2,'TRUE','16:32:29'),(33,33,33,8,'TRUE','05:21:10'),(34,34,34,3,'TRUE','05:56:03'),(35,35,35,1,'TRUE','11:00:01'),(36,36,36,3,'TRUE','06:54:40'),(37,37,37,8,'TRUE','20:55:52'),(38,38,38,5,'TRUE','20:43:28'),(39,39,39,3,'TRUE','08:56:59'),(40,40,40,5,'TRUE','00:19:38'),(41,41,41,5,'TRUE','06:29:47'),(42,42,42,6,'TRUE','02:53:02'),(43,43,43,3,'TRUE','08:30:48'),(44,44,44,2,'TRUE','19:30:26'),(45,45,45,1,'TRUE','09:30:23'),(46,46,46,4,'TRUE','04:24:43'),(47,47,47,4,'TRUE','14:56:14'),(48,48,48,8,'TRUE','20:47:36'),(49,49,49,8,'TRUE','15:58:56'),(50,50,50,5,'TRUE','11:02:29');
/*!40000 ALTER TABLE `add_to_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `main_line` varchar(60) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `postal_code` int NOT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'995 Northview Hill','Tulsa','Oklahoma','United States',74108,'The Noodle Fox'),(2,'4018 Green Plaza','Memphis','Tennessee','United States',38131,''),(3,'66 Merry Trail','Merrifield','Virginia','United States',22119,''),(4,'47095 Melby Road','Denver','Colorado','United States',80217,''),(5,'376 Tennessee Circle','Philadelphia','Pennsylvania','United States',19104,''),(6,'0551 Briar Crest Junction','Jamaica','New York','United States',11436,''),(7,'9647 Muir Drive','Newark','New Jersey','United States',7104,''),(8,'767 Saint Paul Point','Tacoma','Washington','United States',98424,''),(9,'996 Green Ridge Terrace','Palo Alto','California','United States',94302,''),(10,'59 Onsgard Lane','Las Vegas','Nevada','United States',89130,''),(11,'21 Gerald Street','Saint Petersburg','Florida','United States',33705,''),(12,'5802 Loomis Parkway','Albuquerque','New Mexico','United States',87140,''),(13,'6714 Glendale Junction','Danbury','Connecticut','United States',6816,''),(14,'69 Becker Pass','New York City','New York','United States',10099,''),(15,'8 Kenwood Street','Dallas','Texas','United States',75246,''),(16,'93 David Avenue','Saint Louis','Missouri','United States',63167,''),(17,'4 Redwing Court','Dallas','Texas','United States',75277,''),(18,'3 Gulseth Court','San Antonio','Texas','United States',78235,''),(19,'45 Vera Lane','Topeka','Kansas','United States',66622,''),(20,'5 Luster Center','Colorado Springs','Colorado','United States',80910,''),(21,'3 Carioca Street','Washington','District of Columbia','United States',20397,''),(22,'519 Mosinee Crossing','Trenton','New Jersey','United States',8608,'The Moroccan Chef'),(23,'0073 Thompson Trail','Temple','Texas','United States',76505,''),(24,'10156 Monterey Parkway','Wilmington','Delaware','United States',19805,''),(25,'8102 Packers Parkway','San Bernardino','California','United States',92410,''),(26,'182 Barnett Parkway','Fort Wayne','Indiana','United States',46852,''),(27,'69 Fisk Park','Stamford','Connecticut','United States',6922,''),(28,'23810 Grover Court','Detroit','Michigan','United States',48211,''),(29,'12523 Sugar Street','Wichita Falls','Texas','United States',76305,''),(30,'86 Welch Alley','Columbus','Ohio','United States',43210,''),(31,'234 Farmco Avenue','Tacoma','Washington','United States',98447,''),(32,'0280 Hoepker Alley','Jackson','Mississippi','United States',39296,''),(33,'256 Vera Crossing','San Antonio','Texas','United States',78265,''),(34,'75484 Autumn Leaf Crossing','Nashville','Tennessee','United States',37245,''),(35,'200 Arkansas Junction','Winter Haven','Florida','United States',33884,''),(36,'24605 Buell Alley','El Paso','Texas','United States',88546,''),(37,'75759 Tennyson Circle','Birmingham','Alabama','United States',35225,''),(38,'75 Banding Court','Gulfport','Mississippi','United States',39505,''),(39,'40608 Village Pass','Reno','Nevada','United States',89519,'The Winter Victory'),(40,'799 East Plaza','Chicago','Illinois','United States',60681,''),(41,'783 Ryan Place','New Brunswick','New Jersey','United States',8922,''),(42,'24103 Tomscot Street','Springfield','Ohio','United States',45505,''),(43,'2 Moulton Terrace','Milwaukee','Wisconsin','United States',53225,''),(44,'5 Wayridge Place','Jamaica','New York','United States',11436,''),(45,'25239 2nd Circle','Chicago','Illinois','United States',60657,''),(46,'4 Northridge Terrace','Saint Louis','Missouri','United States',63180,''),(47,'4140 Cottonwood Parkway','Bradenton','Florida','United States',34205,''),(48,'4 Kennedy Trail','Columbus','Ohio','United States',43284,''),(49,'003 Luster Plaza','Lansing','Michigan','United States',48930,''),(50,'344 Killdeer Trail','Tucson','Arizona','United States',85720,''),(51,'97730 Sloan Place','South Bend','Indiana','United States',46634,''),(52,'557 Oakridge Road','Decatur','Illinois','United States',62525,''),(53,'949 Quincy Plaza','Portland','Oregon','United States',97240,''),(54,'145 Cambridge Drive','Tacoma','Washington','United States',98464,''),(55,'03 Valley Edge Hill','Austin','Texas','United States',78783,''),(56,'39 Anderson Park','Milwaukee','Wisconsin','United States',53220,''),(57,'214 Dayton Lane','Suffolk','Virginia','United States',23436,''),(58,'0 Heffernan Pass','Milwaukee','Wisconsin','United States',53210,''),(59,'9 2nd Road','Trenton','New Jersey','United States',8619,''),(60,'59502 Glendale Alley','Atlanta','Georgia','United States',31165,''),(61,'443 Oakridge Place','Dayton','Ohio','United States',45408,''),(62,'308 8th Plaza','Portland','Oregon','United States',97271,''),(63,'83979 Ridgeview Hill','San Diego','California','United States',92115,''),(64,'597 Mallard Terrace','Norfolk','Virginia','United States',23514,''),(65,'34 Logan Plaza','Los Angeles','California','United States',90055,''),(66,'80667 Trailsway Drive','Seattle','Washington','United States',98104,''),(67,'23 Dakota Plaza','Tampa','Florida','United States',33633,''),(68,'618 Glendale Plaza','Saint Louis','Missouri','United States',63121,''),(69,'420 School Way','Bakersfield','California','United States',93399,''),(70,'11118 Sage Terrace','Amarillo','Texas','United States',79176,''),(71,'7784 Michigan Point','Fresno','California','United States',93726,''),(72,'833 Harper Drive','Chico','California','United States',95973,''),(73,'529 Chinook Alley','Battle Creek','Michigan','United States',49018,''),(74,'6 Eliot Street','Birmingham','Alabama','United States',35290,''),(75,'983 Cordelia Road','Las Vegas','Nevada','United States',89145,''),(76,'71 Forster Hill','Jackson','Mississippi','United States',39282,''),(77,'19943 Main Point','Lexington','Kentucky','United States',40581,''),(78,'8511 Melvin Point','Tucson','Arizona','United States',85748,'near Catch'),(79,'35 Haas Terrace','Cincinnati','Ohio','United States',45213,''),(80,'07 Macpherson Drive','Cleveland','Ohio','United States',44197,''),(81,'13 Schiller Pass','Baton Rouge','Louisiana','United States',70826,''),(82,'038 International Hill','Pasadena','California','United States',91109,''),(83,'74 Loftsgordon Court','Atlanta','Georgia','United States',30340,''),(84,'54165 Crest Line Terrace','Jersey City','New Jersey','United States',7310,''),(85,'4 Lakeland Crossing','Shreveport','Louisiana','United States',71137,''),(86,'0 Esch Junction','Tampa','Florida','United States',33661,''),(87,'26 Green Ridge Center','Corpus Christi','Texas','United States',78470,''),(88,'223 Stang Park','Fairbanks','Alaska','United States',99790,''),(89,'68 Esch Trail','New Bedford','Massachusetts','United States',2745,''),(90,'70459 Charing Cross Point','Saint Louis','Missouri','United States',63180,''),(91,'53955 Gateway Place','Winston Salem','North Carolina','United States',27157,''),(92,'82251 Service Place','San Francisco','California','United States',94105,''),(93,'9814 Florence Trail','Herndon','Virginia','United States',22070,''),(94,'3 Paget Lane','Jamaica','New York','United States',11480,''),(95,'0 Oneill Place','Kansas City','Missouri','United States',64153,''),(96,'379 Pleasure Parkway','Dayton','Ohio','United States',45419,''),(97,'6108 Kensington Pass','Abilene','Texas','United States',79605,''),(98,'25069 Fair Oaks Trail','Scottsdale','Arizona','United States',85255,''),(99,'8 Luster Parkway','San Bernardino','California','United States',92410,''),(100,'5562 Muir Way','Akron','Ohio','United States',44393,''),(101,'94519 Carberry Crossing','El Paso','Texas','United States',79923,''),(102,'84 Truax Park','Fresno','California','United States',93726,''),(103,'39838 Hanson Crossing','Manchester','New Hampshire','United States',3105,''),(104,'8 Upham Road','Saint Louis','Missouri','United States',63143,''),(105,'495 Gulseth Place','Brea','California','United States',92822,''),(106,'61874 Katie Trail','Mobile','Alabama','United States',36670,''),(107,'38 Coleman Alley','Los Angeles','California','United States',90050,''),(108,'35196 Pearson Circle','Amarillo','Texas','United States',79176,''),(109,'4679 Cardinal Trail','Chicago','Illinois','United States',60697,''),(110,'47410 Thompson Park','Wilmington','Delaware','United States',19805,''),(111,'85 Cascade Circle','Fort Lauderdale','Florida','United States',33355,''),(112,'80 Independence Street','Largo','Florida','United States',33777,''),(113,'32 Porter Circle','Fort Wayne','Indiana','United States',46862,''),(114,'60 International Parkway','Wichita','Kansas','United States',67260,''),(115,'36403 Claremont Place','Greensboro','North Carolina','United States',27455,''),(116,'927 Miller Point','New York City','New York','United States',10249,''),(117,'2 Stone Corner Place','Des Moines','Iowa','United States',50393,''),(118,'0389 Walton Court','Birmingham','Alabama','United States',35263,''),(119,'3185 Crownhardt Avenue','Tulsa','Oklahoma','United States',74149,''),(120,'23 Forest Terrace','Rochester','New York','United States',14646,''),(121,'0129 Lawn Way','Fort Worth','Texas','United States',76105,''),(122,'888 Westend Place','Houston','Texas','United States',77260,''),(123,'38 Westport Street','San Francisco','California','United States',94137,''),(124,'5 Blackbird Center','Shawnee Mission','Kansas','United States',66225,''),(125,'76143 3rd Plaza','Stamford','Connecticut','United States',6912,''),(126,'9461 Hooker Lane','Daytona Beach','Florida','United States',32123,''),(127,'07 Manley Center','Sacramento','California','United States',94263,''),(128,'69 Glacier Hill Point','San Francisco','California','United States',94121,''),(129,'39 Comanche Court','Roanoke','Virginia','United States',24040,''),(130,'47275 Dakota Crossing','Peoria','Illinois','United States',61640,''),(131,'2119 Talisman Pass','Fort Pierce','Florida','United States',34949,''),(132,'84 Dennis Court','Washington','District of Columbia','United States',20420,''),(133,'645 Talisman Park','Louisville','Kentucky','United States',40250,''),(134,'4940 Kipling Circle','Saint Louis','Missouri','United States',63143,''),(135,'513 Vera Center','New Castle','Pennsylvania','United States',16107,''),(136,'01443 Mariners Cove Park','Springfield','Ohio','United States',45505,''),(137,'7 Daystar Point','Cheyenne','Wyoming','United States',82007,''),(138,'0532 Arapahoe Alley','Mobile','Alabama','United States',36628,''),(139,'64 Crowley Plaza','Saint Louis','Missouri','United States',63110,''),(140,'1 Laurel Circle','Anchorage','Alaska','United States',99512,''),(141,'6 Harper Circle','San Francisco','California','United States',94164,''),(142,'2192 Sloan Place','Omaha','Nebraska','United States',68117,''),(143,'7830 Manufacturers Road','Atlanta','Georgia','United States',31119,''),(144,'0 Cardinal Parkway','Los Angeles','California','United States',90020,''),(145,'89 Maple Wood Trail','Hialeah','Florida','United States',33013,''),(146,'95 Warrior Junction','Austin','Texas','United States',78778,''),(147,'1318 2nd Trail','Knoxville','Tennessee','United States',37939,'Little Persia'),(148,'5964 Old Gate Terrace','San Mateo','California','United States',94405,''),(149,'3985 Moland Street','Santa Ana','California','United States',92705,''),(150,'6 Calypso Alley','Virginia Beach','Virginia','United States',23454,''),(151,'805 Crest Line Circle','Houston','Texas','United States',77020,''),(152,'15 Lien Crossing','North Hollywood','California','United States',91606,''),(153,'80 Lerdahl Crossing','Los Angeles','California','United States',90045,''),(154,'4 Badeau Park','Roanoke','Virginia','United States',24024,''),(155,'62077 Karstens Terrace','Tallahassee','Florida','United States',32399,''),(156,'1897 Superior Road','Portsmouth','Virginia','United States',23705,''),(157,'8 Ridge Oak Point','Norfolk','Virginia','United States',23509,''),(158,'8 Carberry Place','Baltimore','Maryland','United States',21275,''),(159,'1506 Monument Way','Roanoke','Virginia','United States',24034,''),(160,'790 Orin Place','Wichita Falls','Texas','United States',76305,'beside Elements'),(161,'24 Logan Place','Naples','Florida','United States',33963,''),(162,'80 Charing Cross Pass','El Paso','Texas','United States',79905,''),(163,'23536 Oxford Hill','Reno','Nevada','United States',89505,''),(164,'13 Jenifer Junction','Indianapolis','Indiana','United States',46266,''),(165,'6 Lillian Pass','New York City','New York','United States',10029,''),(166,'1501 Corben Hill','Santa Barbara','California','United States',93111,''),(167,'5 Center Road','Minneapolis','Minnesota','United States',55423,''),(168,'967 Tennessee Lane','Milwaukee','Wisconsin','United States',53263,''),(169,'522 Oneill Trail','Fresno','California','United States',93704,''),(170,'7364 Quincy Park','Saint Louis','Missouri','United States',63116,''),(171,'56517 American Ash Street','Henderson','Nevada','United States',89074,''),(172,'3 Fallview Alley','Anaheim','California','United States',92812,''),(173,'3815 Meadow Valley Point','Washington','District of Columbia','United States',20409,''),(174,'2 Ridgeview Center','Rockville','Maryland','United States',20851,''),(175,'82466 Dahle Junction','Bryan','Texas','United States',77806,''),(176,'273 Gerald Street','Erie','Pennsylvania','United States',16510,''),(177,'4 Mallory Point','Richmond','Virginia','United States',23228,''),(178,'57674 Delaware Point','Birmingham','Alabama','United States',35242,''),(179,'1885 Blackbird Trail','Charlotte','North Carolina','United States',28289,''),(180,'6673 Garrison Place','Buffalo','New York','United States',14210,''),(181,'205 Kensington Drive','San Jose','California','United States',95160,''),(182,'06 Morningstar Street','Chicago','Illinois','United States',60604,''),(183,'9 Hermina Way','Inglewood','California','United States',90398,''),(184,'6 Continental Circle','Tulsa','Oklahoma','United States',74108,''),(185,'099 Golden Leaf Crossing','Topeka','Kansas','United States',66667,''),(186,'86677 Killdeer Court','Eugene','Oregon','United States',97405,''),(187,'941 Monterey Point','Winston Salem','North Carolina','United States',27116,''),(188,'3 Oriole Pass','Cincinnati','Ohio','United States',45208,''),(189,'419 Bowman Court','Cumming','Georgia','United States',30130,''),(190,'2300 Melrose Street','Santa Rosa','California','United States',95405,''),(191,'651 Pennsylvania Trail','Milwaukee','Wisconsin','United States',53263,''),(192,'9 Linden Street','Grand Junction','Colorado','United States',81505,''),(193,'4 Ruskin Drive','Pasadena','California','United States',91131,''),(194,'63230 Boyd Center','Davenport','Iowa','United States',52804,''),(195,'368 Westerfield Alley','Richmond','Virginia','United States',23208,''),(196,'07123 Rowland Drive','Youngstown','Ohio','United States',44511,'The Malt Heart'),(197,'923 Chinook Hill','Canton','Ohio','United States',44760,''),(198,'269 Bunting Lane','Lexington','Kentucky','United States',40505,''),(199,'5 Texas Avenue','Youngstown','Ohio','United States',44511,''),(200,'3452 Vermont Alley','Jacksonville','Florida','United States',32236,''),(201,'32121 Division Alley','San Jose','California','United States',95160,''),(202,'88886 Hooker Parkway','Columbia','Missouri','United States',65211,''),(203,'40 Duke Center','Pueblo','Colorado','United States',81010,''),(204,'430 Dryden Terrace','Springfield','Massachusetts','United States',1129,''),(205,'29608 Claremont Crossing','Orlando','Florida','United States',32808,''),(206,'60363 Montana Court','Charlotte','North Carolina','United States',28242,''),(207,'1 Russell Parkway','Sacramento','California','United States',94273,''),(208,'94608 Chinook Point','Washington','District of Columbia','United States',20442,''),(209,'5396 Heffernan Way','Fort Lauderdale','Florida','United States',33330,''),(210,'41 Karstens Avenue','Oklahoma City','Oklahoma','United States',73129,'Acapella bar'),(211,'1 Kropf Trail','Decatur','Georgia','United States',30033,''),(212,'85883 Twin Pines Park','Youngstown','Ohio','United States',44505,''),(213,'55575 Grasskamp Hill','Tacoma','Washington','United States',98481,''),(214,'72194 Old Gate Place','Flint','Michigan','United States',48550,''),(215,'14919 Gateway Drive','Toledo','Ohio','United States',43635,''),(216,'75 Loftsgordon Street','Charleston','South Carolina','United States',29411,''),(217,'9403 Atwood Hill','Atlanta','Georgia','United States',31190,''),(218,'65 Schmedeman Place','Richmond','Virginia','United States',23277,''),(219,'33262 Schmedeman Place','New Castle','Pennsylvania','United States',16107,''),(220,'23 Derek Place','Fort Wayne','Indiana','United States',46805,''),(221,'9858 Dryden Plaza','Pueblo','Colorado','United States',81015,''),(222,'8997 Farmco Drive','El Paso','Texas','United States',79968,''),(223,'92298 Scofield Circle','Juneau','Alaska','United States',99812,''),(224,'5915 Florence Center','Aurora','Illinois','United States',60505,''),(225,'1 Schlimgen Point','Amarillo','Texas','United States',79116,''),(226,'679 Laurel Terrace','Knoxville','Tennessee','United States',37924,''),(227,'8 Vernon Road','Phoenix','Arizona','United States',85062,''),(228,'829 Lakeland Parkway','Alexandria','Virginia','United States',22309,''),(229,'52799 Hermina Road','Tallahassee','Florida','United States',32314,''),(230,'04 Rigney Alley','Norman','Oklahoma','United States',73071,''),(231,'5 Tomscot Trail','Fresno','California','United States',93715,''),(232,'040 Algoma Park','Albany','New York','United States',12237,''),(233,'0325 Brown Hill','Youngstown','Ohio','United States',44505,''),(234,'0 Anthes Drive','Fort Pierce','Florida','United States',34981,''),(235,'0 Spenser Avenue','Kansas City','Missouri','United States',64199,''),(236,'99 Arizona Center','Delray Beach','Florida','United States',33448,''),(237,'59 Aberg Way','Portland','Oregon','United States',97255,''),(238,'245 Jackson Point','Phoenix','Arizona','United States',85072,''),(239,'1513 Merchant Junction','New York City','New York','United States',10105,''),(240,'17 Hollow Ridge Junction','Vero Beach','Florida','United States',32969,''),(241,'685 5th Court','Orlando','Florida','United States',32803,''),(242,'51340 Harbort Road','El Paso','Texas','United States',88569,''),(243,'78074 Harper Street','Greeley','Colorado','United States',80638,''),(244,'03766 Eagan Place','Little Rock','Arkansas','United States',72222,''),(245,'3081 Oak Valley Center','Houston','Texas','United States',77276,''),(246,'56 Rutledge Drive','San Jose','California','United States',95194,''),(247,'39505 Bartelt Hill','Nashville','Tennessee','United States',37210,''),(248,'63 Bashford Junction','Inglewood','California','United States',90310,''),(249,'88513 Pepper Wood Point','Phoenix','Arizona','United States',85025,''),(250,'17442 Golf View Point','Elizabeth','New Jersey','United States',7208,''),(251,'32 Talmadge Lane','Pueblo','Colorado','United States',81015,''),(252,'000 Garrison Point','Springfield','Massachusetts','United States',1105,''),(253,'796 Lakewood Street','Tucson','Arizona','United States',85720,''),(254,'45799 Messerschmidt Place','Shreveport','Louisiana','United States',71137,''),(255,'43 Springs Trail','Tucson','Arizona','United States',85725,''),(256,'8896 Jana Junction','Miami','Florida','United States',33233,''),(257,'2 Coolidge Circle','Baton Rouge','Louisiana','United States',70836,'opposite to The Nomad'),(258,'19450 Clemons Junction','Spokane','Washington','United States',99215,''),(259,'83708 Gale Parkway','Humble','Texas','United States',77346,''),(260,'779 Superior Hill','Columbus','Ohio','United States',43204,''),(261,'22888 Commercial Point','Austin','Texas','United States',78721,''),(262,'46502 Bellgrove Hill','Washington','District of Columbia','United States',20073,''),(263,'1736 Calypso Hill','Lakeland','Florida','United States',33805,''),(264,'30779 Jay Place','Shawnee Mission','Kansas','United States',66210,''),(265,'88 Fair Oaks Junction','Petaluma','California','United States',94975,''),(266,'295 Birchwood Circle','San Jose','California','United States',95155,''),(267,'03422 Briar Crest Hill','San Antonio','Texas','United States',78240,''),(268,'8958 Delaware Plaza','Seminole','Florida','United States',34642,''),(269,'2 Pearson Drive','Waltham','Massachusetts','United States',2453,''),(270,'9552 Meadow Valley Street','Mobile','Alabama','United States',36689,''),(271,'4 Corscot Lane','Columbus','Ohio','United States',43240,''),(272,'75 Thackeray Pass','Miami','Florida','United States',33153,''),(273,'67433 Namekagon Way','Seminole','Florida','United States',34642,''),(274,'6075 Gulseth Drive','San Antonio','Texas','United States',78240,''),(275,'03055 Kropf Court','Fort Worth','Texas','United States',76192,''),(276,'37305 Village Terrace','Arlington','Virginia','United States',22212,''),(277,'83 Caliangt Crossing','Boston','Massachusetts','United States',2114,''),(278,'66578 Golf View Circle','Palm Bay','Florida','United States',32909,''),(279,'294 Mcguire Place','Southfield','Michigan','United States',48076,''),(280,'140 Tennessee Alley','Lincoln','Nebraska','United States',68531,''),(281,'284 Pond Avenue','Montgomery','Alabama','United States',36195,''),(282,'5964 Lerdahl Court','Roanoke','Virginia','United States',24034,''),(283,'54 Heffernan Pass','Canton','Ohio','United States',44705,''),(284,'18856 Butterfield Plaza','Anchorage','Alaska','United States',99517,''),(285,'548 Vidon Court','Trenton','New Jersey','United States',8608,''),(286,'81 Sycamore Avenue','Spokane','Washington','United States',99252,''),(287,'47814 Evergreen Drive','Atlanta','Georgia','United States',30328,''),(288,'118 Farwell Court','Alexandria','Virginia','United States',22333,''),(289,'44064 Vera Pass','Washington','District of Columbia','United States',20041,''),(290,'47 Ridgeview Trail','Naples','Florida','United States',34108,''),(291,'089 Roxbury Park','New York City','New York','United States',10292,''),(292,'335 Hallows Point','Delray Beach','Florida','United States',33448,''),(293,'18532 Hintze Avenue','Kissimmee','Florida','United States',34745,''),(294,'71928 Crowley Lane','Denton','Texas','United States',76210,''),(295,'2 Crest Line Terrace','San Jose','California','United States',95150,''),(296,'67 Vera Park','Corpus Christi','Texas','United States',78465,'The Chopping Vine'),(297,'559 Trailsway Way','Arlington','Texas','United States',76016,''),(298,'4633 Waywood Circle','Gaithersburg','Maryland','United States',20883,''),(299,'805 Delaware Avenue','Seattle','Washington','United States',98185,''),(300,'15541 Fulton Way','Dallas','Texas','United States',75241,'');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorization`
--

DROP TABLE IF EXISTS `categorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorization` (
  `p_id` int NOT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`p_id`,`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorization`
--

LOCK TABLES `categorization` WRITE;
/*!40000 ALTER TABLE `categorization` DISABLE KEYS */;
INSERT INTO `categorization` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `categorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add_id` int DEFAULT NULL,
  `cart_id` int NOT NULL,
  `paymentc_id` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `add_id_idx` (`add_id`),
  CONSTRAINT `add_id1` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gender1` CHECK ((`gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jessee','Heall','Edy','M','1969-05-15','hedy0@free.fr','833-560-2479',51,1,1),(2,'Caresa','Maryrose','Snelson','F','1988-12-02','msnelson1@accuweather.com','823-211-0212',52,2,2),(3,'Cynthy','Anabelle','Craighead','F','1968-10-23','acraighead2@skype.com','819-415-8730',53,3,3),(4,'Annnora','Ealasaid','Haw','F','2008-08-18','ehaw3@slate.com','249-799-3886',54,4,4),(5,'Curry','Morty','Marchand','M','2004-01-02','mmarchand4@ezinearticles.com','550-835-0449',55,5,5),(6,'Ferguson','Humphrey','Fullun','M','2000-02-01','hfullun5@sakura.ne.jp','809-837-6810',56,6,6),(7,'Ferd','Yvon','Schwandermann','M','1972-11-13','yschwandermann6@google.pl','550-647-6048',57,7,7),(8,'Melva','Ciel','Danelutti','F','2005-07-12','cdanelutti7@admin.ch','374-676-9850',58,8,8),(9,'Raffarty','Trey','Larvin','M','1999-07-27','tlarvin8@harvard.edu','352-582-0991',59,9,9),(10,'Richard','Howie','Draaisma','M','1981-02-12','hdraaisma9@kickstarter.com','147-387-7763',60,10,10),(11,'Elysha','Hulda','Cressey','F','1994-06-05','hcresseya@mlb.com','915-237-6797',61,11,11),(12,'Laurens','Simeon','McWilliams','M','1975-04-28','smcwilliamsb@abc.net.au','915-138-2182',62,12,12),(13,'Federico','Gare','Gounel','M','2008-02-08','ggounelc@clickbank.net','940-661-0577',63,13,13),(14,'Ajay','Trude','Ianittello','F','2001-02-26','tianittellod@sciencedirect.com','910-233-8652',64,14,14),(15,'Evie','Talia','Renshaw','F','2002-12-03','trenshawe@aboutads.info','172-928-1242',65,15,15),(16,'Randell','Payton','Morrish','M','1995-08-23','pmorrishf@blogtalkradio.com','875-962-2716',66,16,16),(17,'Ulrika','Rachel','Botcherby','F','2011-02-17','rbotcherbyg@gmpg.org','937-789-0751',67,17,17),(18,'Robinett','Milena','Elms','F','2013-05-16','melmsh@simplemachines.org','977-337-2663',68,18,18),(19,'Clari','Wrennie','Trowler','F','1967-04-03','wtrowleri@com.com','581-271-9648',69,19,19),(20,'Demetris','Gerrie','Creeghan','M','1980-05-06','gcreeghanj@marriott.com','657-640-5809',70,20,20),(21,'Mathe','Chas','Siccombe','M','1991-05-09','csiccombek@edublogs.org','432-738-3181',71,21,21),(22,'Shanon','Minni','Skaife d\'Ingerthorpe','F','1967-09-24','mskaifedingerthorpel@dyndns.org','694-119-5941',72,22,22),(23,'Ange','Lemmy','Brocket','M','2014-01-31','lbrocketm@goodreads.com','399-951-6443',73,23,23),(24,'Timmy','Violetta','Siaskowski','F','1967-12-02','vsiaskowskin@auda.org.au','801-721-1040',74,24,24),(25,'Wallie','Clarinda','De Cruz','F','1969-08-26','cdecruzo@cpanel.net','916-973-8736',75,25,25),(26,'Milton','Dorian','Ucchino','M','1999-07-16','ducchinop@vkontakte.ru','794-889-0121',76,26,26),(27,'Dorree','Geri','Worts','F','2012-08-10','gwortsq@ftc.gov','880-807-7037',77,27,27),(28,'Leonanie','Issy','Djorvic','F','1971-11-17','idjorvicr@xrea.com','652-655-1048',78,28,28),(29,'Elspeth','Annelise','Scholar','F','1972-01-03','ascholars@storify.com','154-471-8185',79,29,29),(30,'Gawen','Tailor','Noriega','M','1992-09-18','tnoriegat@ucoz.ru','520-318-7150',80,30,30),(31,'Pierette','Leanora','Uvedale','F','1965-02-03','luvedaleu@chronoengine.com','211-938-7348',81,31,31),(32,'Georgine','Rosalynd','Robins','F','1993-06-08','rrobinsv@pinterest.com','184-481-7582',82,32,32),(33,'Claiborn','Ty','Leys','M','1966-09-18','tleysw@businesswire.com','957-668-6085',83,33,33),(34,'Vanya','Arte','Danjoie','M','2008-12-31','adanjoiex@dell.com','564-961-3770',84,34,34),(35,'Iorgos','Grace','Freebury','M','1974-04-02','gfreeburyy@php.net','971-944-0914',85,35,35),(36,'Alistair','Dannie','Francke','M','1999-10-21','dfranckez@t.co','587-457-1922',86,36,36),(37,'Vinson','Job','Giacobelli','M','2009-10-07','jgiacobelli10@cocolog-nifty.com','921-361-7009',87,37,37),(38,'Gail','Lauryn','Rands','F','1997-03-14','lrands11@seesaa.net','106-299-4899',88,38,38),(39,'Debbie','Eba','Collingdon','F','1998-07-04','ecollingdon12@java.com','884-598-2835',89,39,39),(40,'Simone','Karole','Hampton','F','2008-08-29','khampton13@fastcompany.com','538-355-1864',90,40,40),(41,'Tiphanie','Hildagarde','Greatex','F','1985-10-29','hgreatex14@berkeley.edu','743-402-0242',91,41,41),(42,'Madelene','Liuka','De Mattei','F','1999-07-03','ldemattei15@miitbeian.gov.cn','177-171-4380',92,42,42),(43,'Marcela','Christan','Tree','F','1984-03-04','ctree16@deviantart.com','779-313-4449',93,43,43),(44,'Chris','Gussi','Epp','F','1964-05-15','gepp17@utexas.edu','122-529-0254',94,44,44),(45,'Judas','Jonah','Henmarsh','M','2010-08-23','jhenmarsh18@hhs.gov','335-370-4265',95,45,45),(46,'Brandtr','Stewart','De la Feld','M','1994-01-18','sdelafeld19@mozilla.org','248-103-9541',96,46,46),(47,'Marlene','Maribel','Struss','F','2009-04-11','mstruss1a@marriott.com','285-650-1872',97,47,47),(48,'Norrie','Chelsea','Emlen','F','2003-08-01','cemlen1b@51.la','681-457-1626',98,48,48),(49,'Ethelbert','Marlowe','Itzcak','M','1975-01-13','mitzcak1c@flavors.me','850-101-7981',99,49,49),(50,'Linzy','Elie','Bramah','F','1969-11-22','ebramah1d@bloglovin.com','505-351-3626',100,50,50),(51,'Kalindi','Danit','Beagan','F','1981-04-27','dbeagan1e@apache.org','747-141-9873',101,51,51),(52,'Ronny','Humbert','Duferie','M','1983-11-19','hduferie1f@paypal.com','385-464-5940',102,52,52),(53,'Simone','Glenn','Beefon','M','2007-10-26','gbeefon1g@blogger.com','273-893-5720',103,53,53),(54,'Eugenio','Orbadiah','Canty','M','1998-06-11','ocanty1h@wsj.com','879-567-9014',104,54,54),(55,'Boone','Prinz','Mitten','M','2013-09-06','pmitten1i@homestead.com','658-962-3829',105,55,55),(56,'Josiah','Arnie','Pietersen','M','2005-12-13','apietersen1j@marketwatch.com','693-510-9957',106,56,56),(57,'Clyve','Levin','Bunch','M','2008-03-09','lbunch1k@uol.com.br','401-195-8301',107,57,57),(58,'Annmarie','Honey','Glossup','F','2001-05-05','hglossup1l@dailymail.co.uk','946-969-5866',108,58,58),(59,'Corbin','Charley','Janusz','M','1991-01-03','cjanusz1m@icio.us','809-375-9906',109,59,59),(60,'Abba','Adan','Boom','M','1995-06-28','aboom1n@eventbrite.com','107-220-2902',110,60,60),(61,'Petra','Shanna','Brombell','F','2004-03-11','sbrombell1o@cbc.ca','144-661-7507',111,61,61),(62,'Royall','Cort','Lightwing','M','2005-09-21','clightwing1p@senate.gov','364-817-0131',112,62,62),(63,'Odey','Mick','Van de Velde','M','2013-05-24','mvandevelde1q@google.it','613-292-0428',113,63,63),(64,'Belia','Venus','O\'Cleary','F','1967-03-18','vocleary1r@marriott.com','296-991-5197',114,64,64),(65,'Enrique','Urbano','Benedit','M','1978-03-22','ubenedit1s@xrea.com','855-655-2106',115,65,65),(66,'Goldarina','Allie','Robers','F','1994-09-25','arobers1t@blogspot.com','662-751-6995',116,66,66),(67,'Tami','Lucita','Bodle','F','1976-03-30','lbodle1u@lycos.com','847-720-1402',117,67,67),(68,'Henderson','Carson','Trevena','M','1986-03-09','ctrevena1v@ebay.com','976-958-7587',118,68,68),(69,'Eloisa','Kial','Marieton','F','1995-10-11','kmarieton1w@seesaa.net','690-674-1676',119,69,69),(70,'Aube','Lemmie','MacCafferky','M','1978-04-04','lmaccafferky1x@ucoz.ru','401-414-6687',120,70,70),(71,'Jill','Carley','Ingree','F','2013-04-09','cingree1y@hhs.gov','211-397-3746',121,71,71),(72,'Philomena','Elsey','Crowhurst','F','1968-07-30','ecrowhurst1z@unicef.org','709-716-7228',122,72,72),(73,'Ly','Elvin','Ivanikhin','M','1972-03-15','eivanikhin20@cdbaby.com','601-817-8907',123,73,73),(74,'Antin','Abey','Kuhnt','M','1965-08-18','akuhnt21@addtoany.com','611-721-1999',124,74,74),(75,'Diarmid','Bale','Bonhill','M','1968-01-09','bbonhill22@fema.gov','718-540-0659',125,75,75),(76,'Barbaraanne','Orel','Hadgraft','F','1993-11-01','ohadgraft23@google.com.au','347-541-3708',126,76,76),(77,'Glenden','Klaus','Graybeal','M','1986-06-11','kgraybeal24@barnesandnoble.com','824-560-0162',127,77,77),(78,'Roxy','Mada','Seeds','F','2004-10-27','mseeds25@jalbum.net','176-855-3140',128,78,78),(79,'Evelyn','Horace','Filintsev','M','1981-01-04','hfilintsev26@thetimes.co.uk','832-105-9426',129,79,79),(80,'Lennie','Barny','Frarey','M','1985-10-24','bfrarey27@hao123.com','615-958-3833',130,80,80),(81,'Gaylene','Netty','Ciccerale','F','1973-06-10','nciccerale28@technorati.com','138-348-4548',131,81,81),(82,'Cristabel','Katti','Monk','F','2002-03-06','kmonk29@de.vu','102-905-0174',132,82,82),(83,'Barrie','Hillary','Stearn','M','1969-04-04','hstearn2a@china.com.cn','470-173-4848',133,83,83),(84,'Averill','Gerhard','Fattori','M','2001-06-06','gfattori2b@addthis.com','713-279-8119',134,84,84),(85,'Justin','Tadio','Gove','M','1967-11-09','tgove2c@wikipedia.org','390-680-1150',135,85,85),(86,'Karoly','Gaye','Popplestone','F','1997-08-12','gpopplestone2d@ehow.com','588-427-0704',136,86,86),(87,'Jewelle','Stacey','Murrie','F','2004-06-16','smurrie2e@army.mil','728-250-1119',137,87,87),(88,'Sherri','Aridatha','Martinovsky','F','1987-03-20','amartinovsky2f@ed.gov','938-403-2062',138,88,88),(89,'Nelia','Stormie','Ranns','F','2012-02-18','sranns2g@princeton.edu','527-560-9319',139,89,89),(90,'Abdul','Tobias','Sansbury','M','2010-03-18','tsansbury2h@auda.org.au','775-401-9193',140,90,90),(91,'Celeste','Kori','Gut','F','1974-07-18','kgut2i@prnewswire.com','290-921-3179',141,91,91),(92,'Ozzy','Mikkel','Etter','M','2002-09-01','metter2j@mit.edu','102-962-6584',142,92,92),(93,'Ronnie','Alaric','Alliban','M','1986-12-15','aalliban2k@google.ca','714-506-5044',143,93,93),(94,'Smith','Richardo','Redfern','M','1964-11-25','rredfern2l@squidoo.com','302-856-3484',144,94,94),(95,'Bernelle','Reeta','Kleinholz','F','2014-01-08','rkleinholz2m@usnews.com','226-612-3351',145,95,95),(96,'Lorianna','Donelle','Krol','F','1990-12-19','dkrol2n@usda.gov','340-152-3037',146,96,96),(97,'Nestor','Noland','Johnys','M','1984-01-13','njohnys2o@miibeian.gov.cn','270-305-6490',147,97,97),(98,'Claiborne','Kellen','Cocking','M','2001-06-04','kcocking2p@pagesperso-orange.fr','842-244-4230',148,98,98),(99,'Alejoa','Gardy','Givens','M','1976-06-01','ggivens2q@over-blog.com','469-105-5648',149,99,99),(100,'Yardley','Claybourne','Grishankov','M','1996-12-06','cgrishankov2r@163.com','493-347-3989',150,100,100),(101,'Hanni','Johna','Caddick','F','1995-06-07','jcaddick2s@theglobeandmail.com','500-371-2768',151,101,101),(102,'Timmi','Katleen','Ruler','F','1971-01-21','kruler2t@yale.edu','298-396-9679',152,102,102),(103,'Tulley','Luce','Grisenthwaite','M','1996-07-15','lgrisenthwaite2u@sitemeter.com','641-832-5570',153,103,103),(104,'Dolf','Worden','Duchan','M','2007-07-23','wduchan2v@google.it','857-285-9012',154,104,104),(105,'Jeanette','Harmonia','Stearns','F','2004-09-24','hstearns2w@scientificamerican.com','762-265-2152',155,105,105),(106,'Katerine','Esme','Wadman','F','1988-07-17','ewadman2x@umn.edu','680-241-6092',156,106,106),(107,'Spence','Chariot','Roslen','M','2004-02-05','croslen2y@opera.com','722-479-1570',157,107,107),(108,'Raymond','Jimmie','Pegden','M','1965-08-22','jpegden2z@etsy.com','359-518-9403',158,108,108),(109,'Aleksandr','Padget','Frenzl','M','1991-01-27','pfrenzl30@netlog.com','982-808-1740',159,109,109),(110,'Douglas','Morgan','Scrimshire','M','1991-02-17','mscrimshire31@who.int','671-292-8701',160,110,110),(111,'Bertha','Dusty','Brundale','F','1983-06-08','dbrundale32@tumblr.com','481-499-6987',161,111,111),(112,'Ambrose','Killie','Coller','M','1968-01-27','kcoller33@naver.com','954-793-0245',162,112,112),(113,'Lawrence','Vanya','Dunsleve','M','1977-02-03','vdunsleve34@oaic.gov.au','387-245-9658',163,113,113),(114,'Granthem','Cy','Monson','M','2000-09-07','cmonson35@deliciousdays.com','837-159-8934',164,114,114),(115,'Hildagard','Olenka','Anthoin','F','2005-06-01','oanthoin36@blinklist.com','703-940-9226',165,115,115),(116,'Dominic','Gerik','Iliffe','M','2007-12-19','giliffe37@spotify.com','780-560-2267',166,116,116),(117,'Sharon','Mariellen','Dunn','F','2010-05-06','mdunn38@ox.ac.uk','573-723-5511',167,117,117),(118,'Wes','Shermy','Hummerston','M','1990-05-12','shummerston39@miibeian.gov.cn','905-733-3156',168,118,118),(119,'Ericka','Ira','Aucock','F','2010-01-25','iaucock3a@elegantthemes.com','464-876-3620',169,119,119),(120,'Karylin','Christin','Flannigan','F','1983-03-13','cflannigan3b@dailymail.co.uk','454-876-4980',170,120,120),(121,'Dukie','Evan','Hellin','M','2012-11-23','ehellin3c@nymag.com','656-353-4221',171,121,121),(122,'Wandis','Miriam','Leney','F','1981-07-28','mleney3d@cdbaby.com','751-505-0111',172,122,122),(123,'Shea','Hedwig','Loddon','F','2001-04-07','hloddon3e@bluehost.com','787-274-0471',173,123,123),(124,'Corney','Nicol','Gladdor','M','1988-12-30','ngladdor3f@aol.com','565-851-9703',174,124,124),(125,'Dalila','Melloney','Jouhning','F','1994-07-10','mjouhning3g@narod.ru','562-741-5630',175,125,125),(126,'Bent','Glyn','Codlin','M','2002-10-12','gcodlin3h@sohu.com','175-465-3073',176,126,126),(127,'Eimile','Shane','Jellett','F','1967-02-24','sjellett3i@163.com','976-482-4946',177,127,127),(128,'Nissie','Rochette','Conyer','F','1969-04-25','rconyer3j@quantcast.com','708-474-1694',178,128,128),(129,'Courtney','Austine','Haller','F','1993-03-14','ahaller3k@economist.com','836-530-8084',179,129,129),(130,'Marisa','Mariam','Fairhead','F','2000-08-21','mfairhead3l@delicious.com','954-542-1901',180,130,130),(131,'Lauralee','Carina','Diament','F','1997-05-24','cdiament3m@blogspot.com','906-357-6808',181,131,131),(132,'Darren','Torrence','Roache','M','1993-09-12','troache3n@shareasale.com','173-193-2308',182,132,132),(133,'Rex','Willie','Yerborn','M','2007-12-25','wyerborn3o@domainmarket.com','934-860-6064',183,133,133),(134,'Theo','Alano','Terbrugge','M','1966-08-21','aterbrugge3p@ox.ac.uk','420-637-8432',184,134,134),(135,'Bryanty','Aldus','Bolle','M','1996-06-16','abolle3q@altervista.org','999-607-7143',185,135,135),(136,'Bryn','Johny','Mc Coughan','M','1990-11-29','jmccoughan3r@thetimes.co.uk','966-263-9598',186,136,136),(137,'Rollin','Jose','Ankers','M','2010-02-24','jankers3s@topsy.com','764-718-6913',187,137,137),(138,'Chandal','Etta','Rillstone','F','2006-03-13','erillstone3t@yellowpages.com','191-820-8738',188,138,138),(139,'Lissi','Timmie','Scafe','F','1976-05-03','tscafe3u@reuters.com','985-357-7345',189,139,139),(140,'Gigi','Dee','Fredi','F','1971-09-28','dfredi3v@seattletimes.com','723-148-8082',190,140,140),(141,'Elbertine','Lianna','Coltart','F','2004-09-16','lcoltart3w@si.edu','455-199-9478',191,141,141),(142,'Dom','Ashley','Ellinor','M','1996-02-01','aellinor3x@princeton.edu','216-731-5206',192,142,142),(143,'Calypso','Nert','Bullman','F','1982-03-19','nbullman3y@weibo.com','189-407-3957',193,143,143),(144,'Corbin','Keen','Reignard','M','1998-04-06','kreignard3z@nba.com','997-243-1709',194,144,144),(145,'Linnell','Melanie','Simmens','F','1971-08-08','msimmens40@skyrock.com','822-700-7028',195,145,145),(146,'Nevsa','Elsie','Dyshart','F','2010-05-02','edyshart41@storify.com','287-498-9562',196,146,146),(147,'Rowney','Vale','Tutt','M','1964-05-08','vtutt42@yelp.com','767-118-9913',197,147,147),(148,'Mina','Loralyn','Buesden','F','1967-04-16','lbuesden43@bluehost.com','703-893-9327',198,148,148),(149,'Lillian','Sadye','Sollowaye','F','1998-09-16','ssollowaye44@kickstarter.com','446-277-6241',199,149,149),(150,'Jedediah','Laney','Ducrow','M','2004-09-13','lducrow45@sun.com','690-109-4645',200,150,150),(151,'Karlis','Ax','Rickasse','M','1977-08-19','arickasse0@youku.com','940-179-5095',201,151,151),(152,'Kandy','Lilli','Longland','F','1973-08-18','llongland1@cbslocal.com','861-670-5442',202,152,152),(153,'Justinn','Rosella','Gabey','F','1962-05-14','rgabey2@php.net','797-458-5285',203,153,153),(154,'Leah','Bonnibelle','Daber','F','1971-12-01','bdaber3@mtv.com','705-611-7615',204,154,154),(155,'Kare','Nadean','Font','F','1952-02-24','nfont4@bandcamp.com','845-585-2940',205,155,155),(156,'Esmaria','Ruthann','Klimt','F','1970-03-01','rklimt5@state.gov','150-288-0099',206,156,156),(157,'Meir','Ginger','Reubens','M','1963-02-12','greubens6@techcrunch.com','201-823-0990',207,157,157),(158,'Humberto','Corty','Tithacott','M','1992-02-25','ctithacott7@who.int','987-137-7105',208,158,158),(159,'Stafford','Isaac','Foley','M','1993-04-11','ifoley8@google.de','998-868-7246',209,159,159),(160,'Hamid','Dexter','Verman','M','1956-06-24','dverman9@shop-pro.jp','171-408-6307',210,160,160),(161,'Alaine','Maitilde','Arsnell','F','1995-03-26','marsnella@senate.gov','889-811-0456',211,161,161),(162,'Sanford','Terrel','Walling','M','1986-08-15','twallingb@yahoo.co.jp','689-267-6960',212,162,162),(163,'Merlina','Cristal','Schneidar','F','1970-06-14','cschneidarc@businessinsider.com','622-177-9667',213,163,163),(164,'Juieta','Genia','Abbotson','F','1971-12-09','gabbotsond@ucla.edu','318-144-6219',214,164,164),(165,'Norrie','Katrinka','Kennard','F','1985-01-10','kkennarde@geocities.com','395-993-0186',215,165,165),(166,'Martainn','Andre','Prue','M','1972-09-14','apruef@microsoft.com','996-113-6765',216,166,166),(167,'Farrel','Benedict','Grey','M','1978-08-07','bgreyg@nydailynews.com','908-414-1749',217,167,167),(168,'Ramsay','Guthrey','Antrim','M','1971-06-20','gantrimh@techcrunch.com','754-498-5408',218,168,168),(169,'Clair','Jerrold','Joslin','M','1978-06-28','jjoslini@networksolutions.com','677-249-3417',219,169,169),(170,'Lila','Raquela','Langstone','F','1952-07-06','rlangstonej@barnesandnoble.com','365-916-8313',220,170,170),(171,'Bess','Helenka','Bails','F','1996-04-24','hbailsk@businessweek.com','554-792-6731',221,171,171),(172,'Elfrida','Janeczka','Feaster','F','1986-02-04','jfeasterl@sfgate.com','479-280-8674',222,172,172),(173,'Bobbe','Mathilda','Bonhome','F','1991-07-06','mbonhomem@businessweek.com','296-593-2496',223,173,173),(174,'Aprilette','Fania','Dunniom','F','1977-08-18','fdunniomn@smugmug.com','843-337-3843',224,174,174),(175,'Eli','Barr','Ranahan','M','1987-10-06','branahano@ebay.co.uk','868-568-1509',225,175,175),(176,'Shayne','Noland','Bartos','M','1967-04-07','nbartosp@techcrunch.com','177-909-1341',226,176,176),(177,'Abbot','Conn','Cashen','M','1956-06-30','ccashenq@posterous.com','562-605-7404',227,177,177),(178,'Erskine','Griffie','Beckitt','M','1963-03-28','gbeckittr@msu.edu','122-531-2929',228,178,178),(179,'Ida','Kaila','Berecloth','F','1990-03-01','kberecloths@nasa.gov','181-836-3812',229,179,179),(180,'Barnaby','Paul','Strood','M','1966-10-21','pstroodt@yelp.com','423-766-9164',230,180,180),(181,'Fred','Caro','Howerd','F','1993-05-03','chowerdu@geocities.jp','783-486-3261',231,181,181),(182,'Stephani','Gertruda','Demogeot','F','2001-02-21','gdemogeotv@bizjournals.com','952-928-4137',232,182,182),(183,'Charin','Elfreda','Bittany','F','1954-07-17','ebittanyw@sphinn.com','254-792-7042',233,183,183),(184,'Elwira','Ofella','Otter','F','1990-01-04','ootterx@aboutads.info','531-957-6437',234,184,184),(185,'Daisi','Hadria','Brimacombe','F','1968-06-01','hbrimacombey@disqus.com','313-755-2062',235,185,185),(186,'Tiertza','Glynda','Mariault','F','2000-11-13','gmariaultz@businessweek.com','477-131-2085',236,186,186),(187,'Chalmers','Lenci','Berzins','M','1956-11-14','lberzins10@netscape.com','309-330-7565',237,187,187),(188,'Olav','Edouard','Lomen','M','1955-02-17','elomen11@simplemachines.org','247-669-0899',238,188,188),(189,'Klement','Ennis','Doerling','M','1999-07-13','edoerling12@redcross.org','370-363-4395',239,189,189),(190,'Juan','Warren','Mendes','M','1982-06-22','wmendes13@sitemeter.com','584-204-5105',240,190,190),(191,'Chrysa','Felecia','Frankiewicz','F','1982-03-16','ffrankiewicz14@globo.com','501-561-2971',241,191,191),(192,'Sonny','Jenna','Tomaszynski','F','1948-05-12','jtomaszynski15@diigo.com','425-817-4850',242,192,192),(193,'Isabelita','Judy','Schaben','F','1965-01-08','jschaben16@addthis.com','798-740-1777',243,193,193),(194,'Crystal','Winnah','Deal','F','1953-05-21','wdeal17@macromedia.com','342-869-0912',244,194,194),(195,'Giffie','Hamlin','Gosz','M','1967-06-08','hgosz18@hp.com','663-639-7580',245,195,195),(196,'Butch','Scarface','Wetherell','M','1961-08-29','swetherell19@google.nl','306-238-8027',246,196,196),(197,'Doralia','Carline','Twiname','F','1958-02-11','ctwiname1a@ehow.com','915-804-3299',247,197,197),(198,'Wilt','Dav','Quested','M','1953-12-15','dquested1b@typepad.com','175-147-2363',248,198,198),(199,'Rozele','Guglielma','Murrigan','F','1949-06-16','gmurrigan1c@live.com','743-453-7961',249,199,199),(200,'Ad','Renaldo','Murr','M','2001-05-01','rmurr1d@tmall.com','259-228-6568',250,200,200);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_login`
--

DROP TABLE IF EXISTS `customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_login` (
  `user_id` int NOT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_login`
--

LOCK TABLES `customer_login` WRITE;
/*!40000 ALTER TABLE `customer_login` DISABLE KEYS */;
INSERT INTO `customer_login` VALUES (10050,1),(10051,2),(10052,3),(10053,4),(10054,5),(10055,6),(10056,7),(10057,8),(10058,9),(10059,10),(10060,11),(10061,12),(10062,13),(10063,14),(10064,15),(10065,16),(10066,17),(10067,18),(10068,19),(10069,20),(10070,21),(10071,22),(10072,23),(10073,24),(10074,25),(10075,26),(10076,27),(10077,28),(10078,29),(10079,30),(10080,31),(10081,32),(10082,33),(10083,34),(10084,35),(10085,36),(10086,37),(10087,38),(10088,39),(10089,40),(10090,41),(10091,42),(10092,43),(10093,44),(10094,45),(10095,46),(10096,47),(10097,48),(10098,49),(10099,50),(10100,51),(10101,52),(10102,53),(10103,54),(10104,55),(10105,56),(10106,57),(10107,58),(10108,59),(10109,60),(10110,61),(10111,62),(10112,63),(10113,64),(10114,65),(10115,66),(10116,67),(10117,68),(10118,69),(10119,70),(10120,71),(10121,72),(10122,73),(10123,74),(10124,75),(10125,76),(10126,77),(10127,78),(10128,79),(10129,80),(10130,81),(10131,82),(10132,83),(10133,84),(10134,85),(10135,86),(10136,87),(10137,88),(10138,89),(10139,90),(10140,91),(10141,92),(10142,93),(10143,94),(10144,95),(10145,96),(10146,97),(10147,98),(10148,99),(10149,100),(10150,101),(10151,102),(10152,103),(10153,104),(10154,105),(10155,106),(10156,107),(10157,108),(10158,109),(10159,110),(10160,111),(10161,112),(10162,113),(10163,114),(10164,115),(10165,116),(10166,117),(10167,118),(10168,119),(10169,120),(10170,121),(10171,122),(10172,123),(10173,124),(10174,125),(10175,126),(10176,127),(10177,128),(10178,129),(10179,130),(10180,131),(10181,132),(10182,133),(10183,134),(10184,135),(10185,136),(10186,137),(10187,138),(10188,139),(10189,140),(10190,141),(10191,142),(10192,143),(10193,144),(10194,145),(10195,146),(10196,147),(10197,148),(10198,149),(10199,150),(10200,151),(10201,152),(10202,153),(10203,154),(10204,155),(10205,156),(10206,157),(10207,158),(10208,159),(10209,160),(10210,161),(10211,162),(10212,163),(10213,164),(10214,165),(10215,166),(10216,167),(10217,168),(10218,169),(10219,170),(10220,171),(10221,172),(10222,173),(10223,174),(10224,175),(10225,176),(10226,177),(10227,178),(10228,179),(10229,180),(10230,181),(10231,182),(10232,183),(10233,184),(10234,185),(10235,186),(10236,187),(10237,188),(10238,189),(10239,190),(10240,191),(10241,192),(10242,193),(10243,194),(10244,195),(10245,196),(10246,197),(10247,198),(10248,199),(10249,200);
/*!40000 ALTER TABLE `customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dep_id` int NOT NULL,
  `dep_name` varchar(45) NOT NULL,
  `emp_count` int NOT NULL,
  `m_joining_date` date NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'IT',18,'2016-08-18'),(2,'storage',9,'2021-03-01'),(3,'customer service',15,'2013-04-18'),(4,'marketing',8,'2019-03-10');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `e_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email_id` varchar(70) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date_of_joining` date NOT NULL,
  `add_id` int NOT NULL,
  `emp_type` varchar(45) NOT NULL,
  PRIMARY KEY (`e_id`),
  KEY `add_id_idx` (`add_id`),
  CONSTRAINT `add_id` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gender` CHECK ((`gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Artie','Maurits','Gehrts','M','1958-12-04','mgehrts0@intel.com','350-723-2850',1289.03,'2021-08-22',1,'IT'),(2,'Olwen','Maura','Stonier','F','1973-06-27','mstonier1@cdc.gov','135-567-6896',1790.00,'2021-03-01',2,'storage'),(3,'Elset','Sheryl','Maffin','F','1979-12-23','smaffin2@usatoday.com','575-931-1878',3353.84,'2015-08-16',3,'customer service'),(4,'Lorry','Papageno','Weekley','M','1972-07-13','pweekley3@miibeian.gov.cn','315-536-3946',2054.36,'2010-08-15',4,'marketing'),(5,'Cecelia','Lorinda','Folli','F','1998-04-22','lfolli4@ow.ly','892-291-5476',3026.51,'2016-08-18',5,'manager'),(6,'Galina','Kathleen','McMeekan','F','2000-03-13','kmcmeekan5@delicious.com','202-108-1440',3982.08,'2021-03-01',6,'manager'),(7,'Glenda','Claribel','Crutcher','F','1956-01-22','ccrutcher6@acquirethisname.com','986-442-1117',2749.33,'2013-04-18',7,'manager'),(8,'Ramsey','Orville','Noore','M','1981-06-23','onoore7@cnet.com','432-518-6493',2479.19,'2019-03-10',8,'manager'),(9,'Corie','Stephie','Durnall','F','1972-11-01','sdurnall8@fda.gov','376-196-6449',3071.62,'2019-11-25',9,'IT'),(10,'Tomi','Sylvia','Hanscomb','F','1991-11-30','shanscomb9@tinyurl.com','376-730-7639',2799.11,'2018-04-05',10,'storage'),(11,'Joyann','Sari','Shorter','F','1974-11-19','sshortera@walmart.com','792-345-0940',1664.43,'2010-06-17',11,'customer service'),(12,'Shelby','Balduin','Horder','M','1967-12-01','bhorderb@un.org','471-790-4016',2130.90,'2015-03-25',12,'marketing'),(13,'Zea','Brooke','Milnes','F','1980-05-12','bmilnesc@instagram.com','309-361-0803',3359.49,'2020-08-11',13,'IT'),(14,'Emory','Ty','Venables','M','1972-08-31','tvenablesd@hud.gov','261-257-4084',1622.77,'2015-10-28',14,'storage'),(15,'Darell','Ketty','Stenton','F','1977-09-02','kstentone@eepurl.com','679-711-9869',1698.74,'2020-05-06',15,'customer service'),(16,'Walt','Benedict','Cracknall','M','2000-11-04','bcracknallf@arizona.edu','847-863-4463',4793.93,'2020-01-26',16,'marketing'),(17,'Bird','Kirstin','Otton','F','1953-04-27','kottong@usatoday.com','247-167-0737',2828.52,'2021-03-13',17,'IT'),(18,'Vivian','Almire','Shingles','F','1957-04-06','ashinglesh@instagram.com','666-516-0772',2695.07,'2021-07-05',18,'storage'),(19,'Aldous','Gan','Titcombe','M','2000-02-05','gtitcombei@go.com','257-217-1296',2419.74,'2012-02-05',19,'customer service'),(20,'Kai','Madelina','O\'Downe','F','1951-12-26','modownej@chron.com','684-188-8012',1945.97,'2019-04-17',20,'marketing'),(21,'Kathie','Cory','Shird','F','1966-06-24','cshirdk@wix.com','224-414-9328',2655.35,'2011-06-11',21,'IT'),(22,'Arri','Gayler','Waldron','M','1989-08-11','gwaldronl@t-online.de','149-248-6350',1984.06,'2015-06-14',22,'storage'),(23,'Bonnibelle','Tasia','Osmant','F','1968-07-17','tosmantm@virginia.edu','930-760-3211',1891.48,'2015-06-11',23,'customer service'),(24,'Abraham','Wiatt','Dermot','M','1982-03-06','wdermotn@wiley.com','831-598-3844',4981.64,'2016-11-01',24,'marketing'),(25,'Frank','Clayson','Shackleton','M','1971-03-15','cshackletono@booking.com','434-811-3749',4032.17,'2018-12-28',25,'IT'),(26,'Margaux','Evvie','Cristoforetti','F','2000-05-13','ecristoforettip@tinypic.com','511-103-2265',4558.02,'2010-09-07',26,'storage'),(27,'Miranda','Danita','Kliner','F','1974-09-01','dklinerq@weebly.com','537-439-0915',4563.59,'2010-08-07',27,'customer service'),(28,'Ernst','Robers','Bogies','M','1997-11-09','rbogiesr@ucoz.com','635-336-0371',1389.97,'2021-07-23',28,'marketing'),(29,'Josephine','Evania','Musicka','F','1975-04-20','emusickas@businesswire.com','757-163-3403',4503.26,'2018-05-20',29,'IT'),(30,'Ailina','Tine','Tosh','F','1990-01-16','ttosht@indiatimes.com','894-563-9012',3971.27,'2019-07-17',30,'customer service'),(31,'Lowell','Chet','Batchan','M','1971-12-07','cbatchanu@theguardian.com','362-376-6432',4520.99,'2012-11-07',31,'IT'),(32,'Ashlee','Crissy','Armfield','F','1996-05-19','carmfieldv@digg.com','899-444-1434',4862.56,'2010-09-23',32,'customer service'),(33,'Itch','Devlen','Krabbe','M','1960-03-17','dkrabbew@homestead.com','739-822-8154',2880.09,'2018-05-07',33,'IT'),(34,'Garv','Yvon','Scarrott','M','1956-05-02','yscarrottx@google.com.hk','161-111-6649',3558.72,'2019-07-10',34,'customer service'),(35,'Doralynne','Timmy','Strover','F','1971-04-20','tstrovery@multiply.com','727-412-2685',1104.95,'2016-09-06',35,'IT'),(36,'Kent','Neal','Vittel','M','1999-01-03','nvittelz@typepad.com','895-899-9566',1580.60,'2011-03-29',36,'customer service'),(37,'Mord','Shannan','Farlam','M','1993-01-13','sfarlam10@hatena.ne.jp','306-345-0625',1135.69,'2010-06-12',37,'IT'),(38,'Abigale','Tybie','Izakof','F','1995-01-26','tizakof11@miitbeian.gov.cn','941-753-9691',1545.23,'2016-04-10',38,'customer service'),(39,'Fidela','Jenna','Zupone','F','1969-11-03','jzupone12@prnewswire.com','608-658-6429',3953.12,'2011-02-24',39,'IT'),(40,'Ebenezer','Markus','Bosden','M','2000-10-17','mbosden13@geocities.jp','575-474-9221',771.67,'2017-01-14',40,'customer service'),(41,'Glennie','Eartha','Carlon','F','1970-09-20','ecarlon14@sphinn.com','594-581-7490',1362.55,'2017-03-06',41,'storage'),(42,'Teador','Baxter','Gramer','M','1981-02-23','bgramer15@independent.co.uk','695-286-3237',1838.74,'2014-03-23',42,'storage'),(43,'May','Lyndell','Allgood','F','1975-11-17','lallgood16@tumblr.com','546-188-4297',3054.38,'2015-12-21',43,'marketing'),(44,'Tommie','Millard','Pevie','M','1970-03-19','mpevie17@fastcompany.com','650-417-6858',4309.46,'2018-08-11',44,'customer service'),(45,'Willette','Saraann','Ludlom','F','1978-04-01','sludlom18@paginegialle.it','937-432-7940',3067.88,'2017-11-02',45,'customer service'),(46,'Devin','Eb','Kivits','M','1947-08-03','ekivits19@sakura.ne.jp','602-889-7432',3010.64,'2011-09-22',46,'IT'),(47,'Alicia','Darice','Vannoort','F','1957-08-22','dvannoort1a@dedecms.com','640-987-9039',1372.54,'2016-07-01',47,'IT'),(48,'Evaleen','Editha','Freckelton','F','1990-05-04','efreckelton1b@yahoo.com','229-987-9165',1220.19,'2021-03-21',48,'IT'),(49,'Ellynn','Anett','Capehorn','F','1953-05-26','acapehorn1c@ted.com','386-138-5636',2417.21,'2015-12-14',49,'IT'),(50,'Goldie','Elana','Upcraft','F','1974-09-26','eupcraft1d@timesonline.co.uk','910-938-7061',2957.31,'2013-10-24',50,'IT');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_login`
--

DROP TABLE IF EXISTS `employee_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_login` (
  `user_id` int NOT NULL,
  `e_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_login`
--

LOCK TABLES `employee_login` WRITE;
/*!40000 ALTER TABLE `employee_login` DISABLE KEYS */;
INSERT INTO `employee_login` VALUES (10000,1),(10001,2),(10002,3),(10003,4),(10004,5),(10005,6),(10006,7),(10007,8),(10008,9),(10009,10),(10010,11),(10011,12),(10012,13),(10013,14),(10014,15),(10015,16),(10016,17),(10017,18),(10018,19),(10019,20),(10020,21),(10021,22),(10022,23),(10023,24),(10024,25),(10025,26),(10026,27),(10027,28),(10028,29),(10029,30),(10030,31),(10031,32),(10032,33),(10033,34),(10034,35),(10035,36),(10036,37),(10037,38),(10038,39),(10039,40),(10040,41),(10041,42),(10042,43),(10043,44),(10044,45),(10045,46),(10046,47),(10047,48),(10048,49),(10049,50);
/*!40000 ALTER TABLE `employee_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manages`
--

DROP TABLE IF EXISTS `manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manages` (
  `e_id` int NOT NULL,
  `dep_id` varchar(45) NOT NULL,
  PRIMARY KEY (`e_id`,`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manages`
--

LOCK TABLES `manages` WRITE;
/*!40000 ALTER TABLE `manages` DISABLE KEYS */;
INSERT INTO `manages` VALUES (5,'1'),(6,'2'),(7,'3'),(8,'4');
/*!40000 ALTER TABLE `manages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufactured_by`
--

DROP TABLE IF EXISTS `manufactured_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufactured_by` (
  `p_id` int NOT NULL,
  `man_id` int NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufactured_by`
--

LOCK TABLES `manufactured_by` WRITE;
/*!40000 ALTER TABLE `manufactured_by` DISABLE KEYS */;
INSERT INTO `manufactured_by` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,1),(32,2),(33,3),(34,4),(35,5),(36,6),(37,7),(38,8),(39,9),(40,10),(41,11),(42,12),(43,13),(44,14),(45,15),(46,16),(47,17),(48,18),(49,19),(50,20),(51,21),(52,22),(53,23),(54,24),(55,25),(56,26),(57,27),(58,28),(59,29),(60,30),(61,1),(62,2),(63,3),(64,4),(65,5),(66,6),(67,7),(68,8),(69,9),(70,10),(71,11),(72,12),(73,13),(74,14),(75,15),(76,16),(77,17),(78,18),(79,19),(80,20),(81,21),(82,22),(83,23),(84,24),(85,25),(86,26),(87,27),(88,28),(89,29),(90,30),(91,1),(92,2),(93,3),(94,4),(95,5),(96,6),(97,7),(98,8),(99,9),(100,10);
/*!40000 ALTER TABLE `manufactured_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `man_id` int NOT NULL,
  `man_name` varchar(70) NOT NULL,
  PRIMARY KEY (`man_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Friesen and Sons'),(2,'Lind, Blanda and Ernser'),(3,'Mueller LLC'),(4,'Hartmann, Deckow and Rohan'),(5,'Halvorson Inc'),(6,'Bartoletti LLC'),(7,'Klein, Huels and Littel'),(8,'Kuhn, Ernser and Thiel'),(9,'Bartell-Kozey'),(10,'Raynor, Parker and O\'Conner'),(11,'Feest, Von and Stamm'),(12,'Larkin Inc'),(13,'Witting-Mann'),(14,'Barrows-Gerhold'),(15,'Grant Inc'),(16,'Schulist, Collins and Veum'),(17,'Lubowitz, Grady and Carter'),(18,'Rosenbaum-Terry'),(19,'Koelpin-Emard'),(20,'Crona-Balistreri'),(21,'Ortiz-Kuhn'),(22,'Mayer, Blick and Hilpert'),(23,'Kuhic, Predovic and Cartwright'),(24,'Feil LLC'),(25,'Feeney, Sauer and Bednar'),(26,'Satterfield, Hilpert and Mertz'),(27,'Shields-Krajcik'),(28,'Schaden-Wisoky'),(29,'Parisian-Pfeffer'),(30,'Gerhold-Hahn');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `status` varchar(45) NOT NULL,
  `total_units` int NOT NULL,
  `ordered_on` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,353.62,42.08,'shipped',4,'2022-02-05'),(2,240.15,76.71,'dispached',7,'2022-02-22'),(3,439.04,74.88,'delivered',2,'2022-02-25'),(4,195.02,17.04,'confirmed',7,'2022-02-09'),(5,314.83,22.27,'shipped',2,'2022-02-26'),(6,128.46,65.15,'dispached',8,'2022-02-26'),(7,419.20,36.18,'delivered',1,'2022-02-19'),(8,261.75,25.97,'confirmed',5,'2022-02-10'),(9,298.17,50.65,'shipped',4,'2022-02-06'),(10,438.67,81.33,'dispached',1,'2022-02-20'),(11,336.96,54.86,'delivered',8,'2022-02-07'),(12,142.70,64.50,'confirmed',8,'2022-02-26'),(13,493.73,72.88,'shipped',1,'2022-02-15'),(14,168.96,14.41,'dispached',1,'2022-02-20'),(15,245.57,13.53,'delivered',1,'2022-02-04'),(16,192.74,14.37,'confirmed',1,'2022-02-12'),(17,282.75,62.19,'shipped',2,'2022-02-16'),(18,136.54,23.05,'dispached',5,'2022-02-13'),(19,438.37,29.02,'delivered',7,'2022-02-01'),(20,102.53,49.11,'confirmed',1,'2022-02-26'),(21,247.62,74.19,'shipped',8,'2022-02-14'),(22,464.49,36.35,'dispached',2,'2022-02-18'),(23,309.39,45.94,'delivered',4,'2022-02-17'),(24,304.80,17.08,'confirmed',4,'2022-03-01'),(25,158.03,78.90,'shipped',7,'2022-02-07'),(26,243.46,16.35,'dispached',5,'2022-02-08'),(27,250.13,46.82,'delivered',6,'2022-02-09'),(28,297.87,63.02,'confirmed',4,'2022-02-01'),(29,106.65,47.47,'shipped',7,'2022-02-10'),(30,119.90,36.42,'dispached',2,'2022-02-12'),(31,347.76,67.04,'delivered',4,'2022-02-17'),(32,220.40,41.63,'confirmed',2,'2022-02-14'),(33,295.91,19.11,'shipped',8,'2022-02-23'),(34,483.67,30.38,'dispached',3,'2022-02-28'),(35,123.56,46.93,'delivered',1,'2022-02-26'),(36,219.87,74.96,'confirmed',3,'2022-02-02'),(37,254.48,15.52,'shipped',8,'2022-02-11'),(38,404.34,61.38,'dispached',5,'2022-02-11'),(39,436.13,58.19,'delivered',3,'2022-02-22'),(40,396.32,12.64,'confirmed',5,'2022-02-12'),(41,251.15,87.13,'shipped',5,'2022-02-22'),(42,199.95,37.28,'dispached',6,'2022-02-17'),(43,158.92,83.68,'delivered',3,'2022-02-22'),(44,208.97,50.97,'confirmed',2,'2022-02-11'),(45,414.03,53.79,'shipped',1,'2022-02-13'),(46,370.90,62.63,'dispached',4,'2022-02-24'),(47,499.73,60.72,'delivered',4,'2022-02-01'),(48,365.61,82.73,'confirmed',8,'2022-02-01'),(49,263.43,49.33,'shipped',8,'2022-02-10'),(50,104.40,28.35,'dispached',5,'2022-02-26');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `detail_id` int NOT NULL,
  `order_id` int NOT NULL,
  `p_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1,98.93,4),(2,2,2,45.27,7),(3,3,3,256.96,2),(4,4,4,30.29,7),(5,5,5,168.55,2),(6,6,6,24.20,8),(7,7,7,455.38,1),(8,8,8,57.54,5),(9,9,9,87.21,4),(10,10,10,520.00,1),(11,11,11,48.98,8),(12,12,12,25.90,8),(13,13,13,566.61,1),(14,14,14,183.37,1),(15,15,15,259.10,1),(16,16,16,207.11,1),(17,17,17,172.47,2),(18,18,18,31.92,5),(19,19,19,66.77,7),(20,20,20,151.64,1),(21,21,21,40.23,8),(22,22,22,250.42,2),(23,23,23,88.83,4),(24,24,24,80.47,4),(25,25,25,33.85,7),(26,26,26,51.96,5),(27,27,27,49.49,6),(28,28,28,90.22,4),(29,29,29,22.02,7),(30,30,30,78.16,2),(31,31,31,103.70,4),(32,32,32,131.02,2),(33,33,33,39.38,8),(34,34,34,171.35,3),(35,35,35,170.49,1),(36,36,36,98.28,3),(37,37,37,33.75,8),(38,38,38,93.14,5),(39,39,39,164.77,3),(40,40,40,81.79,5),(41,41,41,67.66,5),(42,42,42,39.54,6),(43,43,43,80.87,3),(44,44,44,129.97,2),(45,45,45,467.82,1),(46,46,46,108.38,4),(47,47,47,140.11,4),(48,48,48,56.04,8),(49,49,49,39.10,8),(50,50,50,26.55,5);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `order_id` int NOT NULL,
  `payment_mode` varchar(45) NOT NULL,
  `paymentc_id` int DEFAULT NULL,
  `payment_status` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'credentials',1,'done'),(2,'credentials',2,'done'),(3,'credentials',3,'done'),(4,'credentials',4,'done'),(5,'credentials',5,'pending'),(6,'credentials',6,'done'),(7,'credentials',7,'done'),(8,'credentials',8,'done'),(9,'credentials',9,'pending'),(10,'credentials',10,'done'),(11,'credentials',11,'done'),(12,'credentials',12,'pending'),(13,'credentials',13,'done'),(14,'credentials',14,'pending'),(15,'credentials',15,'done'),(16,'credentials',16,'done'),(17,'credentials',17,'done'),(18,'credentials',18,'pending'),(19,'credentials',19,'done'),(20,'credentials',20,'done'),(21,'credentials',21,'pending'),(22,'credentials',22,'done'),(23,'credentials',23,'done'),(24,'credentials',24,'done'),(25,'credentials',25,'done'),(26,'credentials',26,'done'),(27,'credentials',27,'done'),(28,'cash on delivery',NULL,'pending'),(29,'cash on delivery',NULL,'pending'),(30,'cash on delivery',NULL,'pending'),(31,'cash on delivery',NULL,'done'),(32,'cash on delivery',NULL,'pending'),(33,'cash on delivery',NULL,'pending'),(34,'cash on delivery',NULL,'pending'),(35,'cash on delivery',NULL,'done'),(36,'cash on delivery',NULL,'pending'),(37,'credentials',28,'done'),(38,'credentials',29,'done'),(39,'credentials',30,'done'),(40,'credentials',31,'done'),(41,'credentials',32,'pending'),(42,'credentials',33,'done'),(43,'credentials',34,'done'),(44,'credentials',35,'done'),(45,'credentials',36,'pending'),(46,'credentials',37,'done'),(47,'credentials',38,'done'),(48,'credentials',39,'pending'),(49,'credentials',40,'done'),(50,'credentials',41,'pending');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_credentials`
--

DROP TABLE IF EXISTS `payment_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_credentials` (
  `paymentc_id` int NOT NULL,
  `card_no` bigint NOT NULL,
  `name_on_card` varchar(100) NOT NULL,
  `cvv` int NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`paymentc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_credentials`
--

LOCK TABLES `payment_credentials` WRITE;
/*!40000 ALTER TABLE `payment_credentials` DISABLE KEYS */;
INSERT INTO `payment_credentials` VALUES (1,5048377486159910,'Jessee Heall Edy',473,'2023-04-13'),(2,5108752860969470,'Caresa Maryrose Snelson',719,'2022-10-05'),(3,5108750434170820,'Cynthy Anabelle Craighead',943,'2022-06-14'),(4,5108752598748250,'Annnora Ealasaid Haw',660,'2023-11-18'),(5,5108756247296850,'Curry Morty Marchand',167,'2023-04-14'),(6,5108751496761380,'Ferguson Humphrey Fullun',524,'2023-08-23'),(7,5048375443457220,'Ferd Yvon Schwandermann',239,'2023-07-26'),(8,5048372690043130,'Melva Ciel Danelutti',349,'2023-08-02'),(9,5108754488618370,'Raffarty Trey Larvin',920,'2023-04-08'),(10,5108756184337240,'Richard Howie Draaisma',653,'2023-09-26'),(11,5108753165687590,'Elysha Hulda Cressey',608,'2023-11-11'),(12,5108752870097510,'Laurens Simeon McWilliams',833,'2022-10-21'),(13,5108757029826730,'Federico Gare Gounel',711,'2024-01-17'),(14,5108757382504570,'Ajay Trude Ianittello',722,'2022-11-17'),(15,5048376865798410,'Evie Talia Renshaw',609,'2023-12-07'),(16,5108756492756040,'Randell Payton Morrish',453,'2022-05-16'),(17,5108751232375920,'Ulrika Rachel Botcherby',259,'2023-02-25'),(18,5108750278785270,'Robinett Milena Elms',578,'2022-10-25'),(19,5108753281242940,'Clari Wrennie Trowler',459,'2023-05-12'),(20,5108752153562070,'Demetris Gerrie Creeghan',754,'2023-09-01'),(21,5108756385031860,'Mathe Chas Siccombe',574,'2023-12-09'),(22,5108758826075380,'Shanon Minni Skaife d\'Ingerthorpe',934,'2023-09-12'),(23,5048372779683300,'Ange Lemmy Brocket',384,'2022-09-02'),(24,5048370582337700,'Timmy Violetta Siaskowski',702,'2023-06-15'),(25,5108755663021430,'Wallie Clarinda De Cruz',396,'2022-08-07'),(26,5048374874784470,'Milton Dorian Ucchino',731,'2022-05-05'),(27,5048370961149100,'Dorree Geri Worts',465,'2023-06-07'),(28,5048377103610550,'Leonanie Issy Djorvic',789,'2024-01-31'),(29,5048371066442720,'Elspeth Annelise Scholar',245,'2023-07-03'),(30,5108756597997090,'Gawen Tailor Noriega',866,'2022-07-09'),(31,5108758843599470,'Pierette Leanora Uvedale',964,'2023-03-15'),(32,5048379077312970,'Georgine Rosalynd Robins',252,'2024-02-16'),(33,5048374066020400,'Claiborn Ty Leys',499,'2022-05-08'),(34,5048377570497060,'Vanya Arte Danjoie',545,'2022-08-22'),(35,5108751009096010,'Iorgos Grace Freebury',972,'2022-07-27'),(36,5108754935424960,'Alistair Dannie Francke',423,'2023-01-27'),(37,5048378270158610,'Vinson Job Giacobelli',230,'2022-10-27'),(38,5048375764626730,'Gail Lauryn Rands',537,'2023-07-27'),(39,5108754718270290,'Debbie Eba Collingdon',616,'2024-01-07'),(40,5048371164732360,'Simone Karole Hampton',943,'2022-04-30'),(41,5108752624714170,'Tiphanie Hildagarde Greatex',720,'2023-06-08'),(42,5048378102265370,'Madelene Liuka De Mattei',791,'2022-12-07'),(43,5048372968453510,'Marcela Christan Tree',429,'2023-08-21'),(44,5048370727714730,'Chris Gussi Epp',557,'2022-05-27'),(45,5048373326465900,'Judas Jonah Henmarsh',780,'2023-08-19'),(46,5108755902615610,'Brandtr Stewart De la Feld',729,'2023-07-23'),(47,5048375962016090,'Marlene Maribel Struss',904,'2024-01-27'),(48,5048374027013000,'Norrie Chelsea Emlen',348,'2023-11-06'),(49,5108753703469220,'Ethelbert Marlowe Itzcak',402,'2022-09-07'),(50,5108756689740630,'Linzy Elie Bramah',199,'2022-09-18'),(51,5108752754595720,'Kalindi Danit Beagan',962,'2022-06-18'),(52,5048373651673570,'Ronny Humbert Duferie',245,'2022-06-18'),(53,5048379991390920,'Simone Glenn Beefon',469,'2023-06-25'),(54,5108756866379790,'Eugenio Orbadiah Canty',414,'2022-11-10'),(55,5048370361931070,'Boone Prinz Mitten',215,'2022-08-31'),(56,5048373319725570,'Josiah Arnie Pietersen',438,'2023-10-09'),(57,5048370774917250,'Clyve Levin Bunch',532,'2023-03-24'),(58,5048376471011130,'Annmarie Honey Glossup',845,'2024-01-02'),(59,5108752283880210,'Corbin Charley Janusz',654,'2022-11-02'),(60,5108753344163770,'Abba Adan Boom',629,'2023-02-05'),(61,5048379714262150,'Petra Shanna Brombell',870,'2022-12-13'),(62,5108755924151320,'Royall Cort Lightwing',327,'2023-07-10'),(63,5048377368191020,'Odey Mick Van de Velde',397,'2022-07-04'),(64,5108759378309350,'Belia Venus O\'Cleary',323,'2023-09-27'),(65,5048374243654850,'Enrique Urbano Benedit',656,'2023-01-11'),(66,5048377749726170,'Goldarina Allie Robers',187,'2023-01-03'),(67,5108759097294850,'Tami Lucita Bodle',950,'2023-09-27'),(68,5108751205581080,'Henderson Carson Trevena',508,'2023-05-11'),(69,5108753420054900,'Eloisa Kial Marieton',412,'2022-06-20'),(70,5048375727454970,'Aube Lemmie MacCafferky',379,'2023-09-16'),(71,5108754759251240,'Jill Carley Ingree',242,'2023-11-29'),(72,5108753817051540,'Philomena Elsey Crowhurst',916,'2023-07-23'),(73,5048375392029770,'Ly Elvin Ivanikhin',904,'2022-07-13'),(74,5108757440775900,'Antin Abey Kuhnt',456,'2023-09-27'),(75,5108757667400320,'Diarmid Bale Bonhill',462,'2022-12-01'),(76,5048374876788090,'Barbaraanne Orel Hadgraft',757,'2022-04-30'),(77,5108758239140610,'Glenden Klaus Graybeal',159,'2022-06-28'),(78,5048371880999190,'Roxy Mada Seeds',655,'2022-06-27'),(79,5048374760703930,'Evelyn Horace Filintsev',802,'2023-04-29'),(80,5048374806038640,'Lennie Barny Frarey',545,'2022-12-20'),(81,5108756795099360,'Gaylene Netty Ciccerale',958,'2023-09-22'),(82,5108759919406370,'Cristabel Katti Monk',325,'2023-05-05'),(83,5048379821321310,'Barrie Hillary Stearn',450,'2022-05-24'),(84,5048378837990770,'Averill Gerhard Fattori',812,'2023-08-09'),(85,5048370703766830,'Justin Tadio Gove',949,'2023-12-21'),(86,5108754166841020,'Karoly Gaye Popplestone',254,'2023-03-18'),(87,5108757452991680,'Jewelle Stacey Murrie',165,'2022-12-28'),(88,5048372888463420,'Sherri Aridatha Martinovsky',613,'2023-01-16'),(89,5048379404991760,'Nelia Stormie Ranns',532,'2023-03-22'),(90,5048377526016170,'Abdul Tobias Sansbury',494,'2023-08-19'),(91,5108754638801760,'Celeste Kori Gut',478,'2022-10-20'),(92,5108754727796590,'Ozzy Mikkel Etter',576,'2022-11-07'),(93,5108757876446030,'Ronnie Alaric Alliban',233,'2022-07-22'),(94,5048372919904700,'Smith Richardo Redfern',942,'2022-10-10'),(95,5108759457089150,'Bernelle Reeta Kleinholz',168,'2024-02-26'),(96,5048370911496590,'Lorianna Donelle Krol',713,'2023-12-20'),(97,5048378772097010,'Nestor Noland Johnys',768,'2023-11-02'),(98,5108754213897510,'Claiborne Kellen Cocking',414,'2022-05-07'),(99,5108753828725690,'Alejoa Gardy Givens',456,'2023-09-04'),(100,5048375963995870,'Yardley Claybourne Grishankov',635,'2022-09-24'),(101,5048375753179090,'Hanni Johna Caddick',176,'2022-12-09'),(102,5048375472663720,'Timmi Katleen Ruler',448,'2023-12-15'),(103,5048370432461650,'Tulley Luce Grisenthwaite',423,'2022-12-20'),(104,5108757313702400,'Dolf Worden Duchan',507,'2024-01-26'),(105,5048371687604010,'Jeanette Harmonia Stearns',482,'2023-06-11'),(106,5048371941925060,'Katerine Esme Wadman',619,'2023-11-05'),(107,5108756427468930,'Spence Chariot Roslen',256,'2024-01-17'),(108,5048373490947670,'Raymond Jimmie Pegden',395,'2024-02-01'),(109,5048379142780250,'Aleksandr Padget Frenzl',876,'2023-01-16'),(110,5108758129672810,'Douglas Morgan Scrimshire',753,'2022-11-11');
/*!40000 ALTER TABLE `payment_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_order`
--

DROP TABLE IF EXISTS `place_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_order` (
  `c_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`c_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_order`
--

LOCK TABLES `place_order` WRITE;
/*!40000 ALTER TABLE `place_order` DISABLE KEYS */;
INSERT INTO `place_order` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `place_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `manu_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Grapefruit - Pink',98.93,30,'2022-01-26','2022-11-27'),(2,'Huck White Towels',45.27,7,'2022-01-17','2022-06-09'),(3,'Pancetta',256.96,13,'2022-02-16','2022-09-25'),(4,'Pork Loin Bine - In Frenched',30.29,23,'2021-12-14','2022-06-21'),(5,'Sultanas',168.55,5,'2022-01-23','2022-05-07'),(6,'Bread - Granary Small Pull',24.20,11,'2021-12-26','2022-07-11'),(7,'Beans - Kidney White',455.38,28,'2022-02-19','2022-07-27'),(8,'Mop Head - Cotton, 24 Oz',57.54,3,'2022-01-09','2022-04-05'),(9,'Vodka - Smirnoff',87.21,21,'2022-01-29','2022-05-24'),(10,'Pork - Bacon,back Peameal',520.00,30,'2022-02-22','2022-06-23'),(11,'Devonshire Cream',48.98,30,'2022-01-09','2022-05-29'),(12,'Chicken - Breast, 5 - 7 Oz',25.90,24,'2022-01-10','2022-08-31'),(13,'Cheese - Comtomme',566.61,9,'2021-12-12','2022-08-01'),(14,'Soup - Clam Chowder, Dry Mix',183.37,17,'2022-01-28','2022-08-30'),(15,'Doilies - 12, Paper',259.10,14,'2022-02-20','2022-05-27'),(16,'Cream - 35%',207.11,13,'2021-12-13','2022-08-03'),(17,'Dasheen',172.47,22,'2022-01-03','2022-05-12'),(18,'Juice - Ocean Spray Kiwi',31.92,27,'2021-12-18','2022-07-15'),(19,'Wine - Shiraz South Eastern',66.77,10,'2021-12-24','2022-06-09'),(20,'Beer - Heinekin',151.64,4,'2022-01-21','2022-05-31'),(21,'Coffee Swiss Choc Almond',40.23,27,'2021-12-22','2022-04-13'),(22,'Wine - Casillero Del Diablo',250.42,9,'2022-01-05','2022-05-16'),(23,'Oil - Canola',88.83,5,'2021-12-21','2022-07-28'),(24,'Soup - Cream Of Broccoli',80.47,17,'2022-01-04','2022-09-26'),(25,'Oil - Margarine',33.85,13,'2021-12-18','2022-09-19'),(26,'Muffin - Mix - Bran And Maple 15l',51.96,7,'2022-01-26','2022-07-06'),(27,'Beef - Cooked, Corned',49.49,1,'2021-12-12','2022-07-21'),(28,'Juice - Grapefruit, 341 Ml',90.22,2,'2021-12-12','2022-06-18'),(29,'Chinese Foods - Pepper Beef',22.02,13,'2021-12-20','2022-08-31'),(30,'Squash - Guords',78.16,4,'2022-01-03','2022-11-29'),(31,'Pork - Shoulder',103.70,11,'2022-01-18','2022-08-09'),(32,'Cinnamon Rolls',131.02,17,'2022-02-13','2022-07-21'),(33,'Veal - Loin',39.38,20,'2021-12-16','2022-06-28'),(34,'Rappini - Andy Boy',171.35,18,'2021-12-29','2022-11-27'),(35,'Cinnamon Rolls',170.49,26,'2022-02-12','2022-10-21'),(36,'Croissant, Raw - Mini',98.28,22,'2022-01-26','2022-08-13'),(37,'Beans - Fava, Canned',33.75,10,'2022-01-11','2022-10-08'),(38,'Wine - Vidal Icewine Magnotta',93.14,1,'2022-02-09','2022-10-22'),(39,'Dasheen',164.77,7,'2022-01-13','2022-07-14'),(40,'Kumquat',81.79,17,'2021-12-16','2022-07-03'),(41,'Salmon - Atlantic, Fresh, Whole',67.66,2,'2022-02-17','2022-10-24'),(42,'Puree - Kiwi',39.54,5,'2021-12-21','2022-07-28'),(43,'Rice Pilaf, Dry,package',80.87,13,'2022-01-24','2022-08-19'),(44,'Wine - Ej Gallo Sierra Valley',129.97,8,'2021-12-24','2022-11-17'),(45,'Flour - Bread',467.82,8,'2021-12-27','2022-08-17'),(46,'Bread - Sticks, Thin, Plain',108.38,17,'2022-02-05','2022-07-02'),(47,'Veal - Leg, Provimi - 50 Lb Max',140.11,17,'2022-02-16','2022-09-09'),(48,'Pork - Bacon, Sliced',56.04,28,'2022-01-22','2022-09-20'),(49,'Fish - Atlantic Salmon, Cold',39.10,11,'2021-12-13','2022-06-23'),(50,'Wine - Rosso Toscano Igt',26.55,3,'2021-12-21','2022-09-03'),(51,'Pork Loin Cutlets',68.13,26,'2021-12-30','2022-05-17'),(52,'Turkey - Breast, Smoked',30.02,13,'2022-02-03','2022-04-15'),(53,'Cake - Sheet Strawberry',46.10,30,'2022-01-25','2022-06-14'),(54,'Cheese - Oka',84.85,6,'2022-01-28','2022-07-31'),(55,'Pears - Fiorelle',35.02,23,'2022-02-20','2022-09-29'),(56,'Pepsi - Diet, 355 Ml',56.67,27,'2022-01-27','2022-07-13'),(57,'Sauce - White, Mix',63.32,15,'2022-01-14','2022-11-18'),(58,'Cleaner - Pine Sol',70.35,30,'2022-01-07','2022-05-16'),(59,'Pasta - Elbows, Macaroni, Dry',20.72,1,'2021-12-17','2022-07-31'),(60,'Lamb - Whole Head Off',94.68,23,'2021-12-31','2022-08-18'),(61,'Squeeze Bottle',92.13,16,'2022-01-03','2022-09-04'),(62,'Ice Cream - Vanilla',39.69,13,'2022-02-20','2022-04-06'),(63,'Oven Mitts - 15 Inch',89.05,8,'2022-01-09','2022-06-09'),(64,'Pumpkin - Seed',95.56,18,'2022-02-23','2022-05-26'),(65,'Ham - Smoked, Bone - In',94.46,14,'2021-12-31','2022-09-03'),(66,'Cleaner - Bleach',23.78,24,'2022-02-09','2022-09-25'),(67,'Bag Clear 10 Lb',72.95,18,'2022-01-21','2022-08-31'),(68,'Wine - Cotes Du Rhone',12.43,14,'2022-01-10','2022-08-27'),(69,'Chambord Royal',34.89,16,'2022-01-20','2022-09-25'),(70,'Chickhen - Chicken Phyllo',77.65,22,'2022-01-22','2022-04-21'),(71,'Bread - Rolls, Corn',82.05,4,'2022-01-12','2022-05-13'),(72,'Mushroom - Porcini, Dry',67.30,23,'2022-02-01','2022-06-10'),(73,'Pork - Sausage, Medium',49.06,24,'2021-12-21','2022-04-14'),(74,'Cookies - Englishbay Wht',82.18,21,'2021-12-18','2022-07-22'),(75,'Table Cloth 72x144 White',22.30,13,'2022-01-23','2022-08-14'),(76,'Muffin Hinge - 211n',32.95,13,'2021-12-30','2022-08-02'),(77,'Langers - Mango Nectar',29.76,10,'2021-12-22','2022-06-12'),(78,'Soup - Cream Of Broccoli, Dry',48.72,2,'2022-01-28','2022-11-28'),(79,'Wine - Trimbach Pinot Blanc',22.22,10,'2022-01-23','2022-09-17'),(80,'Mushroom - Enoki, Dry',85.08,8,'2022-01-28','2022-04-15'),(81,'Potatoes - Parissienne',15.75,19,'2021-12-14','2022-07-06'),(82,'Beer - Blue',47.49,24,'2022-02-14','2022-08-19'),(83,'Pastry - Plain Baked Croissant',62.66,5,'2022-01-19','2022-07-22'),(84,'Rabbit - Whole',95.63,23,'2021-12-30','2022-10-14'),(85,'Puree - Kiwi',88.19,18,'2021-12-30','2022-05-23'),(86,'Syrup - Monin - Granny Smith',80.88,18,'2022-01-13','2022-11-12'),(87,'Kale - Red',91.81,15,'2021-12-23','2022-08-13'),(88,'Soup - Campbells - Chicken Noodle',13.79,10,'2022-01-14','2022-04-23'),(89,'Cheese - Bocconcini',86.34,11,'2022-01-02','2022-06-25'),(90,'Edible Flower - Mixed',18.88,6,'2022-01-01','2022-10-22'),(91,'Temperature Recording Station',93.00,6,'2021-12-21','2022-06-24'),(92,'Muffin - Bran Ind Wrpd',82.81,6,'2021-12-31','2022-11-10'),(93,'Mountain Dew',22.22,3,'2021-12-28','2022-11-25'),(94,'Scallop - St. Jaques',23.88,16,'2022-01-05','2022-08-14'),(95,'Napkin - Beverage 1 Ply',92.89,5,'2022-01-24','2022-04-24'),(96,'Sausage - Breakfast',45.30,8,'2021-12-27','2022-05-24'),(97,'Hog / Sausage Casing - Pork',85.25,26,'2022-01-28','2022-07-02'),(98,'Eggroll',60.51,17,'2022-01-15','2022-07-22'),(99,'Salt And Pepper Mix - White',54.31,19,'2022-01-30','2022-05-16'),(100,'Coffee - Egg Nog Capuccino',85.82,12,'2022-02-10','2022-05-18');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `cat_id` int NOT NULL,
  `cat_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'non-veg'),(2,'vegetables'),(3,'fruits'),(4,'beverages'),(5,'dairy'),(6,'sweets'),(7,'disposable items'),(8,'staple'),(9,'others');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipped_to`
--

DROP TABLE IF EXISTS `shipped_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipped_to` (
  `order_id` int NOT NULL,
  `ship_id` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipped_to`
--

LOCK TABLES `shipped_to` WRITE;
/*!40000 ALTER TABLE `shipped_to` DISABLE KEYS */;
INSERT INTO `shipped_to` VALUES (1,1),(2,2),(3,3),(5,4),(6,5),(7,6),(9,7),(10,8),(11,9),(13,10),(14,11),(15,12),(17,13),(18,14),(19,15),(21,16),(22,17),(23,18),(25,19),(26,20),(27,21),(29,22),(30,23),(31,24),(33,25),(34,26),(35,27),(37,28),(38,29),(39,30),(41,31),(42,32),(43,33),(45,34),(46,35),(47,36),(49,37);
/*!40000 ALTER TABLE `shipped_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_info`
--

DROP TABLE IF EXISTS `shipping_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_info` (
  `ship_id` int NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `add_id` int NOT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_info`
--

LOCK TABLES `shipping_info` WRITE;
/*!40000 ALTER TABLE `shipping_info` DISABLE KEYS */;
INSERT INTO `shipping_info` VALUES (1,'833-560-2479',51),(2,'823-211-0212',52),(3,'819-415-8730',53),(4,'550-835-0449',55),(5,'809-837-6810',56),(6,'550-647-6048',57),(7,'352-582-0991',59),(8,'147-387-7763',60),(9,'915-237-6797',61),(10,'940-661-0577',63),(11,'910-233-8652',64),(12,'172-928-1242',65),(13,'937-789-0751',67),(14,'977-337-2663',68),(15,'581-271-9648',69),(16,'432-738-3181',71),(17,'694-119-5941',72),(18,'399-951-6443',73),(19,'916-973-8736',75),(20,'794-889-0121',76),(21,'880-807-7037',77),(22,'154-471-8185',79),(23,'520-318-7150',80),(24,'211-938-7348',81),(25,'957-668-6085',83),(26,'564-961-3770',84),(27,'971-944-0914',85),(28,'921-361-7009',87),(29,'106-299-4899',88),(30,'884-598-2835',89),(31,'743-402-0242',91),(32,'177-171-4380',92),(33,'779-313-4449',93),(34,'335-370-4265',95),(35,'248-103-9541',96),(36,'285-650-1872',97),(37,'850-101-7981',99);
/*!40000 ALTER TABLE `shipping_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplied_by`
--

DROP TABLE IF EXISTS `supplied_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplied_by` (
  `p_id` int NOT NULL,
  `s_id` int NOT NULL,
  PRIMARY KEY (`p_id`,`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplied_by`
--

LOCK TABLES `supplied_by` WRITE;
/*!40000 ALTER TABLE `supplied_by` DISABLE KEYS */;
INSERT INTO `supplied_by` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,1),(52,2),(53,3),(54,4),(55,5),(56,6),(57,7),(58,8),(59,9),(60,10),(61,11),(62,12),(63,13),(64,14),(65,15),(66,16),(67,17),(68,18),(69,19),(70,20),(71,21),(72,22),(73,23),(74,24),(75,25),(76,26),(77,27),(78,28),(79,29),(80,30),(81,31),(82,32),(83,33),(84,34),(85,35),(86,36),(87,37),(88,38),(89,39),(90,40),(91,41),(92,42),(93,43),(94,44),(95,45),(96,46),(97,47),(98,48),(99,49),(100,50);
/*!40000 ALTER TABLE `supplied_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `s_id` int NOT NULL,
  `s_name` varchar(70) NOT NULL,
  `gst_no` bigint NOT NULL,
  `phone` varchar(45) NOT NULL,
  `add_id` int NOT NULL,
  `email` varchar(70) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `add_id3_idx` (`add_id`),
  CONSTRAINT `add_id3` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Stanton Inc',6369684324,'706-155-5559',251,'ebinton0@intel.com'),(2,'Cummings-Conn',6666360747,'826-870-4617',252,'hfansy1@amazon.de'),(3,'Zulauf Group',9936171437,'653-538-8368',253,'dcownden2@rambler.ru'),(4,'McGlynn, Fahey and Hackett',6686281895,'263-614-2992',254,'llangstaff3@freewebs.com'),(5,'Kassulke-Rath',9397263581,'745-313-6736',255,'jdickie4@t-online.de'),(6,'MacGyver-Mitchell',5522162418,'127-366-2935',256,'nlyokhin5@sbwire.com'),(7,'O\'Kon, Brakus and Swaniawski',7705242867,'757-879-2058',257,'afessler6@angelfire.com'),(8,'Klein, Jerde and Rosenbaum',7259226485,'689-899-2168',258,'dsuscens7@yahoo.co.jp'),(9,'Lueilwitz-Schimmel',9078033777,'128-653-4320',259,'adressel8@unblog.fr'),(10,'Halvorson, Price and Kautzer',8154581970,'847-351-7975',260,'rradnedge9@vkontakte.ru'),(11,'Lang, Cartwright and Watsica',5788659612,'910-858-3266',261,'rmoizera@myspace.com'),(12,'Koss, Kertzmann and Huel',5539875655,'219-335-8518',262,'hexcellb@arstechnica.com'),(13,'Torphy-Skiles',2085584554,'865-614-1480',263,'ckentwellc@latimes.com'),(14,'Buckridge Inc',3277370301,'367-373-3559',264,'mrosettid@ebay.com'),(15,'Gaylord, Grady and Schroeder',9404305701,'569-139-1140',265,'kfrancee@pen.io'),(16,'Stark and Sons',9095753037,'794-783-7575',266,'clinnockf@over-blog.com'),(17,'Jakubowski, Ernser and Sipes',5707054493,'748-240-2396',267,'cgillespeyg@wix.com'),(18,'Rodriguez, Medhurst and Rowe',2089309490,'781-737-8794',268,'abaudinoth@cafepress.com'),(19,'McDermott-Kris',8898221471,'408-545-2053',269,'jjosipovitzi@hostgator.com'),(20,'Dickens, McCullough and Jenkins',1596731799,'362-970-5851',270,'asymonesj@dagondesign.com'),(21,'Abshire, Nitzsche and Gibson',7401431854,'105-142-2930',271,'acregink@hexun.com'),(22,'Fritsch-Haag',5844357661,'775-257-9781',272,'ccampsl@surveymonkey.com'),(23,'Schaefer, Bergstrom and Gulgowski',1044930934,'809-407-8810',273,'mtremberthm@mit.edu'),(24,'Corkery-Roob',8136258088,'713-499-1443',274,'nverrilln@moonfruit.com'),(25,'Hansen, Terry and Gottlieb',9848469500,'971-101-5944',275,'mduntono@princeton.edu'),(26,'Baumbach and Sons',9709516730,'502-543-9955',276,'sknottp@canalblog.com'),(27,'Donnelly-Cartwright',4426740832,'836-333-0999',277,'jkerinsq@drupal.org'),(28,'Haag-Von',5886193345,'690-861-4310',278,'gbenzingr@archive.org'),(29,'Grady-Kulas',2936333004,'463-873-8689',279,'sguilles@123-reg.co.uk'),(30,'Crist Inc',9112354706,'525-400-5104',280,'kstidstont@dion.ne.jp'),(31,'Daniel Inc',4256945081,'433-934-2648',281,'mcordleu@gmpg.org'),(32,'Beahan, Willms and Hodkiewicz',6892700634,'582-951-0787',282,'cfarnv@ft.com'),(33,'Wunsch LLC',7238583606,'515-536-9841',283,'aolliganw@cpanel.net'),(34,'Wisozk LLC',6276175572,'375-177-8555',284,'dblumsonx@ted.com'),(35,'Nader, Shields and Hayes',6916449906,'540-325-1156',285,'lmarquesey@mozilla.org'),(36,'Kunde LLC',8564803927,'907-621-6733',286,'whavillez@hatena.ne.jp'),(37,'Willms-Wuckert',1864087157,'686-945-5446',287,'kbravery10@wikispaces.com'),(38,'Boyer and Sons',5917329620,'640-795-2455',288,'jgores11@blogspot.com'),(39,'Sporer, Cruickshank and Jones',5522463308,'388-179-3940',289,'wgreenard12@slate.com'),(40,'Orn-Moore',8596325553,'893-351-8389',290,'jkelleher13@github.com'),(41,'Hickle-Waelchi',1569994103,'753-243-3482',291,'cconnow14@discuz.net'),(42,'DuBuque, Lowe and Wiegand',9202039858,'779-729-2743',292,'glamberton15@alibaba.com'),(43,'Ruecker Inc',5782321810,'485-721-9050',293,'amcconaghy16@reddit.com'),(44,'Blanda-Renner',5393645366,'251-994-8573',294,'lpattison17@ifeng.com'),(45,'Anderson, Parker and Rohan',5069670094,'453-226-1836',295,'rmaulkin18@amazon.com'),(46,'Padberg Group',2395519483,'286-571-6989',296,'rpersich19@behance.net'),(47,'Carter, Conroy and Collier',1318273072,'367-163-7144',297,'bhighwood1a@mapquest.com'),(48,'Swaniawski, Wisozk and Macejkovic',8361207634,'634-341-1271',298,'abarley1b@sun.com'),(49,'Marvin, Strosin and Paucek',1706393824,'477-635-6167',299,'wmcnelly1c@alexa.com'),(50,'Purdy, Towne and Kilback',2812026145,'464-369-4174',300,'icridlon1d@google.nl');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_login`
--

DROP TABLE IF EXISTS `supplier_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_login` (
  `user_id` int NOT NULL,
  `s_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_login`
--

LOCK TABLES `supplier_login` WRITE;
/*!40000 ALTER TABLE `supplier_login` DISABLE KEYS */;
INSERT INTO `supplier_login` VALUES (10250,1),(10251,2),(10252,3),(10253,4),(10254,5),(10255,6),(10256,7),(10257,8),(10258,9),(10259,10),(10260,11),(10261,12),(10262,13),(10263,14),(10264,15),(10265,16),(10266,17),(10267,18),(10268,19),(10269,20),(10270,21),(10271,22),(10272,23),(10273,24),(10274,25),(10275,26),(10276,27),(10277,28),(10278,29),(10279,30),(10280,31),(10281,32),(10282,33),(10283,34),(10284,35),(10285,36),(10286,37),(10287,38),(10288,39),(10289,40),(10290,41),(10291,42),(10292,43),(10293,44),(10294,45),(10295,46),(10296,47),(10297,48),(10298,49),(10299,50);
/*!40000 ALTER TABLE `supplier_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `so_id` int NOT NULL,
  `s_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19);
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies_ordered`
--

DROP TABLE IF EXISTS `supplies_ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies_ordered` (
  `so_id` int NOT NULL,
  `t_cost` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies_ordered`
--

LOCK TABLES `supplies_ordered` WRITE;
/*!40000 ALTER TABLE `supplies_ordered` DISABLE KEYS */;
INSERT INTO `supplies_ordered` VALUES (1,1088.23,11),(2,45.27,1),(3,256.96,1),(4,272.61,9),(5,4382.30,26),(6,290.40,12),(7,13661.40,30),(8,920.64,16),(9,1046.52,12),(10,3640.00,7),(11,1028.58,21),(12,25.90,1),(13,8499.15,15),(14,3484.03,19),(15,7773.00,30),(16,3106.65,15),(17,2069.64,12),(18,829.92,26),(19,1135.09,17);
/*!40000 ALTER TABLE `supplies_ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10000,'Artie','SQ9VZVBnjjJI','employee'),(10001,'Olwen','RK3TqJq8z','employee'),(10002,'Elset','vpJpBy75tJEM','employee'),(10003,'Lorry','NdwGepJ9s','employee'),(10004,'Cecelia','7fo9TrLa','employee'),(10005,'Galina','CVHmcupjjQNp','employee'),(10006,'Glenda','SFT8y6J','employee'),(10007,'Ramsey','GJYNqSzaXQb','employee'),(10008,'Corie','m2qUpixMLQ','employee'),(10009,'Tomi','f4fNbZ2GXBf','employee'),(10010,'Joyann','yGQuHh','employee'),(10011,'Shelby','9KBgBbyT0sN','employee'),(10012,'Zea','WU4We8IV8si','employee'),(10013,'Emory','uH3hKcbjr','employee'),(10014,'Darell','0WTo3c','employee'),(10015,'Walt','X5HOuUN5ecYa','employee'),(10016,'Bird','zDHYlg3c5DT','employee'),(10017,'Vivian','bteisv0L','employee'),(10018,'Aldous','TzJscX3usX3','employee'),(10019,'Kai','PyMywa','employee'),(10020,'Kathie','jZxWFP5H4Caz','employee'),(10021,'Arri','7GKpmU','employee'),(10022,'Bonnibelle','hmVxjlTKPw','employee'),(10023,'Abraham','016dSijrg','employee'),(10024,'Frank','F4w6pK5','employee'),(10025,'Margaux','YPCDpzSpjlV','employee'),(10026,'Miranda','Fj89YWkvcI','employee'),(10027,'Ernst','yPeJ9q2GR','employee'),(10028,'Josephine','rtTf5ptfuxDY','employee'),(10029,'Ailina','aNVVgzR4J','employee'),(10030,'Lowell','7OhIZJu9QNDP','employee'),(10031,'Ashlee','uzp38m','employee'),(10032,'Itch','eEMekFUTw','employee'),(10033,'Garv','4o2UC0','employee'),(10034,'Doralynne','2zp5aTV1xwPn','employee'),(10035,'Kent','Qw7ve9','employee'),(10036,'Mord','mwu8GMWGBNS','employee'),(10037,'Abigale','K1VsMYGYA','employee'),(10038,'Fidela','tzS7iUwJ','employee'),(10039,'Ebenezer','qS1VEkS9xQS','employee'),(10040,'Glennie','LBNtStRIs','employee'),(10041,'Teador','krrG6iC','employee'),(10042,'May','BKNkZVhhHn','employee'),(10043,'Tommie','QKROMhARQ','employee'),(10044,'Willette','tOez7bNVubHe','employee'),(10045,'Devin','wAos73A','employee'),(10046,'Alicia','ZFusAT','employee'),(10047,'Evaleen','HFdlAIId','employee'),(10048,'Ellynn','MImjAq4t','employee'),(10049,'Goldie','gdgWonBa','employee'),(10050,'Jessee','sDXYx6tygrA9','customer'),(10051,'Caresa','WvMb1T','customer'),(10052,'Cynthy','ThpomTVf0','customer'),(10053,'Annnora','LpclYWLigVmI','customer'),(10054,'Curry','yNA346','customer'),(10055,'Ferguson','HK2AGfa1C','customer'),(10056,'Ferd','LZPiA9I','customer'),(10057,'Melva','ixGKV67','customer'),(10058,'Raffarty','CwREjE1m','customer'),(10059,'Richard','R4CGI9UTROI4','customer'),(10060,'Elysha','1GpNowKBq','customer'),(10061,'Laurens','hUhYd2VcrZ','customer'),(10062,'Federico','hx7DkN','customer'),(10063,'Ajay','vd1pNj','customer'),(10064,'Evie','Ab5RtYO49po','customer'),(10065,'Randell','uj6CQzoSJ','customer'),(10066,'Ulrika','Nl4xSkXUJM','customer'),(10067,'Robinett','c6urmOnDTL','customer'),(10068,'Clari','q0GuzqqDJsQD','customer'),(10069,'Demetris','z6N308Nj','customer'),(10070,'Mathe','KsfUZz','customer'),(10071,'Shanon','yQLRBf0wGJAN','customer'),(10072,'Ange','HW3H4Tst','customer'),(10073,'Timmy','EeCQvDC4','customer'),(10074,'Wallie','2L1trzxNq','customer'),(10075,'Milton','ht6qAH','customer'),(10076,'Dorree','uJZRh4','customer'),(10077,'Leonanie','j8N4C0kLfhR','customer'),(10078,'Elspeth','zDVtX8s8tX','customer'),(10079,'Gawen','PZlyfg','customer'),(10080,'Pierette','Npodth1y0tM','customer'),(10081,'Georgine','WvOwcaS','customer'),(10082,'Claiborn','usexsqZ8BSz','customer'),(10083,'Vanya','k9hq8dd','customer'),(10084,'Iorgos','JecEflC','customer'),(10085,'Alistair','yISJrMfcQ3','customer'),(10086,'Vinson','FcWVv2Vm','customer'),(10087,'Gail','Zr8jbFKKP','customer'),(10088,'Debbie','wEoGJHFxU','customer'),(10089,'Simone','lkYIgPoY','customer'),(10090,'Tiphanie','XcJK16hU','customer'),(10091,'Madelene','JBedzJfUNb','customer'),(10092,'Marcela','4tGwrt2ehc5','customer'),(10093,'Chris','PlyT3nAbPjX','customer'),(10094,'Judas','tggegz','customer'),(10095,'Brandtr','E3sXTDr','customer'),(10096,'Marlene','eq5zYY1x','customer'),(10097,'Norrie','XBwcC61','customer'),(10098,'Ethelbert','hzvzrtdYscrE','customer'),(10099,'Linzy','Cz0f13','customer'),(10100,'Kalindi','9GqTZeMq3Fyy','customer'),(10101,'Ronny','a4Pc3bA','customer'),(10102,'Simone','RWnZIl','customer'),(10103,'Eugenio','vQhEWIH8c19z','customer'),(10104,'Boone','UnQXnGe','customer'),(10105,'Josiah','d6ToAh','customer'),(10106,'Clyve','ki6awb1Uyaz','customer'),(10107,'Annmarie','XTN0mbzdD','customer'),(10108,'Corbin','onKPfNqIBklY','customer'),(10109,'Abba','oaNbT7','customer'),(10110,'Petra','Nt34uye','customer'),(10111,'Royall','WA8dJo0FMVh','customer'),(10112,'Odey','NTMv80','customer'),(10113,'Belia','ahzq1G6WcV','customer'),(10114,'Enrique','OuMFYcjh','customer'),(10115,'Goldarina','cy7qNQ','customer'),(10116,'Tami','YFet6KCQnnoD','customer'),(10117,'Henderson','PNrNmZULJV','customer'),(10118,'Eloisa','ueXl5pE','customer'),(10119,'Aube','mEOnX6GWd','customer'),(10120,'Jill','U6H2LM','customer'),(10121,'Philomena','yIm0izKR','customer'),(10122,'Ly','N7VqbqN8PmW','customer'),(10123,'Antin','mLrex5K','customer'),(10124,'Diarmid','zt8yPDNb','customer'),(10125,'Barbaraanne','9DUJf2O','customer'),(10126,'Glenden','ezvkBFBbd47','customer'),(10127,'Roxy','yctDHj1','customer'),(10128,'Evelyn','DHFjByrjqR','customer'),(10129,'Lennie','40hmSigL','customer'),(10130,'Gaylene','lPMYNS','customer'),(10131,'Cristabel','GpKN7SKBUEvM','customer'),(10132,'Barrie','VDMhJOSyeZT','customer'),(10133,'Averill','H6pM3s','customer'),(10134,'Justin','piJBQr','customer'),(10135,'Karoly','PZHX6vQy9lTL','customer'),(10136,'Jewelle','iz8KcdAiSH','customer'),(10137,'Sherri','FyK4LaNASSv2','customer'),(10138,'Nelia','mK1HTXqpPD','customer'),(10139,'Abdul','F3dIpbYSoV','customer'),(10140,'Celeste','xgfWsFCQEM','customer'),(10141,'Ozzy','dTJ6dpr7U','customer'),(10142,'Ronnie','xkNmy7FO0j','customer'),(10143,'Smith','0q0dab5w','customer'),(10144,'Bernelle','CBbDdM0','customer'),(10145,'Lorianna','fTXu84Te2uej','customer'),(10146,'Nestor','5yEnusZUHTC','customer'),(10147,'Claiborne','T9OPG6BpR4','customer'),(10148,'Alejoa','YeoG4H','customer'),(10149,'Yardley','61rzVfs','customer'),(10150,'Hanni','U96x7vx','customer'),(10151,'Timmi','0xQjX2F','customer'),(10152,'Tulley','viwNbxWm6Y','customer'),(10153,'Dolf','KwJhcJ','customer'),(10154,'Jeanette','UzyVB7','customer'),(10155,'Katerine','5myEoGYzK','customer'),(10156,'Spence','P5R2YfU7R','customer'),(10157,'Raymond','ReVBYk','customer'),(10158,'Aleksandr','VUmE1Trb8rkc','customer'),(10159,'Douglas','TTsMDJPnEVO','customer'),(10160,'Bertha','D1EajqA1JunT','customer'),(10161,'Ambrose','I4msPdEhEOF','customer'),(10162,'Lawrence','p5aFLQ','customer'),(10163,'Granthem','tKXz9uECX0MP','customer'),(10164,'Hildagard','fMwYbBS','customer'),(10165,'Dominic','XzoaB9MvLP','customer'),(10166,'Sharon','R5pUeEAF','customer'),(10167,'Wes','tpQZC5hki0p7','customer'),(10168,'Ericka','I4Stgoh6u6','customer'),(10169,'Karylin','AUK4nP','customer'),(10170,'Dukie','BaYFxW','customer'),(10171,'Wandis','K3JJ5VNT','customer'),(10172,'Shea','GAcydHvS7','customer'),(10173,'Corney','lLeSwR','customer'),(10174,'Dalila','VOjetmjmM','customer'),(10175,'Bent','190C4k5BpV34','customer'),(10176,'Eimile','3ylUI4YGD9HE','customer'),(10177,'Nissie','AMdwLr','customer'),(10178,'Courtney','VackTSW2qxc','customer'),(10179,'Marisa','JelCy2Y583A','customer'),(10180,'Lauralee','q1aswCbqeM','customer'),(10181,'Darren','S3JmwKdyEE2','customer'),(10182,'Rex','rXOu9Vq','customer'),(10183,'Theo','B0ZRvh3b','customer'),(10184,'Bryanty','7ppDjy18xuZ','customer'),(10185,'Bryn','5UGtja','customer'),(10186,'Rollin','x2xNl7N8Ae1z','customer'),(10187,'Chandal','FNjBY2','customer'),(10188,'Lissi','UdbGccq','customer'),(10189,'Gigi','Oda9R2t','customer'),(10190,'Elbertine','3mv7pHQTIes','customer'),(10191,'Dom','vwtNf5fmToU','customer'),(10192,'Calypso','xvSvzoblr','customer'),(10193,'Corbin','2BUEYXhQvJ','customer'),(10194,'Linnell','3LaR8OaJkgyz','customer'),(10195,'Nevsa','YlQli2rMs','customer'),(10196,'Rowney','MjJgrZjh0En','customer'),(10197,'Mina','n6o5gtfuB3j','customer'),(10198,'Lillian','6DDvUTeMvvec','customer'),(10199,'Jedediah','p1GPNBV','customer'),(10200,'Karlis','TQgWhWo','customer'),(10201,'Kandy','TSj4JFXMQP','customer'),(10202,'Justinn','DyyY2u','customer'),(10203,'Leah','7KgPJ2T7L','customer'),(10204,'Kare','vHHD6jq2','customer'),(10205,'Esmaria','WDipuzaYYJ1R','customer'),(10206,'Meir','hxrTkgA','customer'),(10207,'Humberto','3xuUuO','customer'),(10208,'Stafford','ZHNlqGI','customer'),(10209,'Hamid','LqWB8gCTEf','customer'),(10210,'Alaine','zPUbFLJ','customer'),(10211,'Sanford','Jz9vCmC6W5U','customer'),(10212,'Merlina','qXpXnynUiJf2','customer'),(10213,'Juieta','paIVoR6vyPBh','customer'),(10214,'Norrie','sShkPVfYph2d','customer'),(10215,'Martainn','RLdrrCMP','customer'),(10216,'Farrel','UWUZ161j','customer'),(10217,'Ramsay','VwTYpiE','customer'),(10218,'Clair','ZI0HyysW','customer'),(10219,'Lila','3osO5Ryh3L7','customer'),(10220,'Bess','XZGbpv','customer'),(10221,'Elfrida','Tyz9OiE','customer'),(10222,'Bobbe','ZlYYMCsucRla','customer'),(10223,'Aprilette','Wy2F85e','customer'),(10224,'Eli','Q7kuzS','customer'),(10225,'Shayne','fOBUOX','customer'),(10226,'Abbot','rzgUvN','customer'),(10227,'Erskine','4kef7F4uk','customer'),(10228,'Ida','rfCmGPP1','customer'),(10229,'Barnaby','FgmnV4','customer'),(10230,'Fred','xX7UlNXuq','customer'),(10231,'Stephani','htP6TFsJRyFF','customer'),(10232,'Charin','MXHgdEPrcJ9n','customer'),(10233,'Elwira','PmJ18sbd','customer'),(10234,'Daisi','u1r3nbI','customer'),(10235,'Tiertza','esVy3UAG4v5','customer'),(10236,'Chalmers','P3Grx5cV','customer'),(10237,'Olav','j28K87P','customer'),(10238,'Klement','2MRJaUL','customer'),(10239,'Juan','gL6u9h','customer'),(10240,'Chrysa','xeaQJ1l','customer'),(10241,'Sonny','fWoys5dF4','customer'),(10242,'Isabelita','eg81Cut','customer'),(10243,'Crystal','VJPRqdG6','customer'),(10244,'Giffie','ZUG3ooOVMR0','customer'),(10245,'Butch','gEVm7V6oinr','customer'),(10246,'Doralia','jsQ7j80AFwj','customer'),(10247,'Wilt','66XpF51MV','customer'),(10248,'Rozele','XKHYzIvfg2','customer'),(10249,'Ad','25V8viKoyok','customer'),(10250,'Stanton Inc','cB9kGs','supplier'),(10251,'Cummings-Conn','Zmoq6XB8iSW','supplier'),(10252,'Zulauf Group','ZJe5MP','supplier'),(10253,'McGlynn, Fahey and Hackett','tGRRvD8AH','supplier'),(10254,'Kassulke-Rath','7uJlLnyZsbtX','supplier'),(10255,'MacGyver-Mitchell','ABdL7IkGFCq','supplier'),(10256,'O\'Kon, Brakus and Swaniawski','tqmhNaOTwNJF','supplier'),(10257,'Klein, Jerde and Rosenbaum','Su3hAokT3','supplier'),(10258,'Lueilwitz-Schimmel','rLdXHOP','supplier'),(10259,'Halvorson, Price and Kautzer','hTbB84N','supplier'),(10260,'Lang, Cartwright and Watsica','vivCgDpoe','supplier'),(10261,'Koss, Kertzmann and Huel','I4Kqzgoe','supplier'),(10262,'Torphy-Skiles','96nUyu','supplier'),(10263,'Buckridge Inc','vRn38X1yGm','supplier'),(10264,'Gaylord, Grady and Schroeder','M3Aca21K86Mv','supplier'),(10265,'Stark and Sons','Zz1SgfSmxig1','supplier'),(10266,'Jakubowski, Ernser and Sipes','0DVZHJJ','supplier'),(10267,'Rodriguez, Medhurst and Rowe','lRYYfgbacP','supplier'),(10268,'McDermott-Kris','jfNcglgpAE','supplier'),(10269,'Dickens, McCullough and Jenkins','sizq3GI','supplier'),(10270,'Abshire, Nitzsche and Gibson','pbEVw1oG','supplier'),(10271,'Fritsch-Haag','Tcqr0H7c5','supplier'),(10272,'Schaefer, Bergstrom and Gulgowski','Of4Mbq','supplier'),(10273,'Corkery-Roob','Y6aUVncM','supplier'),(10274,'Hansen, Terry and Gottlieb','8G8qPhIXR2gD','supplier'),(10275,'Baumbach and Sons','BKdBvU','supplier'),(10276,'Donnelly-Cartwright','RFurR0OH','supplier'),(10277,'Haag-Von','0C8FQJnzDis','supplier'),(10278,'Grady-Kulas','fI0Kj0qM','supplier'),(10279,'Crist Inc','SXAdeRFIx','supplier'),(10280,'Daniel Inc','pPzhnKF67ic','supplier'),(10281,'Beahan, Willms and Hodkiewicz','a7i3A2obueor','supplier'),(10282,'Wunsch LLC','xfyJglfP','supplier'),(10283,'Wisozk LLC','m0zQMSliWl','supplier'),(10284,'Nader, Shields and Hayes','sXWGFi','supplier'),(10285,'Kunde LLC','BFJ4119','supplier'),(10286,'Willms-Wuckert','5QB8ib','supplier'),(10287,'Boyer and Sons','wC8ykOOkdI','supplier'),(10288,'Sporer, Cruickshank and Jones','t42JxWc','supplier'),(10289,'Orn-Moore','EJ58CPUZI','supplier'),(10290,'Hickle-Waelchi','mmXf2pm','supplier'),(10291,'DuBuque, Lowe and Wiegand','gmpwbA0fAkp2','supplier'),(10292,'Ruecker Inc','XBp725uuGI','supplier'),(10293,'Blanda-Renner','eoIGbndVU','supplier'),(10294,'Anderson, Parker and Rohan','6hKfJRLBkjZE','supplier'),(10295,'Padberg Group','v4lUedjuci','supplier'),(10296,'Carter, Conroy and Collier','g24zijvTzh','supplier'),(10297,'Swaniawski, Wisozk and Macejkovic','GwHOAD6Gn','supplier'),(10298,'Marvin, Strosin and Paucek','UWSexyI2W','supplier'),(10299,'Purdy, Towne and Kilback','oOwDrfgNe','supplier');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_for`
--

DROP TABLE IF EXISTS `works_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_for` (
  `e_id` int NOT NULL,
  `dep_id` int NOT NULL,
  PRIMARY KEY (`e_id`,`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_for`
--

LOCK TABLES `works_for` WRITE;
/*!40000 ALTER TABLE `works_for` DISABLE KEYS */;
INSERT INTO `works_for` VALUES (1,1),(2,2),(3,3),(4,4),(5,1),(6,2),(7,3),(8,4),(9,1),(10,2),(11,3),(12,4),(13,1),(14,2),(15,3),(16,4),(17,1),(18,2),(19,3),(20,4),(21,1),(22,2),(23,3),(24,4),(25,1),(26,2),(27,3),(28,4),(29,1),(30,3),(31,1),(32,3),(33,1),(34,3),(35,1),(36,3),(37,1),(38,3),(39,1),(40,3),(41,2),(42,2),(43,4),(44,3),(45,3),(46,1),(47,1),(48,1),(49,1),(50,1);
/*!40000 ALTER TABLE `works_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 17:00:48
