CREATE DATABASE IF NOT EXISTS `proxy`;

USE `proxy`;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `Fullname` varchar(50) NOT NULL,
  `Activity` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `archive`;
CREATE TABLE `archive` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Suffix` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int NOT NULL,
  `Birth_Date` varchar(50) NOT NULL,
  `Birth_Place` varchar(50) NOT NULL,
  `Contact_Num` varchar(11) NOT NULL,
  `Guardian_Name` varchar(50) NOT NULL,
  `Guardian_Cont` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `QRcode` varchar(50) NOT NULL,
  `Batch` varchar(10) NOT NULL,
  `Status` int NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=404 DEFAULT CHARSET=latin1;

INSERT INTO `archive` VALUES (403,121234567002,'John','Michael','Smith','Jr.','Male',18,'15/06/2005','New York',9153275984,'Mary Smith','987-654-321','123 Elm Street, NY','uploads/school.png','121234567002.png',2024,0);


DROP TABLE IF EXISTS `genid`;
CREATE TABLE `genid` (
  `id_num` int NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Suffix` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int NOT NULL,
  `Birth_Date` varchar(50) NOT NULL,
  `Birth_Place` varchar(50) NOT NULL,
  `Contact_Num` varchar(11) NOT NULL,
  `Guardian_Name` varchar(50) NOT NULL,
  `Guardian_Cont` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `QRcode` varchar(50) NOT NULL,
  `Batch` varchar(10) NOT NULL,
  `s_id` int NOT NULL,
  `id_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_num`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

INSERT INTO `genid` VALUES (280,121234567004,'Liam','Patrick','Brown','Sr.','Male',20,'05/11/2003','Los Angeles',9239847601,'Susan Brown','765-432-109','789 Pine Drive, CA','uploads/school.png','121234567004.png',2023,405,'UNCLAIMED'),
(281,121234567008,'Ethan','Daniel','Hernandez','Sr.','Male',20,'17/05/2003','Dallas',9180456231,'Maria Hernandez','321-098-765','159 Spruce Street, TX','uploads/school.png','121234567008.png',2023,409,'UNCLAIMED'),
(277,121234567020,'Mason','Philip','Scott','Sr.','Male',20,'03/07/2003','Jacksonville',9147965328,'Deborah Scott','109-876-543','913 Cypress Drive, FL','uploads/school.png','121234567020.png',2023,421,'CLAIMED'),
(278,121234567016,'Logan','Henry','Allen','Sr.','Male',20,'14/03/2003','Nashville',9209375614,'Patricia Allen','543-210-987','209 Cedarwood Road, TN','uploads/school.png','121234567016.png',2023,417,'CLAIMED'),
(279,121234567012,'Alexander','Thomas','Lewis','Sr.','Male',20,'07/12/2003','Seattle',9156283740,'Rebecca Lewis','987-654-321','135 Maplewood Drive, WA','uploads/school.png','121234567012.png',2023,413,'CLAIMED');


DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `h_id` int NOT NULL AUTO_INCREMENT,
  `stud_id` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int NOT NULL,
  `Birth_Date` varchar(50) NOT NULL,
  `Birth_Place` varchar(50) NOT NULL,
  `Contact_Num` varchar(11) NOT NULL,
  `Guardian_Name` varchar(50) NOT NULL,
  `Guardian_Cont` varchar(11) NOT NULL,
  `QRcode` varchar(50) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Status` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `login` VALUES (1,'admin','admin','Jenelyn Tesoro','Admin',0);


DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Suffix` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int NOT NULL,
  `Birth_Date` varchar(50) NOT NULL,
  `Birth_Place` varchar(50) NOT NULL,
  `Contact_Num` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Guardian_Name` varchar(50) NOT NULL,
  `Guardian_Cont` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `QRcode` varchar(50) NOT NULL,
  `Batch` varchar(10) NOT NULL,
  `Status` int NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=423 DEFAULT CHARSET=latin1;

INSERT INTO `students` VALUES (414,121234567013,'Sophia','Jane','Lee','','Female',18,'19/10/2005','Boston',9051283764,'Michael Lee','876-543-210','579 Oakwood Lane, MA','uploads/school.png','121234567013.png',2024,0),
(415,121234567014,'Benjamin','Edward','Walker','Jr.','Male',19,'09/06/2004','Portland',9163947281,'Laura Walker','765-432-109','864 Elmwood Avenue, OR','uploads/school.png','121234567014.png',2024,0),
(416,121234567015,'Charlotte','Claire','Hall','III','Female',18,'23/11/2005','Las Vegas',9174132658,'Steven Hall','654-321-098','103 Birchwood Drive, NV','uploads/school.png','121234567015.png',2024,0),
(404,121234567003,'Emma','Grace','Johnson','III','Female',19,'','Chicago',9128647392,'Robert Johnson','876-543-210','456 Oak Avenue, IL','uploads/school.png','121234567003.png',2024,0),
(405,121234567004,'Liam','Patrick','Brown','Sr.','Male',20,'05/11/2003','Los Angeles',9239847601,'Susan Brown','765-432-109','789 Pine Drive, CA','uploads/school.png','121234567004.png',2023,1),
(406,121234567005,'Olivia','Marie','Williams','','Female',18,'22/07/2005','Houston',9172463580,'Andrew Williams','654-321-098','321 Maple Lane, TX','uploads/school.png','121234567005.png',2024,0),
(407,121234567006,'Noah','James','Davis','Jr.','Male',19,'30/03/2004','Phoenix',9048173856,'Lisa Davis','543-210-987','654 Cedar Road, AZ','uploads/school.png','121234567006.png',2024,0),
(408,121234567007,'Ava','Rose','Martinez','III','Female',18,'12/09/2005','San Diego',9238596714,'Carlos Martinez','432-109-876','987 Birch Boulevard, CA','uploads/school.png','121234567007.png',2024,0),
(409,121234567008,'Ethan','Daniel','Hernandez','Sr.','Male',20,'17/05/2003','Dallas',9180456231,'Maria Hernandez','321-098-765','159 Spruce Street, TX','uploads/school.png','121234567008.png',2023,0),
(410,121234567009,'Mia','Louise','Garcia','','Female',19,'25/01/2004','Miami',9214058367,'Juan Garcia','210-987-654','753 Aspen Way, FL','uploads/school.png','121234567009.png',2024,0),
(411,121234567010,'James','Robert','Clark','Jr.','Male',18,'10/08/2005','Denver',9121478530,'Nancy Clark','109-876-543','357 Willow Court, CO','uploads/school.png','121234567010.png',2024,0),
(412,121234567011,'Isabella','Anne','Rodriguez','III','Female',19,'18/04/2004','Atlanta',9247620358,'Pedro Rodriguez','098-765-432','246 Cypress Avenue, GA','uploads/school.png','121234567011.png',2024,0),
(422,121234567021,'Evelyn','Grace','Green','','Female',18,'29/03/2005','Columbus',9235860174,'Daniel Green','098-765-432','618 Elmwood Boulevard, OH','uploads/school.png','121234567021.png',2024,0),
(421,121234567020,'Mason','Philip','Scott','Sr.','Male',20,'03/07/2003','Jacksonville',9147965328,'Deborah Scott','109-876-543','913 Cypress Drive, FL','uploads/school.png','121234567020.png',2023,1),
(420,121234567019,'Harper','Lynn','Wright','III','Female',19,'26/05/2004','Austin',9261548702,'Kenneth Wright','210-987-654','307 Aspen Court, TX','uploads/school.png','121234567019.png',2024,0),
(419,121234567018,'Lucas','Andrew','King','Jr.','Male',18,'18/01/2005','San Jose',9045783129,'Victoria King','321-098-765','102 Willow Drive, CA','uploads/school.png','121234567018.png',2024,0),
(418,121234567017,'Amelia','Faith','Young','','Female',19,'01/12/2004','San Antonio',9132576942,'George Young','432-109-876','415 Pinewood Lane, TX','uploads/school.png','121234567017.png',2024,0),
(417,121234567016,'Logan','Henry','Allen','Sr.','Male',20,'14/03/2003','Nashville',9209375614,'Patricia Allen','543-210-987','209 Cedarwood Road, TN','uploads/school.png','121234567016.png',2023,1),
(413,121234567012,'Alexander','Thomas','Lewis','Sr.','Male',20,'07/12/2003','Seattle',9156283740,'Rebecca Lewis','987-654-321','135 Maplewood Drive, WA','uploads/school.png','121234567012.png',2023,1);


SET foreign_key_checks = 1;
