USE `es_extended`;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('aircraft', 'Aircraft License'),
	('boating', 'Boating License')
;

CREATE TABLE `owned_vehicles` (
	`owner` varchar(40) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NOT NULL DEFAULT 'civ',
	`category` VARCHAR(50) DEFAULT NULL,
	`name` varchar(60) NOT NULL DEFAULT 'Unknown',
	`fuel` int(11) NOT NULL DEFAULT '100',
	`stored` TINYINT(1) NOT NULL DEFAULT '0',
	`image` longtext DEFAULT NULL,

	PRIMARY KEY (`plate`)
);

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS `vip_vipboats`;
DROP TABLE IF EXISTS `vs_vipboat_categories`;
DROP TABLE IF EXISTS `vs_vips`;
DROP TABLE IF EXISTS `vs_vip_categories`;
DROP TABLE IF EXISTS `vs_trucks`;
DROP TABLE IF EXISTS `vs_truck_categories`;
DROP TABLE IF EXISTS `vs_cars`;
DROP TABLE IF EXISTS `vs_car_categories`;
DROP TABLE IF EXISTS `vs_boats`;
DROP TABLE IF EXISTS `vs_boat_categories`;
DROP TABLE IF EXISTS `vs_aircrafts`;
DROP TABLE IF EXISTS `vs_aircraft_categories`;
DROP TABLE IF EXISTS `vs_mecano`;
DROP TABLE IF EXISTS `vs_mecano_categories`;
DROP TABLE IF EXISTS `vs_divisions`;
DROP TABLE IF EXISTS `vs_division_categories`;
DROP TABLE IF EXISTS `vs_police`;
DROP TABLE IF EXISTS `vs_police_categories`;
DROP TABLE IF EXISTS `vs_ambulance`;
DROP TABLE IF EXISTS `vs_ambulance_categories`;

CREATE TABLE `vs_ambulance_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_ambulance_categories` (id, name, label) VALUES
	(1, 'ambulance', 'Jr. EMT'),
	(2, 'doctor', 'EMT'),
	(3, 'chief_doctor', 'Sr. EMT'),
	(4, 'boss', 'EMT Supervisor')
;

