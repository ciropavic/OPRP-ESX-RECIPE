SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- es_extended
--


    -- DDL

    CREATE TABLE `users` (
        `identifier` varchar(60) NOT NULL,
        `accounts` longtext DEFAULT NULL,
        `group` varchar(50) DEFAULT 'user',
        `inventory` longtext DEFAULT NULL,
        `job` varchar(20) DEFAULT 'unemployed',
        `job_grade` int(11) DEFAULT 0,
        `loadout` longtext DEFAULT NULL,
        `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
        `firstname` varchar(16) DEFAULT NULL,
        `lastname` varchar(16) DEFAULT NULL,
        `dateofbirth` varchar(10) DEFAULT NULL,
        `sex` varchar(1) DEFAULT NULL,
        `height` int(11) DEFAULT NULL,
        `skin` longtext DEFAULT NULL,
        `status` longtext DEFAULT NULL,
        `is_dead` tinyint(1) DEFAULT 0,
        `phone_number` varchar(10) DEFAULT NULL,
        `id` int(11) NOT NULL,
        `last_property` varchar(255) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    CREATE TABLE `items` (
        `name` VARCHAR(50) NOT NULL,
        `label` VARCHAR(50) NOT NULL,
        `weight` INT NOT NULL DEFAULT 1,
        `rare` TINYINT NOT NULL DEFAULT 0,
        `can_remove` TINYINT NOT NULL DEFAULT 1
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

    CREATE TABLE `jobs` (
        `name` varchar(50) NOT NULL,
        `label` varchar(50) DEFAULT NULL,
        `whitelisted` tinyint(1) NOT NULL DEFAULT 0
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `job_grades` (
        `id` int(11) NOT NULL,
        `job_name` varchar(50) DEFAULT NULL,
        `grade` int(11) NOT NULL,
        `name` varchar(50) NOT NULL,
        `label` varchar(50) NOT NULL,
        `salary` int(11) NOT NULL,
        `skin_male` longtext NOT NULL,
        `skin_female` longtext NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML

    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
        ('alive_chicken'      , 'Living chicken'     , 1, 0, 1),
        ('bandage'            , 'Bandage'            , 2, 0, 1),
        ('blowpipe'           , 'Blowtorch'          , 2, 0, 1),
        ('bread'              , 'Bread'              , 1, 0, 1),
        ('cannabis'           , 'Cannabis'           , 3, 0, 1),
        ('carokit'            , 'Body Kit'           , 3, 0, 1),
        ('carotool'           , 'Tools'              , 2, 0, 1),
        ('clothe'             , 'Cloth'              , 1, 0, 1),
        ('copper'             , 'Copper'             , 1, 0, 1),
        ('cutted_wood'        , 'Cut wood'           , 1, 0, 1),
        ('diamond'            , 'Diamond'            , 1, 0, 1),
        ('essence'            , 'Gas'                , 1, 0, 1),
        ('fabric'             , 'Fabric'             , 1, 0, 1),
        ('fish'               , 'Fish'               , 1, 0, 1),
        ('fixkit'             , 'Repair Kit'         , 3, 0, 1),
        ('fixtool'            , 'Repair Tools'       , 2, 0, 1),
        ('gazbottle'          , 'Gas Bottle'         , 2, 0, 1),
        ('gold'               , 'Gold'               , 1, 0, 1),
        ('iron'               , 'Iron'               , 1, 0, 1),
        ('marijuana'          , 'Marijuana'          , 2, 0, 1),
        ('medikit'            , 'Medikit'            , 2, 0, 1),
        ('packaged_chicken'   , 'Chicken fillet'     , 1, 0, 1),
        ('packaged_plank'     , 'Packaged wood'      , 1, 0, 1),
        ('petrol'             , 'Oil'                , 1, 0, 1),
        ('petrol_raffin'      , 'Processed oil'      , 1, 0, 1),
        ('phone'              , 'Phone'              , 1, 0, 1),
        ('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
        ('stone'              , 'Stone'              , 1, 0, 1),
        ('washed_stone'       , 'Washed stone'       , 1, 0, 1),
        ('water'              , 'Water'              , 1, 0, 1),
        ('wood'               , 'Wood'               , 1, 0, 1),
        ('wool'               , 'Wool'               , 1, 0, 1)
    ;

    INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
        ('unemployed', 'Unemployed', 0)
    ;
    
    INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
        (1, 'unemployed', 0, 'unemployed', 'Unemployed', 85, '{}', '{}')
    ;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_addonaccount
--


    -- DDL

    CREATE TABLE `addon_account` (
    `name` varchar(60) NOT NULL,
    `label` varchar(100) NOT NULL,
    `shared` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `addon_account_data` (
    `id` int(11) NOT NULL,
    `account_name` varchar(100) DEFAULT NULL,
    `money` int(11) NOT NULL,
    `owner` varchar(60) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML

    INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
    ('caution', 'caution', 0),
    ('property_black_money', 'Property Black Money', 0),
    ('society_ambulance', 'EMS', 1),
    ('society_cardealer', 'Cardealer', 1),
    ('society_mechanic', 'Mechanic', 1),
    ('society_police', 'Police', 1),
    ('society_taxi', 'Taxi', 1);

    INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
    (1, 'society_cardealer', 0, NULL),
    (2, 'society_police', 0, NULL),
    (3, 'society_ambulance', 0, NULL),
    (4, 'society_mechanic', 0, NULL),
    (5, 'society_taxi', 0, NULL),
    (6, 'caution', 0, 'dd5a2e91e9aa1b6c4fc1f66e44f949954c733450'),
    (7, 'caution', 0, 'char1:5e396ab5a00ebd7885ae4df5771b1e79535be6f6'),
    (8, 'property_black_money', 0, 'char1:5e396ab5a00ebd7885ae4df5771b1e79535be6f6');

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_addoninventory
--


    -- DDL

    CREATE TABLE `addon_inventory` (
    `name` varchar(60) NOT NULL,
    `label` varchar(100) NOT NULL,
    `shared` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `addon_inventory_items` (
    `id` int(11) NOT NULL,
    `inventory_name` varchar(100) NOT NULL,
    `name` varchar(100) NOT NULL,
    `count` int(11) NOT NULL,
    `owner` varchar(60) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    -- DML

    INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
    ('property', 'Property', 0),
    ('society_ambulance', 'EMS', 1),
    ('society_cardealer', 'Cardealer', 1),
    ('society_mechanic', 'Mechanic', 1),
    ('society_police', 'Police', 1),
    ('society_taxi', 'Taxi', 1);

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_advancedgarage
--


    -- DDL

    -- N/A


    -- DML

    -- N/A

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_advancedvehicleshop
--


    -- DDL

    CREATE TABLE `owned_vehicles` (
        `owner` varchar(60) NOT NULL,
        `plate` varchar(12) NOT NULL,
        `vehicle` longtext NOT NULL,
        `type` VARCHAR(20) NOT NULL DEFAULT 'car',
        `job` VARCHAR(20) NOT NULL DEFAULT 'civ',
        `category` VARCHAR(50) DEFAULT NULL,
        `name` varchar(60) NOT NULL DEFAULT 'Unknown',
        `fuel` int(11) NOT NULL DEFAULT '100',
        `stored` TINYINT(1) NOT NULL DEFAULT '0',
        `image` longtext,
        PRIMARY KEY (`plate`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_ambulance_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_ambulance` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_police_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_police` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_division_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_divisions` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_mecano_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_mecano` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_aircraft_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_aircrafts` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_boat_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_boats` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_car_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_cars` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_truck_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_trucks` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_vip_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_vips` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_vipboat_categories` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `label` varchar(60) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `vs_vipboats` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `name` varchar(60) NOT NULL,
        `model` varchar(60) NOT NULL,
        `price` int(11) NOT NULL,
        `category` varchar(60) DEFAULT NULL,
        `image` text DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    -- DML

    INSERT INTO `vs_ambulance_categories` (id, name, label) VALUES
        (1, 'ambulance', 'Jr. EMT'),
        (2, 'doctor', 'EMT'),
        (3, 'chief_doctor', 'Sr. EMT'),
        (4, 'boss', 'EMT Supervisor')
    ;

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

    INSERT INTO `vs_police_categories` (id, name, label) VALUES
        (1, 'tps', 'TPS'),
        (2, 'prp', 'PRP'),
        (3, 'opp', 'OPP'),
        (4, 'rcmp', 'RCMP')
    ;

    INSERT INTO `vs_police` (id, name, model, price, category, image) VALUES
        (1, 'Police Cruiser', 'police', 500, 'tps', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png')
    ;

    INSERT INTO `vs_division_categories` (id, name, label) VALUES
        (1, 'aviation', 'Aviation')
    ;

    INSERT INTO `vs_divisions` (id, name, model, price, category, image) VALUES
        (1, 'Maverick', 'polmav', 1000, 'aviation', 'https://wiki.rage.mp/images/thumb/f/fc/Polmav.png/800px-Polmav.png')
    ;

    INSERT INTO `vs_mecano_categories` (id, name, label) VALUES
        (1, 'recrue', 'Recruit'),
        (2, 'novice', 'Novice'),
        (3, 'experimente', 'Experienced'),
        (4, 'chief', 'Chief'),
        (5, 'boss', 'Boss')
    ;

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

    INSERT INTO `vs_aircraft_categories` (id, name, label) VALUES
        (1, 'helis', 'Helicopters'),
        (2, 'planes', 'Planes')
    ;

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

    INSERT INTO `vs_boat_categories` (id, name, label) VALUES
        (1, 'boats', 'Boats'),
        (2, 'subs', 'Submersibles')
    ;

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
        (33, 'rangerover', 'Range Rover'),
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

    INSERT INTO `vs_cars` (id, name, model, price, category, image) VALUES
        (1   , '2006 Impala'                       , 'impalal'        , 500    , 'chevrolet'  , '' ),
        (2   , '2015 Camaro'                       , 'z28'            , 500    , 'chevrolet'  , '' ),
        (3   , '2016 Challenger'                   , '16challenger'   , 500    , 'dodge'      , '' ),
        (4   , '2016 Charger'                      , '16charger'      , 500    , 'dodge'      , '' ),
        (5   , '2017 GTR'                          , '17r35'          , 500    , 'nissan'     , '' ),
        (6   , '2017 RV'                           , '17jamb'         , 500    , 'ford'       , '' ),
        (7   , '1969 Charger'                      , 'charger69'      , 500    , 'dodge'      , '' ),
        (8   , '2019 Mustang GT'                   , 'mustang19'      , 500    , 'ford'       , '' ),
        (9   , '2011 Retired CVPI'                 , 'crownvic'       , 500    , 'ford'       , '' ),
        (10  , '2012 Rubicon'                      , 'jp12'           , 500    , 'jeep'       , '' ),
        (11  , '2012 Ranger'                       , 'bcranger'       , 500    , 'ford'       , '' ),
        (12  , '2013 i30'                          , 'bmhyundaii30'   , 500    , 'hyundai'    , '' ),
        (13  , '2016 Suburban'                     , 'subn'           , 500    , 'chevrolet'  , '' ),
        (14  , '2017 F-150 Hennessey Velociraptor' , 'velociraptor'   , 500    , 'ford'       , '' ),
        (15  , '2020 Sierra Denali HD 3500'        , '20denalihd'     , 500    , 'gmc'        , '' ),
        (16  , '2018 Camaro'                       , 'alpha6'         , 500    , 'chevrolet'  , '' ),
        (17  , '2018 3500 Flatbed'                 , '3500flatbed'    , 500    , 'ram'        , '' ),
        (18  , '2003 350Z'                         , 'dk350z'         , 500    , 'nissan'     , '' ),
        (19  , '2021 5008'                         , '50082021civ'    , 500    , 'peugeot'    , '' ),
        (20  , '1995 Bel Air'                      , 'onefifty55'     , 500    , 'chevrolet'  , '' ),
        (21  , '1966 Nova'                         , 'nova'           , 500    , 'chevrolet'  , '' ),
        (22  , '1969 Mustang Boss 302'             , 'boss302'        , 500    , 'ford'       , '' ),
        (23  , '1970 Challenger'                   , 'chall70'        , 500    , 'dodge'      , '' ),
        (24  , '1988 Monte Carlo'                  , 'montecarlo'     , 500    , 'chevrolet'  , '' ),
        (25  , '1999 Civic'                        , 'civic'          , 500    , 'honda'      , '' ),
        (26  , 'CAA Truck'                         , '4b'             , 500    , 'other'      , '' ),
        (27  , '2015 Alpina B7'                    , 'b7l06'          , 500    , 'bmw'        , '' ),
        (28  , '2008 S4'                           , 'b5s4'           , 500    , 'audi'       , '' ),
        (29  , '2015 TTRS'                         , 'ttrs'           , 500    , 'audi'       , '' ),
        (30  , '2019 R8'                           , 'lbr8'           , 500    , 'audi'       , '' ),
        (31  , '2021 Bentayga'                     , 'huntley'        , 500    , 'bently'     , '' ),
        (32  , '2010 Mulsanne'                     , 'bmm'            , 500    , 'bently'     , '' ),
        (33  , '2022 7'                            , '750li'          , 500    , 'bmw'        , '' ),
        (34  , '2020 M5'                           , 'm5f90'          , 500    , 'bmw'        , '' ),
        (35  , '2018 M6'                           , 'm6f13'          , 500    , 'bmw'        , '' ),
        (36  , '2018 X5'                           , 'x5e53'          , 500    , 'bmw'        , '' ),
        (37  , '2018 X6M'                          , 'x6m'            , 500    , 'bmw'        , '' ),
        (38  , '2018 M5 F90'                       , 'bmci'           , 500    , 'bmw'        , '' ),
        (39  , '1980 Bronco'                       , 'bronco'         , 500    , 'ford'       , '' ),
        (40  , '2013 BRZ'                          , 'brz13'          , 500    , 'subaru'     , '' ),
        (41  , '2020 Chiron'                       , 'chiron'         , 500    , 'bugatti'    , '' ),
        (42  , '1970 GSX'                          , 'gsxb'           , 500    , 'buick'      , '' ),
        (43  , '1987 GNX'                          , 'bgnx'           , 500    , 'buick'      , '' ),
        (44  , '2021 C-HR Hybrid'                  , 'chr'            , 500    , 'toyota'     , '' ),
        (45  , '2019 Corvette'                     , 'c7'             , 500    , 'chevrolet'  , '' ),
        (46  , '2012 Escalade GMT900'              , 'gmt900escalade' , 500    , 'cadillac'   , '' ),
        (47  , '2010 CTS Sports Wagon'             , 'ctssw10'        , 500    , 'cadillac'   , '' ),
        (48  , '2018 Camry'                        , 'camry18 '       , 500    , 'toyota'     , '' ),
        (49  , 'Canada Post Van'                   , 'boxville2'      , 500    , 'other'      , '' ),
        (50  , 'Garbage Truck'                     , 'trash'          , 500    , 'other'      , '' ),
        (51  , '2013 Caprice'                      , 'caprice13'      , 500    , 'chevrolet'  , '' ),
        (52  , '2018 Caravan'                      , 'minivan'        , 500    , 'dodge'      , '' ),
        (53  , 'Cat Truck'                         , 'ct660'          , 500    , 'other'      , '' ),
        (54  , '2016 Tahoe'                        , 'tahoe'          , 500    , 'chevrolet'  , '' ),
        (55  , '2015 Explorer'                     , 'explorer'       , 500    , 'ford'       , '' ),
        (56  , 'Liebherr Excavator'                , 'excabator'      , 500    , 'other'      , '' ),
        (57  , '2018 F-350'                        , '18f350ds'       , 500    , 'ford'       , '' ),
        (58  , '1978 F-150'                        , 'f15078'         , 500    , 'ford'       , '' ),
        (59  , '2019 F-350'                        , 'f35019'         , 500    , 'ford'       , '' ),
        (60  , '2018 Fusion'                       , 'fusion18'       , 500    , 'ford'       , '' ),
        (61  , '2020 AMG G 63'                     , 'gxg63'          , 500    , 'mercedes'   , '' ),
        (62  , 'GoKart'                            , 'gokart'         , 500    , 'other'      , '' ),
        (63  , 'GoKart Trailer'                    , 'ctrailer'       , 500    , 'other'      , '' ),
        (64  , 'HDWrecker'                         , 'hdwrecker'      , 500    , 'other'      , '' ),
        (65  , '2010 Pickup'                       , 'h3'             , 500    , 'hummer'     , '' ),
        (66  , 'Ice Cream Truck'                   , 'boxville'       , 500    , 'other'      , '' ),
        (67  , '2021 Odyssey'                      , 'honody'         , 500    , 'honda'      , '' ),
        (68  , 'Flat Trailer'                      , 'trflat'         , 500    , 'other'      , '' ),
        (69  , 'Small Trailer'                     , 'trailersmall'   , 500    , 'other'      , '' ),
        (70  , '2022 Z'                            , 'protoz'         , 500    , 'nissan'     , '' ),
        (71  , '2019 1500'                         , 'ram1500'        , 500    , 'ram'        , '' ),
        (72  , '2021 Velar'                        , 'velar'          , 500    , 'rangerover' , '' ),
        (73  , 'Snowplow'                          , 'rapsnow'        , 500    , 'other'      , '' ),
        (74  , 'School Bus'                        , 'pbus2'          , 500    , 'other'      , '' ),
        (75  , '2019 Sorento'                      , 'sorento19'      , 500    , 'kia'        , '' ),
        (76  , '2012 F-350 Superduty'              , 'superduty'      , 500    , 'ford'       , '' ),
        (77  , '2021 Tahoe'                        , 'tahoe21'        , 500    , 'chevrolet'  , '' ),
        (78  , 'Taxi'                              , 'taxi'           , 500    , 'other'      , '' ),
        (79  , 'TTC Bus'                           , 'bus'            , 500    , 'other'      , '' ),
        (80  , '2001 Crown Victoria'               , 'cv98'           , 500    , 'ford'       , '' ),
        (81  , '1996 Plymouth Voyager'             , 'voyager96'      , 500    , 'chrysler'   , '' ),
        (82  , '2014 AMG S63 W222'                 , 's63w222'        , 500    , 'mercedes'   , '' ),
        (83  , '2017 AMG C63 S'                    , 'c63w205'        , 500    , 'mercedes'   , '' ),
        (84  , '1950 Pickup'                       , 'che1950ez'      , 500    , 'chevrolet'  , '' ),
        (85  , '1990 560sel W126'                  , '560sel'         , 500    , 'mercedes'   , '' ),
        (86  , 'Asbo'                              , 'asbo'           , 15000  , 'other'      , '' ),
        (87  , 'Blista'                            , 'blista'         , 15000  , 'other'      , '' ),
        (88  , 'Brioso R/A'                        , 'brioso'         , 17500  , 'other'      , '' ),
        (89  , 'Brioso 300'                        , 'brioso2'        , 12500  , 'other'      , '' ),
        (90  , 'Club'                              , 'club'           , 12500  , 'other'      , '' ),
        (91  , 'Dilettante'                        , 'dilettante'     , 15000  , 'other'      , '' ),
        (92  , 'Issi'                              , 'issi2'          , 15000  , 'other'      , '' ),
        (93  , 'Issi Classic'                      , 'issi3'          , 12500  , 'other'      , '' ),
        (94  , 'Kanjo Blista'                      , 'kanjo'          , 15000  , 'other'      , '' ),
        (95  , 'Panto'                             , 'panto'          , 15000  , 'other'      , '' ),
        (96  , 'Prairie'                           , 'prairie'        , 15000  , 'other'      , '' ),
        (97  , 'Rhapsody'                          , 'rhapsody'       , 12500  , 'other'      , '' ),
        (98  , 'WeEvil'                            , 'weevil'         , 12500  , 'other'      , '' ),
        (99  , 'Asea'                              , 'asea'           , 15000  , 'other'      , '' ),
        (100 , 'Asterope'                          , 'asterope'       , 15000  , 'other'      , '' ),
        (101 , 'Cognoscenti S'                     , 'cog55'          , 50000  , 'other'      , '' ),
        (102 , 'Cognoscenti S Armored'             , 'cog552'         , 75000  , 'other'      , '' ),
        (103 , 'Cognoscenti L'                     , 'cognoscenti'    , 50000  , 'other'      , '' ),
        (104 , 'Cognoscenti L Armored'             , 'cognoscenti2'   , 75000  , 'other'      , '' ),
        (105 , 'Emperor'                           , 'emperor'        , 12500  , 'other'      , '' ),
        (106 , 'Emperor 2'                         , 'emperor2'       , 10000  , 'other'      , '' ),
        (107 , 'Fugitive'                          , 'fugitive'       , 15000  , 'other'      , '' ),
        (108 , 'Glendale'                          , 'glendale'       , 12500  , 'other'      , '' ),
        (109 , 'Glendale Custom'                   , 'glendale2'      , 15000  , 'other'      , '' ),
        (110 , 'Ingot'                             , 'ingot'          , 12500  , 'other'      , '' ),
        (111 , 'Intruder'                          , 'intruder'       , 15000  , 'other'      , '' ),
        (112 , 'Premier'                           , 'premier'        , 15000  , 'other'      , '' ),
        (113 , 'Primo'                             , 'primo'          , 12500  , 'other'      , '' ),
        (114 , 'Primo Custom'                      , 'primo2'         , 15000  , 'other'      , '' ),
        (115 , 'Regina'                            , 'regina'         , 12500  , 'other'      , '' ),
        (116 , 'Romero Hearse'                     , 'romero'         , 15000  , 'other'      , '' ),
        (117 , 'Schafter'                          , 'schafter2'      , 15000  , 'other'      , '' ),
        (118 , 'Schafter V12 Armored'              , 'schafter5'      , 40000  , 'other'      , '' ),
        (119 , 'Schafter LWB Armored'              , 'schafter6'      , 40000  , 'other'      , '' ),
        (120 , 'Stafford'                          , 'stafford'       , 25000  , 'other'      , '' ),
        (121 , 'Stanier'                           , 'stanier'        , 12500  , 'other'      , '' ),
        (122 , 'Stratum'                           , 'stratum'        , 12500  , 'other'      , '' ),
        (123 , 'Stretch'                           , 'stretch'        , 50000  , 'other'      , '' ),
        (124 , 'Super Diamond'                     , 'superd'         , 50000  , 'other'      , '' ),
        (125 , 'Surge'                             , 'surge'          , 15000  , 'other'      , '' ),
        (126 , 'Tailgater'                         , 'tailgater'      , 15000  , 'other'      , '' ),
        (127 , 'Warrener'                          , 'warrener'       , 12500  , 'other'      , '' ),
        (128 , 'Washington'                        , 'washington'     , 12500  , 'other'      , '' ),
        (129 , 'Baller'                            , 'baller'         , 22500  , 'other'      , '' ),
        (130 , 'Baller 2'                          , 'baller2'        , 25000  , 'other'      , '' ),
        (131 , 'Baller LE'                         , 'baller3'        , 25000  , 'other'      , '' ),
        (132 , 'Baller LE LWB'                     , 'baller4'        , 25000  , 'other'      , '' ),
        (133 , 'Baller LE Armored'                 , 'baller5'        , 50000  , 'other'      , '' ),
        (134 , 'Baller LE LWB Armored'             , 'baller6'        , 50000  , 'other'      , '' ),
        (135 , 'BeeJay XL'                         , 'bjxl'           , 22500  , 'other'      , '' ),
        (136 , 'Cavalcade'                         , 'cavalcade'      , 22500  , 'other'      , '' ),
        (137 , 'Cavalcade 2'                       , 'cavalcade2'     , 25000  , 'other'      , '' ),
        (138 , 'Dubsta'                            , 'dubsta'         , 45000  , 'other'      , '' ),
        (139 , 'Dubsta Luxuary'                    , 'dubsta2'        , 45000  , 'other'      , '' ),
        (140 , 'Fhantom'                           , 'fq2'            , 22500  , 'other'      , '' ),
        (141 , 'Grabger'                           , 'granger'        , 22500  , 'other'      , '' ),
        (142 , 'Gresley'                           , 'gresley'        , 25000  , 'other'      , '' ),
        (143 , 'Habanero'                          , 'habanero'       , 22500  , 'other'      , '' ),
        (144 , 'Huntley S'                         , 'huntley'        , 25000  , 'other'      , '' ),
        (145 , 'Landstalker'                       , 'landstalker'    , 22500  , 'other'      , '' ),
        (146 , 'Landstalker XL'                    , 'landstalker2'   , 25000  , 'other'      , '' ),
        (147 , 'Mesa'                              , 'mesa'           , 22500  , 'other'      , '' ),
        (148 , 'Novak'                             , 'novak'          , 25000  , 'other'      , '' ),
        (149 , 'Patriot'                           , 'patriot'        , 25000  , 'other'      , '' ),
        (150 , 'Patriot Stretch'                   , 'patriot2'       , 45000  , 'other'      , '' ),
        (151 , 'Radius'                            , 'radi'           , 22500  , 'other'      , '' ),
        (152 , 'Rebla GTS'                         , 'rebla'          , 25000  , 'other'      , '' ),
        (153 , 'Rocoto'                            , 'rocoto'         , 25000  , 'other'      , '' ),
        (154 , 'Seminole'                          , 'seminole'       , 25000  , 'other'      , '' ),
        (155 , 'Seminole Frontier'                 , 'seminole2'      , 22500  , 'other'      , '' ),
        (156 , 'Serrano'                           , 'serrano'        , 22500  , 'other'      , '' ),
        (157 , 'Toros'                             , 'toros'          , 25000  , 'other'      , '' ),
        (158 , 'XLS'                               , 'xls'            , 25000  , 'other'      , '' ),
        (159 , 'XLS Armored'                       , 'xls2'           , 50000  , 'other'      , '' ),
        (160 , 'Cognoscenti Cabrio'                , 'cogcabrio'      , 35000  , 'other'      , '' ),
        (161 , 'Exemplar'                          , 'exemplar'       , 35000  , 'other'      , '' ),
        (162 , 'F620'                              , 'f620'           , 45000  , 'other'      , '' ),
        (163 , 'Felon'                             , 'felon'          , 35000  , 'other'      , '' ),
        (164 , 'Felon GT'                          , 'felon2'         , 35000  , 'other'      , '' ),
        (165 , 'Jackal'                            , 'jackal'         , 35000  , 'other'      , '' ),
        (166 , 'Oracle XS'                         , 'oracle'         , 35000  , 'other'      , '' ),
        (167 , 'Oracle'                            , 'oracle2'        , 35000  , 'other'      , '' ),
        (168 , 'Sentinel'                          , 'sentinel'       , 35000  , 'other'      , '' ),
        (169 , 'Sentinel XS'                       , 'sentinel2'      , 35000  , 'other'      , '' ),
        (170 , 'Windsor'                           , 'windsor'        , 50000  , 'other'      , '' ),
        (171 , 'Windsor Drop'                      , 'windsor2'       , 50000  , 'other'      , '' ),
        (172 , 'Zion'                              , 'zion'           , 35000  , 'other'      , '' ),
        (173 , 'Zion Cabrio'                       , 'zion2'          , 35000  , 'other'      , '' ),
        (174 , 'Blade'                             , 'blade'          , 15000  , 'other'      , '' ),
        (175 , 'Buccaneer'                         , 'buccaneer'      , 15000  , 'other'      , '' ),
        (176 , 'Buccaneer Rider'                   , 'buccaneer2'     , 20000  , 'other'      , '' ),
        (177 , 'Chino'                             , 'chino'          , 15000  , 'other'      , '' ),
        (178 , 'Chino Custom'                      , 'chino2'         , 20000  , 'other'      , '' ),
        (179 , 'Clique'                            , 'clique'         , 20000  , 'other'      , '' ),
        (180 , 'Coquette BlackFin'                 , 'coquette3'      , 50000  , 'other'      , '' ),
        (181 , 'Deviant'                           , 'deviant'        , 30000  , 'other'      , '' ),
        (182 , 'Dominator'                         , 'dominator'      , 20000  , 'other'      , '' ),
        (183 , 'Dominator Pisswasser'              , 'dominator2'     , 20000  , 'other'      , '' ),
        (184 , 'Dominator GTX'                     , 'dominator3'     , 30000  , 'other'      , '' ),
        (185 , 'Dukes'                             , 'dukes'          , 15000  , 'other'      , '' ),
        (186 , 'Dukes Beater'                      , 'dukes3'         , 15000  , 'other'      , '' ),
        (187 , 'Ellie'                             , 'ellie'          , 30000  , 'other'      , '' ),
        (188 , 'Faction'                           , 'faction'        , 15000  , 'other'      , '' ),
        (189 , 'Faction Custom'                    , 'faction2'       , 20000  , 'other'      , '' ),
        (190 , 'Faction Custom Donk'               , 'faction3'       , 20000  , 'other'      , '' ),
        (191 , 'Gauntlet'                          , 'gauntlet'       , 20000  , 'other'      , '' ),
        (192 , 'Gauntlet Redwood'                  , 'gauntlet2'      , 20000  , 'other'      , '' ),
        (193 , 'Gauntlet Classic'                  , 'gauntlet3'      , 20000  , 'other'      , '' ),
        (194 , 'Gauntlet Hellfire'                 , 'gauntlet4'      , 30000  , 'other'      , '' ),
        (195 , 'Gauntlet Classic Custom'           , 'gauntlet5'      , 20000  , 'other'      , '' ),
        (196 , 'Hermes'                            , 'hermes'         , 30000  , 'other'      , '' ),
        (197 , 'Hotknife'                          , 'hotknife'       , 30000  , 'other'      , '' ),
        (198 , 'Hustler'                           , 'hustler'        , 30000  , 'other'      , '' ),
        (199 , 'Impaler'                           , 'impaler'        , 15000  , 'other'      , '' ),
        (200 , 'Lurcher'                           , 'lurcher'        , 15000  , 'other'      , '' ),
        (201 , 'Manana Custom'                     , 'manana2'        , 15000  , 'other'      , '' ),
        (202 , 'Moonbeam'                          , 'moonbeam'       , 15000  , 'other'      , '' ),
        (203 , 'Moonbeam Custom'                   , 'moonbeam2'      , 20000  , 'other'      , '' ),
        (204 , 'Nightshade'                        , 'nightshade'     , 30000  , 'other'      , '' ),
        (205 , 'Peyote Gasser'                     , 'peyote2'        , 30000  , 'other'      , '' ),
        (206 , 'Phoenix'                           , 'phoenix'        , 15000  , 'other'      , '' ),
        (207 , 'Picador'                           , 'picador'        , 15000  , 'other'      , '' ),
        (208 , 'Rat-Loader'                        , 'ratloader'      , 12500  , 'other'      , '' ),
        (209 , 'Rat-Truck'                         , 'ratloader2'     , 15000  , 'other'      , '' ),
        (210 , 'Ruiner'                            , 'ruiner'         , 15000  , 'other'      , '' ),
        (211 , 'Sabre Turbo'                       , 'sabregt'        , 15000  , 'other'      , '' ),
        (212 , 'Sabre Turbo Custom'                , 'sabregt2'       , 20000  , 'other'      , '' ),
        (213 , 'Slamvan'                           , 'slamvan'        , 15000  , 'other'      , '' ),
        (214 , 'Slamvan Lost'                      , 'slamvan2'       , 15000  , 'other'      , '' ),
        (215 , 'Slamvan Custom'                    , 'slamvan3'       , 15000  , 'other'      , '' ),
        (216 , 'Stallion'                          , 'stalion'        , 15000  , 'other'      , '' ),
        (217 , 'Stallion Burger Shot'              , 'stalion2'       , 15000  , 'other'      , '' ),
        (218 , 'Tampa'                             , 'tampa'          , 15000  , 'other'      , '' ),
        (219 , 'Tulip'                             , 'tulip'          , 15000  , 'other'      , '' ),
        (220 , 'Vamos'                             , 'vamos'          , 15000  , 'other'      , '' ),
        (221 , 'Vigero'                            , 'vigero'         , 15000  , 'other'      , '' ),
        (222 , 'Virgo'                             , 'virgo'          , 15000  , 'other'      , '' ),
        (223 , 'Virgo Classic Custom'              , 'virgo2'         , 20000  , 'other'      , '' ),
        (224 , 'Virgo Classic'                     , 'virgo3'         , 15000  , 'other'      , '' ),
        (225 , 'Voodoo Custom'                     , 'voodoo'         , 20000  , 'other'      , '' ),
        (226 , 'Voodoo'                            , 'voodoo2'        , 12500  , 'other'      , '' ),
        (227 , 'Yosemite'                          , 'yosemite'       , 15000  , 'other'      , '' ),
        (228 , 'Yosemite Drift'                    , 'yosemite2'      , 20000  , 'other'      , '' ),
        (229 , 'Roosevelt'                         , 'btype'          , 40000  , 'other'      , '' ),
        (230 , 'Franken Strange'                   , 'btype3'         , 50000  , 'other'      , '' ),
        (231 , 'Roosevelt Valor'                   , 'btype2'         , 40000  , 'other'      , '' ),
        (232 , 'Casco'                             , 'casco'          , 40000  , 'other'      , '' ),
        (233 , 'Cheburek'                          , 'cheburek'       , 30000  , 'other'      , '' ),
        (234 , 'Cheetah Classic'                   , 'cheetah2'       , 50000  , 'other'      , '' ),
        (235 , 'Coquette Classic'                  , 'coquette2'      , 50000  , 'other'      , '' ),
        (236 , 'Dynasty'                           , 'dynasty'        , 30000  , 'other'      , '' ),
        (237 , 'Fagaloa'                           , 'fagaloa'        , 30000  , 'other'      , '' ),
        (238 , 'Stirling GT'                       , 'feltzer3'       , 40000  , 'other'      , '' ),
        (239 , 'GT 500'                            , 'gt500'          , 40000  , 'other'      , '' ),
        (240 , 'Infernus Classic'                  , 'infernus2'      , 50000  , 'other'      , '' ),
        (241 , 'Mamba'                             , 'mamba'          , 40000  , 'other'      , '' ),
        (242 , 'Manana'                            , 'manana'         , 30000  , 'other'      , '' ),
        (243 , 'Michelli GT'                       , 'michelli'       , 30000  , 'other'      , '' ),
        (244 , 'Monroe'                            , 'monroe'         , 40000  , 'other'      , '' ),
        (245 , 'Nebula Turbo'                      , 'nebula'         , 30000  , 'other'      , '' ),
        (246 , 'Peyote'                            , 'peyote'         , 30000  , 'other'      , '' ),
        (247 , 'Peyote Gasser'                     , 'peyote3'        , 35000  , 'other'      , '' ),
        (248 , 'Pigalle'                           , 'pigalle'        , 30000  , 'other'      , '' ),
        (249 , 'Rapid GT Classic'                  , 'rapidgt3'       , 35000  , 'other'      , '' ),
        (250 , 'Retinue'                           , 'retinue'        , 30000  , 'other'      , '' ),
        (251 , 'Retinue MK II'                     , 'retinue2'       , 35000  , 'other'      , '' ),
        (252 , 'Savestra'                          , 'savestra'       , 35000  , 'other'      , '' ),
        (253 , 'Stinger'                           , 'stinger'        , 35000  , 'other'      , '' ),
        (254 , 'Stinger GT'                        , 'stingergt'      , 40000  , 'other'      , '' ),
        (255 , 'Swinger'                           , 'swinger'        , 50000  , 'other'      , '' ),
        (256 , 'Torero'                            , 'torero'         , 50000  , 'other'      , '' ),
        (257 , 'Tornado'                           , 'tornado'        , 35000  , 'other'      , '' ),
        (258 , 'Tornado 2'                         , 'tornado2'       , 35000  , 'other'      , '' ),
        (259 , 'Tornado 3'                         , 'tornado3'       , 30000  , 'other'      , '' ),
        (260 , 'Tornado 4'                         , 'tornado4'       , 30000  , 'other'      , '' ),
        (261 , 'Tornado Custom'                    , 'tornado5'       , 35000  , 'other'      , '' ),
        (262 , 'Tornado Rat Rod'                   , 'tornado6'       , 35000  , 'other'      , '' ),
        (263 , 'Turismo Classic'                   , 'turismo2'       , 50000  , 'other'      , '' ),
        (264 , 'Viseris'                           , 'viseris'        , 40000  , 'other'      , '' ),
        (265 , '190z'                              , 'z190'           , 40000  , 'other'      , '' ),
        (266 , 'Zion Classic'                      , 'zion3'          , 30000  , 'other'      , '' ),
        (267 , 'Z-Type'                            , 'ztype'          , 40000  , 'other'      , '' ),
        (268 , 'Alpha'                             , 'alpha'          , 50000  , 'other'      , '' ),
        (269 , 'Banshee'                           , 'banshee'        , 75000  , 'other'      , '' ),
        (270 , 'Bestia GTS'                        , 'bestiagts'      , 50000  , 'other'      , '' ),
        (271 , 'Blista Compact'                    , 'blista2'        , 25000  , 'other'      , '' ),
        (272 , 'Blista Go Go Monkey'               , 'blista3'        , 25000  , 'other'      , '' ),
        (273 , 'Buffalo'                           , 'buffalo'        , 50000  , 'other'      , '' ),
        (274 , 'Buffalo S'                         , 'buffalo2'       , 50000  , 'other'      , '' ),
        (275 , 'Buffalo Sprunk'                    , 'buffalo3'       , 50000  , 'other'      , '' ),
        (276 , 'Carbonizzare'                      , 'carbonizzare'   , 75000  , 'other'      , '' ),
        (277 , 'Comet'                             , 'comet2'         , 50000  , 'other'      , '' ),
        (278 , 'Comet Retro Custom'                , 'comet3'         , 52500  , 'other'      , '' ),
        (279 , 'Comet Safari'                      , 'comet4'         , 50000  , 'other'      , '' ),
        (280 , 'Comet SR'                          , 'comet5'         , 55000  , 'other'      , '' ),
        (281 , 'Coquette'                          , 'coquette'       , 75000  , 'other'      , '' ),
        (282 , 'Coquette D10'                      , 'coquette4'      , 100000 , 'other'      , '' ),
        (283 , '8F Drafter'                        , 'drafter'        , 50000  , 'other'      , '' ),
        (284 , 'Elegy Retro Custom'                , 'elegy'          , 50000  , 'other'      , '' ),
        (285 , 'Elegy RH8'                         , 'elegy2'         , 50000  , 'other'      , '' ),
        (286 , 'Feltzer'                           , 'feltzer2'       , 50000  , 'other'      , '' ),
        (287 , 'Flash GT'                          , 'flashgt'        , 50000  , 'other'      , '' ),
        (288 , 'Furore GT'                         , 'furoregt'       , 50000  , 'other'      , '' ),
        (289 , 'Fusilade'                          , 'fusilade'       , 50000  , 'other'      , '' ),
        (290 , 'Futo'                              , 'futo'           , 25000  , 'other'      , '' ),
        (291 , 'GB200'                             , 'gb200'          , 37500  , 'other'      , '' ),
        (292 , 'Hotring Sabre'                     , 'hotring'        , 50000  , 'other'      , '' ),
        (293 , 'Imorgon'                           , 'imorgon'        , 75000  , 'other'      , '' ),
        (294 , 'Issi Sport'                        , 'issi7'          , 37500  , 'other'      , '' ),
        (295 , 'Itali GTO'                         , 'italigto'       , 100000 , 'other'      , '' ),
        (296 , 'Itali RSX'                         , 'italirsx'       , 100000 , 'other'      , '' ),
        (297 , 'Jester'                            , 'jester'         , 75000  , 'other'      , '' ),
        (298 , 'Jester (%NUM_ID%Racecar)'          , 'jester2'        , 75000  , 'other'      , '' ),
        (299 , 'Jester Classic'                    , 'jester3'        , 37500  , 'other'      , '' ),
        (300 , 'Jugular'                           , 'jugular'        , 50000  , 'other'      , '' ),
        (301 , 'Khamelion'                         , 'khamelion'      , 50000  , 'other'      , '' ),
        (302 , 'Komoda'                            , 'komoda'         , 50000  , 'other'      , '' ),
        (303 , 'Kuruma'                            , 'kuruma'         , 50000  , 'other'      , '' ),
        (304 , 'Locust'                            , 'locust'         , 75000  , 'other'      , '' ),
        (305 , 'Lynx'                              , 'lynx'           , 50000  , 'other'      , '' ),
        (306 , 'Massacro'                          , 'massacro'       , 50000  , 'other'      , '' ),
        (307 , 'Massacro (%NUM_ID%Racecar)'        , 'massacro2'      , 50000  , 'other'      , '' ),
        (308 , 'Neo'                               , 'neo'            , 50000  , 'other'      , '' ),
        (309 , 'Neon'                              , 'neon'           , 50000  , 'other'      , '' ),
        (310 , '9F'                                , 'ninef'          , 50000  , 'other'      , '' ),
        (311 , '9F Cabrio'                         , 'ninef2'         , 50000  , 'other'      , '' ),
        (312 , 'Omnis'                             , 'omnis'          , 37500  , 'other'      , '' ),
        (313 , 'Paragon R'                         , 'paragon'        , 50000  , 'other'      , '' ),
        (314 , 'Pariah'                            , 'pariah'         , 50000  , 'other'      , '' ),
        (315 , 'Penumbra'                          , 'penumbra'       , 37500  , 'other'      , '' ),
        (316 , 'Penumbra FF'                       , 'penumbra2'      , 37500  , 'other'      , '' ),
        (317 , 'Raiden'                            , 'raiden'         , 50000  , 'other'      , '' ),
        (318 , 'Rapid GT'                          , 'rapidgt'        , 50000  , 'other'      , '' ),
        (319 , 'Rapid GT 2'                        , 'rapidgt2'       , 50000  , 'other'      , '' ),
        (320 , 'Raptor'                            , 'raptor'         , 37500  , 'other'      , '' ),
        (321 , 'Revolter'                          , 'revolter'       , 50000  , 'other'      , '' ),
        (322 , 'Ruston'                            , 'ruston'         , 75000  , 'other'      , '' ),
        (323 , 'Schafter V12'                      , 'schafter3'      , 25000  , 'other'      , '' ),
        (324 , 'Schafter LWB'                      , 'schafter4'      , 25000  , 'other'      , '' ),
        (325 , 'Schlagen GT'                       , 'schlagen'       , 50000  , 'other'      , '' ),
        (326 , 'Schwartzer'                        , 'schwarzer'      , 37500  , 'other'      , '' ),
        (327 , 'Sentinel Classic'                  , 'sentinel3'      , 37500  , 'other'      , '' ),
        (328 , 'Seven 70'                          , 'seven70'        , 50000  , 'other'      , '' ),
        (329 , 'Specter'                           , 'specter'        , 50000  , 'other'      , '' ),
        (330 , 'Specter Custom'                    , 'specter2'       , 50000  , 'other'      , '' ),
        (331 , 'Streiter'                          , 'streiter'       , 50000  , 'other'      , '' ),
        (332 , 'Sugoi'                             , 'sugoi'          , 50000  , 'other'      , '' ),
        (333 , 'Sultan'                            , 'sultan'         , 25000  , 'other'      , '' ),
        (334 , 'Sultan Classic'                    , 'sultan2'        , 37500  , 'other'      , '' ),
        (335 , 'Surano'                            , 'surano'         , 50000  , 'other'      , '' ),
        (336 , 'Drift Tampa'                       , 'tampa2'         , 75000  , 'other'      , '' ),
        (337 , 'Tropos Rallye'                     , 'tropos'         , 50000  , 'other'      , '' ),
        (338 , 'Verlierer'                         , 'verlierer2'     , 75000  , 'other'      , '' ),
        (339 , 'V-STR'                             , 'vstr'           , 50000  , 'other'      , '' ),
        (340 , 'Adder'                             , 'adder'          , 250000 , 'other'      , '' ),
        (341 , 'Autarch'                           , 'autarch'        , 375000 , 'other'      , '' ),
        (342 , 'Banshee 900R'                      , 'banshee2'       , 250000 , 'other'      , '' ),
        (343 , 'Bullet'                            , 'bullet'         , 250000 , 'other'      , '' ),
        (344 , 'Cheetah'                           , 'cheetah'        , 250000 , 'other'      , '' ),
        (345 , 'Cyclone'                           , 'cyclone'        , 250000 , 'other'      , '' ),
        (346 , 'Deveste Eight'                     , 'deveste'        , 375000 , 'other'      , '' ),
        (347 , 'Emerus'                            , 'emerus'         , 375000 , 'other'      , '' ),
        (348 , 'Entity XF'                         , 'entityxf'       , 250000 , 'other'      , '' ),
        (349 , 'Entity XXR'                        , 'entity2'        , 300000 , 'other'      , '' ),
        (350 , 'FMJ'                               , 'fmj'            , 375000 , 'other'      , '' ),
        (351 , 'PR4'                               , 'formula'        , 500000 , 'other'      , '' ),
        (352 , 'R88'                               , 'formula2'       , 500000 , 'other'      , '' ),
        (353 , 'Furia'                             , 'furia'          , 300000 , 'other'      , '' ),
        (354 , 'GP1'                               , 'gp1'            , 375000 , 'other'      , '' ),
        (355 , 'Infernus'                          , 'infernus'       , 250000 , 'other'      , '' ),
        (356 , 'Itali GTB'                         , 'italigtb'       , 375000 , 'other'      , '' ),
        (357 , 'Itali GTB Custom'                  , 'italigtb2'      , 375000 , 'other'      , '' ),
        (358 , 'Krieger'                           , 'krieger'        , 375000 , 'other'      , '' ),
        (359 , 'RE-7B'                             , 'le7b'           , 375000 , 'other'      , '' ),
        (360 , 'Nero'                              , 'nero'           , 300000 , 'other'      , '' ),
        (361 , 'Nero Custom'                       , 'nero2'          , 300000 , 'other'      , '' ),
        (362 , 'BR8'                               , 'openwheel1'     , 500000 , 'other'      , '' ),
        (363 , 'DR1'                               , 'openwheel2'     , 500000 , 'other'      , '' ),
        (364 , 'Osiris'                            , 'osiris'         , 300000 , 'other'      , '' ),
        (365 , 'Penetrator'                        , 'penetrator'     , 250000 , 'other'      , '' ),
        (366 , 'Pfister 811'                       , 'pfister811'     , 300000 , 'other'      , '' ),
        (367 , 'X80 Proto'                         , 'prototipo'      , 375000 , 'other'      , '' ),
        (368 , 'Reaper'                            , 'reaper'         , 375000 , 'other'      , '' ),
        (369 , 'S80RR'                             , 's80'            , 375000 , 'other'      , '' ),
        (370 , 'SC1'                               , 'sc1'            , 300000 , 'other'      , '' ),
        (371 , 'ETR1'                              , 'sheava'         , 250000 , 'other'      , '' ),
        (372 , 'Sultan RS'                         , 'sultanrs'       , 250000 , 'other'      , '' ),
        (373 , 'T20'                               , 't20'            , 300000 , 'other'      , '' ),
        (374 , 'Taipan'                            , 'taipan'         , 375000 , 'other'      , '' ),
        (375 , 'Tempesta'                          , 'tempesta'       , 375000 , 'other'      , '' ),
        (376 , 'Tezeract'                          , 'tezeract'       , 375000 , 'other'      , '' ),
        (377 , 'Tigon'                             , 'tigon'          , 375000 , 'other'      , '' ),
        (378 , 'Thrax'                             , 'thrax'          , 375000 , 'other'      , '' ),
        (379 , 'Turismo R'                         , 'turismor'       , 375000 , 'other'      , '' ),
        (380 , 'Tyrant'                            , 'tyrant'         , 300000 , 'other'      , '' ),
        (381 , 'Tyrus'                             , 'tyrus'          , 375000 , 'other'      , '' ),
        (382 , 'Vacca'                             , 'vacca'          , 300000 , 'other'      , '' ),
        (383 , 'Vagner'                            , 'vagner'         , 375000 , 'other'      , '' ),
        (384 , 'Visione'                           , 'visione'        , 375000 , 'other'      , '' ),
        (385 , 'Voltic'                            , 'voltic'         , 250000 , 'other'      , '' ),
        (386 , 'XA-21'                             , 'xa21'           , 375000 , 'other'      , '' ),
        (387 , 'Zentorno'                          , 'zentorno'       , 375000 , 'other'      , '' ),
        (388 , 'Zorrusso'                          , 'zorrusso'       , 375000 , 'other'      , '' ),
        (389 , 'Akuma'                             , 'akuma'          , 10000  , 'other'      , '' ),
        (390 , 'Avarus'                            , 'avarus'         , 20000  , 'other'      , '' ),
        (391 , 'Bagger'                            , 'bagger'         , 20000  , 'other'      , '' ),
        (392 , 'Bati 801'                          , 'bati'           , 15000  , 'other'      , '' ),
        (393 , 'Bati 801RR'                        , 'bati2'          , 15000  , 'other'      , '' ),
        (394 , 'BF400'                             , 'bf400'          , 7500   , 'other'      , '' ),
        (395 , 'Blazer'                            , 'blazer'         , 10000  , 'other'      , '' ),
        (396 , 'Blazer Hot Rod'                    , 'blazer3'        , 10000  , 'other'      , '' ),
        (397 , 'Blazer Sport'                      , 'blazer4'        , 10000  , 'other'      , '' ),
        (398 , 'Caddy'                             , 'caddy'          , 5000   , 'other'      , '' ),
        (399 , 'Caddy 2'                           , 'caddy2'         , 5000   , 'other'      , '' ),
        (400 , 'Caddy 3'                           , 'caddy3'         , 5000   , 'other'      , '' ),
        (401 , 'Carbon RS'                         , 'carbonrs'       , 15000  , 'other'      , '' ),
        (402 , 'Chimera'                           , 'chimera'        , 20000  , 'other'      , '' ),
        (403 , 'Cliffhanger'                       , 'cliffhanger'    , 7500   , 'other'      , '' ),
        (404 , 'Daemon'                            , 'daemon'         , 10000  , 'other'      , '' ),
        (405 , 'Daemon 2'                          , 'daemon2'        , 10000  , 'other'      , '' ),
        (406 , 'Defiler'                           , 'defiler'        , 10000  , 'other'      , '' ),
        (407 , 'Diabolus'                          , 'diablous'       , 15000  , 'other'      , '' ),
        (408 , 'Diabolus Custom'                   , 'diablous2'      , 15000  , 'other'      , '' ),
        (409 , 'Double T'                          , 'double'         , 15000  , 'other'      , '' ),
        (410 , 'Enduro'                            , 'enduro'         , 7500   , 'other'      , '' ),
        (411 , 'Esskey'                            , 'esskey'         , 7500   , 'other'      , '' ),
        (412 , 'Faggio Sport'                      , 'faggio'         , 2500   , 'other'      , '' ),
        (413 , 'Faggio'                            , 'faggio2'        , 2500   , 'other'      , '' ),
        (414 , 'Faggio Mod'                        , 'faggio3'        , 2500   , 'other'      , '' ),
        (415 , 'FCR 1000'                          , 'fcr'            , 10000  , 'other'      , '' ),
        (416 , 'FCR 1000 Custom'                   , 'fcr2'           , 10000  , 'other'      , '' ),
        (417 , 'Gargoyle'                          , 'gargoyle'       , 15000  , 'other'      , '' ),
        (418 , 'Hakuchou'                          , 'hakuchou'       , 15000  , 'other'      , '' ),
        (419 , 'Hakuchou Sport'                    , 'hakuchou2'      , 20000  , 'other'      , '' ),
        (420 , 'Hexer'                             , 'hexer'          , 20000  , 'other'      , '' ),
        (421 , 'Innovation'                        , 'innovation'     , 20000  , 'other'      , '' ),
        (422 , 'Lectro'                            , 'lectro'         , 15000  , 'other'      , '' ),
        (423 , 'Manchez'                           , 'manchez'        , 10000  , 'other'      , '' ),
        (424 , 'Manchez 2'                         , 'manchez2'       , 10000  , 'other'      , '' ),
        (425 , 'Nemesis'                           , 'nemesis'        , 10000  , 'other'      , '' ),
        (426 , 'Nightblade'                        , 'nightblade'     , 20000  , 'other'      , '' ),
        (427 , 'PCJ 600'                           , 'pcj'            , 10000  , 'other'      , '' ),
        (428 , 'Rat Bike'                          , 'ratbike'        , 20000  , 'other'      , '' ),
        (429 , 'Ruffian'                           , 'ruffian'        , 10000  , 'other'      , '' ),
        (430 , 'Sanchez'                           , 'sanchez'        , 10000  , 'other'      , '' ),
        (431 , 'Sanchez Sport'                     , 'sanchez2'       , 10000  , 'other'      , '' ),
        (432 , 'Sanctus'                           , 'sanctus'        , 20000  , 'other'      , '' ),
        (433 , 'Stryder'                           , 'stryder'        , 20000  , 'other'      , '' ),
        (434 , 'Sovereign'                         , 'sovereign'      , 20000  , 'other'      , '' ),
        (435 , 'Thrust'                            , 'thrust'         , 20000  , 'other'      , '' ),
        (436 , 'Vader'                             , 'vader'          , 10000  , 'other'      , '' ),
        (437 , 'Veto Classic'                      , 'veto'           , 5000   , 'other'      , '' ),
        (438 , 'Veto Modern'                       , 'veto2'          , 5000   , 'other'      , '' ),
        (439 , 'Vindicator'                        , 'vindicator'     , 20000  , 'other'      , '' ),
        (440 , 'Vortex'                            , 'vortex'         , 10000  , 'other'      , '' ),
        (441 , 'Woflsbane'                         , 'wolfsbane'      , 10000  , 'other'      , '' ),
        (442 , 'Zombie Bobber'                     , 'zombiea'        , 10000  , 'other'      , '' ),
        (443 , 'Zombie Chopper'                    , 'zombieb'        , 10000  , 'other'      , '' ),
        (444 , 'Shotaro'                           , 'shotaro'        , 30000  , 'other'      , '' ),
        (445 , 'Bf Injection'                      , 'bfinjection'    , 15000  , 'other'      , '' ),
        (446 , 'Bifta'                             , 'bifta'          , 15000  , 'other'      , '' ),
        (447 , 'Bison'                             , 'bison'          , 25000  , 'other'      , '' ),
        (448 , 'Bison 3'                           , 'bison3'         , 25000  , 'other'      , '' ),
        (449 , 'Bobcat XL'                         , 'bobcatxl'       , 25000  , 'other'      , '' ),
        (450 , 'Bodhi'                             , 'bodhi2'         , 15000  , 'other'      , '' ),
        (451 , 'Brawler'                           , 'brawler'        , 45000  , 'other'      , '' ),
        (452 , 'Caracara 4x4'                      , 'caracara2'      , 50000  , 'other'      , '' ),
        (453 , 'Contender'                         , 'contender'      , 45000  , 'other'      , '' ),
        (454 , 'Duneloader'                        , 'dloader'        , 25000  , 'other'      , '' ),
        (455 , 'Dubsta 6x6'                        , 'dubsta3'        , 50000  , 'other'      , '' ),
        (456 , 'Dune Buggy'                        , 'dune'           , 10000  , 'other'      , '' ),
        (457 , 'Space Docker'                      , 'dune2'          , 10000  , 'other'      , '' ),
        (458 , 'Everon'                            , 'everon'         , 50000  , 'other'      , '' ),
        (459 , 'Freecrawler'                       , 'freecrawler'    , 25000  , 'other'      , '' ),
        (460 , 'Guardian'                          , 'guardian'       , 50000  , 'other'      , '' ),
        (461 , 'Hellion'                           , 'hellion'        , 25000  , 'other'      , '' ),
        (462 , 'Insurgent'                         , 'insurgent2'     , 75000  , 'other'      , '' ),
        (463 , 'Kalahari'                          , 'kalahari'       , 20000  , 'other'      , '' ),
        (464 , 'Kamacho'                           , 'kamacho'        , 50000  , 'other'      , '' ),
        (465 , 'Marshall'                          , 'marshall'       , 210000 , 'other'      , '' ),
        (466 , 'Mesa Trail'                        , 'mesa3'          , 50000  , 'other'      , '' ),
        (467 , 'Liberator'                         , 'monster'        , 210000 , 'other'      , '' ),
        (468 , 'Outlaw'                            , 'outlaw'         , 15000  , 'other'      , '' ),
        (469 , 'Rancher XL'                        , 'rancherxl'      , 25000  , 'other'      , '' ),
        (470 , 'Rusty Rebel'                       , 'rebel'          , 15000  , 'other'      , '' ),
        (471 , 'Rebel'                             , 'rebel2'         , 25000  , 'other'      , '' ),
        (472 , 'Riata'                             , 'riata'          , 50000  , 'other'      , '' ),
        (473 , 'Sadler'                            , 'sadler'         , 25000  , 'other'      , '' ),
        (474 , 'Sandking XL'                       , 'sandking'       , 50000  , 'other'      , '' ),
        (475 , 'Sandking SWB'                      , 'sandking2'      , 50000  , 'other'      , '' ),
        (476 , 'Squaddie'                          , 'squaddie'       , 75000  , 'other'      , '' ),
        (477 , 'Trophy Truck'                      , 'trophytruck'    , 75000  , 'other'      , '' ),
        (478 , 'Desert Raid'                       , 'trophytruck2'   , 75000  , 'other'      , '' ),
        (479 , 'Vagrant'                           , 'vagrant'        , 25000  , 'other'      , '' ),
        (480 , 'Verus'                             , 'verus'          , 10000  , 'other'      , '' ),
        (481 , 'Vetir'                             , 'vetir'          , 75000  , 'other'      , '' ),
        (482 , 'Winky'                             , 'winky'          , 25000  , 'other'      , '' ),
        (483 , 'Yosemite Rancher'                  , 'yosemite3'      , 25000  , 'other'      , '' ),
        (484 , 'Zhaba'                             , 'zhaba'          , 75000  , 'other'      , '' ),
        (485 , 'Burrito'                           , 'burrito3'       , 20000  , 'other'      , '' ),
        (486 , 'Camper'                            , 'camper'         , 25000  , 'other'      , '' ),
        (487 , 'Gang Burrito'                      , 'gburrito'       , 20000  , 'other'      , '' ),
        (488 , 'Gang Burrito 2'                    , 'gburrito2'      , 20000  , 'other'      , '' ),
        (489 , 'Journey'                           , 'journey'        , 10000  , 'other'      , '' ),
        (490 , 'Minivan'                           , 'minivan'        , 15000  , 'other'      , '' ),
        (491 , 'Minivan Custom'                    , 'minivan2'       , 20000  , 'other'      , '' ),
        (492 , 'Paradise'                          , 'paradise'       , 20000  , 'other'      , '' ),
        (493 , 'Rumpo Trail'                       , 'rumpo3'         , 25000  , 'other'      , '' ),
        (494 , 'Speedo'                            , 'speedo'         , 20000  , 'other'      , '' ),
        (495 , 'Surfer'                            , 'surfer'         , 20000  , 'other'      , '' ),
        (496 , 'Surfer 2'                          , 'surfer2'        , 10000  , 'other'      , '' ),
        (497 , 'Youga'                             , 'youga'          , 20000  , 'other'      , '' ),
        (498 , 'Youga Classic'                     , 'youga2'         , 20000  , 'other'      , '' ),
        (499 , 'Youga Classic 4x4'                 , 'youga3'         , 25000  , 'other'      , '' ),
        (500 , 'BMX'                               , 'bmx'            , 150    , 'other'      , '' ),
        (501 , 'Cruiser'                           , 'cruiser'        , 200    , 'other'      , '' ),
        (502 , 'Fixter'                            , 'fixter'         , 200    , 'other'      , '' ),
        (503 , 'Scorcher'                          , 'scorcher'       , 350    , 'other'      , '' ),
        (504 , 'Race bike Whippet'                 , 'tribike'        , 500    , 'other'      , '' ),
        (505 , 'Race bike Endurex'                 , 'tribike2'       , 500    , 'other'      , '' ),
        (506 , 'Race bike Tri-Cycles'              , 'tribike3'       , 500    , 'other'      , '' )
    ;

    INSERT INTO `vs_truck_categories` (id, name, label) VALUES
        (1, 'haul', 'Haulers'),
        (2, 'box', 'Boxed Trucks'),
        (3, 'trans', 'Transport Trucks'),
        (4, 'other', 'Other Trucks')
    ;

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

    INSERT INTO `vs_vip_categories` (id, name, label) VALUES
        (1, 'motorcycles', 'Motos')
    ;

    INSERT INTO `vs_vips` (id, name, model, price, category, image) VALUES
        (1, 'Shotaro', 'shotaro', 30000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e3/Shotaro.png/800px-Shotaro.png')
    ;

    INSERT INTO `vs_vipboat_categories` (id, name, label) VALUES
        (1, 'boats', 'Boats')
    ;

    INSERT INTO `vs_vipboats` (id, name, model, price, category, image) VALUES
        (1, 'Tropic Yacht', 'tropic2', 27000, 'boats', 'https://wiki.rage.mp/images/thumb/a/a7/Tropic2.png/800px-Tropic2.png')
    ;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_billing
--


    -- DDL

    CREATE TABLE `billing` (
    `id` int(11) NOT NULL,
    `identifier` varchar(60) DEFAULT NULL,
    `sender` varchar(40) NOT NULL,
    `target_type` varchar(50) NOT NULL,
    `target` varchar(40) NOT NULL,
    `label` varchar(255) NOT NULL,
    `amount` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML

    -- N/A

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_datastore
--


    -- DDL

    CREATE TABLE `datastore` (
    `name` varchar(60) NOT NULL,
    `label` varchar(100) NOT NULL,
    `shared` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `datastore_data` (
    `id` int(11) NOT NULL,
    `name` varchar(60) NOT NULL,
    `owner` varchar(60) DEFAULT NULL,
    `data` longtext DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML

    INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
        ('property', 'Property', 0),
        ('society_ambulance', 'EMS', 1),
        ('society_mechanic', 'Mechanic', 1),
        ('society_police', 'Police', 1),
        ('society_taxi', 'Taxi', 1)
    ;

    INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
    (1, 'society_police', NULL, '{}'),
    (2, 'society_ambulance', NULL, '{}'),
    (3, 'society_mechanic', NULL, '{}'),
    (4, 'society_taxi', NULL, '{}'),
    (5, 'property', 'char1:5e396ab5a00ebd7885ae4df5771b1e79535be6f6', '{}');

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_licenses
--


    -- DDL

    CREATE TABLE `licenses` (
    `type` varchar(60) NOT NULL,
    `label` varchar(60) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE `user_licenses` (
    `id` int(11) NOT NULL,
    `type` varchar(60) NOT NULL,
    `owner` varchar(60) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML

    INSERT INTO `licenses` (`type`, `label`) VALUES 
        ('dmv', 'Code de la route'),
        ('drive', 'Permis de conduire'),
        ('drive_bike', 'Permis moto'),
        ('drive_truck', 'Permis camion'),
        ('weed_processing', 'Weed Processing License')
    ;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_property
--


    -- DDL

    CREATE TABLE `owned_properties` (
        `id` int(11) NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `price` double NOT NULL,
        `rented` int(11) NOT NULL,
        `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ;

    CREATE TABLE `properties` (
        `id` int(11) NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `entering` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `exit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `inside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `outside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `ipls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
        `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `is_single` int(11) DEFAULT NULL,
        `is_room` int(11) DEFAULT NULL,
        `is_gateway` int(11) DEFAULT NULL,
        `room_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `price` int(11) NOT NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ;


    -- DML

    INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
        (1 , 'WhispymoundDrive'           , '2677 Whispymound Drive'        ,       '{\"y\":564.89,\"z\":182.959,\"x\":119.384}'   , '{\"x\":117.347,\"y\":559.506,\"z\":183.304}'   , '{\"y\":557.032,\"z\":183.301,\"x\":118.037}'   , '{\"y\":567.798,\"z\":182.131,\"x\":119.249}'  , '[]'              , NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}'  , 1500000),
        (2 , 'NorthConkerAvenue2045'      , '2045 North Conker Avenue'      ,       '{\"x\":372.796,\"y\":428.327,\"z\":144.685}'  , '{\"x\":373.548,\"y\":422.982,\"z\":144.907}'   , '{\"y\":420.075,\"z\":145.904,\"x\":372.161}'   , '{\"x\":372.454,\"y\":432.886,\"z\":143.443}'  , '[]'              , NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}'    , 1500000),
        (3 , 'RichardMajesticApt2'        , 'Richard Majestic, Apt 2'       ,       '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}' , '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}' , '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}' , '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}' , '[]'              , NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
        (4 , 'NorthConkerAvenue2044'      , '2044 North Conker Avenue'      ,       '{\"y\":440.8,\"z\":146.702,\"x\":346.964}'    , '{\"y\":437.456,\"z\":148.394,\"x\":341.683}'   , '{\"y\":435.626,\"z\":148.394,\"x\":339.595}'   , '{\"x\":350.535,\"y\":443.329,\"z\":145.764}'  , '[]'              , NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}'   , 1500000),
        (5 , 'WildOatsDrive'              , '3655 Wild Oats Drive'          ,       '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}' , '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}'  , '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}'  , '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]'              , NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}' , 1500000),
        (6 , 'HillcrestAvenue2862'        , '2862 Hillcrest Avenue'         ,       '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}'  , '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}'  , '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}'  , '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}' , '[]'              , NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}'    , 1500000),
        (7 , 'LowEndApartment'            , 'Appartement de base'           ,       '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}' , '[]'              , NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}' , 562500 ),
        (8 , 'MadWayneThunder'            , '2113 Mad Wayne Thunder'        ,       '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}' , '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}'  , '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}'  , '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}' , '[]'              , NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}' , 1500000),
        (9 , 'HillcrestAvenue2874'        , '2874 Hillcrest Avenue'         ,       '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}' , '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}'   , '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}'  , '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}' , '[]'              , NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}' , 1500000),
        (10, 'HillcrestAvenue2868'        , '2868 Hillcrest Avenue'         ,       '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}'  , '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}'   , '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}'  , '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}' , '[]'              , NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}'  , 1500000),
        (11, 'TinselTowersApt12'          , 'Tinsel Towers, Apt 42'         ,       '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}'    , '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}'      , '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}'      , '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}'   , '[]'              , NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}'   , 1700000),
        (12, 'MiltonDrive'                , 'Milton Drive'                  ,       '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}'    , NULL                                            , NULL                                            , '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}'    , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (13, 'Modern1Apartment'           , 'Appartement Moderne 1'         , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_01_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}' , 1300000),
        (14, 'Modern2Apartment'           , 'Appartement Moderne 2'         , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_01_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}' , 1300000),
        (15, 'Modern3Apartment'           , 'Appartement Moderne 3'         , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_01_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}'  , 1300000),
        (16, 'Mody1Apartment'             , 'Appartement Mode 1'            , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_02_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}' , 1300000),
        (17, 'Mody2Apartment'             , 'Appartement Mode 2'            , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_02_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}' , 1300000),
        (18, 'Mody3Apartment'             , 'Appartement Mode 3'            , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_02_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}' , 1300000),
        (19, 'Vibrant1Apartment'          , 'Appartement Vibrant 1'         , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_03_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}' , 1300000),
        (20, 'Vibrant2Apartment'          , 'Appartement Vibrant 2'         , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_03_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}' , 1300000),
        (21, 'Vibrant3Apartment'          , 'Appartement Vibrant 3'         , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_03_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}' , 1300000),
        (22, 'Sharp1Apartment'            , 'Appartement Persan 1'          , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_04_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}'  , 1300000),
        (23, 'Sharp2Apartment'            , 'Appartement Persan 2'          , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_04_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}' , 1300000),
        (24, 'Sharp3Apartment'            , 'Appartement Persan 3'          , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_04_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}' , 1300000),
        (25, 'Monochrome1Apartment'       , 'Appartement Monochrome 1'      , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_05_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}' , 1300000),
        (26, 'Monochrome2Apartment'       , 'Appartement Monochrome 2'      , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_05_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}' , 1300000),
        (27, 'Monochrome3Apartment'       , 'Appartement Monochrome 3'      , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_05_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}' , 1300000),
        (28, 'Seductive1Apartment'        , 'Appartement Séduisant 1'       , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_06_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}' , 1300000),
        (29, 'Seductive2Apartment'        , 'Appartement Séduisant 2'       , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_06_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}' , 1300000),
        (30, 'Seductive3Apartment'        , 'Appartement Séduisant 3'       , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_06_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}'   , 1300000),
        (31, 'Regal1Apartment'            , 'Appartement Régal 1'           , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_07_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}' , 1300000),
        (32, 'Regal2Apartment'            , 'Appartement Régal 2'           , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_07_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}' , 1300000),
        (33, 'Regal3Apartment'            , 'Appartement Régal 3'           , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_07_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}' , 1300000),
        (34, 'Aqua1Apartment'             , 'Appartement Aqua 1'            , NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}' , '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}'  , NULL                                            , '[\"apa_v_mp_h_08_a\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}'  , 1300000),
        (35, 'Aqua2Apartment'             , 'Appartement Aqua 2'            , NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}'  , NULL                                            , '[\"apa_v_mp_h_08_c\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}' , 1300000),
        (36, 'Aqua3Apartment'             , 'Appartement Aqua 3'            , NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}' , '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}'  , NULL                                            , '[\"apa_v_mp_h_08_b\"]'                        , 'MiltonDrive'     ,       0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}' , 1300000),
        (37, 'IntegrityWay'               , '4 Integrity Way'               ,       '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}'  , NULL                                            , NULL                                            , '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}'  , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (38, 'IntegrityWay28'             , '4 Integrity Way - Apt 28'      , NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}'   , '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}'    , NULL                                            , '[]'                                           , 'IntegrityWay'    ,       0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}'   , 1700000),
        (39, 'IntegrityWay30'             , '4 Integrity Way - Apt 30'      , NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}'  , '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}'    , NULL                                            , '[]'                                           , 'IntegrityWay'    ,       0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}'  , 1700000),
        (40, 'DellPerroHeights'           , 'Dell Perro Heights'            ,       '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}'   , NULL                                            , NULL                                            , '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}' , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (41, 'DellPerroHeightst4'         , 'Dell Perro Heights - Apt 28'   , NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}'  , NULL                                            , '[]'                                           , 'DellPerroHeights',       0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
        (42, 'DellPerroHeightst7'         , 'Dell Perro Heights - Apt 30'   , NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}'  , NULL                                            , '[]'                                           , 'DellPerroHeights',       0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
        (43, 'MazeBankBuilding'           , 'Maze Bank Building'            ,       '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}'     , NULL                                            , NULL                                            , '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}'     , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (44, 'OldSpiceWarm'               , 'Old Spice Warm'                , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_01a\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (45, 'OldSpiceClassical'          , 'Old Spice Classical'           , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_01b\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (46, 'OldSpiceVintage'            , 'Old Spice Vintage'             , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_01c\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (47, 'ExecutiveRich'              , 'Executive Rich'                , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_02b\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (48, 'ExecutiveCool'              , 'Executive Cool'                , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_02c\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (49, 'ExecutiveContrast'          , 'Executive Contrast'            , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_02a\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (50, 'PowerBrokerIce'             , 'Power Broker Ice'              , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_03a\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (51, 'PowerBrokerConservative'    , 'Power Broker Conservative'     , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_03b\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (52, 'PowerBrokerPolished'        , 'Power Broker Polished'         , NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}'    , '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}'     , NULL                                            , '[\"ex_dt1_11_office_03c\"]'                   , 'MazeBankBuilding',       0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}'    , 5000000),
        (53, 'LomBank'                    , 'Lom Bank'                      ,       '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}'   , NULL                                            , NULL                                            , '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}'   , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (54, 'LBOldSpiceWarm'             , 'LB Old Spice Warm'             , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_01a\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (55, 'LBOldSpiceClassical'        , 'LB Old Spice Classical'        , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_01b\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (56, 'LBOldSpiceVintage'          , 'LB Old Spice Vintage'          , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_01c\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (57, 'LBExecutiveRich'            , 'LB Executive Rich'             , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_02b\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (58, 'LBExecutiveCool'            , 'LB Executive Cool'             , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_02c\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (59, 'LBExecutiveContrast'        , 'LB Executive Contrast'         , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_02a\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (60, 'LBPowerBrokerIce'           , 'LB Power Broker Ice'           , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_03a\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (61, 'LBPowerBrokerConservative'  , 'LB Power Broker Conservative'  , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_03b\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (62, 'LBPowerBrokerPolished'      , 'LB Power Broker Polished'      , NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}'  , '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}'   , NULL                                            , '[\"ex_sm_13_office_03c\"]'                    , 'LomBank'         ,       0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}'  , 3500000),
        (63, 'MazeBankWest'               , 'Maze Bank West'                ,       '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}'   , NULL                                            , NULL                                            , '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}'   , '[]'              , NULL, 0, 0, 1, NULL                                           , 0      ),
        (64, 'MBWOldSpiceWarm'            , 'MBW Old Spice Warm'            , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_01a\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (65, 'MBWOldSpiceClassical'       , 'MBW Old Spice Classical'       , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_01b\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (66, 'MBWOldSpiceVintage'         , 'MBW Old Spice Vintage'         , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_01c\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (67, 'MBWExecutiveRich'           , 'MBW Executive Rich'            , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_02b\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (68, 'MBWExecutiveCool'           , 'MBW Executive Cool'            , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_02c\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (69, 'MBWExecutive Contrast'      , 'MBW Executive Contrast'        , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_02a\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (70, 'MBWPowerBrokerIce'          , 'MBW Power Broker Ice'          , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_03a\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_03b\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000),
        (72, 'MBWPowerBrokerPolished'     , 'MBW Power Broker Polished'     , NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}'   , '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}'    , NULL                                            , '[\"ex_sm_15_office_03c\"]'                    , 'MazeBankWest'    ,       0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}'   , 2700000)
    ;


-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- gc_phone
--


    -- DDL

    CREATE TABLE `phone_app_chat` (
    `id` int(11) NOT NULL,
    `channel` varchar(20) NOT NULL,
    `message` varchar(255) NOT NULL,
    `time` timestamp NOT NULL DEFAULT current_timestamp()
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    CREATE TABLE `phone_calls` (
    `id` int(11) NOT NULL,
    `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
    `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
    `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
    `time` timestamp NOT NULL DEFAULT current_timestamp(),
    `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    CREATE TABLE `phone_messages` (
    `id` int(11) NOT NULL,
    `transmitter` varchar(10) NOT NULL,
    `receiver` varchar(10) NOT NULL,
    `message` varchar(255) NOT NULL DEFAULT '0',
    `time` timestamp NOT NULL DEFAULT current_timestamp(),
    `isRead` int(11) NOT NULL DEFAULT 0,
    `owner` int(11) NOT NULL DEFAULT 0
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

    CREATE TABLE `phone_users_contacts` (
    `id` int(11) NOT NULL,
    `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
    `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
    `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

    CREATE TABLE `twitter_accounts` (
    `id` int(11) NOT NULL,
    `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
    `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
    `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

    CREATE TABLE `twitter_likes` (
    `id` int(11) NOT NULL,
    `authorId` int(11) DEFAULT NULL,
    `tweetId` int(11) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

    CREATE TABLE `twitter_tweets` (
    `id` int(11) NOT NULL,
    `authorId` int(11) NOT NULL,
    `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` timestamp NOT NULL DEFAULT current_timestamp(),
    `likes` int(11) NOT NULL DEFAULT 0
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


    -- DML

    INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
        (122, '958-2806', '458', 1, '2021-08-14 20:40:57', 0)
    ;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_society
--


    -- DDL

    CREATE TABLE `society_moneywash` (
    `id` int(11) NOT NULL,
    `identifier` varchar(60) NOT NULL,
    `society` varchar(60) NOT NULL,
    `amount` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    -- DML
    
    -- N/A

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- esx_weaponshop
--


    -- DDL

    CREATE TABLE `weashops` (
    `id` int(11) NOT NULL,
    `zone` varchar(255) NOT NULL,
    `item` varchar(255) NOT NULL,
    `price` int(11) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


    -- DML

    INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
        (1, 'GunShop', 'WEAPON_PISTOL', 300),
        (2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
        (3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
        (4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
        (5, 'GunShop', 'WEAPON_MACHETE', 90),
        (6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
        (7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
        (8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
        (9, 'GunShop', 'WEAPON_BAT', 100),
        (10, 'BlackWeashop', 'WEAPON_BAT', 100),
        (11, 'GunShop', 'WEAPON_STUNGUN', 50),
        (12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
        (13, 'GunShop', 'WEAPON_MICROSMG', 1400),
        (14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
        (15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
        (16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
        (17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
        (18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
        (19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
        (20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
        (21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
        (22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
        (23, 'GunShop', 'WEAPON_FIREWORK', 18000),
        (24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
        (25, 'GunShop', 'WEAPON_GRENADE', 500),
        (26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
        (27, 'GunShop', 'WEAPON_BZGAS', 200),
        (28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
        (29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
        (30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
        (31, 'GunShop', 'WEAPON_BALL', 50),
        (32, 'BlackWeashop', 'WEAPON_BALL', 50),
        (33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
        (34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
        (35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
        (36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
        (37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
        (38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
        (39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
        (40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- Stuff im not sure about
--

    -- CREATE TABLE `shops` (
    --   `id` int(11) NOT NULL,
    --   `store` varchar(100) NOT NULL,
    --   `item` varchar(100) NOT NULL,
    --   `price` int(11) NOT NULL
    -- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    -- INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
    -- (1, 'TwentyFourSeven', 'bread', 30),
    -- (2, 'TwentyFourSeven', 'water', 15),
    -- (3, 'RobsLiquor', 'bread', 30),
    -- (4, 'RobsLiquor', 'water', 15),
    -- (5, 'LTDgasoline', 'bread', 30),
    -- (6, 'LTDgasoline', 'water', 15);

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- Indexes
--

    --
    -- Indexes for table `addon_account`
    --
    ALTER TABLE `addon_account`
    ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `addon_account_data`
    --
    ALTER TABLE `addon_account_data`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
    ADD KEY `index_addon_account_data_account_name` (`account_name`);

    --
    -- Indexes for table `addon_inventory`
    --
    ALTER TABLE `addon_inventory`
    ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `addon_inventory_items`
    --
    ALTER TABLE `addon_inventory_items`
    ADD PRIMARY KEY (`id`),
    ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
    ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
    ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

    --
    -- Indexes for table `billing`
    --
    ALTER TABLE `billing`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `datastore`
    --
    ALTER TABLE `datastore`
    ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `datastore_data`
    --
    ALTER TABLE `datastore_data`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
    ADD KEY `index_datastore_data_name` (`name`);

    --
    -- Indexes for table `items`
    --
    ALTER TABLE `items`
    ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `jobs`
    --
    ALTER TABLE `jobs`
    ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `job_grades`
    --
    ALTER TABLE `job_grades`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `licenses`
    --
    ALTER TABLE `licenses`
    ADD PRIMARY KEY (`type`);

    --
    -- Indexes for table `owned_properties`
    --
    ALTER TABLE `owned_properties`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `owned_vehicles`
    --
    ALTER TABLE `owned_vehicles`
    ADD PRIMARY KEY (`plate`);

    --
    -- Indexes for table `phone_app_chat`
    --
    ALTER TABLE `phone_app_chat`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `phone_calls`
    --
    ALTER TABLE `phone_calls`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `phone_messages`
    --
    ALTER TABLE `phone_messages`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `phone_users_contacts`
    --
    ALTER TABLE `phone_users_contacts`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `properties`
    --
    ALTER TABLE `properties`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `shops`
    --
    -- ALTER TABLE `shops`
    --   ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `society_moneywash`
    --
    ALTER TABLE `society_moneywash`
    ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `twitter_accounts`
    --
    ALTER TABLE `twitter_accounts`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `username` (`username`);

    --
    -- Indexes for table `twitter_likes`
    --
    ALTER TABLE `twitter_likes`
    ADD PRIMARY KEY (`id`),
    ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
    ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

    --
    -- Indexes for table `twitter_tweets`
    --
    ALTER TABLE `twitter_tweets`
    ADD PRIMARY KEY (`id`),
    ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

    --
    -- Indexes for table `users`
    --
    ALTER TABLE `users`
    ADD PRIMARY KEY (`identifier`),
    ADD UNIQUE KEY `id` (`id`);

    --
    -- Indexes for table `user_licenses`
    --
    ALTER TABLE `user_licenses`
    ADD PRIMARY KEY (`id`);


    --
    -- Indexes for table `vehicles`
    --
    -- ALTER TABLE `vehicles`
    -- ADD PRIMARY KEY (`model`);

    --
    -- Indexes for table `vehicle_categories`
    --
    -- ALTER TABLE `vehicle_categories`
    -- ADD PRIMARY KEY (`name`);

    --
    -- Indexes for table `weashops`
    --
    ALTER TABLE `weashops`
    ADD PRIMARY KEY (`id`);

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- AUTO_INCREMENT for dumped tables
--

    --
    -- AUTO_INCREMENT for table `addon_account_data`
    --
    ALTER TABLE `addon_account_data`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

    --
    -- AUTO_INCREMENT for table `addon_inventory_items`
    --
    ALTER TABLE `addon_inventory_items`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `billing`
    --
    ALTER TABLE `billing`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


    --
    -- AUTO_INCREMENT for table `datastore_data`
    --
    ALTER TABLE `datastore_data`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

    --
    -- AUTO_INCREMENT for table `job_grades`
    --
    ALTER TABLE `job_grades`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

    --
    -- AUTO_INCREMENT for table `owned_properties`
    --
    ALTER TABLE `owned_properties`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `phone_app_chat`
    --
    ALTER TABLE `phone_app_chat`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

    --
    -- AUTO_INCREMENT for table `phone_calls`
    --
    ALTER TABLE `phone_calls`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

    --
    -- AUTO_INCREMENT for table `phone_messages`
    --
    ALTER TABLE `phone_messages`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

    --
    -- AUTO_INCREMENT for table `phone_users_contacts`
    --
    ALTER TABLE `phone_users_contacts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

    --
    -- AUTO_INCREMENT for table `properties`
    --
    ALTER TABLE `properties`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

    --
    -- AUTO_INCREMENT for table `shops`
    --
    ALTER TABLE `shops`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

    --
    -- AUTO_INCREMENT for table `society_moneywash`
    --
    ALTER TABLE `society_moneywash`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `twitter_accounts`
    --
    ALTER TABLE `twitter_accounts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

    --
    -- AUTO_INCREMENT for table `twitter_likes`
    --
    ALTER TABLE `twitter_likes`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

    --
    -- AUTO_INCREMENT for table `twitter_tweets`
    --
    ALTER TABLE `twitter_tweets`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

    --
    -- AUTO_INCREMENT for table `users`
    --
    ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

    --
    -- AUTO_INCREMENT for table `user_licenses`
    --
    ALTER TABLE `user_licenses`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `weashops`
    --
    ALTER TABLE `weashops`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

--
-- Constraints for dumped tables
--

    --
    -- Constraints for table `twitter_likes`
    --
    ALTER TABLE `twitter_likes`
    ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
    ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

    --
    -- Constraints for table `twitter_tweets`
    --
    ALTER TABLE `twitter_tweets`
    ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
    COMMIT;

-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;