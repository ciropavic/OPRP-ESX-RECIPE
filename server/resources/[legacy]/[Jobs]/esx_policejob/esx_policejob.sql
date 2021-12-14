USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
	('police', 'LEO', 1)
;

-- Salary is payed every 20 mins, 
-- I've based these calculations off of a 3 hour patrol idea,
-- in 3 hours there is 9 pay cycles
-- Constables get payed $335/pay, this adds up to $3,015 every 3 hours, so roughly $1k an hour
-- Supervisors get payed $620/pay, this adds up to $5,580 every 3 hours, so roughly $1.86k an hour
-- Constables get payed $850/pay, this adds up to $7,650 every 3 hours, so roughly $2.5k an hour
INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('TPS_Constable'  ,0,'tps_constable'  ,'TPS - Constable'  ,335,'{}','{}'),
	('PRP_Constable'  ,0,'prp_constable'  ,'PRP - Constable'  ,335,'{}','{}'),
	('OPP_Constable'  ,0,'opp_constable'  ,'OPP - Constable'  ,335,'{}','{}'),
	('RCMP_Constable' ,0,'rcmp_constable' ,'RCMP - Constable' ,335,'{}','{}'),

	('TPS_Supervisor' ,1,'tps_supervisor' ,'TPS - Supervisor' ,620,'{}','{}'),
	('PRP_Supervisor' ,1,'prp_supervisor' ,'PRP - Supervisor' ,620,'{}','{}'),
	('OPP_Supervisor' ,1,'opp_supervisor' ,'OPP - Supervisor' ,620,'{}','{}'),
	('RCMP_Supervisor',1,'rcmp_supervisor','RCMP - Supervisor',620,'{}','{}'),

	('TPS_COC'        ,2,'tps_coc'        ,'TPS - COC'        ,850,'{}','{}'),
	('PRP_COC'        ,2,'prp_coc'        ,'PRP - COC'        ,850,'{}','{}'),
	('OPP_COC'        ,2,'opp_coc'        ,'OPP - COC'        ,850,'{}','{}'),
	('RCMP_COC'       ,2,'rcmp_coc'       ,'RCMP - COC'       ,850,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Speeding 0-15 km/h over the limit',50,0),
	('Speeding 16-29 km/h over the limit',140,0),
	('Speeding 30-49 km/h over the limit',360,0),
	('Speeding 50 km/h+ over the limit',750,0),
	('Fleeing the scene of accident',2000,0),
	('Driving without a valid license',1000,0),
	('Negligent driving',2000,0),
	('Responsibility at a red light / stop sign',325,0),
	('Careless driving',2000,0),
	('Driving under the influence',600,0),
	('Open alcoholic container in vehicle',180,0),
	('Obstructing sidewalk / walkway',45,0),
	('Vehicle obstructing emergency vehicle',1250,0),
	('Distracted driving',615,0),
	('Overtaking vehicle on right hand side',150,0),
	('Racing or assisting in racing on public roads',5000,0),
	('Following too closely',300,0),
	('Illegally tinted windows',110,0),
	('Possession of a stolen vehicle',2000,0),
	('Failure to signal',110,0),
	('Failure to display license plate',85,0)--,

	-- ('aa',0,1),
	
	
;