CREATE TABLE `vs_ambulance` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_ambulance` (id, name, model, price, category, image) VALUES
	(1, 'Ambulance', 'ambulance', 500, 'ambulance', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
	(2, 'Fire Truck', 'firetruk', 750, 'ambulance', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
	(3, 'Ambulance', 'ambulance', 500, 'doctor', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
	(4, 'Fire Truck', 'firetruk', 750, 'doctor', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
	(5, 'Ambulance', 'ambulance', 500, 'chief_doctor', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
	(6, 'Fire Truck', 'firetruk', 750, 'chief_doctor', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
	(7, 'Ambulance', 'ambulance', 500, 'boss', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
	(8, 'Fire Truck', 'firetruk', 750, 'boss', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------


CREATE TABLE `vs_police_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_police_categories` (id, name, label) VALUES
	(1, 'tps', 'TPS'),
	(2, 'prp', 'PRP'),
	(3, 'opp', 'OPP'),
	(4, 'rcmp', 'RCMP')
;

CREATE TABLE `vs_police` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_police` (id, name, model, price, category, image) VALUES
	(1, 'Police Cruiser', 'police', 500, 'tps', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_division_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_division_categories` (id, name, label) VALUES
	(1, 'aviation', 'Aviation')
;

CREATE TABLE `vs_divisions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_divisions` (id, name, model, price, category, image) VALUES
	(1, 'Maverick', 'polmav', 1000, 'aviation', 'https://wiki.rage.mp/images/thumb/f/fc/Polmav.png/800px-Polmav.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_mecano_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_mecano_categories` (id, name, label) VALUES
	(1, 'recrue', 'Recruit'),
	(2, 'novice', 'Novice'),
	(3, 'experimente', 'Experienced'),
	(4, 'chief', 'Chief'),
	(5, 'boss', 'Boss')
;

CREATE TABLE `vs_mecano` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_mecano` (id, name, model, price, category, image) VALUES
	(1, 'Flatbed', 'flatbed', 1000, 'recrue', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
	(2, 'Tow Truck', 'towtruck', 750, 'recrue', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
	(3, 'Tow Truck', 'towtruck2', 500, 'recrue', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
	(4, 'Flatbed','flatbed', 1000, 'novice', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
	(5, 'Tow Truck', 'towtruck', 750, 'novice', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
	(6, 'Tow Truck', 'towtruck2', 500, 'novice', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
	(7, 'Flatbed', 'flatbed', 1000, 'experimente', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
	(8, 'Tow Truck', 'towtruck', 750, 'experimente', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
	(9, 'Tow Truck', 'towtruck2', 500, 'experimente', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
	(10, 'Flatbed', 'flatbed', 1000, 'chief', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
	(11, 'Tow Truck', 'towtruck', 750, 'chief', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
	(12, 'Tow Truck', 'towtruck2', 500, 'chief', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
	(13, 'Flatbed', 'flatbed', 1000, 'boss', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
	(14, 'Tow Truck', 'towtruck', 750, 'boss', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
	(15, 'Tow Truck', 'towtruck2', 500, 'boss', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_aircraft_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_aircraft_categories` (id, name, label) VALUES
	(1, 'helis', 'Helicopters'),
	(2, 'planes', 'Planes')
;

CREATE TABLE `vs_aircrafts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_aircrafts` (id, name, model, price, category, image) VALUES
	(1, 'Buzzard', 'buzzard2', 500000, 'helis', 'https://wiki.rage.mp/images/thumb/6/6e/Buzzard2.png/800px-Buzzard2.png'),
	(2, 'Frogger', 'frogger', 750000, 'helis', 'https://wiki.rage.mp/images/thumb/2/2d/Frogger.png/800px-Frogger.png'),
	(3, 'Havok', 'havok', 250000, 'helis', 'https://wiki.rage.mp/images/thumb/4/40/Havok.png/800px-Havok.png'),
	(4, 'Maverick', 'maverick', 625000, 'helis', 'https://wiki.rage.mp/images/thumb/7/73/Maverick.png/800px-Maverick.png'),
	(5, 'Sea Sparrow', 'seasparrow', 375000, 'helis', 'https://wiki.rage.mp/images/thumb/d/d5/Seasparrow.png/800px-Seasparrow.png'),
	(6, 'SuperVolito', 'supervolito', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/9/9e/Supervolito.png/800px-Supervolito.png'),
	(7, 'SuperVolito Carbon', 'supervolito2', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/a/a8/Supervolito2.png/800px-Supervolito2.png'),
	(8, 'Swift', 'swift', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/0/00/Swift.png/800px-Swift.png'),
	(9, 'Swift Deluxe', 'swift2', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/5/5f/Swift2.png/800px-Swift2.png'),
	(10, 'Volatus', 'volatus', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/6/65/Volatus.png/800px-Volatus.png'),
	(20, 'Alpha Z1', 'alphaz1', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/4/46/Alphaz1.png/800px-Alphaz1.png'),
	(21, 'Besra', 'besra', 500000, 'planes', 'https://wiki.rage.mp/images/thumb/3/35/Besra.png/800px-Besra.png'),
	(22, 'Cuban 800', 'cuban800', 200000, 'planes', 'https://wiki.rage.mp/images/thumb/6/63/Cuban800.png/800px-Cuban800.png'),
	(23, 'Dodo', 'dodo', 350000, 'planes', 'https://wiki.rage.mp/images/thumb/f/fc/Dodo.png/800px-Dodo.png'),
	(24, 'Duster', 'duster', 100000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a0/Duster.png/800px-Duster.png'),
	(25, 'Howard NX25', 'howard', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/0/09/Howard.png/800px-Howard.png'),
	(26, 'Luxor', 'luxor', 700000, 'planes', 'https://wiki.rage.mp/images/f/f3/Luxor.png'),
	(27, 'Luxor Deluxe', 'luxor2', 750000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a8/Luxor2.png/800px-Luxor2.png'),
	(28, 'Mammatus', 'mammatus', 250000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a7/Mammatus.png/800px-Mammatus.png'),
	(29, 'Ultra Light', 'microlight', 50000, 'planes', 'https://wiki.rage.mp/images/thumb/6/62/Microlight.png/800px-Microlight.png'),
	(30, 'Nimbus', 'nimbus', 600000, 'planes', 'https://wiki.rage.mp/images/thumb/c/c8/Nimbus.png/800px-Nimbus.png'),
	(31, 'Rogue', 'rogue', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/5/59/Rogue.png/800px-Rogue.png'),
	(32, 'Sea Breeze', 'seabreeze', 400000, 'planes', 'https://wiki.rage.mp/images/thumb/a/ae/Seabreeze.png/800px-Seabreeze.png'),
	(33, 'Shamal', 'shamal', 650000, 'planes', 'https://wiki.rage.mp/images/thumb/b/be/Shamal.png/800px-Shamal.png'),
	(34, 'Mallard', 'stunt', 150000, 'planes', 'https://wiki.rage.mp/images/thumb/a/aa/Stunt.png/800px-Stunt.png'),
	(35, 'Velum', 'velum', 300000, 'planes', 'https://wiki.rage.mp/images/c/c3/Velum.png'),
	(36, 'Velum 5-Seater', 'velum2', 300000, 'planes', 'https://wiki.rage.mp/images/thumb/e/e7/Velum2.png/800px-Velum2.png'),
	(37, 'Vestra', 'vestra', 500000, 'planes', 'https://wiki.rage.mp/images/thumb/8/8f/Vestra.png/800px-Vestra.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_boat_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_boat_categories` (id, name, label) VALUES
	(1, 'boats', 'Boats'),
	(2, 'subs', 'Submersibles')
;

CREATE TABLE `vs_boats` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_boats` (id, name, model, price, category, image) VALUES
	(1, 'Dinghy 1', 'dinghy', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/3/39/Dinghy.png/800px-Dinghy.png'),
	(2, 'Dinghy 2', 'dinghy2', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/0/09/Dinghy2.png/800px-Dinghy2.png'),
	(3, 'Dinghy 3', 'dinghy3', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/5/56/Dinghy3.png/800px-Dinghy3.png'),
	(4, 'Dinghy 4', 'dinghy4', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/8/86/Dinghy4.png/800px-Dinghy4.png'),
	(5, 'Jetmax', 'jetmax', 22500, 'boats', 'https://wiki.rage.mp/images/thumb/e/e6/Jetmax.png/800px-Jetmax.png'),
	(6, 'Marquis', 'marquis', 37500, 'boats', 'https://wiki.rage.mp/images/thumb/7/70/Marquis.png/800px-Marquis.png'),
	(7, 'Longfin', 'longfin', 40000, 'boats', 'https://wiki.rage.mp/images/thumb/3/34/0x6EF89CCC.png/800px-0x6EF89CCC.png'),
	(8, 'Seashark', 'seashark', 8000, 'boats', 'https://wiki.rage.mp/images/thumb/e/e7/Seashark.png/800px-Seashark.png'),
	(9, 'Seashark 3', 'seashark3', 8000, 'boats', 'https://wiki.rage.mp/images/thumb/f/f3/Seashark3.png/800px-Seashark3.png'),
	(10, 'Speeder', 'speeder', 35000, 'boats', 'https://wiki.rage.mp/images/thumb/f/f4/Speeder.png/800px-Speeder.png'),
	(11, 'Speeder 2', 'speeder2', 35000, 'boats', 'https://wiki.rage.mp/images/thumb/8/89/Speeder2.png/800px-Speeder2.png'),
	(12, 'Squalo', 'squalo', 25000, 'boats', 'https://wiki.rage.mp/images/thumb/e/ec/Squalo.png/800px-Squalo.png'),
	(13, 'Suntrap', 'suntrap', 27500, 'boats', 'https://wiki.rage.mp/images/thumb/2/27/Suntrap.png/800px-Suntrap.png'),
	(14, 'Toro', 'toro', 30000, 'boats', 'https://wiki.rage.mp/images/thumb/9/94/Toro.png/800px-Toro.png'),
	(15, 'Toro 2', 'toro2', 32500, 'boats', 'https://wiki.rage.mp/images/thumb/d/d7/Toro2.png/800px-Toro2.png'),
	(16, 'Tropic', 'tropic', 20000, 'boats', 'https://wiki.rage.mp/images/thumb/8/86/Tropic.png/800px-Tropic.png'),
	(17, 'Tropic 2', 'tropic2', 20000, 'boats', 'https://wiki.rage.mp/images/thumb/a/a7/Tropic2.png/800px-Tropic2.png'),
	(20, 'Kraken', 'submersible2', 32500, 'subs', 'https://wiki.rage.mp/images/thumb/6/62/Submersible2.png/800px-Submersible2.png'),
	(21, 'Submarine', 'submersible', 30000, 'subs', 'https://wiki.rage.mp/images/3/3c/Submersible.png'),
	(22, 'Avisa', 'avisa', 35000, 'subs', 'https://wiki.rage.mp/images/thumb/1/19/0x9A474B5E.png/800px-0x9A474B5E.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_car_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_car_categories` (id, name, label) VALUES
	(1, 'astonmartin', 'Aston Martin'),
	(2, 'audi', 'Audi'),
	(3, 'bently', 'Bently'),
	(4, 'bmw', 'BMW'),
	(5, 'bugatti', 'Bugatti'),
	(6, 'buick', 'Buick'),
	(7, 'cadillac', 'Cadillac'),
	(8, 'chevrolet', 'Chevrolet'),
	(9, 'chrysler', 'Chrysler'),
	(10, 'dodge', 'Dodge'),
	(11, 'ford', 'Ford'),
	(12, 'genesis', 'Genisis'),
	(13, 'gmc', 'GMC'),
	(14, 'honda', 'Honda'),
	(15, 'hummer', 'Hummer'),
	(16, 'hyundai', 'Hyundai'),
	(17, 'infiniti', 'Infiniti'),
	(18, 'jeep', 'Jeep'),
	(19, 'kia', 'Kia'),
	(20, 'lamborghini', 'Lamborghini'),
	(21, 'landrover', 'Land Rover'),
	(22, 'lexus', 'Lexus'),
	(23, 'lincoln', 'Lincoln'),
	(24, 'maserati', 'Maserati'),
	(25, 'mazda', 'Mazda'),
	(26, 'mclaren', 'McLaren'),
	(27, 'mercedes', 'Mercedes'),
	(28, 'mitsubishi', 'Mitsubishi'),
	(29, 'nissan', 'Nissan'),
	(30, 'pontiac', 'Pontiac'),
	(31, 'porsche', 'Porsche'),
	(32, 'peugeot', 'Peugeot'),
	(33, 'rangerover', 'Range Rover')
	(34, 'ram', 'Ram'),
	(35, 'rolls-royce', 'Rolls-Royce'),
	(36, 'subaru', 'Subaru'),
	(37, 'tesla', 'Tesla'),
	(38, 'Toyota', 'Cycles'),
	(39, 'volkswagen', 'Volkswagen'),
	(40, 'volvo', 'Volvo'),
	(41, 'cycles', 'Cycles'),
	(42, 'compacts', 'Compacts'),
	(43, 'coupes', 'Coupes'),
	(44, 'motorcycles', 'Motorcycles'),
	(45, 'muscles', 'Muscles'),
	(46, 'offroads', 'Off-Roads'),
	(47, 'sedans', 'Sedans'),
	(48, 'sports', 'Sports'),
	(49, 'sportsclassics', 'Sports Classics'),
	(50, 'supers', 'Supers'),
	(51, 'suvs', 'SUVs'),
	(52, 'vans', 'Vans'),
	(53, 'other', 'Other')
;

CREATE TABLE `vs_cars` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_cars` (id, name, model, price, category, image) VALUES
	(1  , '2006 Impala'                       , 'impalal'        , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(2  , '2015 Camaro'                       , 'z28'            , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(3  , '2016 Challenger'                   , '16challenger'   , 500, 'dodge'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(4  , '2016 Charger'                      , '16charger'      , 500, 'dodge'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(5  , '2017 GTR'                          , '17r35'          , 500, 'nissan'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(6  , '2017 RV'                           , '17jamb'         , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(7  , '1969 Charger'                      , 'charger69'      , 500, 'dodge'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(8  , '2019 Mustang GT'                   , 'mustang19'      , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(9  , '2011 Retired CVPI'                 , 'crownvic'       , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(10 , '2012 Rubicon'                      , 'jp12'           , 500, 'jeep'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(11 , '2012 Ranger'                       , 'bcranger'       , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(12 , '2013 i30'                          , 'bmhyundaii30'   , 500, 'hyundai'    , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(13 , '2016 Suburban'                     , 'subn'           , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(14 , '2017 F-150 Hennessey Velociraptor' , 'velociraptor'   , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(15 , '2020 Sierra Denali HD 3500'        , '20denalihd'     , 500, 'gmc'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(16 , '2018 Camaro'                       , 'alpha6'         , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(17 , '2018 3500 Flatbed'                 , '3500flatbed'    , 500, 'ram'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(18 , '2003 350Z'                         , 'dk350z'         , 500, 'nissan'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(19 , '2021 5008'                         , '50082021civ'    , 500, 'peugeot'    , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(20 , '1995 Bel Air'                      , 'onefifty55'     , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(21 , '1966 Nova'                         , 'nova'           , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(22 , '1969 Mustang Boss 302'             , 'boss302'        , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(23 , '1970 Challenger'                   , 'chall70'        , 500, 'dodge'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(24 , '1988 Monte Carlo'                  , 'montecarlo'     , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(25 , '1999 Civic'                        , 'civic'          , 500, 'honda'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(26 , 'CAA Truck'                         , '4b'             , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(27 , '2015 Alpina B7'                    , 'b7l06'          , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(28 , '2008 S4'                           , 'b5s4'           , 500, 'audi'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(29 , '2015 TTRS'                         , 'ttrs'           , 500, 'audi'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(30 , '2019 R8'                           , 'lbr8'           , 500, 'audi'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(31 , '2021 Bentayga'                     , 'huntley'        , 500, 'bently'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(32 , '2010 Mulsanne'                     , 'bmm'            , 500, 'bently'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(33 , '2022 7'                            , '750li'          , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(34 , '2020 M5'                           , 'm5f90'          , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(35 , '2018 M6'                           , 'm6f13'          , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(36 , '2018 X5'                           , 'x5e53'          , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(37 , '2018 X6M'                          , 'x6m'            , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(38 , '2018 M5 F90'                       , 'bmci'           , 500, 'bmw'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(39 , '1980 Bronco'                       , 'bronco'         , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(40 , '2013 BRZ'                          , 'brz13'          , 500, 'subaru'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(41 , '2020 Chiron'                       , 'chiron'         , 500, 'bugatti'    , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(42 , '1970 GSX'                          , 'gsxb'           , 500, 'buick'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(43 , '1987 GNX'                          , 'bgnx'           , 500, 'buick'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(44 , '2021 C-HR Hybrid'                  , 'chr'            , 500, 'toyota'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(45 , '2019 Corvette'                     , 'c7'             , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(46 , '2012 Escalade GMT900'              , 'gmt900escalade' , 500, 'cadillac'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(47 , '2010 CTS Sports Wagon'             , 'ctssw10'        , 500, 'cadillac'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(48 , '2018 Camry'                        , 'camry18 '       , 500, 'toyota'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(49 , 'Canada Post Van'                   , 'boxville2'      , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(50 , 'Garbage Truck'                     , 'trash'          , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(51 , '2013 Caprice'                      , 'caprice13'      , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(52 , '2018 Caravan'                      , 'minivan'        , 500, 'dodge'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(53 , 'Cat Truck'                         , 'ct660'          , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(54 , '2016 Tahoe'                        , 'tahoe'          , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(55 , '2015 Explorer'                     , 'explorer'       , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(56 , 'Liebherr Excavator'                , 'excabator'      , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(57 , '2018 F-350'                        , '18f350ds'       , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(58 , '1978 F-150'                        , 'f15078'         , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(59 , '2019 F-350'                        , 'f35019'         , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(60 , '2018 Fusion'                       , 'fusion18'       , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(61 , '2020 AMG G 63'                     , 'gxg63'          , 500, 'mercedes'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(62 , 'GoKart'                            , 'gokart'         , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(63 , 'GoKart Trailer'                    , 'ctrailer'       , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(64 , 'HDWrecker'                         , 'hdwrecker'      , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(65 , '2010 Pickup'                       , 'h3'             , 500, 'hummer'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(66 , 'Ice Cream Truck'                   , 'boxville'       , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(67 , '2021 Odyssey'                      , 'honody'         , 500, 'honda'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(68 , 'Flat Trailer'                      , 'trflat'         , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(69 , 'Small Trailer'                     , 'trailersmall'   , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(70 , '2022 Z'                            , 'protoz'         , 500, 'nissan'     , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(71 , '2019 1500'                         , 'ram1500'        , 500, 'ram'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(72 , '2021 Velar'                        , 'velar'          , 500, 'rangerover' , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(73 , 'Snowplow'                          , 'rapsnow'        , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(74 , 'School Bus'                        , 'pbus2'          , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(75 , '2019 Sorento'                      , 'sorento19'      , 500, 'kia'        , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(76 , '2012 F-350 Superduty'              , 'superduty'      , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(77 , '2021 Tahoe'                        , 'tahoe21'        , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(78 , 'Taxi'                              , 'taxi'           , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(79 , 'TTC Bus'                           , 'bus'            , 500, 'other'      , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(80 , '2001 Crown Victoria'               , 'cv98'           , 500, 'ford'       , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(81 , '1996 Plymouth Voyager'             , 'voyager96'      , 500, 'chrysler'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(82 , '2014 AMG S63 W222'                 , 's63w222'        , 500, 'mercedes'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(83 , '2017 AMG C63 S'                    , 'c63w205'        , 500, 'mercedes'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(84 , '1950 Pickup'                       , 'che1950ez'      , 500, 'chevrolet'  , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	(85 , '1990 560sel W126'                  , '560sel'         , 500, 'mercedes'   , 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png')

	-- (0, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (1, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (2, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (3, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (4, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (5, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (6, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (7, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (8, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	-- (9, 'displayname', 'spawncode', 500, 'group', 'https://cdn.discordapp.com/attachments/731270957829849178/909106692061528124/unknown.png'),
	

	-- Needs clarification: 
		-- 2010 Ram - 10ram
		-- Vapid Bravado - bisond
		-- 1972 BMW 2002 (Replace)
		-- 1973 Porsche 911 Carrera RS (Replace)	
		-- 1960 Volkswagen Transport (Replace)
		-- Mercedes-Benz W140 AMG - W140
		-- Rolls Roye Cullinan Black Badge - cullinanbb High End
		-- Ford F-150 - worktruckf150
		-- BMW X5 - 48is
		-- Toyota Supra - supra2
		-- Lexus SC300 - lexy
		-- Nissan Silvia S15 - f620
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_truck_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_truck_categories` (id, name, label) VALUES
	(1, 'haul', 'Haulers'),
	(2, 'box', 'Boxed Trucks'),
	(3, 'trans', 'Transport Trucks'),
	(4, 'other', 'Other Trucks')
;

CREATE TABLE `vs_trucks` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_trucks` (id, name, model, price, category, image) VALUES
	(1, 'Hauler', 'hauler', 100000, 'haul', 'https://wiki.rage.mp/images/thumb/8/83/Hauler.png/800px-Hauler.png'),
	(2, 'Packer', 'packer', 100000, 'haul', 'https://wiki.rage.mp/images/thumb/0/03/Packer.png/800px-Packer.png'),
	(3, 'Phantom', 'phantom', 105000, 'haul', 'https://wiki.rage.mp/images/thumb/e/ec/Phantom.png/800px-Phantom.png'),
	(4, 'Phantom Custom', 'phantom3', 110000, 'haul', 'https://wiki.rage.mp/images/thumb/8/81/Phantom3.png/800px-Phantom3.png'),
	(10, 'Benson', 'benson', 55000, 'box', 'https://wiki.rage.mp/images/thumb/b/bd/Benson.png/800px-Benson.png'),
	(11, 'Boxville 1', 'boxville', 45000, 'box', 'https://wiki.rage.mp/images/0/09/Boxville.png'),
	(12, 'Boxville 2', 'boxville2', 45000, 'box', 'https://wiki.rage.mp/images/f/fe/Boxville2.png'),
	(13, 'Boxville 3', 'boxville3', 45000, 'box', 'https://wiki.rage.mp/images/5/5c/Boxville3.png'),
	(14, 'Boxville 4', 'boxville4', 45000, 'box', 'https://wiki.rage.mp/images/2/29/Boxville4.png'),
	(15, 'Mule 1', 'mule', 40000, 'box', 'https://wiki.rage.mp/images/thumb/e/e7/Mule.png/800px-Mule.png'),
	(16, 'Mule 2', 'mule2', 40000, 'box', 'https://wiki.rage.mp/images/thumb/8/82/Mule2.png/800px-Mule2.png'),
	(17, 'Mule 3', 'mule3', 40000, 'box', 'https://wiki.rage.mp/images/thumb/6/6a/Mule3.png/800px-Mule3.png'),
	(18, 'Pounder', 'pounder', 55000, 'box', 'https://wiki.rage.mp/images/thumb/a/a6/Pounder.png/800px-Pounder.png'),
	(20, 'Airport Bus', 'airbus', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/3/32/Airbus.png/800px-Airbus.png'),
	(21, 'Bus', 'bus', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/4/43/Bus.png/800px-Bus.png'),
	(22, 'Dashound', 'coach', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/9/9d/Coach.png/800px-Coach.png'),
	(23, 'Festival Bus', 'pbus2', 75000, 'trans', 'https://wiki.rage.mp/images/f/f4/Pbus2.png'),
	(24, 'Rental Bus', 'rentalbus', 35000, 'trans', 'https://wiki.rage.mp/images/thumb/4/48/Rentalbus.png/800px-Rentalbus.png'),
	(25, 'Tour Bus', 'tourbus', 35000, 'trans', 'https://wiki.rage.mp/images/thumb/a/ac/Tourbus.png/800px-Tourbus.png'),
	(30, 'Biff', 'biff', 30000, 'other', 'https://wiki.rage.mp/images/thumb/6/62/Biff.png/800px-Biff.png'),
	(31, 'Dozer', 'bulldozer', 20000, 'other', 'https://wiki.rage.mp/images/thumb/f/f5/Bulldozer.png/800px-Bulldozer.png'),
	(32, 'Forklift', 'forklift', 5000, 'other', 'https://wiki.rage.mp/images/thumb/a/ab/Forklift.png/800px-Forklift.png'),
	(33, 'Field Master', 'tractor2', 15000, 'other', 'https://wiki.rage.mp/images/thumb/c/c8/Tractor2.png/800px-Tractor2.png'),
	(34, 'Lawn Mower', 'mower', 1500, 'other', 'https://wiki.rage.mp/images/thumb/a/a5/Mower.png/800px-Mower.png'),
	(35, 'Mixer 1', 'mixer', 30000, 'other', 'https://wiki.rage.mp/images/thumb/4/4d/Mixer.png/800px-Mixer.png'),
	(36, 'Mixer 2', 'mixer2', 30000, 'other', 'https://wiki.rage.mp/images/thumb/e/e7/Mixer2.png/800px-Mixer2.png'),
	(37, 'Rubble', 'rubble', 30000, 'other', 'https://wiki.rage.mp/images/thumb/1/14/Rubble.png/800px-Rubble.png'),
	(38, 'Scrap Truck', 'scrap', 10000, 'other', 'https://wiki.rage.mp/images/thumb/b/b8/Scrap.png/800px-Scrap.png'),
	(39, 'Slamtruck', 'slamtruck', 20000, 'other', 'https://wiki.rage.mp/images/thumb/2/22/0xC1A8A914.png/800px-0xC1A8A914.png'),
	(40, 'Tipper 1', 'tiptruck', 30000, 'other', 'https://wiki.rage.mp/images/thumb/2/2e/TipTruck.png/800px-TipTruck.png'),
	(41, 'Tipper 2', 'tiptruck2', 30000, 'other', 'https://wiki.rage.mp/images/thumb/c/c9/TipTruck2.png/800px-TipTruck2.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_vip_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_vip_categories` (id, name, label) VALUES
	(1, 'motorcycles', 'Motos')
;

CREATE TABLE `vs_vips` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_vips` (id, name, model, price, category, image) VALUES
	(1, 'Shotaro', 'shotaro', 30000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e3/Shotaro.png/800px-Shotaro.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

CREATE TABLE `vs_vipboat_categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_vipboat_categories` (id, name, label) VALUES
	(1, 'boats', 'Boats')
;

CREATE TABLE `vs_vipboats` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	`image` text DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `vs_vipboats` (id, name, model, price, category, image) VALUES
	(1, 'Tropic Yacht', 'tropic2', 27000, 'boats', 'https://wiki.rage.mp/images/thumb/a/a7/Tropic2.png/800px-Tropic2.png')
;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------