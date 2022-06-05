CREATE DATABASE  IF NOT EXISTS `elidek` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `elidek`;
-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: elidek
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Name` varchar(50) NOT NULL,
  `Budget` int(11) NOT NULL,
  PRIMARY KEY (`Name`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('adnt',451447),('aniq',229480),('cee',427224),('cn',667850),('ds',573850),('edo',363755),('fsl',549213),('ibu',794706),('mapu',910435),('maue',443702),('nec',130780),('nv',657508),('til',26698),('var',640639),('vcm',427348);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverable`
--

DROP TABLE IF EXISTS `deliverable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverable` (
  `Title` varchar(50) NOT NULL,
  `Date_of_Delivery` date NOT NULL,
  `Summary` varchar(100) DEFAULT NULL,
  `Pr_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Title`),
  KEY `Pr_Name` (`Pr_Name`),
  CONSTRAINT `deliverable_ibfk_1` FOREIGN KEY (`Pr_Name`) REFERENCES `projects` (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverable`
--

LOCK TABLES `deliverable` WRITE;
/*!40000 ALTER TABLE `deliverable` DISABLE KEYS */;
INSERT INTO `deliverable` VALUES ('amet diam','0000-00-00','posuere','vel'),('ante','0000-00-00','tincidunt','eua'),('arcu libero rutrum','0000-00-00','amet','euismod scelerisque quam turpis adipiscing'),('at velit eu est congue','0000-00-00','aenean','orci pede venenatis non sodales'),('augue vestibulum rutrum','0000-00-00','eu','augue'),('donec vitae nisi nam ultrices','0000-00-00','consectetuer','integer ac'),('eget elit sodales scelerisque','0000-00-00','congue','lorem quisque ut'),('eget eros','0000-00-00','a','in imperdiet et commodo'),('eget tempus vel pede','0000-00-00','erat','justo in hac'),('erat eros viverra','0000-00-00','ut','quam pede'),('est lacinia nisi venenatis tristique','0000-00-00','consequat','libero rutrum ac lobortis'),('et commodo vulputate justo','0000-00-00','sit','eu tincidunt in'),('et magnis','0000-00-00','convallis','tempor'),('faucibus','0000-00-00','quam','sapien arcu sed augue'),('hac habitasse platea dictumst morbi','0000-00-00','quis','ullamcorper'),('justo in','0000-00-00','cras','leo odio'),('justo sit amet sapien dignissim','0000-00-00','venenatis','integer tincidunt ante'),('justo sollicitudin ut','0000-00-00','cubilia','eu'),('lectus vestibulum quam','0000-00-00','in','quam pharetra magna ac'),('leo','0000-00-00','fusce','ipsum primis in faucibus'),('lobortis sapien sapien','0000-00-00','interdum','pede malesuada'),('morbi non quam nec','0000-00-00','vel','erat nulla tempus vivamus'),('nibh ligula nec sem duis','0000-00-00','ultrices','suspendisse potenti'),('non mauris morbi','0000-00-00','imperdiet','luctus et ultrices posuere'),('non pretium quis lectus suspendisse','0000-00-00','tortor','nulla suscipit ligula in'),('nullam varius nulla facilisi','0000-00-00','pretium','aenean lectus pellentesque eget'),('odio condimentum id luctus nec','0000-00-00','platea','sapien in sapien iaculis'),('pede justo lacinia eget tincidunt','0000-00-00','donec','dolor sit amet consectetuer'),('phasellus','0000-00-00','at','porta volutpat quam pede lobortis'),('phasellus id sapien in sapien','0000-00-00','eros','in purus eu magna'),('sed augue aliquam erat','0000-00-00','lacus','orci'),('sed lacus','0000-00-00','vivamus','in'),('sed sagittis nam congue risus','0000-00-00','morbi','interdum mauris ullamcorper purus sit'),('tincidunt','0000-00-00','ut','nunc rhoncus dui vel'),('tortor sollicitudin','0000-00-00','in','erat'),('ullamcorper purus sit amet','0000-00-00','lobortis','mus vivamus vestibulum sagittis sapien'),('ut','0000-00-00','justo','ligula nec sem duis aliquam'),('ut at dolor quis odio','0000-00-00','mauris','neque aenean'),('vel est donec','0000-00-00','mauris','varius'),('vivamus in felis eu','0000-00-00','eleifend','nullam varius nulla facilisi');
/*!40000 ALTER TABLE `deliverable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `executives`
--

DROP TABLE IF EXISTS `executives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `executives` (
  `Executive_ID` int(11) NOT NULL,
  PRIMARY KEY (`Executive_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executives`
--

LOCK TABLES `executives` WRITE;
/*!40000 ALTER TABLE `executives` DISABLE KEYS */;
INSERT INTO `executives` VALUES (1018),(1195),(1435),(2655),(2951),(3120),(3247),(3493),(4015),(4044),(4105),(4539),(4747),(4998),(5183),(5433),(5487),(5606),(5840),(6748),(7216),(7556),(7571),(7818),(8409),(8547),(8945),(9383),(9589),(9907);
/*!40000 ALTER TABLE `executives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `Project_Name` varchar(45) NOT NULL,
  `Field_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Project_Name`,`Field_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES ('ability','Business Development'),('ac enim','Research and Development'),('adapter','Business Development'),('aenean lectus pellentesque eget','Product Management'),('aliquam','Human Resources'),('aliquet pulvinar sed nisl','Human Resources'),('amet turpis elementum','Business Development'),('analyzing','Human Resources'),('application','Research and Development'),('at velit eu est congue','Product Management'),('augue','Accounting'),('augue','Business Development'),('bandwidth-monitored','Product Management'),('bi-directional','Business Development'),('Business-focused','Engineering'),('client-driven','Product Management'),('client-driven','Research and Development'),('complexity','Product Management'),('concept','Accounting'),('contextually-based','Business Development'),('contextually-based','Human Resources'),('cum','Business Development'),('Customer-focused','Accounting'),('database','Human Resources'),('diam','Sales'),('Digitized','Product Management'),('discrete','Product Management'),('discrete','Sales'),('Diverse','Accounting'),('dolor sit amet consectetuer','Accounting'),('dolor sit amet consectetuer','Product Management'),('Down-sized','Research and Development'),('eco-centric','Accounting'),('elementum ligula vehicula consequat','Engineering'),('elementum ligula vehicula consequat morbi','Research and Development'),('elementum pellentesque quisque porta volutpat','Accounting'),('erat','Engineering'),('erat nulla tempus vivamus','Human Resources'),('erat nulla tempus vivamus','Research and Development'),('erat quisque','Human Resources'),('et magnis dis parturient montes','Business Development'),('eu','Accounting'),('eu','Product Management'),('eu tincidunt in','Business Development'),('eua','Research and Development'),('euismod scelerisque quam turpis adipiscing','Human Resources'),('euismod scelerisque quam turpis adipiscing','Sales'),('Extended','Accounting'),('fault-tolerant','Research and Development'),('fault-tolerant','Sales'),('felis donec semper','Engineering'),('focus group','Product Management'),('function','Research and Development'),('global','Product Management'),('Graphic Interface','Business Development'),('Grass-roots','Sales'),('hardware','Business Development'),('in','Product Management'),('in imperdiet et commodo','Engineering'),('in imperdiet et commodo','Sales'),('in purus eu magna','Research and Development'),('infrastructure','Human Resources'),('installation','Business Development'),('integer ac','Accounting'),('integer ac','Business Development'),('integer tincidunt ante','Sales'),('interdum mauris ullamcorper purus sit','Product Management'),('interdum mauris ullamcorper purus sit','Research and Development'),('interface','Accounting'),('interface','Human Resources'),('ipsum primis in faucibus','Human Resources'),('justo in hac','Accounting'),('leading edge','Human Resources'),('leo odio','Engineering'),('leo odio','Human Resources'),('leverage','Accounting'),('libero convallis','Research and Development'),('libero rutrum ac lobortis','Business Development'),('libero rutrum ac lobortis','Human Resources'),('ligula nec sem duis aliquam','Human Resources'),('ligula nec sem duis aliquam','Sales'),('local area network','Business Development'),('logistical','Product Management'),('lorem ipsum','Human Resources'),('lorem quisque ut','Engineering'),('lorem quisque ut','Human Resources'),('luctus','Human Resources'),('luctus et ultrices posuere','Engineering'),('luctus et ultrices posuere','Sales'),('Mandatory','Sales'),('methodical','Engineering'),('migration','Accounting'),('migration','Business Development'),('model','Business Development'),('modular','Business Development'),('montes nascetur ridiculus mus etiam','Product Management'),('morbi quis','Accounting'),('mus vivamus vestibulum sagittis sapien','Accounting'),('mus vivamus vestibulum sagittis sapien','Business Development'),('nam congue risus','Human Resources'),('neque aenean','Accounting'),('neque aenean','Business Development'),('neutral','Engineering'),('neutral','Human Resources'),('non-volatile','Accounting'),('nulla suscipit ligula in','Human Resources'),('nullam molestie nibh in','Research and Development'),('nullam varius nulla facilisi','Business Development'),('nunc rhoncus dui vel','Accounting'),('nunc rhoncus dui vel','Business Development'),('Object-based','Research and Development'),('object-oriented','Human Resources'),('odio odio elementum eu interdum','Accounting'),('Optimized','Business Development'),('orci','Accounting'),('orci pede venenatis non sodales','Business Development'),('orci pede venenatis non sodales','Human Resources'),('parallelism','Human Resources'),('parturient montes nascetur ridiculus mus','Sales'),('pede malesuada','Business Development'),('Persevering','Product Management'),('Persistent','Research and Development'),('porta volutpat quam pede lobortis','Engineering'),('potenti cras in purus','Sales'),('process improvement','Business Development'),('Profound','Accounting'),('proin eu mi nulla','Business Development'),('quam pede','Sales'),('quam pharetra magna ac','Human Resources'),('quis','Product Management'),('regional','Business Development'),('sapien arcu sed augue','Accounting'),('sapien arcu sed augue','Business Development'),('sapien in sapien iaculis','Accounting'),('sem fusce consequat nulla','Engineering'),('Stand-alone','Human Resources'),('standardization','Engineering'),('standardization','Sales'),('superstructure','Research and Development'),('suspendisse potenti','Business Development'),('system engine','Engineering'),('tangible','Accounting'),('task-force','Human Resources'),('tempor','Human Resources'),('tincidunt eget','Accounting'),('toolset','Accounting'),('transitional','Human Resources'),('transitional','Sales'),('ullamcorper','Human Resources'),('ultrices phasellus id','Accounting'),('user-facing','Accounting'),('varius','Accounting'),('vel','Product Management'),('vel','Research and Development'),('vulputate luctus','Accounting'),('workforce','Engineering'),('zero defect','Human Resources');
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financing_programs`
--

DROP TABLE IF EXISTS `financing_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financing_programs` (
  `Program_Name` varchar(50) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Program_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financing_programs`
--

LOCK TABLES `financing_programs` WRITE;
/*!40000 ALTER TABLE `financing_programs` DISABLE KEYS */;
INSERT INTO `financing_programs` VALUES ('ac neque duis bibendum','nulla quisque arcu'),('adipiscing lorem vitae','amet eros'),('aliquet at','erat tortor'),('ante nulla justo aliquam quis turpis','interdum'),('congue diam id ornare imperdiet','vestibulum'),('convallis nunc','est lacinia nisi'),('cubilia curae duis faucibus accumsan odio','at turpis'),('dis parturient montes nascetur ridiculus','iaculis'),('eget tincidunt eget tempus','velit'),('in congue etiam justo etiam pretium','ultrices vel augue'),('integer ac neque duis bibendum morbi','duis'),('integer pede','accumsan odio curabitur'),('lacus curabitur at ipsum ac tellus','convallis morbi odio'),('lacus morbi quis tortor','lectus in est'),('libero nullam','mollis'),('lorem ipsum dolor sit amet','orci nullam'),('maecenas tincidunt lacus at','luctus et ultrices'),('mauris ullamcorper purus sit amet','consequat'),('mus vivamus vestibulum','sagittis sapien cum'),('nec nisi volutpat','nisi vulputate'),('neque vestibulum','porta volutpat erat'),('nisi volutpat eleifend','aliquam sit'),('nulla suscipit ligula in lacus curabitur','tristique est et'),('nunc vestibulum ante','duis'),('orci luctus et','aliquet massa'),('ornare imperdiet sapien urna pretium','velit'),('pellentesque ultrices','consectetuer adipiscing'),('platea dictumst maecenas ut massa','ipsum'),('posuere cubilia curae donec pharetra','id ornare'),('primis in faucibus orci luctus','nunc'),('rhoncus mauris','nec nisi volutpat'),('risus dapibus augue vel','pretium'),('sed vestibulum sit','ipsum dolor sit'),('suspendisse accumsan tortor quis','rutrum rutrum neque'),('ultrices posuere cubilia','est'),('ut dolor morbi vel lectus','dapibus augue'),('velit nec nisi vulputate nonummy','sit amet'),('vestibulum ante','diam erat'),('viverra pede ac','vehicula condimentum curabitur'),('vulputate nonummy','pellentesque');
/*!40000 ALTER TABLE `financing_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage` (
  `Project_name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`Project_name`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`Project_name`) REFERENCES `projects` (`Project_Name`),
  CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`id`) REFERENCES `executives` (`Executive_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES ('ability',8409),('ac enim',9589),('adapter',4044),('aenean lectus pellentesque eget',3120),('aliquam',8945),('aliquet pulvinar sed nisl',9383),('amet turpis elementum',5183),('analyzing',4747),('application',4105),('at velit eu est congue',8409),('augue',1018),('bandwidth-monitored',4998),('based',4015),('bi-directional',8547),('Business-focused',7556),('camera',4539),('client',6748),('client-driven',7216),('complexity',3493),('concept',7818),('contextually-based',5433),('cum',5433),('Customer-focused',8547),('cutting',3493),('database',7818),('description',7556),('diam',5606),('Digitized',3247),('discrete',1195),('Diverse',7216),('dolor sit amet consectetuer',8409),('Down-sized',7556),('eco-centric',4105),('elementum ligula vehicula consequat',8547),('elementum ligula vehicula consequat morbi',2655),('elementum pellentesque quisque porta volutpat',3493),('erat',5183),('erat nulla tempus vivamus',1195),('erat quisque',3247),('et magnis dis parturient montes',4105),('eu',8945),('eu tincidunt in',8547),('eua',9589),('euismod scelerisque quam turpis adipiscing',9383),('Extended',9589),('F',9907),('fault',9383),('fault-tolerant',5487),('felis donec semper',2951),('focus group',5606),('function',2951),('global',4015),('Graphic Interface',3120),('Grass-roots',2655),('hardware',1018),('immigration',3120),('in',8945),('in imperdiet et commodo',4998),('in purus eu magna',4539),('infrastructure',2655),('installation',7571),('integer ac',8547),('integer tincidunt ante',3493),('interdum mauris ullamcorper purus sit',4539),('interface',8409),('ipsum primis in faucibus',7556),('justo in hac',1018),('leading edge',9907),('leo odio',5183),('leverage',1435),('libero convallis',4747),('libero rutrum ac lobortis',5433),('ligula nec sem duis aliquam',7556),('local area network',8945),('logistical',5606),('lorem ipsum',1018),('lorem quisque ut',2951),('luctus',9907),('luctus et ultrices posuere',5606),('Mandatory',4747),('methodical',4998),('migration',4539),('model',5840),('modular',1195),('montes nascetur ridiculus mus etiam',6748),('morbi quis',4015),('mus vivamus vestibulum sagittis sapien',4044),('nam congue risus',3120),('neque aenean',5840),('neutral',1018),('neutralisation',5183),('non-volatile',5183),('nulla suscipit ligula in',3247),('nullam molestie nibh in',7216),('nullam varius nulla facilisi',4747),('nunc rhoncus dui vel',1435),('Object-based',5183),('object-oriented',2655),('odio odio elementum eu interdum',4998),('Optimized',3247),('orci',5840),('orci pede venenatis non sodales',2655),('parallelism',7571),('parturient montes nascetur ridiculus mus',5840),('pede malesuada',5487),('Persevering',4539),('Persistent',9383),('porta volutpat quam pede lobortis',4105),('potenti cras in purus',7818),('process improvement',5487),('Profound',2951),('proin eu mi nulla',1435),('quam pede',4998),('quam pharetra magna ac',1195),('quis',7556),('regional',8945),('sapien arcu sed augue',7571),('sapien in sapien iaculis',9907),('sem fusce consequat nulla',5487),('Stand-alone',5840),('standardization',8547),('superstructure',1195),('suspendisse potenti',2655),('system engine',4044),('tangible',5840),('task-force',4998),('tempor',4015),('tincidunt eget',7571),('tool',4539),('toolset',8945),('transition',1435),('transitional',5433),('ullamcorper',6748),('ultrices phasellus id',1195),('user-facing',9589),('varius',7818),('vel',7216),('vulputate luctus',4044),('workforce',6748),('zero defect',1018);
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `org_year_projects`
--

DROP TABLE IF EXISTS `org_year_projects`;
/*!50001 DROP VIEW IF EXISTS `org_year_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `org_year_projects` (
  `Abbreviation` tinyint NOT NULL,
  `year2` tinyint NOT NULL,
  `got_projects` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `organisation_phones`
--

DROP TABLE IF EXISTS `organisation_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisation_phones` (
  `Company_abbreviation` varchar(50) NOT NULL,
  `Phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Company_abbreviation`,`Phone`),
  CONSTRAINT `organisation_phones_ibfk_1` FOREIGN KEY (`Company_abbreviation`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation_phones`
--

LOCK TABLES `organisation_phones` WRITE;
/*!40000 ALTER TABLE `organisation_phones` DISABLE KEYS */;
INSERT INTO `organisation_phones` VALUES ('adnt','218-188-8096'),('aniq','456-704-5002'),('cee','902-239-7895'),('cn','257-728-7968'),('cons','979-837-7489'),('cud','656-710-9687'),('dol','801-155-4967'),('ds','225-169-5368'),('duis','239-801-7928'),('edo','729-736-9850'),('est','954-188-2859'),('et','421-466-2348'),('fsl','380-295-3890'),('ibu','337-256-8920'),('ime','810-640-2714'),('in','404-596-5431'),('inter','270-843-0097'),('it','290-269-9230'),('leo','158-121-2156'),('mapu','198-401-4765'),('mask','246-281-0507'),('maue','296-590-1169'),('morf','341-309-2111'),('nec','135-996-5147'),('nec','192-441-6749'),('nisl','362-337-0928'),('nv','322-468-8411'),('oe','698-994-4155'),('pel','467-795-9195'),('primis','242-997-8208'),('qui','341-836-8538'),('rdf','149-870-1647'),('rhj','781-999-9501'),('sol','205-711-5748'),('temo','152-270-5732'),('til','820-923-9773'),('tinc','812-300-9966'),('var','161-624-5980'),('vcm','600-785-6991'),('ven','448-850-6117');
/*!40000 ALTER TABLE `organisation_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `organisation_projects`
--

DROP TABLE IF EXISTS `organisation_projects`;
/*!50001 DROP VIEW IF EXISTS `organisation_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `organisation_projects` (
  `organisation_Abb` tinyint NOT NULL,
  `project_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `organisations`
--

DROP TABLE IF EXISTS `organisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisations` (
  `Abbreviation` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address_Street` varchar(50) DEFAULT NULL,
  `Address_Street_Number` int(11) DEFAULT NULL,
  `Address_Postcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisations`
--

LOCK TABLES `organisations` WRITE;
/*!40000 ALTER TABLE `organisations` DISABLE KEYS */;
INSERT INTO `organisations` VALUES ('adnt','at diam nam tristique','South',11,0),('aniq','a nibh in quis','Tomscot',8,38280),('cee','convallis eget eleifend','Caliangt',2,0),('cn','convallis nulla','Katie',1518,0),('cons','cmlk omff nsk sml','Kensington',924,682),('cud','chjk ufks dnm','Village Green',173,32),('dol','doel lfs','Prairie Rose',7,0),('ds','dkl slkm','Tomscot',0,0),('duis','dnjk unj imdk snk','Tennyson',161,0),('edo','est donec odio','Rowland',3889,66019),('est','ehbj sjhbd thjb','Vermont',7,0),('et','ejvhfb tbh','Namekagon',371,0),('fsl','felis sed lacus','Farwell',1,682),('ibu','in blandit ultrices','Browning',69,8316),('ime','ifol mekld','Butterfield',6056,0),('in','injnd njdnjf','Browning',50,59024),('inter','ibhf njfb the ebej rklm','Linden',6345,627306),('it','infk tebj','Gerald',96,39266),('leo','lfl elkf odsc','Dakota',0,0),('mapu','maecenas pulvinar','Ruskin',979,47239),('mask','mefk ajk sked','Ludington',71,48110),('maue','mdskl aunj ek','Delladonna',94,0),('morf','mof rkn fl','Monica',67578,682539),('nec','nekl elk csc','Weeping Birch',760,0),('nisl','nidkl sljhfj','Ramsey',10557,0),('nv','nunc vestibulum','Nova',4,3304),('oe','oldmk elk','Linden',4,21061),('pel','pdfp elk lcs','Sommers',2,0),('primis','prifl misdk','Parkside',7,73),('qui','qun ubn ijmnj','Ramsey',387,58884),('rdf','rjk dionk fnj','Stoughton',863,0),('rhj','rjh hkl jed','Everett',90208,0),('sol','skn ofm lsd','Northwestern',505,0),('temo','toire emoif oef','Lighthouse Bay',69616,0),('til','tkm inf lmc','Dayton',216,2530),('tinc','ten inf nd ckl','Mayfield',7,5834),('var','vhgj ayj rkn','Victoria',47,0),('vcm','vehicula consequat morbi','Superior',69273,92130),('ven','vestibulum ente nipsum','Johnson',1748,617724);
/*!40000 ALTER TABLE `organisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `Project_Name` varchar(50) NOT NULL,
  `Summary` varchar(100) NOT NULL,
  `Amount` float DEFAULT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Evaluated_from` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `Date_of_Evaluation` date NOT NULL,
  `Directed_from` int(11) NOT NULL,
  `Program_subsidy` varchar(50) NOT NULL,
  `Organisation_Managing` varchar(50) NOT NULL,
  `Duration` int(11) GENERATED ALWAYS AS (timestampdiff(MONTH,`Start_Date`,`End_Date`)) STORED,
  PRIMARY KEY (`Project_Name`),
  KEY `Evaluated_from` (`Evaluated_from`),
  KEY `Directed_from` (`Directed_from`),
  KEY `Program_subsidy` (`Program_subsidy`),
  KEY `Organisation_Managing` (`Organisation_Managing`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`Evaluated_from`) REFERENCES `researchers` (`Researcher_ID`),
  CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`Directed_from`) REFERENCES `researchers` (`Researcher_ID`),
  CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`Program_subsidy`) REFERENCES `financing_programs` (`Program_Name`),
  CONSTRAINT `projects_ibfk_4` FOREIGN KEY (`Organisation_Managing`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('ability','quis augue',273258,'2020-01-22','2024-12-26',35034,0,'2017-01-22',61272,'lorem ipsum dolor sit amet','nec',59),('ac enim','eros suspendisse accumsan tortor',288497,'2015-12-05','2020-09-24',52215,9,'2015-12-05',15319,'integer ac neque duis bibendum morbi','temo',57),('adapter','at vulputate vitae nisl',909478,'2019-03-01','2017-06-21',90507,0,'2019-03-01',91479,'orci luctus et','qui',-20),('aenean lectus pellentesque eget','interdum in ante vestibulum',534733,'2020-06-07','2019-05-19',10533,6,'2020-06-07',52642,'viverra pede ac','mask',-12),('aliquam','ut blandit non interdum',62164,'2016-07-20','2020-03-11',28149,4,'2016-07-20',25557,'viverra pede ac','mask',43),('aliquet pulvinar sed nisl','vestibulum sagittis sapien cum',114836,'2016-01-15','2022-07-11',25557,3,'2016-01-15',23093,'dis parturient montes nascetur ridiculus','cons',77),('amet turpis elementum','pulvinar nulla pede ullamcorper',533287,'2020-01-10','2022-02-06',82179,4,'2020-01-10',48192,'integer pede','fsl',24),('analyzing','velit id',502844,'2017-03-26','2021-03-16',86247,0,'2017-03-26',45721,'in congue etiam justo etiam pretium','it',47),('application','ultrices posuere',382544,'2020-01-31','2022-04-14',10123,0,'2016-01-31',61272,'posuere cubilia curae donec pharetra','nec',26),('at velit eu est congue','nullam porttitor',995974,'2017-09-17','2019-03-21',60967,7,'2017-09-17',75285,'pellentesque ultrices','et',18),('augue','tellus semper interdum mauris',148394,'2020-05-26','2021-02-13',84136,4,'2020-05-26',68900,'orci luctus et','qui',8),('bandwidth-monitored','a odio',598851,'2021-12-24','2021-04-08',63133,0,'2021-12-24',50208,'cubilia curae duis faucibus accumsan odio','vcm',-8),('based','metus arcu adipiscing molestie',128026,'2019-10-06','2019-03-20',28883,0,'2019-10-06',90507,'suspendisse accumsan tortor quis','oe',-6),('bi-directional','primis in faucibus orci',250550,'2020-05-01','2023-02-14',40461,0,'2019-05-01',33337,'maecenas tincidunt lacus at','fsl',33),('Business-focused','sem duis',979610,'2020-09-12','2021-08-05',28779,0,'2017-09-12',33337,'neque vestibulum','fsl',10),('camera','adipiscing lorem vitae mattis',30083,'2020-07-30','2022-10-24',55207,6,'2019-07-30',21441,'ornare imperdiet sapien urna pretium','nec',26),('client','diam neque vestibulum eget',574900,'2015-07-06','2020-04-24',44387,0,'2015-07-06',83443,'neque vestibulum','ven',57),('client-driven','turpis elementum',934125,'2021-02-19','2022-05-15',45721,0,'2018-02-19',33337,'convallis nunc','fsl',14),('complexity','dapibus dolor vel est',144543,'2016-03-31','2019-12-19',19756,0,'2016-03-31',66551,'lacus morbi quis tortor','dol',44),('concept','habitasse platea dictumst aliquam',392606,'2020-05-23','2021-05-15',30180,0,'2022-05-23',61272,'mauris ullamcorper purus sit amet','nec',11),('contextually-based','metus sapien ut',522645,'2020-11-09','2023-06-26',79563,0,'2015-11-09',61272,'sed vestibulum sit','nec',31),('cum','sodales scelerisque mauris',198453,'2017-02-06','2019-08-11',21441,7,'2017-02-06',18388,'platea dictumst maecenas ut massa','duis',30),('Customer-focused','leo odio condimentum id',411371,'2019-08-08','2019-02-27',79372,0,'2019-08-08',21048,'ante nulla justo aliquam quis turpis','aniq',-5),('cutting','tincidunt lacus at',888129,'2020-12-09','2021-12-31',42880,0,'2019-12-09',61272,'velit nec nisi vulputate nonummy','nec',12),('database','ultrices aliquet maecenas',874943,'2021-04-22','2022-05-29',50208,0,'2016-04-22',33337,'risus dapibus augue vel','fsl',13),('description','vel est',155529,'2015-11-17','2022-03-03',44938,0,'2015-11-17',28149,'primis in faucibus orci luctus','edo',75),('diam','cursus id turpis integer',138463,'2020-05-16','2022-01-03',64025,4,'2020-05-16',50616,'velit nec nisi vulputate nonummy','sol',19),('Digitized','nulla ut erat',247223,'2020-04-18','2022-06-04',24838,0,'2019-04-18',61272,'lacus curabitur at ipsum ac tellus','nec',25),('discrete','nunc donec',951364,'2020-12-12','2022-12-16',21165,0,'2019-12-12',33337,'suspendisse accumsan tortor quis','fsl',24),('Diverse','eleifend quam a odio',884784,'2020-05-15','2021-07-22',80151,0,'2021-05-15',61272,'ultrices posuere cubilia','nec',14),('dolor sit amet consectetuer','ornare imperdiet',838452,'2015-09-02','2019-11-30',65369,7,'2015-09-02',13976,'nulla suscipit ligula in lacus curabitur','morf',50),('Down-sized','quis lectus',287321,'2022-02-18','2020-07-10',65996,0,'2022-02-18',26135,'vulputate nonummy','var',-19),('eco-centric','ut ultrices',659065,'2022-03-12','2022-06-10',75503,0,'2022-03-12',99546,'congue diam id ornare imperdiet','est',2),('elementum ligula vehicula consequat','consequat dui nec nisi',502134,'2018-04-24','2018-04-01',67673,4,'2018-04-24',11258,'rhoncus mauris','rhj',0),('elementum ligula vehicula consequat morbi','ut nunc',888592,'2015-09-13','2018-01-28',41228,5,'2015-09-13',52215,'ac neque duis bibendum','ds',28),('elementum pellentesque quisque porta volutpat','maecenas rhoncus',123689,'2017-01-08','2022-03-18',20786,2,'2017-01-08',70812,'lacus morbi quis tortor','dol',62),('erat','eget elit',549812,'2021-01-19','2024-08-01',63347,3,'2016-01-19',33337,'nisi volutpat eleifend','fsl',42),('erat nulla tempus vivamus','mattis pulvinar',62566,'2017-12-14','2022-01-06',52459,10,'2017-12-14',78446,'vestibulum ante','tinc',48),('erat quisque','purus phasellus in felis',184801,'2021-07-10','2023-03-18',43033,10,'2021-07-10',73514,'vestibulum ante','tinc',20),('et magnis dis parturient montes','vestibulum sed magna',737720,'2018-09-03','2017-12-21',21048,2,'2018-09-03',65614,'congue diam id ornare imperdiet','est',-8),('eu','bibendum morbi non',680869,'2018-07-19','2018-06-01',91830,1,'2018-07-19',68049,'pellentesque ultrices','et',-1),('eu tincidunt in','donec dapibus duis',764227,'2020-10-27','2019-06-24',11492,5,'2020-10-27',38839,'ante nulla justo aliquam quis turpis','aniq',-16),('eua','lacus at turpis',923388,'2020-05-30','2022-11-28',31062,8,'2018-05-30',44446,'ornare imperdiet sapien urna pretium','nec',29),('euismod scelerisque quam turpis adipiscing','lobortis est phasellus',739413,'2020-12-04','2021-08-17',49170,8,'2020-12-04',91830,'neque vestibulum','ven',8),('Extended','in imperdiet et commodo',860800,'2020-07-21','2022-08-16',55388,0,'2017-07-21',61272,'convallis nunc','nec',24),('F','aliquam sit amet',791993,'2018-06-14','2017-11-03',61272,0,'2018-06-14',80634,'mus vivamus vestibulum','cud',-7),('fault','ac est',692457,'2021-06-26','2022-11-07',41261,0,'2019-06-26',61272,'primis in faucibus orci luctus','nec',16),('fault-tolerant','in est risus',196761,'2017-07-26','2023-03-24',33337,0,'2017-07-26',48502,'maecenas tincidunt lacus at','primis',67),('felis donec semper','semper est',334628,'2016-05-17','2019-02-18',11258,9,'2016-05-17',11492,'posuere cubilia curae donec pharetra','pel',33),('focus group','aenean lectus pellentesque',959770,'2021-02-18','2022-12-29',38555,0,'2018-02-18',61272,'nec nisi volutpat','nec',22),('function','leo odio',963350,'2021-10-18','2022-12-23',83642,0,'2018-10-18',61272,'nisi volutpat eleifend','nec',14),('global','quisque erat eros viverra',797410,'2020-11-16','2022-08-03',64172,0,'2020-11-16',33337,'vestibulum ante','fsl',20),('Graphic Interface','volutpat sapien arcu',579525,'2021-09-05','2017-08-24',26135,0,'2021-09-05',44938,'nulla suscipit ligula in lacus curabitur','morf',-48),('Grass-roots','egestas metus aenean fermentum',392787,'2020-12-22','2022-07-04',79861,0,'2021-12-22',33337,'in congue etiam justo etiam pretium','fsl',18),('hardware','pede justo lacinia eget',728723,'2019-12-04','2022-06-22',13162,0,'2019-12-04',25989,'aliquet at','cn',30),('immigration','lectus pellentesque eget nunc',881814,'2021-10-28','2023-07-30',77955,0,'2021-10-28',61272,'pellentesque ultrices','nec',21),('in','eu est congue',243272,'2019-06-23','2020-09-22',23093,4,'2019-06-23',49170,'lorem ipsum dolor sit amet','adnt',14),('in imperdiet et commodo','pede justo',20622,'2021-04-01','2020-10-27',83086,4,'2021-04-01',95559,'velit nec nisi vulputate nonummy','sol',-5),('in purus eu magna','luctus cum sociis natoque',14456,'2021-02-03','2020-06-04',18388,6,'2021-02-03',45948,'ultrices posuere cubilia','maue',-7),('infrastructure','sociis natoque penatibus',634242,'2018-05-18','2019-11-17',21242,0,'2018-05-18',65448,'ac neque duis bibendum','ds',17),('installation','cum sociis natoque',290020,'2021-05-16','2019-01-06',66551,0,'2021-05-16',85615,'mauris ullamcorper purus sit amet','inter',-28),('integer ac','turpis eget elit sodales',5114,'2018-08-17','2022-12-27',40036,5,'2018-08-17',78223,'adipiscing lorem vitae','rdf',52),('integer tincidunt ante','commodo vulputate',345402,'2020-08-12','2019-06-20',30021,8,'2020-08-12',93405,'cubilia curae duis faucibus accumsan odio','vcm',-13),('interdum mauris ullamcorper purus sit','donec posuere',317931,'2017-06-08','2019-08-31',26874,2,'2017-06-08',64338,'convallis nunc','in',26),('interface','risus praesent lectus',573901,'2019-07-01','2020-04-20',83443,0,'2019-07-01',84953,'pellentesque ultrices','et',9),('ipsum primis in faucibus','aliquam quis turpis',515565,'2019-05-07','2022-09-11',94036,9,'2019-05-07',10533,'primis in faucibus orci luctus','edo',40),('justo in hac','sem fusce consequat nulla',527021,'2017-04-14','2023-03-23',73514,4,'2017-04-14',51282,'aliquet at','cn',71),('leading edge','ipsum primis in',723749,'2021-10-29','2022-10-20',48892,0,'2016-10-29',61272,'orci luctus et','nec',11),('leo odio','ante ipsum',367941,'2017-06-04','2018-01-06',79034,2,'2017-06-04',20162,'posuere cubilia curae donec pharetra','pel',7),('leverage','montes nascetur ridiculus mus',794330,'2018-04-10','2021-09-12',99546,0,'2018-04-10',82179,'adipiscing lorem vitae','rdf',41),('libero convallis','sit amet consectetuer adipiscing',340611,'2021-11-12','2021-09-18',42053,5,'2021-11-12',57098,'in congue etiam justo etiam pretium','it',-1),('libero rutrum ac lobortis','posuere nonummy integer non',715527,'2018-03-26','2021-06-20',45948,7,'2018-03-26',26874,'in congue etiam justo etiam pretium','it',38),('ligula nec sem duis aliquam','posuere cubilia curae donec',892166,'2016-08-21','2019-10-16',52642,10,'2016-08-21',33076,'dis parturient montes nascetur ridiculus','cons',37),('local area network','nulla tellus in sagittis',757261,'2020-04-13','2021-02-04',78081,0,'2020-04-13',33337,'nulla suscipit ligula in lacus curabitur','fsl',9),('logistical','aliquam convallis',321398,'2017-12-01','2017-11-28',28737,0,'2017-12-01',83716,'velit nec nisi vulputate nonummy','sol',0),('lorem ipsum','erat volutpat in',747044,'2020-09-17','2019-07-19',50789,2,'2020-09-17',43033,'libero nullam','leo',-13),('lorem quisque ut','integer ac',271239,'2020-02-29','2021-04-13',38839,1,'2020-02-29',40036,'congue diam id ornare imperdiet','est',13),('luctus','leo rhoncus sed',799351,'2016-07-06','2021-10-27',32039,6,'2016-07-06',85298,'mus vivamus vestibulum','cud',63),('luctus et ultrices posuere','luctus rutrum nulla',509635,'2021-06-05','2019-06-08',32520,9,'2021-06-05',73890,'lacus morbi quis tortor','dol',-23),('Mandatory','non velit nec nisi',802305,'2021-11-18','2023-03-10',78746,0,'2015-11-18',61272,'platea dictumst maecenas ut massa','nec',15),('methodical','justo aliquam quis turpis',362927,'2019-03-28','2019-03-12',52983,0,'2019-03-28',95036,'nec nisi volutpat','til',0),('migration','non velit',473791,'2021-08-06','2024-07-11',69876,0,'2020-08-06',53960,'ornare imperdiet sapien urna pretium','nec',35),('model','ante ipsum primis',932382,'2017-08-16','2023-02-23',83716,0,'2017-08-16',20786,'nunc vestibulum ante','cee',66),('modular','fusce lacus',564515,'2021-08-04','2022-08-11',10086,0,'2015-08-04',61272,'eget tincidunt eget tempus','nec',12),('montes nascetur ridiculus mus etiam','convallis duis',967081,'2017-03-16','2022-04-09',62296,3,'2017-03-16',60967,'neque vestibulum','ven',60),('morbi quis','rhoncus aliquet',335722,'2021-11-06','2021-03-10',25989,4,'2021-11-06',62033,'suspendisse accumsan tortor quis','oe',-7),('mus vivamus vestibulum sagittis sapien','duis at velit eu',62850,'2018-01-05','2020-01-30',93326,4,'2018-01-05',14462,'mus vivamus vestibulum','cud',24),('nam congue risus','aliquet ultrices',306190,'2017-05-30','2017-12-05',87394,10,'2017-05-30',94036,'nulla suscipit ligula in lacus curabitur','morf',6),('neque aenean','lacus at turpis donec',711724,'2019-10-01','2019-09-22',73890,4,'2019-10-01',38703,'mauris ullamcorper purus sit amet','inter',0),('neutral','gravida sem praesent id',619403,'2016-06-26','2023-05-21',66326,0,'2016-06-26',76369,'libero nullam','leo',82),('neutralisation','donec posuere metus vitae',483687,'2021-03-14','2023-12-13',48502,0,'2017-03-14',33337,'nisi volutpat eleifend','fsl',32),('non-volatile','sagittis nam congue risus',831378,'2020-05-30','2024-11-21',92920,0,'2017-05-30',33337,'integer pede','fsl',53),('nulla suscipit ligula in','a pede posuere',584632,'2019-04-25','2021-04-22',51282,5,'2019-04-25',84136,'suspendisse accumsan tortor quis','oe',23),('nullam molestie nibh in','luctus et ultrices posuere',103520,'2022-02-05','2023-02-23',57098,7,'2022-02-05',11404,'convallis nunc','in',12),('nullam varius nulla facilisi','pellentesque quisque',393809,'2021-07-07','2023-02-14',11404,9,'2021-07-07',18657,'ac neque duis bibendum','ds',19),('nunc rhoncus dui vel','morbi non',320724,'2017-08-19','2018-11-28',43480,4,'2017-08-19',34494,'maecenas tincidunt lacus at','primis',15),('Object-based','blandit non',484375,'2020-08-31','2023-01-25',84319,0,'2018-08-31',33337,'congue diam id ornare imperdiet','fsl',28),('object-oriented','aenean lectus',377764,'2018-12-30','2018-06-03',65936,0,'2018-12-30',55207,'sed vestibulum sit','mapu',-6),('odio odio elementum eu interdum','orci mauris lacinia sapien',323939,'2020-10-18','2019-04-07',85615,2,'2020-10-18',80272,'cubilia curae duis faucibus accumsan odio','vcm',-18),('Optimized','maecenas tincidunt lacus',618075,'2021-12-11','2020-03-20',76369,0,'2021-12-11',13162,'vestibulum ante','tinc',-20),('orci','pharetra magna vestibulum aliquet',64653,'2015-07-05','2018-04-26',50616,6,'2015-07-05',32520,'nunc vestibulum ante','cee',33),('orci pede venenatis non sodales','nisl duis ac nibh',449072,'2020-06-13','2018-09-28',44446,1,'2020-06-13',84467,'platea dictumst maecenas ut massa','duis',-20),('parallelism','non velit',295545,'2021-10-28','2023-05-31',38876,0,'2015-10-28',61272,'nunc vestibulum ante','nec',19),('parturient montes nascetur ridiculus mus','maecenas ut massa',797100,'2015-06-24','2017-06-10',95036,7,'2015-06-24',64025,'ut dolor morbi vel lectus','nisl',23),('pede malesuada','felis sed',328982,'2019-05-24','2017-10-05',33117,1,'2019-05-24',79034,'rhoncus mauris','rhj',-19),('Persevering','amet turpis',526572,'2016-11-28','2020-07-14',61014,0,'2016-11-28',42053,'ultrices posuere cubilia','maue',43),('Persistent','rutrum nulla',944705,'2017-02-13','2021-01-18',25674,0,'2017-02-13',27980,'dis parturient montes nascetur ridiculus','cons',47),('porta volutpat quam pede lobortis','orci luctus et ultrices',917343,'2020-07-09','2027-11-16',27781,10,'2017-07-09',43480,'integer pede','fsl',88),('potenti cras in purus','euismod scelerisque quam',803852,'2021-04-15','2022-06-06',80272,9,'2017-04-15',33337,'risus dapibus augue vel','fsl',13),('process improvement','vestibulum aliquet',757822,'2021-01-17','2022-08-20',23079,0,'2016-01-17',61272,'adipiscing lorem vitae','nec',19),('Profound','ligula pellentesque ultrices phasellus',886517,'2021-03-26','2021-05-11',60381,0,'2021-03-26',79372,'posuere cubilia curae donec pharetra','pel',1),('proin eu mi nulla','non mi integer',700598,'2017-12-10','2022-12-27',65614,1,'2017-12-10',27781,'adipiscing lorem vitae','rdf',60),('quam pede','ultrices vel',55162,'2018-08-19','2021-01-28',81081,4,'2018-08-19',84634,'nec nisi volutpat','til',29),('quam pharetra magna ac','est et tempus semper',484979,'2021-03-17','2019-03-01',85298,3,'2021-03-17',59047,'lacus curabitur at ipsum ac tellus','nv',-24),('quis','tincidunt eget',484144,'2017-09-25','2022-05-16',84953,8,'2017-09-25',87394,'vulputate nonummy','var',55),('regional','sit amet sapien dignissim',171145,'2015-09-02','2021-05-20',94388,0,'2015-09-02',25674,'viverra pede ac','mask',68),('sapien arcu sed augue','massa donec dapibus',994085,'2021-10-09','2023-02-16',93405,10,'2019-10-09',33337,'risus dapibus augue vel','fsl',16),('sapien in sapien iaculis','nulla nunc purus',35804,'2017-03-09','2021-05-11',59047,6,'2017-03-09',52459,'libero nullam','leo',50),('sem fusce consequat nulla','penatibus et magnis dis',902679,'2016-07-06','2019-02-04',48192,6,'2016-07-06',63347,'maecenas tincidunt lacus at','primis',30),('Stand-alone','volutpat quam pede lobortis',540700,'2016-03-01','2017-09-14',68689,0,'2016-03-01',28737,'ut dolor morbi vel lectus','nisl',18),('standardization','massa id lobortis',621755,'2020-03-30','2023-05-19',44961,0,'2020-03-30',60381,'rhoncus mauris','rhj',37),('superstructure','integer tincidunt',697648,'2019-05-14','2022-07-16',80634,0,'2019-05-14',50789,'lacus curabitur at ipsum ac tellus','nv',38),('suspendisse potenti','massa id lobortis convallis',3963,'2021-06-29','2023-01-04',15319,8,'2021-06-29',31062,'sed vestibulum sit','mapu',18),('system engine','accumsan felis ut at',551786,'2019-04-07','2022-07-30',89548,0,'2019-04-07',61272,'aliquet at','nec',39),('tangible','facilisi cras non',666979,'2021-04-08','2022-10-02',86300,0,'2017-04-08',33337,'risus dapibus augue vel','fsl',17),('task-force','aliquam augue',731116,'2021-05-16','2023-02-01',79720,0,'2020-05-16',33337,'lacus morbi quis tortor','fsl',20),('tempor','purus sit',521243,'2022-03-13','2022-07-22',93774,5,'2022-03-13',93326,'eget tincidunt eget tempus','nec',4),('tincidunt eget','morbi vestibulum velit id',929233,'2021-02-20','2023-05-23',70812,8,'2021-02-20',30021,'mauris ullamcorper purus sit amet','inter',27),('tool','placerat praesent blandit nam',953400,'2021-12-11','2023-05-16',17071,0,'2018-12-11',33337,'integer ac neque duis bibendum morbi','fsl',17),('toolset','vestibulum velit id',506120,'2018-01-12','2022-01-23',27980,0,'2018-01-12',62296,'lorem ipsum dolor sit amet','adnt',48),('transition','volutpat eleifend donec ut',482138,'2021-10-22','2022-02-10',62153,0,'2021-10-22',61272,'ante nulla justo aliquam quis turpis','nec',3),('transitional','curae nulla',917895,'2018-01-26','2021-03-03',53960,0,'2018-01-26',61014,'platea dictumst maecenas ut massa','duis',37),('ullamcorper','augue luctus',887116,'2019-11-17','2019-04-10',75285,6,'2019-11-17',65369,'vulputate nonummy','var',-7),('ultrices phasellus id','faucibus orci luctus et',135975,'2016-06-20','2022-07-01',91479,2,'2016-06-20',32039,'eget tincidunt eget tempus','nec',72),('user-facing','ridiculus mus etiam',301772,'2016-01-28','2018-03-04',65448,0,'2016-01-28',65936,'integer ac neque duis bibendum morbi','temo',25),('varius','eu est',392086,'2018-08-04','2022-01-11',84634,9,'2018-08-04',83086,'ut dolor morbi vel lectus','nisl',41),('vel','nam tristique',192593,'2016-01-23','2021-06-18',18657,5,'2016-01-23',39705,'integer ac neque duis bibendum morbi','temo',64),('vulputate luctus','amet eleifend',293957,'2015-07-11','2020-02-28',62033,3,'2015-07-11',93774,'orci luctus et','qui',55),('workforce','sem sed sagittis',281777,'2020-11-11','2018-08-19',43104,0,'2020-11-11',61272,'dis parturient montes nascetur ridiculus','nec',-26),('zero defect','nulla integer pede justo',527283,'2021-04-16','2022-03-26',65040,0,'2018-04-16',33337,'mus vivamus vestibulum','fsl',11);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_center`
--

DROP TABLE IF EXISTS `research_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research_center` (
  `Name` varchar(50) NOT NULL,
  `Budget_from_Ministry_Edu` int(11) NOT NULL,
  `Budget_from_private` int(11) NOT NULL,
  PRIMARY KEY (`Name`),
  CONSTRAINT `research_center_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_center`
--

LOCK TABLES `research_center` WRITE;
/*!40000 ALTER TABLE `research_center` DISABLE KEYS */;
INSERT INTO `research_center` VALUES ('cud',327030,95646),('dol',483539,886433),('est',191201,54527),('ime',556489,527679),('it',165213,181425),('leo',44448,121303),('mask',648101,339941),('morf',207020,719950),('nec',945992,749099),('nisl',621959,93226),('oe',934845,697158),('primis',898255,45044),('rhj',262031,413773),('temo',956952,803110),('ven',464476,576870);
/*!40000 ALTER TABLE `research_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `researcher_projects`
--

DROP TABLE IF EXISTS `researcher_projects`;
/*!50001 DROP VIEW IF EXISTS `researcher_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `researcher_projects` (
  `researcher_name` tinyint NOT NULL,
  `project_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `researchers`
--

DROP TABLE IF EXISTS `researchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researchers` (
  `Researcher_ID` int(11) NOT NULL,
  `Researcher_First_Name` varchar(50) NOT NULL,
  `Researcher_Last_Name` varchar(50) NOT NULL,
  `Reasearcher_Sex` varchar(50) DEFAULT NULL,
  `Researcher_Date_of_Birth` date NOT NULL,
  `Organisation_Working` varchar(50) DEFAULT NULL,
  `Age` int(11) GENERATED ALWAYS AS (timestampdiff(YEAR,`Researcher_Date_of_Birth`,'2022-07-01')) STORED,
  PRIMARY KEY (`Researcher_ID`),
  KEY `Organisation_Working` (`Organisation_Working`),
  CONSTRAINT `researchers_ibfk_1` FOREIGN KEY (`Organisation_Working`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researchers`
--

LOCK TABLES `researchers` WRITE;
/*!40000 ALTER TABLE `researchers` DISABLE KEYS */;
INSERT INTO `researchers` VALUES (10086,'Catherina','Mandal','F','1982-05-13','cud',40),(10123,'Carmencita','Tedahl','F','1965-11-24','aniq',56),(10533,'Sydel','Huggill','F','1982-01-24','edo',40),(11258,'Giorgi','Baldacchi','M','1978-06-16','rhj',44),(11356,'Allyce','Biskup','F','1983-08-30','nec',38),(11404,'Tomkin','Loftie','M','1998-05-25','in',24),(11492,'Shelby','Kopelman','F','1968-09-09','pel',53),(11610,'Dunn','Grollmann','M','1986-11-28','fsl',35),(11697,'Lazar','Hagerty','M','1977-09-29','nec',44),(11745,'Dew','Foynes','M','1979-12-26','tinc',42),(12882,'Kristy','Glassard','F','1984-01-28','fsl',38),(12893,'Enriqueta','Breukelman','F','1975-04-16','ime',47),(13162,'Skyler','Manvell','M','1958-05-25','tinc',64),(13976,'Freeman','Lardez','M','1972-10-15','morf',49),(14462,'Kylen','Shimon','F','1955-10-12','cud',66),(15319,'Annabella','Acum','F','1956-10-18','temo',65),(17071,'Gilly','Brazear','F','1961-11-25','mapu',60),(18097,'Stefanie','Stuckley','F','1969-10-18','mapu',52),(18212,'Benoite','Thompstone','F','1966-05-01','nec',56),(18388,'Amitie','Georgeon','F','1999-04-16','duis',23),(18427,'Colman','Baumler','M','1974-08-21','cee',47),(18594,'Jammal','Schulze','M','1966-07-27','fsl',55),(18657,'Dar','Standrin','M','1971-02-05','ds',51),(19102,'Meara','MacVay','F','1973-03-23','cud',49),(19546,'Trevar','Wabe','M','1973-05-02','dol',49),(19756,'Joey','Sturman','M','1988-03-07','inter',34),(20162,'Fredia','Beeching','F','1972-12-27','pel',49),(20496,'Denny','Featherby','F','1962-05-29','ibu',60),(20786,'Jacquetta','Hookes','F','1981-12-12','cee',40),(20962,'Dorella','Alabaster','F','1967-11-13','fsl',54),(21048,'Sibylle','Shewen','F','1956-08-10','aniq',65),(21165,'Roley','Date','M','1984-05-24','qui',38),(21242,'Mariann','Barock','F','1975-05-18','temo',47),(21322,'Barclay','Bayford','M','1980-03-06','in',42),(21441,'Con','Macy','F','1972-01-09','nec',50),(21836,'Lorita','Gebby','F','1964-05-16','vcm',58),(23079,'Sarge','Wegener','M','1978-10-16','fsl',43),(23093,'Juan','Simonot','M','1993-07-15','cons',28),(23967,'Dottie','Marklin','F','1962-05-17','cons',60),(24838,'Henrietta','Poppleton','F','1984-09-02','leo',37),(25244,'Blaine','Winnister','M','1974-12-12','nec',47),(25282,'Torrey','Very','M','1967-04-01','leo',55),(25557,'Pet','Cullin','F','1972-11-12','mask',49),(25674,'Nonna','Cansdale','F','1957-06-07','mask',65),(25989,'Sosanna','Koppes','F','1962-10-21','cn',59),(26096,'Kristos','Hallybone','M','1989-03-28','nec',33),(26135,'Giustino','Antonacci','M','1976-02-27','var',46),(26874,'Christopher','Tampling','M','1974-04-21','it',48),(27781,'Valaria','Wyett','F','1977-12-02','rdf',44),(27980,'Cassius','Cominotti','M','1997-01-03','cons',25),(28149,'Rosalinde','Tokley','F','1975-08-02','edo',46),(28578,'Hadrian','Cottill','M','1987-11-06','et',34),(28737,'Rayna','Blazewicz','F','1969-07-05','nisl',52),(28779,'Debbi','Howchin','F','1976-08-18','et',45),(28883,'Carlin','Durie','M','1986-08-01','qui',35),(28965,'Freddie','Espie','M','1973-02-09','fsl',49),(29242,'Rochelle','Sphinxe','F','1961-08-25','edo',60),(30003,'Rosita','Minnock','F','1960-08-08','fsl',61),(30021,'Elbert','Leadbeater','M','1982-01-14','inter',40),(30046,'Kenneth','Dulinty','M','1976-07-23','morf',45),(30180,'Corine','Stather','F','1967-07-08','vcm',54),(30726,'Yule','Skerm','M','1987-12-26','fsl',34),(30980,'Kaia','Matchett','F','1983-07-11','temo',38),(31051,'Hunfredo','Kedward','M','1968-06-17','nec',54),(31062,'Cordelia','Fitzackerley','F','1962-08-11','mapu',59),(32039,'Caralie','Truckell','F','1992-03-06','nec',30),(32520,'Gayleen','Szymonowicz','F','1988-11-26','cee',33),(32747,'Pearline','Geeves','F','1981-04-26','primis',41),(33076,'Corney','Livezley','M','1977-04-24','cons',45),(33117,'Aldridge','Feenan','M','1974-10-09','ibu',47),(33198,'Merrill','Gunthorpe','F','1979-05-14','cn',43),(33337,'Robbyn','Storrier','F','1975-01-07','fsl',47),(34339,'Basilio','Micco','M','1986-07-23','nec',35),(34494,'Eilis','Andryushchenko','F','1974-05-15','primis',48),(34636,'Fidelity','Alder','F','1964-02-12','rdf',58),(34819,'Clem','Deetlefs','F','1978-07-09','leo',43),(35034,'Danica','Yu','F','1984-04-14','ven',38),(35860,'Colleen','Grint','F','1965-11-18','ds',56),(36041,'Rolf','Pesticcio','M','1977-09-06','ime',44),(37046,'Othello','Stonehewer','M','1974-08-26','primis',47),(37128,'Jakie','Domotor','M','1981-02-23','fsl',41),(37322,'Meredithe','Trye','F','1969-12-05','nec',52),(37718,'Rowney','Worvell','M','1975-04-05','fsl',47),(38555,'Vick','O\'Shiel','M','1988-12-06','nisl',33),(38703,'Benedikta','Grubb','F','1967-05-25','inter',55),(38839,'Rubia','Ballantine','F','1971-11-14','aniq',50),(38876,'Mireille','Crim','F','1966-05-20','dol',56),(39368,'Kimberlyn','Shedd','F','1971-11-04','nec',50),(39705,'Libby','Dhennin','F','1976-02-02','temo',46),(40036,'Riley','Clowton','M','1960-12-11','est',61),(40461,'Darell','Longmead','F','1961-09-05','ibu',60),(40568,'Jamesy','McTrusty','M','1972-05-29','til',50),(41074,'Shane','Furneaux','M','1976-02-26','oe',46),(41167,'Ellissa','Latey','F','1975-07-26','qui',46),(41228,'Starlin','Camel','F','1963-06-01','in',59),(41261,'Reagen','Howles','M','1986-04-02','mask',36),(41494,'Meggi','Baughen','F','1975-05-14','nv',47),(42053,'Davita','Rousel','F','1976-03-31','maue',46),(42096,'Alayne','Counsell','F','1974-02-02','sol',48),(42880,'Nial','Collick','M','1983-06-02','cee',39),(43033,'Donia','Taffie','F','1985-06-07','leo',37),(43104,'Conny','Redihough','M','1975-03-16','adnt',47),(43480,'Josiah','Molan','M','1968-02-19','fsl',54),(43684,'Clyve','Steutly','M','1967-01-05','temo',55),(44387,'Theodora','Howison','F','1990-05-10','et',32),(44446,'Sanson','Mathiot','M','1975-12-07','nec',46),(44529,'Bonny','Gritskov','F','1967-10-28','tinc',54),(44632,'Julienne','Jahncke','F','1962-12-27','nec',59),(44938,'Jarred','Bastock','M','1968-05-08','morf',54),(44961,'Axel','Killford','M','1965-11-24','pel',56),(45721,'Rosemary','Aldiss','F','1966-04-14','it',56),(45948,'Audrie','Bullivent','F','1982-06-25','maue',40),(46786,'Zaria','Blackett','F','1980-06-15','adnt',42),(46841,'Hamlen','Maypole','M','1987-04-11','nec',35),(48192,'Lainey','Jurkowski','F','1966-04-05','fsl',56),(48502,'Mariann','O\'Hagan','F','1979-01-11','primis',43),(48892,'Neddy','MacMechan','M','1983-05-18','nec',39),(49170,'Ade','Mc Meekin','M','1962-03-15','adnt',60),(49172,'Vidovic','Shooter','M','1978-01-18','nec',44),(50135,'Mortimer','Kensington','M','1982-06-16','dol',40),(50208,'Charlie','Siebert','M','1986-09-25','vcm',35),(50616,'Verene','Bowller','F','1963-05-09','sol',59),(50789,'Ross','Matthews','M','1974-12-14','nv',47),(51282,'Clair','Erridge','M','1970-09-13','cn',51),(52215,'Wilhelmine','Rayne','F','1982-12-15','ds',39),(52459,'Roxana','MacNeill','F','1966-06-18','leo',56),(52642,'Westleigh','Thorndale','M','1964-09-07','mask',57),(52983,'Allx','McCarney','F','1958-10-29','ime',63),(53325,'Moises','Mulles','M','1978-03-30','pel',44),(53960,'Vikki','Sauvain','F','1977-09-19','nec',44),(53999,'Vanya','I\'anson','F','1987-03-13','nec',35),(55207,'Gunner','McPhail','M','1986-01-04','mapu',36),(55388,'Maisie','Locard','F','1964-12-04','ds',57),(57098,'Buckie','Adamo','M','1971-01-11','it',51),(58051,'Shane','Brahmer','M','1979-04-26','fsl',43),(58891,'Wally','Lenthall','F','1964-12-05','nec',57),(59047,'Raimondo','Harrow','M','1997-09-28','nv',24),(59441,'Ingeborg','Davidovits','F','1969-07-29','aniq',52),(60305,'Ingunna','Place','F','1965-04-10','nec',57),(60381,'Matti','Dawbery','F','1999-05-25','rhj',23),(60967,'Eliot','Jacquemot','M','1966-06-09','ven',56),(61014,'Davide','Goodread','M','1976-05-03','duis',46),(61272,'Adora','Doggett','F','1960-01-07','nec',62),(62033,'Granthem','Orto','M','1975-05-09','oe',47),(62153,'Dulcinea','Lowle','F','1973-01-19','est',49),(62296,'Debra','Garrod','F','1980-10-23','adnt',41),(63133,'Hillie','Simkins','M','1988-07-30','ime',33),(63345,'Austin','Yeldon','F','1989-10-28','ven',32),(63347,'Rowan','Futty','M','1969-08-21','primis',52),(64025,'Stephanie','Dumigan','F','1975-04-14','nisl',47),(64172,'Winfred','Ruffler','M','1963-11-21','cn',58),(64269,'Reggie','Aisman','M','1971-06-16','fsl',51),(64338,'Temple','Ferron','M','1957-09-28','in',64),(65040,'Donal','Billing','M','1961-08-17','nv',60),(65369,'Roderich','McIlroy','M','1998-10-10','var',23),(65448,'Agace','Pridham','F','1995-07-27','ds',26),(65614,'Madeleine','Le feaver','F','1964-02-15','est',58),(65657,'Martita','Hake','F','1965-07-23','var',56),(65936,'Elizabeth','Franssen','F','1989-11-23','temo',32),(65996,'Corey','Knivett','F','1972-08-29','morf',49),(66326,'Heloise','Dornan','F','1986-06-17','tinc',36),(66551,'Kelsey','Goulstone','M','1988-06-15','dol',34),(66941,'Theodor','Merryman','M','1960-09-01','fsl',61),(67673,'Worth','Brunker','M','1967-12-03','ibu',54),(68049,'Edward','Barber','M','1991-05-19','et',31),(68689,'Reinhard','Vigrass','M','1971-05-12','sol',51),(68900,'Harlene','Ciccottio','F','1987-04-04','qui',35),(69376,'Myrlene','Hampstead','F','1971-04-24','var',51),(69876,'Webb','Casey','M','1986-02-18','duis',36),(70812,'Lazare','Osmund','M','1982-07-07','dol',39),(71623,'Iggy','Grishmanov','M','1983-12-30','morf',38),(71877,'Marne','Whybrow','F','1986-10-30','it',35),(73514,'Gian','Pamplin','M','1969-10-18','tinc',52),(73890,'Cherianne','Skirven','F','1985-08-03','dol',36),(75285,'Roxanne','Dodshon','F','1972-01-21','et',50),(75503,'Davita','Hinken','F','1983-11-28','rdf',38),(75628,'Avram','Engeham','M','1973-06-09','sol',49),(75751,'Joli','Logue','F','1987-10-05','pel',34),(75791,'Wilfred','Whyatt','M','1973-06-12','mask',49),(76369,'Even','Ramlot','M','1971-12-26','leo',50),(77215,'Leelah','Python','F','1967-11-27','duis',54),(77955,'Shermy','Spat','M','1965-11-01','var',56),(78081,'Prudi','Hoggins','F','1987-11-07','edo',34),(78223,'Nessie','Waye','F','1973-09-04','rdf',48),(78400,'Steven','Gurner','M','1966-01-11','nec',56),(78446,'Freemon','Abbison','M','1975-06-19','tinc',47),(78746,'Rodie','Proppers','F','1979-12-02','maue',42),(79034,'Karena','Heijnen','F','1997-01-19','rhj',25),(79372,'Kellby','Ransom','M','1989-11-22','pel',32),(79563,'Antonio','Phaup','M','1967-02-10','nec',55),(79720,'Rockey','Le Breton','M','1980-11-20','inter',41),(79858,'Marty','Renol','M','1969-12-12','nec',52),(79861,'Jermayne','Zuanelli','M','1963-07-08','in',58),(80151,'Marion','Trusdale','M','1961-01-01','it',61),(80272,'Irena','Theurer','F','1965-02-01','vcm',57),(80634,'Ludovika','Brightie','F','1994-11-07','cud',27),(80950,'Brittani','Tomasek','F','1988-09-03','duis',33),(81081,'Emelia','Colman','F','1973-11-19','ime',48),(81239,'Edna','D\'Antoni','F','1973-10-08','rhj',48),(82179,'Brina','Kennerknecht','F','1959-12-15','rdf',62),(83034,'Curt','Martinie','M','1964-03-28','inter',58),(83086,'Claiborne','Faulo','M','1960-10-23','nisl',61),(83443,'Essy','De Mitris','F','1996-02-21','ven',26),(83642,'Thibaud','Allain','M','1969-11-10','rhj',52),(83716,'Rand','Moutray Read','M','1973-09-09','sol',48),(84136,'Hephzibah','Calleja','F','1974-10-08','oe',47),(84149,'Elayne','Minet','F','1979-02-19','ds',43),(84319,'Kermie','Orbine','M','1987-03-23','rdf',35),(84467,'Marlo','Baiyle','M','1978-02-26','duis',44),(84484,'Giulietta','Fenix','F','1986-04-21','rhj',36),(84634,'Janet','Skelhorn','F','1959-04-12','til',63),(84953,'Hakeem','Giron','M','1995-10-28','et',26),(85298,'Ebenezer','Beeton','M','1960-09-08','cud',61),(85615,'Marcille','Dencs','F','1995-02-17','inter',27),(86202,'Bennie','Dalliston','F','1979-05-28','est',43),(86247,'Hester','O\'Kielt','F','1989-03-03','in',33),(86300,'Frederick','Jandourek','M','1970-10-27','til',51),(86934,'Alwyn','Bayford','M','1967-01-19','nec',55),(87181,'Terrie','Laddle','F','1986-02-28','fsl',36),(87194,'Mireielle','Crotch','F','1974-06-29','mask',48),(87394,'Celina','Shew','F','1987-03-04','var',35),(89355,'Eyde','Zanini','F','1975-05-18','cons',47),(89548,'Jamison','Sapsford','M','1975-05-25','oe',47),(89674,'Leah','Depke','F','1967-05-03','nisl',55),(89714,'Harv','Abrahmer','M','1981-04-10','vcm',41),(89816,'Muire','Koch','F','1983-04-03','cud',39),(90507,'Danette','Giraldon','F','1963-05-23','oe',59),(90808,'Glenda','Konrad','F','1974-03-12','nec',48),(91479,'Allie','Dingwall','M','1984-12-07','qui',37),(91830,'Betsy','Bovaird','F','1995-05-18','ven',27),(92197,'Devy','Windle','M','1979-10-17','nec',42),(92598,'Chaddy','Mauchline','M','1974-12-03','nisl',47),(92855,'Rhett','Giaomozzo','M','1971-01-01','oe',51),(92920,'Caleb','Burnall','M','1987-11-13','primis',34),(93129,'Kristin','Frudd','F','1970-06-04','nec',52),(93151,'Kerry','Rowdell','F','1965-08-24','ime',56),(93326,'Ashlin','Porter','M','1977-09-05','nec',44),(93405,'Wendy','Nulty','F','1962-06-27','vcm',60),(93774,'Hansiain','Prine','M','1991-09-06','qui',30),(94036,'Swen','Bingle','M','1992-03-14','morf',30),(94388,'Glory','Farraway','F','1985-05-24','cons',37),(95036,'Rochella','Newbery','F','1987-05-07','til',35),(95370,'Base','Gavigan','M','1969-09-17','nec',52),(95392,'Teodoor','Simonson','M','1980-02-17','ven',42),(95559,'Jessie','Jillins','F','1963-04-02','sol',59),(96647,'Josepha','Tooth','F','1974-11-20','est',47),(96927,'Gilberte','Janiak','F','1989-02-21','maue',33),(97182,'Stirling','Pahlsson','M','1976-06-14','it',46),(99496,'Tillie','Sambrook','F','1972-03-08','nec',50),(99546,'Bennett','Kehri','M','1990-02-15','est',32);
/*!40000 ALTER TABLE `researchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `univesity`
--

DROP TABLE IF EXISTS `univesity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univesity` (
  `Name` varchar(50) NOT NULL,
  `Budget_from_Ministry_Edu` int(11) NOT NULL,
  PRIMARY KEY (`Name`),
  CONSTRAINT `univesity_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `organisations` (`Abbreviation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `univesity`
--

LOCK TABLES `univesity` WRITE;
/*!40000 ALTER TABLE `univesity` DISABLE KEYS */;
INSERT INTO `univesity` VALUES ('cons',689271),('duis',689397),('et',971128),('in',809947),('inter',639173),('pel',861782),('qui',701340),('rdf',64032),('sol',325532),('tinc',273301);
/*!40000 ALTER TABLE `univesity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_for_proj`
--

DROP TABLE IF EXISTS `works_for_proj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works_for_proj` (
  `Project_Name` varchar(45) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`Project_Name`,`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `works_for_proj_ibfk_1` FOREIGN KEY (`Project_Name`) REFERENCES `projects` (`Project_Name`),
  CONSTRAINT `works_for_proj_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `researchers` (`Researcher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_for_proj`
--

LOCK TABLES `works_for_proj` WRITE;
/*!40000 ALTER TABLE `works_for_proj` DISABLE KEYS */;
INSERT INTO `works_for_proj` VALUES ('ability',95370),('ac enim',43684),('adapter',41167),('aenean lectus pellentesque eget',41261),('aliquam',75791),('aliquet pulvinar sed nisl',23967),('amet turpis elementum',28965),('analyzing',97182),('application',31051),('at velit eu est congue',28779),('augue',28883),('bandwidth-monitored',89714),('bi-directional',20962),('Business-focused',87181),('client-driven',21322),('client-driven',95392),('complexity',19546),('concept',90808),('contextually-based',39368),('contextually-based',92855),('cum',60305),('cum',77215),('Customer-focused',59441),('database',93151),('diam',75628),('Digitized',99496),('discrete',29242),('discrete',37718),('Diverse',34339),('dolor sit amet consectetuer',65996),('Down-sized',69376),('eco-centric',96647),('elementum ligula vehicula consequat',81239),('elementum ligula vehicula consequat morbi',84149),('elementum pellentesque quisque porta volutpat',50135),('erat',40461),('erat nulla tempus vivamus',66326),('erat quisque',44529),('et magnis dis parturient montes',86202),('eu',44387),('eu tincidunt in',10123),('eua',79563),('euismod scelerisque quam turpis adipiscing',35034),('Extended',37322),('fault-tolerant',37046),('fault-tolerant',93129),('felis donec semper',75751),('focus group',79858),('function',25244),('global',66941),('Graphic Interface',30046),('Grass-roots',18594),('hardware',33198),('in',43104),('in imperdiet et commodo',68689),('in purus eu magna',78746),('infrastructure',35860),('installation',83034),('integer ac',75503),('integer tincidunt ante',30180),('interdum mauris ullamcorper purus sit',86247),('interface',11356),('interface',28578),('ipsum primis in faucibus',78081),('justo in hac',64172),('leading edge',78400),('leo odio',44961),('leverage',34636),('libero convallis',71877),('libero rutrum ac lobortis',80151),('ligula nec sem duis aliquam',94388),('local area network',30726),('logistical',42096),('lorem ipsum',25282),('lorem quisque ut',62153),('luctus',89816),('luctus et ultrices posuere',38876),('Mandatory',46841),('methodical',40568),('migration',44632),('migration',86934),('model',18427),('modular',11697),('montes nascetur ridiculus mus etiam',63345),('morbi quis',41074),('mus vivamus vestibulum sagittis sapien',10086),('nam congue risus',71623),('neque aenean',19756),('neutral',20496),('neutral',34819),('non-volatile',11610),('nulla suscipit ligula in',89548),('nullam molestie nibh in',79861),('nullam varius nulla facilisi',55388),('nunc rhoncus dui vel',92920),('Object-based',12882),('object-oriented',18097),('odio odio elementum eu interdum',21836),('Optimized',11745),('orci',42880),('orci pede venenatis non sodales',69876),('parallelism',49172),('parturient montes nascetur ridiculus mus',89674),('pede malesuada',83642),('Persevering',96927),('Persistent',89355),('porta volutpat quam pede lobortis',23079),('potenti cras in purus',12893),('process improvement',53999),('Profound',53325),('proin eu mi nulla',84319),('quam pede',86300),('quam pharetra magna ac',65040),('quis',65657),('regional',87194),('sapien arcu sed augue',63133),('sapien in sapien iaculis',24838),('sem fusce consequat nulla',32747),('Stand-alone',92598),('standardization',19102),('standardization',84484),('superstructure',41494),('suspendisse potenti',17071),('system engine',18212),('tangible',37128),('task-force',64269),('tempor',48892),('tincidunt eget',79720),('toolset',30003),('toolset',46786),('transitional',26096),('transitional',80950),('ullamcorper',77955),('ultrices phasellus id',58891),('user-facing',30980),('varius',38555),('vel',21242),('vulputate luctus',21165),('workforce',92197),('zero defect',58051);
/*!40000 ALTER TABLE `works_for_proj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `org_year_projects`
--

/*!50001 DROP TABLE IF EXISTS `org_year_projects`*/;
/*!50001 DROP VIEW IF EXISTS `org_year_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `org_year_projects` AS select `a`.`Abbreviation` AS `Abbreviation`,extract(year from `a`.`Start_Date`) AS `year2`,count(0) AS `got_projects` from (select `o`.`Abbreviation` AS `Abbreviation`,`p`.`Project_Name` AS `project_Name`,`p`.`Start_Date` AS `Start_Date` from (`elidek`.`organisations` `o` join `elidek`.`projects` `p` on(`p`.`Organisation_Managing` = `o`.`Abbreviation`))) `a` group by extract(year from `a`.`Start_Date`),`a`.`Abbreviation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `organisation_projects`
--

/*!50001 DROP TABLE IF EXISTS `organisation_projects`*/;
/*!50001 DROP VIEW IF EXISTS `organisation_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `organisation_projects` AS select `o`.`Abbreviation` AS `organisation_Abb`,`p`.`Project_Name` AS `project_name` from (`organisations` `o` join `projects` `p` on(`o`.`Abbreviation` = `p`.`Organisation_Managing`)) order by `o`.`Abbreviation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `researcher_projects`
--

/*!50001 DROP TABLE IF EXISTS `researcher_projects`*/;
/*!50001 DROP VIEW IF EXISTS `researcher_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `researcher_projects` AS (select concat(`r`.`Researcher_Last_Name`,' ',`r`.`Researcher_First_Name`) AS `researcher_name`,`p`.`Project_Name` AS `project_name` from ((`researchers` `r` join `works_for_proj` `wp` on(`r`.`Researcher_ID` = `wp`.`ID`)) join `projects` `p` on(`wp`.`Project_Name` = `p`.`Project_Name`))) union all (select concat(`r`.`Researcher_Last_Name`,' ',`r`.`Researcher_First_Name`) AS `researcher_name`,`p`.`Project_Name` AS `project_name` from (`researchers` `r` join `projects` `p` on(`r`.`Researcher_ID` = `p`.`Directed_from`))) order by `researcher_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
