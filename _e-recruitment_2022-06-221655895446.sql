

CREATE TABLE `inv_damage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `damage_id` varchar(25) NOT NULL,
  `damage_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO inv_damage VALUES("1","RR-CW001","2022-05-12","k remarks ","2","10","38","PA-175","");
INSERT INTO inv_damage VALUES("2","RR-CW002","2022-05-26","Opening Replace asce form party","2","10","41","PA-189","");
INSERT INTO inv_damage VALUES("3","RR-CW003","2022-05-26","Opening Replace asce form Party","2","10","41","PA-189","");
INSERT INTO inv_damage VALUES("4","RR-CW004","2022-05-26","","2","10","41","PA-189","");
INSERT INTO inv_damage VALUES("5","RR-CW005","2022-05-10","","2","10","31","PA-059","");
INSERT INTO inv_damage VALUES("6","RR-CW006","2022-05-14","","2","10","31","PA-059","");
INSERT INTO inv_damage VALUES("7","RR-CW007","2022-05-01","","2","10","35","PA-159","");
INSERT INTO inv_damage VALUES("8","RR-CW008","2022-05-01","","2","10","34","PA-406","");
INSERT INTO inv_damage VALUES("9","RR-CW009","2022-05-01","","2","10","41","PA-168","");
INSERT INTO inv_damage VALUES("10","RR-CW010","2022-05-01","","2","10","41","PA-155","");
INSERT INTO inv_damage VALUES("11","RR-CW011","2022-05-01","","2","10","41","PA-166","");
INSERT INTO inv_damage VALUES("12","RR-CW012","2022-05-01","","2","10","41","PA-167","");
INSERT INTO inv_damage VALUES("13","RR-CW013","2022-05-08","","2","10","32","PA-008","");
INSERT INTO inv_damage VALUES("14","RR-CW014","2022-05-08","","2","10","40","PA-334","");
INSERT INTO inv_damage VALUES("15","RR-CW015","2022-05-08","","2","10","41","PA-168","");
INSERT INTO inv_damage VALUES("16","RR-CW016","2022-05-08","","2","10","33","PA-014","");
INSERT INTO inv_damage VALUES("17","RR-CW017","2022-05-08","","2","10","41","PA-167","");
INSERT INTO inv_damage VALUES("18","RR-CW018","2022-05-08","","2","10","41","PA-166","");
INSERT INTO inv_damage VALUES("19","RR-CW019","2022-05-08","","2","10","33","PA-129","");
INSERT INTO inv_damage VALUES("20","RR-CW020","2022-05-08","","2","10","36","PA-300","");
INSERT INTO inv_damage VALUES("21","RR-CW021","2022-05-08","","2","10","34","PA-387","");
INSERT INTO inv_damage VALUES("22","RR-CW022","2022-05-08","","2","10","36","PA-296","");
INSERT INTO inv_damage VALUES("23","RR-CW023","2022-05-09","","2","10","32","PA-449","");
INSERT INTO inv_damage VALUES("24","RR-CW024","2022-05-09","","2","10","34","PA-407","");
INSERT INTO inv_damage VALUES("25","RR-CW025","2022-05-09","","2","10","34","PA-379","");
INSERT INTO inv_damage VALUES("26","RR-CW026","2022-05-09","","2","10","33","PA-115","");
INSERT INTO inv_damage VALUES("27","RR-CW027","2022-05-09","","2","10","41","PA-155","");
INSERT INTO inv_damage VALUES("28","RR-CW028","2022-05-10","","2","10","35","PA-244","");
INSERT INTO inv_damage VALUES("29","RR-CW029","2022-05-10","","2","10","37","PA-133","");
INSERT INTO inv_damage VALUES("30","RR-CW030","2022-05-10","","2","10","35","PA-178","");
INSERT INTO inv_damage VALUES("31","RR-CW031","2022-05-10","","2","10","31","PA-060","");
INSERT INTO inv_damage VALUES("32","RR-CW032","2022-05-10","","2","10","31","PA-049","");
INSERT INTO inv_damage VALUES("33","RR-CW033","2022-05-10","","2","10","31","PA-059","");
INSERT INTO inv_damage VALUES("34","RR-CW034","2022-05-10","","2","10","41","PA-012","");
INSERT INTO inv_damage VALUES("35","RR-CW035","2022-05-10","","2","10","41","PA-166","");



CREATE TABLE `inv_damagebalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(10) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `party_id` varchar(10) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL,
  `unit` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

INSERT INTO inv_damagebalance VALUES("1","RO-CW001","01-01-115","2022-05-15","0","2","REPLACE OUT","2","10","33","PA-115","","0","2022-05-15 12:00:00","");
INSERT INTO inv_damagebalance VALUES("2","RO-CW001","01-01-115","2022-05-08","0","2","REPLACE OUT","2","10","33","PA-115","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("3","RO-CW003","01-03-002","2022-05-15","0","1","REPLACE OUT","2","10","41","PA-155","","0","2022-05-15 12:00:00","");
INSERT INTO inv_damagebalance VALUES("4","RO-CW003","01-03-002","2022-05-01","0","1","REPLACE OUT","2","10","41","PA-155","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("5","RO-CW003","01-03-002","2022-05-01","0","1","REPLACE OUT","2","10","41","PA-155","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("6","RO-CW003","01-03-002","2022-05-01","0","1","REPLACE OUT","2","10","41","PA-155","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("7","RO-CW006","01-03-002","2022-05-01","0","4","REPLACE OUT","2","10","41","PA-168","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("8","RO-CW007","01-01-008","2022-05-15","0","5","REPLACE OUT","2","10","38","PA-171","","0","2022-05-15 12:00:00","");
INSERT INTO inv_damagebalance VALUES("9","RO-CW007","01-01-008","2022-05-10","0","5","REPLACE OUT","2","10","38","PA-171","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("11","RO-CW009","01-01-125","2022-05-15","0","1","REPLACE OUT","2","10","38","PA-175","","0","2022-05-15 12:00:00","");
INSERT INTO inv_damagebalance VALUES("12","RO-CW010","01-01-125","2022-05-12","0","1","REPLACE OUT","2","10","38","PA-175","","0","2022-05-12 12:00:00","");
INSERT INTO inv_damagebalance VALUES("13","RO-CW011","01-01-115","2022-05-11","0","5","REPLACE OUT","2","10","41","PA-182","","0","2022-05-11 12:00:00","");
INSERT INTO inv_damagebalance VALUES("14","RO-CW012","01-01-003","2022-05-11","0","1","REPLACE OUT","2","10","41","PA-183","","0","2022-05-11 12:00:00","");
INSERT INTO inv_damagebalance VALUES("18","RR-CW001","01-01-125","2022-05-12","2","0","REPLACE RECEIVE","2","10","38","PA-175","k remarks ","0","2022-05-12 12:00:00","");
INSERT INTO inv_damagebalance VALUES("19","RR-CW003","01-01-038","2022-05-26","30","0","REPLACE RECEIVE","2","10","41","PA-189","Opening Replace asce form Party","0","2022-05-26 12:00:00","");
INSERT INTO inv_damagebalance VALUES("20","RO-CW013","01-01-058","2022-05-26","0","8","REPLACE OUT","2","10","41","PA-189","","0","2022-05-26 12:00:00","");
INSERT INTO inv_damagebalance VALUES("21","RR-CW004","01-01-060","2022-05-26","10","0","REPLACE RECEIVE","2","10","41","PA-189","","0","2022-05-26 12:00:00","");
INSERT INTO inv_damagebalance VALUES("22","RR-CW005","01-07-001","2022-05-10","2","0","REPLACE RECEIVE","2","10","31","PA-059","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("23","RO-CW014","01-07-001","2022-05-10","0","2","REPLACE OUT","2","10","31","PA-059","Cash Paid","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("24","RR-CW006","01-07-001","2022-05-14","3","0","REPLACE RECEIVE","2","10","31","PA-059","","0","2022-05-14 12:00:00","");
INSERT INTO inv_damagebalance VALUES("26","RO-CW015","01-07-001","2022-05-14","0","3","REPLACE OUT","2","10","31","PA-059","Cash Paid","0","2022-05-14 12:00:00","");
INSERT INTO inv_damagebalance VALUES("27","RO-CW016","01-03-002","2022-05-01","0","4","REPLACE OUT","2","10","41","PA-168","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("28","RO-CW017","01-03-002","2022-05-01","0","1","REPLACE OUT","2","10","41","PA-155","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("29","RR-CW007","01-01-125","2022-05-01","4","0","REPLACE RECEIVE","2","10","35","PA-159","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("30","RR-CW007","01-01-038","2022-05-01","3","0","REPLACE RECEIVE","2","10","35","PA-159","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("31","RR-CW008","01-01-086","2022-05-01","3","0","REPLACE RECEIVE","2","10","34","PA-406","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("32","RR-CW008","01-01-125","2022-05-01","3","0","REPLACE RECEIVE","2","10","34","PA-406","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("33","RR-CW009","01-03-002","2022-05-01","5","0","REPLACE RECEIVE","2","10","41","PA-168","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("34","RR-CW010","01-03-001","2022-05-01","5","0","REPLACE RECEIVE","2","10","41","PA-155","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("35","RR-CW011","01-01-008","2022-05-01","2","0","REPLACE RECEIVE","2","10","41","PA-166","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("36","RR-CW012","01-01-008","2022-05-01","1","0","REPLACE RECEIVE","2","10","41","PA-167","","0","2022-05-01 12:00:00","");
INSERT INTO inv_damagebalance VALUES("38","RO-CW018","01-03-004","2022-05-07","0","1","REPLACE OUT","2","10","32","PA-008","","0","2022-05-07 12:00:00","");
INSERT INTO inv_damagebalance VALUES("39","RO-CW019","01-01-008","2022-05-08","0","1","REPLACE OUT","2","10","40","PA-334","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("40","RO-CW019","01-01-038","2022-05-08","0","2","REPLACE OUT","2","10","40","PA-334","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("41","RO-CW020","01-01-038","2022-05-08","0","1","REPLACE OUT","2","10","33","PA-129","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("42","RO-CW021","01-03-002","2022-05-08","0","1","REPLACE OUT","2","10","34","PA-387","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("43","RO-CW022","01-01-041","2022-05-08","0","7","REPLACE OUT","2","10","36","PA-300","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("44","RO-CW023","01-03-002","2022-05-08","0","5","REPLACE OUT","2","10","41","PA-168","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("45","RR-CW013","01-03-004","2022-05-08","1","0","REPLACE RECEIVE","2","10","32","PA-008","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("46","RO-CW024","01-01-038","2022-05-08","0","1","REPLACE OUT","2","10","36","PA-296","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("47","RO-CW024","01-01-151","2022-05-08","0","4","REPLACE OUT","2","10","36","PA-296","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("48","RO-CW024","01-01-171","2022-05-08","0","8","REPLACE OUT","2","10","36","PA-296","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("49","RR-CW014","01-02-038","2022-05-08","2","0","REPLACE RECEIVE","2","10","40","PA-334","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("50","RR-CW014","01-02-014","2022-05-08","1","0","REPLACE RECEIVE","2","10","40","PA-334","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("51","RR-CW015","01-03-001","2022-05-08","10","0","REPLACE RECEIVE","2","10","41","PA-168","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("52","RR-CW016","01-01-003","2022-05-08","2","0","REPLACE RECEIVE","2","10","33","PA-014","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("53","RR-CW016","01-01-125","2022-05-08","4","0","REPLACE RECEIVE","2","10","33","PA-014","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("54","RR-CW016","01-01-038","2022-05-08","1","0","REPLACE RECEIVE","2","10","33","PA-014","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("55","RR-CW016","01-01-010","2022-05-08","1","0","REPLACE RECEIVE","2","10","33","PA-014","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("56","RR-CW017","01-01-008","2022-05-08","1","0","REPLACE RECEIVE","2","10","41","PA-167","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("57","RR-CW017","01-01-125","2022-05-08","1","0","REPLACE RECEIVE","2","10","41","PA-167","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("58","RR-CW017","01-01-019","2022-05-08","3","0","REPLACE RECEIVE","2","10","41","PA-167","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("59","RR-CW017","01-02-038","2022-05-08","1","0","REPLACE RECEIVE","2","10","41","PA-167","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("60","RR-CW018","01-01-125","2022-05-08","2","0","REPLACE RECEIVE","2","10","41","PA-166","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("61","RR-CW018","01-01-010","2022-05-08","1","0","REPLACE RECEIVE","2","10","41","PA-166","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("62","RR-CW019","01-01-045","2022-05-08","1","0","REPLACE RECEIVE","2","10","33","PA-129","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("63","RR-CW020","01-01-044","2022-05-08","7","0","REPLACE RECEIVE","2","10","36","PA-300","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("64","RR-CW021","01-03-003","2022-05-08","1","0","REPLACE RECEIVE","2","10","34","PA-387","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("65","RR-CW022","01-01-159","2022-05-08","1","0","REPLACE RECEIVE","2","10","36","PA-296","","0","2022-05-08 12:00:00","");
INSERT INTO inv_damagebalance VALUES("66","RR-CW023","01-01-092","2022-05-09","5","0","REPLACE RECEIVE","2","10","32","PA-449","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("67","RR-CW024","01-01-125","2022-05-09","2","0","REPLACE RECEIVE","2","10","34","PA-407","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("68","RR-CW025","01-01-044","2022-05-09","5","0","REPLACE RECEIVE","2","10","34","PA-379","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("69","RR-CW026","01-01-025","2022-05-09","3","0","REPLACE RECEIVE","2","10","33","PA-115","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("70","RR-CW026","01-03-006","2022-05-09","8","0","REPLACE RECEIVE","2","10","33","PA-115","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("71","RO-CW025","01-01-038","2022-06-09","0","2","REPLACE OUT","2","10","33","PA-115","","0","2022-06-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("72","RR-CW027","01-01-044","2022-05-09","3","0","REPLACE RECEIVE","2","10","41","PA-155","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("73","RR-CW027","01-01-014","2022-05-09","4","0","REPLACE RECEIVE","2","10","41","PA-155","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("74","RR-CW027","01-03-001","2022-05-09","5","0","REPLACE RECEIVE","2","10","41","PA-155","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("75","RO-CW026","01-03-017","2022-05-09","0","2","REPLACE OUT","2","10","32","PA-010","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("76","RO-CW027","01-01-025","2022-05-09","0","5","REPLACE OUT","2","10","32","PA-449","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("77","RO-CW028","01-01-038","2022-05-09","0","4","REPLACE OUT","2","10","34","PA-379","","0","2022-05-09 12:00:00","");
INSERT INTO inv_damagebalance VALUES("78","RO-CW029","01-01-038","2022-05-10","0","2","REPLACE OUT","2","10","31","PA-059","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("79","RO-CW030","01-01-038","2022-05-10","0","4","REPLACE OUT","2","10","41","PA-012","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("80","RO-CW031","01-01-008","2022-05-10","0","8","REPLACE OUT","2","10","41","PA-167","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("81","RO-CW031","01-01-125","2022-05-10","0","1","REPLACE OUT","2","10","41","PA-167","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("82","RO-CW032","01-01-047","2022-05-10","0","4","REPLACE OUT","2","10","33","PA-132","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("83","RO-CW033","01-01-008","2022-05-10","0","5","REPLACE OUT","2","10","38","PA-171","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("84","RR-CW028","01-01-157","2022-05-10","1","0","REPLACE RECEIVE","2","10","35","PA-244","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("86","RR-CW029","01-02-038","2022-05-10","2","0","REPLACE RECEIVE","2","10","37","PA-133","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("87","RR-CW030","01-01-094","2022-05-10","5","0","REPLACE RECEIVE","2","10","35","PA-178","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("88","RR-CW031","03-03-017","2022-05-10","1","0","REPLACE RECEIVE","2","10","31","PA-060","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("89","RR-CW032","05-01-002","2022-05-10","5","0","REPLACE RECEIVE","2","10","31","PA-049","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("90","RR-CW032","05-01-001","2022-05-10","2","0","REPLACE RECEIVE","2","10","31","PA-049","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("91","RR-CW033","01-01-044","2022-05-10","1","0","REPLACE RECEIVE","2","10","31","PA-059","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("92","RR-CW033","01-07-001","2022-05-10","2","0","REPLACE RECEIVE","2","10","31","PA-059","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("93","RR-CW034","01-03-003","2022-05-10","1","0","REPLACE RECEIVE","2","10","41","PA-012","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("94","RR-CW035","01-01-041","2022-05-10","1","0","REPLACE RECEIVE","2","10","41","PA-166","","0","2022-05-10 12:00:00","");
INSERT INTO inv_damagebalance VALUES("95","RR-CW035","01-01-125","2022-05-10","1","0","REPLACE RECEIVE","2","10","41","PA-166","","0","2022-05-10 12:00:00","");



CREATE TABLE `inv_damagedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `damage_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `damage_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

INSERT INTO inv_damagedetail VALUES("5","RR-CW001","2022-05-12","01-01-125","499","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("6","RR-CW002","2022-05-26","01-01-038","412","3","30","0","","2","10");
INSERT INTO inv_damagedetail VALUES("7","RR-CW003","2022-05-26","01-01-038","412","3","30","0","","2","10");
INSERT INTO inv_damagedetail VALUES("8","RR-CW004","2022-05-26","01-01-060","434","3","10","0","","2","10");
INSERT INTO inv_damagedetail VALUES("9","RR-CW005","2022-05-10","01-07-001","648","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("10","RR-CW006","2022-05-14","01-07-001","648","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("11","RR-CW007","2022-05-01","01-01-125","499","3","4","0","","2","10");
INSERT INTO inv_damagedetail VALUES("12","RR-CW007","2022-05-01","01-01-038","412","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("13","RR-CW008","2022-05-01","01-01-086","460","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("14","RR-CW008","2022-05-01","01-01-125","499","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("15","RR-CW009","2022-05-01","01-03-002","373","19","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("16","RR-CW010","2022-05-01","01-03-001","369","19","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("17","RR-CW011","2022-05-01","01-01-008","382","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("18","RR-CW012","2022-05-01","01-01-008","382","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("19","RR-CW013","2022-05-08","01-03-004","581","19","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("20","RR-CW014","2022-05-08","01-02-038","537","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("21","RR-CW014","2022-05-08","01-02-014","513","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("22","RR-CW015","2022-05-08","01-03-001","369","19","10","0","","2","10");
INSERT INTO inv_damagedetail VALUES("23","RR-CW016","2022-05-08","01-01-003","370","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("24","RR-CW016","2022-05-08","01-01-125","499","3","4","0","","2","10");
INSERT INTO inv_damagedetail VALUES("25","RR-CW016","2022-05-08","01-01-038","412","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("26","RR-CW016","2022-05-08","01-01-010","384","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("27","RR-CW017","2022-05-08","01-01-008","382","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("28","RR-CW017","2022-05-08","01-01-125","499","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("29","RR-CW017","2022-05-08","01-01-019","393","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("30","RR-CW017","2022-05-08","01-02-038","537","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("31","RR-CW018","2022-05-08","01-01-125","499","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("32","RR-CW018","2022-05-08","01-01-010","384","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("33","RR-CW019","2022-05-08","01-01-045","419","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("34","RR-CW020","2022-05-08","01-01-044","418","3","7","0","","2","10");
INSERT INTO inv_damagedetail VALUES("35","RR-CW021","2022-05-08","01-03-003","374","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("36","RR-CW022","2022-05-08","01-01-159","573","1","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("37","RR-CW023","2022-05-09","01-01-092","466","3","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("38","RR-CW024","2022-05-09","01-01-125","499","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("39","RR-CW025","2022-05-09","01-01-044","418","3","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("40","RR-CW026","2022-05-09","01-01-025","399","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("41","RR-CW026","2022-05-09","01-03-006","583","3","8","0","","2","10");
INSERT INTO inv_damagedetail VALUES("42","RR-CW027","2022-05-09","01-01-044","418","3","3","0","","2","10");
INSERT INTO inv_damagedetail VALUES("43","RR-CW027","2022-05-09","01-01-014","388","3","4","0","","2","10");
INSERT INTO inv_damagedetail VALUES("44","RR-CW027","2022-05-09","01-03-001","369","19","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("45","RR-CW028","2022-05-10","01-01-157","571","1","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("47","RR-CW029","2022-05-10","01-02-038","537","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("48","RR-CW030","2022-05-10","01-01-094","468","3","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("49","RR-CW031","2022-05-10","03-03-017","743","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("50","RR-CW032","2022-05-10","05-01-002","591","3","5","0","","2","10");
INSERT INTO inv_damagedetail VALUES("51","RR-CW032","2022-05-10","05-01-001","590","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("52","RR-CW033","2022-05-10","01-01-044","418","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("53","RR-CW033","2022-05-10","01-07-001","648","3","2","0","","2","10");
INSERT INTO inv_damagedetail VALUES("54","RR-CW034","2022-05-10","01-03-003","374","19","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("55","RR-CW035","2022-05-10","01-01-041","415","3","1","0","","2","10");
INSERT INTO inv_damagedetail VALUES("56","RR-CW035","2022-05-10","01-01-125","499","3","1","0","","2","10");



CREATE TABLE `inv_damageout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `damageout_id` varchar(25) NOT NULL,
  `damageout_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

INSERT INTO inv_damageout VALUES("1","RO-CW001","2022-05-15","AD","2","10","33","PA-115","");
INSERT INTO inv_damageout VALUES("2","RO-CW001","2022-05-08","","2","10","33","PA-115","");
INSERT INTO inv_damageout VALUES("3","RO-CW003","2022-05-15","","2","10","41","PA-155","");
INSERT INTO inv_damageout VALUES("4","RO-CW003","2022-05-01","","2","10","41","PA-155","");
INSERT INTO inv_damageout VALUES("5","RO-CW003","2022-05-01","","2","10","41","PA-155","");
INSERT INTO inv_damageout VALUES("6","RO-CW006","2022-05-01","","2","10","41","PA-168","");
INSERT INTO inv_damageout VALUES("7","RO-CW007","2022-05-15","","2","10","38","PA-171","");
INSERT INTO inv_damageout VALUES("8","RO-CW007","2022-05-10","","2","10","38","PA-171","");
INSERT INTO inv_damageout VALUES("9","RO-CW009","2022-05-15","Battery Baboth Cash Paid","2","10","38","PA-175","");
INSERT INTO inv_damageout VALUES("10","RO-CW010","2022-05-12","Battery Cash Paid","2","10","38","PA-175","");
INSERT INTO inv_damageout VALUES("11","RO-CW011","2022-05-11","","2","10","41","PA-182","");
INSERT INTO inv_damageout VALUES("12","RO-CW012","2022-05-11","","2","10","41","PA-183","");
INSERT INTO inv_damageout VALUES("13","RO-CW013","2022-05-26","","2","10","41","PA-189","");
INSERT INTO inv_damageout VALUES("14","RO-CW014","2022-05-10","Cash Paid","2","10","31","PA-059","");
INSERT INTO inv_damageout VALUES("15","RO-CW015","2022-05-14","Cash Paid","2","10","31","PA-059","");
INSERT INTO inv_damageout VALUES("16","RO-CW016","2022-05-01","","2","10","41","PA-168","");
INSERT INTO inv_damageout VALUES("17","RO-CW017","2022-05-01","","2","10","41","PA-155","");
INSERT INTO inv_damageout VALUES("18","RO-CW018","2022-05-07","","2","10","32","PA-008","");
INSERT INTO inv_damageout VALUES("19","RO-CW019","2022-05-08","","2","10","40","PA-334","");
INSERT INTO inv_damageout VALUES("20","RO-CW020","2022-05-08","","2","10","33","PA-129","");
INSERT INTO inv_damageout VALUES("21","RO-CW021","2022-05-08","","2","10","34","PA-387","");
INSERT INTO inv_damageout VALUES("22","RO-CW022","2022-05-08","","2","10","36","PA-300","");
INSERT INTO inv_damageout VALUES("23","RO-CW023","2022-05-08","","2","10","41","PA-168","");
INSERT INTO inv_damageout VALUES("24","RO-CW024","2022-05-08","","2","10","36","PA-296","");
INSERT INTO inv_damageout VALUES("25","RO-CW025","2022-06-09","","2","10","33","PA-115","");
INSERT INTO inv_damageout VALUES("26","RO-CW026","2022-05-09","","2","10","32","PA-010","");
INSERT INTO inv_damageout VALUES("27","RO-CW027","2022-05-09","","2","10","32","PA-449","");
INSERT INTO inv_damageout VALUES("28","RO-CW028","2022-05-09","","2","10","34","PA-379","");
INSERT INTO inv_damageout VALUES("29","RO-CW029","2022-05-10","","2","10","31","PA-059","");
INSERT INTO inv_damageout VALUES("30","RO-CW030","2022-05-10","","2","10","41","PA-012","");
INSERT INTO inv_damageout VALUES("31","RO-CW031","2022-05-10","","2","10","41","PA-167","");
INSERT INTO inv_damageout VALUES("32","RO-CW032","2022-05-10","","2","10","33","PA-132","");
INSERT INTO inv_damageout VALUES("33","RO-CW033","2022-05-10","","2","10","38","PA-171","");



CREATE TABLE `inv_damageoutdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `damageout_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `damageout_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

INSERT INTO inv_damageoutdetail VALUES("1","RO-CW001","2022-05-15","01-01-115","489","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("2","RO-CW001","2022-05-08","01-01-115","489","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("3","RO-CW003","2022-05-15","01-03-002","373","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("4","RO-CW003","2022-05-01","01-03-002","373","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("5","RO-CW003","2022-05-01","01-03-002","373","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("6","RO-CW003","2022-05-01","01-03-002","373","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("7","RO-CW006","2022-05-01","01-03-002","373","3","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("8","RO-CW007","2022-05-15","01-01-008","382","3","5","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("9","RO-CW007","2022-05-10","01-01-008","382","3","5","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("10","RO-CW009","2022-05-15","01-01-125","499","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("11","RO-CW010","2022-05-12","01-01-125","499","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("12","RO-CW011","2022-05-11","01-01-115","489","3","5","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("13","RO-CW012","2022-05-11","01-01-003","370","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("14","RO-CW013","2022-05-26","01-01-058","432","3","8","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("15","RO-CW014","2022-05-10","01-07-001","648","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("17","RO-CW015","2022-05-14","01-07-001","648","3","3","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("18","RO-CW016","2022-05-01","01-03-002","373","19","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("19","RO-CW017","2022-05-01","01-03-002","373","19","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("21","RO-CW018","2022-05-07","01-03-004","581","19","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("22","RO-CW019","2022-05-08","01-01-008","382","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("23","RO-CW019","2022-05-08","01-01-038","412","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("24","RO-CW020","2022-05-08","01-01-038","412","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("25","RO-CW021","2022-05-08","01-03-002","373","19","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("26","RO-CW022","2022-05-08","01-01-041","415","3","7","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("27","RO-CW023","2022-05-08","01-03-002","373","19","5","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("28","RO-CW024","2022-05-08","01-01-038","412","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("29","RO-CW024","2022-05-08","01-01-151","565","1","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("30","RO-CW024","2022-05-08","01-01-171","740","3","8","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("31","RO-CW025","2022-06-09","01-01-038","412","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("32","RO-CW026","2022-05-09","01-03-017","728","19","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("33","RO-CW027","2022-05-09","01-01-025","399","3","5","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("34","RO-CW028","2022-05-09","01-01-038","412","3","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("35","RO-CW029","2022-05-10","01-01-038","412","3","2","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("36","RO-CW030","2022-05-10","01-01-038","412","3","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("37","RO-CW031","2022-05-10","01-01-008","382","3","8","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("38","RO-CW031","2022-05-10","01-01-125","499","3","1","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("39","RO-CW032","2022-05-10","01-01-047","421","3","4","0","","2","10");
INSERT INTO inv_damageoutdetail VALUES("40","RO-CW033","2022-05-10","01-01-008","382","3","5","0","","2","10");



CREATE TABLE `inv_damaragedetailsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ds_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cur_price` float NOT NULL,
  `cur_price_amount` int(11) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO inv_damaragedetailsale VALUES("1","DS-CW001","2022-05-08","0","01-02-022","521","3","8900","26700","3","5500","16500","","2","10","41","PA-166","0");
INSERT INTO inv_damaragedetailsale VALUES("2","DS-CW002","2022-05-08","0","01-02-038","537","3","8900","8900","1","5500","5500","","2","10","41","PA-167","0");
INSERT INTO inv_damaragedetailsale VALUES("3","DS-CW003","2022-05-10","0","01-03-002","373","19","16100","4025","0.25","7800","1950","","2","10","41","PA-168","0");
INSERT INTO inv_damaragedetailsale VALUES("4","DS-CW004","2022-05-10","0","01-02-022","521","3","8900","26700","3","4650","13950","","2","10","41","PA-182","0");
INSERT INTO inv_damaragedetailsale VALUES("6","DS-CW006","2022-05-10","0","01-01-005","372","3","8800","8800","1","4650","4650","","2","10","41","PA-155","0");
INSERT INTO inv_damaragedetailsale VALUES("7","DS-CW007","2022-05-10","0","01-01-163","612","1","8800","8800","1","4650","4650","","2","10","41","PA-187","0");
INSERT INTO inv_damaragedetailsale VALUES("9","DS-CW009","2022-05-12","0","01-01-005","372","3","8800","8800","1","4700","4700","","2","10","41","PA-182","0");
INSERT INTO inv_damaragedetailsale VALUES("11","DS-CW008","2022-05-10","0","01-02-022","521","3","8900","8900","1","5500","5500","","","10","41","PA-166","0");
INSERT INTO inv_damaragedetailsale VALUES("12","DS-CW005","2022-05-09","0","01-02-038","537","3","8900","8900","1","4650","4650","","","10","41","PA-167","0");
INSERT INTO inv_damaragedetailsale VALUES("13","DS-CW010","2022-05-10","0","01-01-005","372","3","8800","8800","1","5500","5500","","","10","38","PA-188","0");
INSERT INTO inv_damaragedetailsale VALUES("15","DS-CW012","2022-05-08","0","01-01-025","399","3","8800","8800","1","5500","5500","","2","10","31","PA-080","0");
INSERT INTO inv_damaragedetailsale VALUES("16","DS-CW011","2022-05-08","0","01-01-157","571","1","8800","8800","1","5500","5500","","","10","39","PA-033","0");



CREATE TABLE `inv_damaragesale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_id` varchar(25) NOT NULL,
  `ds_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `party_id` varchar(21) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO inv_damaragesale VALUES("1","DS-CW001","2022-05-08","0","PA-166","41","","26700","16500","16500","0","10200","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("2","DS-CW002","2022-05-08","0","PA-167","41","","8900","5500","5500","0","3400","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("3","DS-CW003","2022-05-10","0","PA-168","41","","4025","1950","1950","0","2075","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("4","DS-CW004","2022-05-10","0","PA-182","41","","26700","13950","13950","0","12750","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("5","DS-CW005","2022-05-09","0","PA-167","41","","8900","4650","4650","0","4250","","","","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("6","DS-CW006","2022-05-10","0","PA-155","41","","8800","4650","4650","0","4150","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("7","DS-CW007","2022-05-10","0","PA-187","41","","8800","4650","4650","0","4150","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("8","DS-CW008","2022-05-10","0","PA-166","41","","8900","5500","5500","0","3400","","","","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("9","DS-CW009","2022-05-12","0","PA-182","41","","8800","4700","4700","0","4100","","","2","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("10","DS-CW010","2022-05-10","0","PA-188","38","","8800","5500","5500","0","3300","","","","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("11","DS-CW011","2022-05-08","0","PA-033","39","","8800","0","5500","-5500","8800","","","","10","","0","","","","","");
INSERT INTO inv_damaragesale VALUES("12","DS-CW012","2022-05-08","0","PA-080","31","","8800","5500","5500","0","3300","","","2","10","","0","","","","","");



CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `party_id` varchar(21) NOT NULL,
  `partner_id` varchar(10) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `discount_amount` float NOT NULL,
  `netsale_amount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

INSERT INTO inv_issue VALUES("1","IS-CW001","2022-05-01","1971","PA-045","39","UP","26800","29600","0","29600","0","29600","2800","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("2","IS-CW002","2022-05-08","5404","PA-165","33","SA","197800","206900","0","206900","0","206900","9100","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("3","IS-CW003","2022-05-08","5405","PA-130","33","UP","246500","258100","0","258100","0","258100","11600","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("4","IS-CW004","2022-05-08","5406","PA-115","33","SA","84000","87000","0","87000","0","87000","3000","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("5","IS-CW005","2022-05-01","5116","PA-166","41","UP","255000","265500","0","265500","0","265500","10500","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("6","IS-CW006","2022-05-01","5117","PA-167","41","UP","394350","414740","0","414740","0","414740","20390","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("7","IS-CW007","2022-05-01","5118","PA-155","41","UP","86000","93000","0","93000","0","93000","7000","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("8","IS-CW008","2022-05-01","5119","PA-168","41","UP","16100","16600","0","16600","0","16600","500","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("9","IS-CW009","2022-05-08","5121","PA-170","41","UP","179800","191200","0","191200","0","191200","11400","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("10","IS-CW010","2022-05-08","5122","PA-166","41","UP","229500","240000","0","240000","0","240000","10500","1","Discount Gift Less","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("11","IS-CW011","2022-05-08","5123","PA-168","41","UP","127625","132150","0","132150","0","132150","4525","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("12","IS-CW012","2022-05-09","5124","PA-155","41","SA","378300","389500","0","389500","0","389500","11200","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("13","IS-CW013","2022-05-09","5125","PA-167","41","UP","80400","86400","0","86400","0","86400","6000","1","","1","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("14","IS-CW014","2022-05-09","5126","PA-012","41","SA","204500","216500","0","216500","0","216500","12000","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("15","IS-CW015","2022-05-10","2932","PA-171","38","UP","41250","43500","0","43500","0","43500","2250","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("16","IS-CW016","2022-05-10","2934","PA-172","38","UP","28200","29400","100","29300","0","29300","1100","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("17","IS-CW017","2022-05-12","2936","PA-175","38","SA","168000","174000","0","174000","0","174000","6000","0","Battary ","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("18","IS-CW018","2022-05-09","2329","PA-176","35","SA","7300","8000","0","8000","0","8000","700","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("19","IS-CW019","2022-05-10","2330","PA-177","35","SA","85500","95000","0","95000","0","95000","9500","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("20","IS-CW020","2022-05-10","2331","PA-178","35","SA","79200","91800","0","91800","0","91800","12600","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("21","IS-CW021","2022-05-11","2332","PA-179","35","SA","88500","95000","0","95000","0","95000","6500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("22","IS-CW022","2022-05-11","2333","PA-180","35","SA","114750","119000","0","119000","0","119000","4250","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("23","IS-CW023","2022-05-11","2334","PA-181","35","SA","70500","72500","0","72500","0","72500","2000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("24","IS-CW024","2022-05-12","2335","PA-180","35","UP","249650","257400","400","257000","0","257000","7350","1","","1","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("25","IS-CW025","2022-05-11","5127","PA-182","41","SA","430000","440000","5000","435000","0","435000","5000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("26","IS-CW026","2022-05-11","5128","PA-183","41","SA","96300","98800","0","98800","0","98800","2500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("27","IS-CW027","2022-05-09","5091","PA-010","32","UP","30200","31600","400","31200","0","31200","1000","1","","1","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("28","IS-CW028","2022-05-11","5089","PA-107","32","SA","25800","27300","0","27300","0","27300","1500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("29","IS-CW029","2022-05-11","5087","PA-010","32","SA","16100","16600","0","16600","0","16600","500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("30","IS-CW030","2022-05-12","5081","PA-105","32","SA","28200","29200","0","29200","0","29200","1000","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("31","IS-CW031","2022-05-08","2477","PA-184","42","SA","123200","128800","0","128800","0","128800","5600","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("32","IS-CW032","2022-05-07","2478","PA-185","42","SA","27600","29600","0","29600","0","29600","2000","0","","2","10","","0","","","","","2022-05-07");
INSERT INTO inv_issue VALUES("33","IS-CW033","2022-05-09","2479","PA-185","42","SA","45000","47000","200","46800","0","47000","1800","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("34","IS-CW034","2022-05-09","2480","PA-185","42","SA","27600","29600","0","29600","0","29600","2000","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("35","IS-CW035","2022-05-11","2481","PA-186","42","SA","217175","235000","0","235000","0","235000","17825","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("36","IS-CW036","2022-05-12","2482","PA-185","42","UP","44500","47000","0","47000","0","47000","2500","1","","1","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("37","IS-CW037","2022-05-08","5120","PA-169","41","SA","447500","465000","0","465000","0","465000","17500","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("38","IS-CW038","2022-05-12","2336","PA-181","35","SA","120700","126000","1000","125000","0","125000","4300","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("39","IS-CW039","2022-05-11","2935","PA-173","38","SA","545250","573250","0","573250","0","573250","28000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("40","IS-CW040","2022-05-06","5093","PA-008","32","SA","28200","29800","0","29800","0","29800","1600","0","","2","10","","0","","","","","2022-05-06");
INSERT INTO inv_issue VALUES("41","IS-CW041","2022-04-28","5110","PA-183","41","SA","50600","52500","0","52500","0","52500","1900","0","","2","10","","0","","","","","2022-04-28");
INSERT INTO inv_issue VALUES("42","IS-CW042","2022-04-29","5112","PA-182","41","SA","430000","440000","0","440000","0","440000","10000","0","","2","10","","0","","","","","2022-04-29");
INSERT INTO inv_issue VALUES("43","IS-CW043","2022-04-28","5111","PA-189","41","SA","77400","83700","1000","82700","0","82700","5300","0","","2","10","","0","","","","","2022-04-28");
INSERT INTO inv_issue VALUES("44","IS-CW044","2022-04-28","5109","PA-012","41","SA","283200","297600","0","297600","0","297600","14400","0","","2","10","","0","","","","","2022-04-28");
INSERT INTO inv_issue VALUES("45","IS-CW045","2022-04-30","5113","PA-166","41","SA","698000","734000","0","734000","0","734000","36000","0","","2","10","","0","","","","","2022-04-30");
INSERT INTO inv_issue VALUES("46","IS-CW046","2022-04-30","5114","PA-168","41","SA","93400","96800","0","96800","0","96800","3400","0","","2","10","","0","","","","","2022-04-30");
INSERT INTO inv_issue VALUES("47","IS-CW047","2022-04-30","5115","PA-190","41","SA","97800","102500","0","102500","0","102500","4700","0","","2","10","","0","","","","","2022-04-30");
INSERT INTO inv_issue VALUES("48","IS-CW048","2022-04-28","5401","PA-014","33","SA","78000","80000","0","80000","0","80000","2000","0","","2","10","","0","","","","","2022-04-28");
INSERT INTO inv_issue VALUES("49","IS-CW049","2022-04-30","5402","PA-118","33","SA","172000","180000","0","180000","0","180000","8000","0","","2","10","","0","","","","","2022-04-30");
INSERT INTO inv_issue VALUES("50","IS-CW050","2022-05-15","5407","PA-191","33","SA","225950","236750","0","236750","0","236750","10800","0","","2","10","","0","","","","","2022-05-15");
INSERT INTO inv_issue VALUES("51","IS-CW051","2022-05-15","5408","PA-115","33","SA","118850","126800","0","126800","0","126800","7950","0","","2","10","","0","","","","","2022-05-15");
INSERT INTO inv_issue VALUES("52","IS-CW052","2022-05-11","5409","PA-118","33","SA","425000","450000","0","450000","0","450000","25000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("53","IS-CW053","2022-05-18","5410","PA-122","33","SA","68000","72800","0","72800","0","72800","4800","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("54","IS-CW054","2022-05-18","5411","PA-127","33","SA","173000","185000","0","185000","0","185000","12000","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("55","IS-CW055","2022-05-18","5412","PA-125","33","UP","110900","119400","0","119400","0","119400","8500","1","","1","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("56","IS-CW056","2022-05-18","5412","PA-125","33","SA","110900","119400","0","119400","0","119400","8500","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("57","IS-CW057","2022-05-21","5418","PA-129","33","SA","169000","179000","0","179000","0","179000","10000","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("58","IS-CW058","2022-05-22","5420","PA-118","33","SA","170000","180000","0","180000","0","180000","10000","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("59","IS-CW059","2022-05-19","5413","PA-014","33","SA","400900","429400","0","429400","0","429400","28500","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("60","IS-CW060","2022-05-19","5414","PA-013","33","SA","35150","39000","0","39000","0","39000","3850","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("61","IS-CW061","2022-05-21","5415","PA-014","33","SA","206600","221100","0","221100","0","221100","14500","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("62","IS-CW062","2022-05-22","5418","PA-014","33","SA","154400","165600","0","165600","0","165600","11200","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("63","IS-CW063","2022-05-22","5419","PA-111","33","SA","52800","56800","0","56800","0","56800","4000","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("64","IS-CW064","2022-05-23","5421","PA-127","33","SA","172000","184000","0","184000","0","184000","12000","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("65","IS-CW065","2022-05-23","5422","PA-014","33","SA","396400","417200","0","417200","0","417200","20800","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("66","IS-CW066","2022-05-24","5423","PA-125","33","SA","96800","103200","0","103200","0","103200","6400","0","","2","10","","0","","","","","2022-05-24");
INSERT INTO inv_issue VALUES("67","IS-CW067","2022-05-24","5424","PA-014","33","SA","79200","84000","0","84000","0","84000","4800","0","","2","10","","0","","","","","2022-05-24");
INSERT INTO inv_issue VALUES("68","IS-CW068","2022-05-24","5425","PA-013","33","SA","53200","57500","500","57000","0","57000","3800","0","","2","10","","0","","","","","2022-05-24");
INSERT INTO inv_issue VALUES("69","IS-CW069","2022-05-25","5427","PA-191","33","SA","273400","292200","200","292000","0","292000","18600","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("70","IS-CW070","2022-05-26","5428","PA-115","33","SA","182500","191900","0","191900","0","191900","9400","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("71","IS-CW071","2022-05-24","5426","PA-165","33","SA","232650","244750","0","244750","0","244750","12100","0","","2","10","","0","","","","","2022-05-24");
INSERT INTO inv_issue VALUES("72","IS-CW072","2022-05-22","5417","PA-115","33","SA","149100","159900","0","159900","0","159900","10800","0","H power 28.5kg G replace babod 500tk increase kora hoice","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("73","IS-CW073","2022-05-17","2937","PA-195","38","SA","43000","46000","0","46000","0","46000","3000","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("74","IS-CW074","2022-05-17","2938","PA-239","38","SA","90000","91800","0","91800","0","91800","1800","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("75","IS-CW075","2022-05-18","2939","PA-208","38","SA","117600","126000","0","126000","0","126000","8400","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("76","IS-CW076","2022-05-18","2940","PA-224","38","SA","66400","69600","300","69300","0","69600","2900","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("77","IS-CW077","2022-05-20","2941","PA-173","38","SA","166000","173000","1000","172000","0","172000","6000","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("78","IS-CW078","2022-05-20","2942","PA-224","38","SA","2850","3250","50","3200","0","3200","350","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("79","IS-CW079","2022-05-22","2943","PA-175","38","SA","132800","139200","0","139200","0","139200","6400","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("80","IS-CW080","2022-05-22","2944","PA-208","38","SA","7200","8200","0","8200","0","8200","1000","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("81","IS-CW081","2022-05-23","2945","PA-240","38","SA","86000","90000","0","90000","0","90000","4000","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("82","IS-CW082","2022-05-25","2946","PA-173","38","SA","336000","355000","0","355000","0","355000","19000","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("83","IS-CW083","2022-05-25","2947","PA-217","38","SA","44250","47000","200","46800","0","46800","2550","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("84","IS-CW084","2022-05-13","2337","PA-163","35","SA","123250","136300","300","136000","0","133300","12750","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("85","IS-CW085","2022-05-14","2338","PA-179","35","SA","28200","29000","0","29000","0","29000","800","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("86","IS-CW086","2022-05-16","2339","PA-241","35","SA","9920","10700","0","10700","0","10700","780","0","","2","10","","0","","","","","2022-05-16");
INSERT INTO inv_issue VALUES("87","IS-CW087","2022-05-17","2340","PA-242","35","SA","206500","216200","2200","214000","0","214000","7500","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("88","IS-CW088","2022-05-17","2341","PA-180","35","SA","135700","138700","100","138600","0","138600","2900","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("89","IS-CW089","2022-05-18","2343","PA-243","35","SA","447900","459700","0","459700","0","459700","11800","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("90","IS-CW090","2022-05-18","2345","PA-244","35","SA","53425","57600","0","57600","0","57600","4175","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("91","IS-CW091","2022-05-19","2346","PA-245","35","SA","426750","474500","0","474500","0","474500","47750","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("92","IS-CW092","2022-05-19","2347","PA-020","35","SA","28200","29000","0","29000","0","29000","800","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("93","IS-CW093","2022-05-20","2348","PA-180","35","SA","158900","162400","0","162400","0","162400","3500","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("94","IS-CW094","2022-05-23","2350","PA-163","35","SA","288000","298500","0","298500","0","298500","10500","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("95","IS-CW095","2022-05-21","2349","PA-246","35","SA","7460","8120","0","8120","0","8120","660","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("96","IS-CW096","2022-05-23","4901","PA-180","35","SA","77400","80400","0","80400","0","80400","3000","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("97","IS-CW097","2022-05-23","4802","PA-181","35","SA","88500","93000","0","93000","0","93000","4500","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("98","IS-CW098","2022-05-23","4803","PA-177","35","SA","85500","89000","0","89000","0","89000","3500","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("99","IS-CW099","2022-05-23","4804","PA-244","35","SA","133500","142700","0","142700","0","142700","9200","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("100","IS-CW100","2022-05-23","4805","PA-246","35","SA","26400","28800","800","28000","0","28000","1600","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("101","IS-CW101","2022-05-24","4806","PA-243","35","SA","454150","465850","0","465850","0","465850","11700","0","","2","10","","0","","","","","2022-05-24");
INSERT INTO inv_issue VALUES("102","IS-CW102","2022-05-25","4807","PA-247","35","SA","42750","43500","0","43500","0","43500","750","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("103","IS-CW103","2022-05-25","4808","PA-244","35","SA","42500","49000","0","49000","0","49000","6500","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("104","IS-CW104","2022-05-27","4810","PA-180","35","SA","229100","233950","0","233950","0","233950","4850","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("105","IS-CW105","2022-05-27","4811","PA-248","35","SA","241100","247940","1060","246880","0","247940","5780","0","Trust Glass 1 pc Broken","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("106","IS-CW106","2022-05-27","4813","PA-178","35","SA","49100","56700","0","56700","0","56700","7600","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("107","IS-CW107","2022-05-27","4814","PA-180","35","SA","32000","32800","0","32800","0","32800","800","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("108","IS-CW108","2022-05-27","4815","PA-249","35","SA","26400","28000","0","28000","0","28000","1600","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("109","IS-CW109","2022-05-28","4816","PA-181","35","SA","123900","130200","0","130200","0","130200","6300","0","","2","10","","0","","","","","2022-05-28");
INSERT INTO inv_issue VALUES("110","IS-CW110","2022-05-28","2948","PA-171","38","SA","42500","46500","0","46500","0","46500","4000","0","","2","10","","0","","","","","2022-05-28");
INSERT INTO inv_issue VALUES("111","IS-CW111","2022-05-19","5601","PA-250","31","SA","127500","141000","0","141000","0","141000","13500","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("112","IS-CW112","2022-05-20","5602","PA-004","31","SA","232200","252000","0","252000","0","252000","19800","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("113","IS-CW113","2022-05-20","5603","PA-078","31","SA","86000","94000","0","94000","0","94000","8000","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("114","IS-CW114","2022-05-20","5605","PA-335","31","SA","17960","18700","0","18700","0","18700","740","0","","2","10","","0","","","","","2022-05-20");
INSERT INTO inv_issue VALUES("115","IS-CW115","2022-05-22","5606","PA-059","31","SA","151900","160800","0","160800","0","160800","8900","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("116","IS-CW116","2022-05-23","5607","PA-088","31","SA","42500","49000","0","49000","0","49000","6500","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("117","IS-CW117","2022-05-23","5608","PA-097","31","SA","62350","67500","700","66800","0","66800","4450","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("118","IS-CW118","2022-05-23","5609","PA-085","31","SA","69200","78400","0","78400","0","78400","9200","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("119","IS-CW119","2022-05-23","5611","PA-335","31","SA","17030","17700","0","17700","0","17700","670","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("120","IS-CW120","2022-05-23","5612","PA-064","31","SA","44600","48080","0","48080","0","48080","3480","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("121","IS-CW121","2022-05-23","5613","PA-250","31","SA","48000","49500","0","49500","0","49500","1500","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("122","IS-CW122","2022-05-25","5614","PA-250","31","SA","170000","188000","0","188000","0","188000","18000","0","","2","10","","0","","","","","2022-05-25");
INSERT INTO inv_issue VALUES("123","IS-CW123","2022-05-26","5616","PA-002","31","SA","49600","53800","0","53800","0","53800","4200","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("124","IS-CW124","2022-05-26","5617","PA-067","31","UP","32200","34000","500","33500","0","33500","1300","1","","1","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("125","IS-CW125","2022-05-26","5618","PA-088","31","SA","59300","68600","0","68600","0","68600","9300","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("126","IS-CW126","2022-05-26","5619","PA-053","31","SA","40500","44000","0","44000","0","44000","3500","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("127","IS-CW127","2022-05-27","5623","PA-336","31","SA","16100","17100","0","17100","0","17100","1000","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("128","IS-CW128","2022-05-27","5624","PA-250","31","SA","64000","66000","0","66000","0","66000","2000","0","","2","10","","0","","","","","2022-05-27");
INSERT INTO inv_issue VALUES("129","IS-CW129","2022-05-28","5626","PA-250","31","SA","48000","49500","0","49500","0","49500","1500","0","","2","10","","0","","","","","2022-05-28");
INSERT INTO inv_issue VALUES("130","IS-CW130","2022-05-29","5429","PA-089","31","UP","64400","66000","0","66000","0","66000","1600","1","","1","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("131","IS-CW131","2022-05-29","5630","PA-097","31","SA","19100","20000","0","20000","0","20000","900","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("132","IS-CW132","2022-05-29","5604","PA-064","31","SA","23300","24000","0","24000","0","24000","700","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("133","IS-CW133","2022-05-23","5610","PA-077","31","SA","14900","20000","0","20000","0","20000","5100","0","","2","10","","0","","","","","2022-05-23");
INSERT INTO inv_issue VALUES("134","IS-CW134","2022-05-26","5620","PA-055","31","SA","111400","120950","0","120950","0","120950","9550","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("135","IS-CW135","2022-05-26","5622","PA-080","31","SA","93050","103450","0","103450","0","103450","10400","0","","2","10","","0","","","","","2022-05-26");
INSERT INTO inv_issue VALUES("136","IS-CW136","2022-05-29","4817","PA-179","35","UP","132750","142500","0","142500","0","142500","9750","1","","1","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("137","IS-CW137","2022-05-29","4818","PA-242","35","SA","136800","142400","0","142400","0","142400","5600","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("138","IS-CW138","2022-05-29","4819","PA-180","35","SA","108925","112800","0","112800","0","112800","3875","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("139","IS-CW139","2022-05-07","4522","PA-337","31","SA","86000","96000","0","96000","0","96000","10000","0","","2","10","","0","","","","","2022-05-07");
INSERT INTO inv_issue VALUES("140","IS-CW140","2022-05-08","4524","PA-085","31","SA","34600","39200","0","39200","0","39200","4600","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("141","IS-CW141","2022-05-08","4525","PA-089","31","SA","78500","81500","1000","80500","0","80500","2000","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("142","IS-CW142","2022-05-08","4526","PA-250","31","SA","198700","209500","2000","207500","0","207500","8800","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("143","IS-CW143","2022-05-09","4528","PA-062","31","SA","8250","9300","0","9300","0","9300","1050","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("144","IS-CW144","2022-05-10","4530","PA-059","31","SA","310800","325600","0","325600","0","325600","14800","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("145","IS-CW145","2022-05-11","4532","PA-071","31","SA","172000","184000","0","184000","0","184000","12000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("146","IS-CW146","2022-05-11","4533","PA-064","31","SA","26050","27750","0","27750","0","27750","1700","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("147","IS-CW147","2022-05-11","4535","PA-250","31","SA","177300","190500","0","190500","0","190500","13200","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("148","IS-CW148","2022-05-12","4536","PA-066","31","SA","252500","264750","1649","263101","0","263110","10601","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("149","IS-CW149","2022-05-12","4538","PA-067","31","SA","44250","50000","0","50000","0","50000","5750","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("150","IS-CW150","2022-05-14","4539","PA-070","31","SA","401250","450000","0","450000","0","450000","48750","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("151","IS-CW151","2022-05-14","4540","PA-057","31","SA","19000","21500","0","21500","0","21500","2500","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("152","IS-CW152","2022-05-14","4541","PA-053","31","SA","49650","54550","0","54550","0","54550","4900","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("153","IS-CW153","2022-05-14","4542","PA-250","31","SA","44250","47500","0","47500","0","47500","3250","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("154","IS-CW154","2022-05-14","4543","PA-059","31","UP","124500","132000","0","132000","0","132000","7500","1","","1","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("155","IS-CW155","2022-05-17","4544","PA-071","31","SA","128250","138000","0","138000","0","138000","9750","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("156","IS-CW156","2022-05-17","4545","PA-086","31","SA","134500","150000","0","150000","0","150000","15500","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("157","IS-CW157","2022-05-17","4546","PA-338","31","SA","85500","90000","0","90000","0","90000","4500","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("158","IS-CW158","2022-05-17","4547","PA-250","31","SA","41000","44000","0","44000","0","44000","3000","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("159","IS-CW159","2022-05-18","4548","PA-059","31","SA","186300","197350","0","197350","0","197350","11050","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("160","IS-CW160","2022-05-18","4549","PA-005","31","SA","179000","196000","0","196000","0","196000","17000","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("161","IS-CW161","2022-05-18","4550","PA-250","31","SA","202500","212000","0","212000","0","212000","9500","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("162","IS-CW162","2022-05-11","3751","PA-294","36","SA","247500","264000","0","264000","0","264000","16500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("163","IS-CW163","2022-05-12","3752","PA-269","36","SA","113400","122300","0","122300","0","122300","8900","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("164","IS-CW164","2022-05-12","3753","PA-275","36","SA","74250","78300","0","78300","0","78300","4050","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("165","IS-CW165","2022-05-12","3754","PA-292","36","SA","43000","46500","0","46500","0","46500","3500","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("166","IS-CW166","2022-05-14","3755","PA-294","36","SA","116700","125900","0","125900","0","125900","9200","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("167","IS-CW167","2022-05-14","3756","PA-296","36","SA","180000","194000","0","194000","0","194000","14000","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("168","IS-CW168","2022-05-14","3757","PA-267","36","SA","6600","7200","0","7200","0","7200","600","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("169","IS-CW169","2022-05-14","3758","PA-017","36","SA","56400","58800","0","58800","0","58800","2400","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("170","IS-CW170","2022-05-15","3759","PA-283","36","SA","42750","46500","0","46500","0","46500","3750","0","","2","10","","0","","","","","2022-05-15");
INSERT INTO inv_issue VALUES("171","IS-CW171","2022-05-15","3760","PA-297","36","SA","46300","47500","0","47500","0","47500","1200","0","","2","10","","0","","","","","2022-05-15");
INSERT INTO inv_issue VALUES("172","IS-CW172","2022-05-15","3761","PA-017","36","SA","115200","123400","0","123400","0","123400","8200","0","","2","10","","0","","","","","2022-05-15");
INSERT INTO inv_issue VALUES("173","IS-CW173","2022-05-01","2207","PA-397","34","SA","169670","179800","0","179800","0","179800","10130","0","","2","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("174","IS-CW174","2022-05-01","2208","PA-392","34","SA","59160","61800","0","61800","0","61800","2640","0","","2","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("175","IS-CW175","2022-05-01","2209","PA-406","34","SA","42900","44500","0","44500","0","44500","1600","0","","2","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("176","IS-CW176","2022-05-07","2210","PA-361","34","SA","37200","38100","0","38100","0","38100","900","0","","2","10","","0","","","","","2022-05-07");
INSERT INTO inv_issue VALUES("177","IS-CW177","2022-05-08","2211","PA-387","34","SA","38200","40000","0","40000","0","40000","1800","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("178","IS-CW178","2022-05-08","2212","PA-365","34","SA","60400","63000","0","63000","0","63000","2600","0","","2","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("179","IS-CW179","2022-05-09","2213","PA-423","34","SA","19100","20000","0","20000","0","20000","900","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("180","IS-CW180","2022-05-09","2214","PA-379","34","SA","237100","251200","1200","250000","0","251200","12900","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("181","IS-CW181","2022-05-09","2215","PA-346","34","SA","53600","55200","0","55200","0","55200","1600","0","","2","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("182","IS-CW182","2022-05-10","2217","PA-345","34","SA","80400","82800","0","82800","0","82800","2400","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("183","IS-CW183","2022-05-10","2218","PA-383","34","SA","80000","83000","0","83000","0","83000","3000","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("184","IS-CW184","2022-05-10","2219","PA-416","34","SA","140000","142000","0","142000","0","142000","2000","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("185","IS-CW185","2022-05-10","2220","PA-413","34","SA","43000","45000","0","45000","0","45000","2000","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("186","IS-CW186","2022-05-10","2221","PA-372","34","SA","48300","49200","0","49200","0","49200","900","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("187","IS-CW187","2022-05-11","2222","PA-397","34","SA","96770","101500","0","101500","0","101500","4730","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("188","IS-CW188","2022-05-11","2223","PA-360","34","SA","99600","101500","0","101500","0","101500","1900","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("189","IS-CW189","2022-05-11","2224","PA-019","34","SA","28200","29000","0","29000","0","29000","800","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("190","IS-CW190","2022-05-11","2225","PA-385","34","SA","33000","35200","0","35200","0","35200","2200","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("191","IS-CW191","2022-05-11","2226","PA-410","34","SA","43000","46000","0","46000","0","46000","3000","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("192","IS-CW192","2022-05-11","2227","PA-383","34","SA","69800","73000","0","73000","0","73000","3200","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("193","IS-CW193","2022-05-11","2228","PA-345","34","SA","13400","13800","0","13800","0","13800","400","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("194","IS-CW194","2022-05-12","2233","PA-411","34","SA","53600","56000","0","56000","0","56000","2400","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("195","IS-CW195","2022-05-12","2234","PA-406","34","UP","19100","20000","0","20000","0","20000","900","1","","1","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("196","IS-CW196","2022-05-12","2235","PA-355","34","SA","44750","47500","0","47500","0","47500","2750","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("197","IS-CW197","2022-05-12","2236","PA-344","34","SA","58400","59600","0","59600","0","59600","1200","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("198","IS-CW198","2022-05-13","2241","PA-406","34","SA","72200","76000","0","76000","0","76000","3800","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("199","IS-CW199","2022-05-13","2242","PA-019","34","SA","14100","14500","0","14500","0","14500","400","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("200","IS-CW200","2022-05-13","2244","PA-344","34","SA","38200","39600","0","39600","0","39600","1400","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("201","IS-CW201","2022-05-13","2245","PA-385","34","SA","59400","64000","0","64000","0","64000","4600","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("202","IS-CW202","2022-05-13","2246","PA-383","34","SA","43500","45000","0","45000","0","45000","1500","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("203","IS-CW203","2022-05-10","2216","PA-409","34","UP","35050","36000","0","36000","0","36000","950","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("204","IS-CW204","2022-05-11","2230","PA-418","34","SA","14100","14500","0","14500","0","14500","400","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("205","IS-CW205","2022-05-12","2231","PA-408","34","SA","41250","44000","0","44000","0","44000","2750","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("206","IS-CW206","2022-05-12","2232","PA-408","34","SA","42000","44500","0","44500","0","44500","2500","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("207","IS-CW207","2022-05-12","2237","PA-342","34","SA","85000","92000","0","92000","0","92000","7000","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("208","IS-CW208","2022-05-12","2238","PA-352","34","SA","107100","115920","0","115920","0","115920","8820","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("209","IS-CW209","2022-05-12","2240","PA-356","34","SA","17000","18400","0","18400","0","18400","1400","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("210","IS-CW210","2022-05-13","2243","PA-407","34","SA","42500","46500","0","46500","0","46500","4000","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("211","IS-CW211","2022-05-01","2295","PA-294","36","UP","82500","88000","0","88000","0","88000","5500","1","","1","10","","0","","","","","2022-05-01");
INSERT INTO inv_issue VALUES("212","IS-CW212","2022-05-07","2296","PA-269","36","UP","78500","84600","100","84500","0","84500","6000","1","","1","10","","0","","","","","2022-05-07");
INSERT INTO inv_issue VALUES("213","IS-CW213","2022-05-08","2297","PA-300","36","UP","247500","253500","0","253500","0","253500","6000","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("214","IS-CW214","2022-05-08","2298","PA-296","36","UP","134000","142000","0","142000","0","142000","8000","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("215","IS-CW215","2022-05-09","2299","PA-267","36","UP","13400","14400","0","14400","0","14400","1000","1","","1","10","","0","","","","","2022-05-09");
INSERT INTO inv_issue VALUES("216","IS-CW216","2022-05-10","2300","PA-269","36","UP","28000","28800","0","28800","0","28800","800","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("217","IS-CW217","2022-05-16","3762","PA-294","36","UP","312500","332800","200","332600","0","332600","20100","1","","1","10","","0","","","","","2022-05-16");
INSERT INTO inv_issue VALUES("218","IS-CW218","2022-05-17","3764","PA-017","36","SA","51900","54300","0","54300","0","54300","2400","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("219","IS-CW219","2022-05-17","3765","PA-262","36","SA","52800","56000","0","56000","0","56000","3200","0","","2","10","","0","","","","","2022-05-17");
INSERT INTO inv_issue VALUES("220","IS-CW220","2022-05-18","3766","PA-294","36","SA","259500","279000","0","279000","0","279000","19500","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("221","IS-CW221","2022-05-18","3767","PA-269","36","SA","75500","79800","0","79800","0","79800","4300","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("222","IS-CW222","2022-05-18","3768","PA-306","36","SA","151000","153000","0","153000","0","153000","2000","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("223","IS-CW223","2022-05-18","3769","PA-269","36","SA","60400","65100","600","64500","0","64500","4100","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("224","IS-CW224","2022-05-18","3770","PA-297","36","SA","16100","16500","0","16500","0","16500","400","0","","2","10","","0","","","","","2022-05-18");
INSERT INTO inv_issue VALUES("225","IS-CW225","2022-05-19","3771","PA-294","36","SA","247500","264000","0","264000","0","264000","16500","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("226","IS-CW226","2022-05-19","3772","PA-017","36","SA","56400","58800","0","58800","0","58800","2400","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("227","IS-CW227","2022-05-19","3773","PA-297","36","SA","44300","45500","0","45500","0","45500","1200","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("228","IS-CW228","2022-05-19","3774","PA-293","36","SA","14100","14500","0","14500","0","14500","400","0","","2","10","","0","","","","","2022-05-19");
INSERT INTO inv_issue VALUES("229","IS-CW229","2022-05-21","3375","PA-016","36","SA","44250","47500","0","47500","0","47500","3250","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("230","IS-CW230","2022-05-21","3777","PA-275","36","SA","82500","87000","0","87000","0","87000","4500","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("231","IS-CW231","2022-05-21","3778","PA-269","36","SA","57000","62800","0","62800","0","62800","5800","0","","2","10","","0","","","","","2022-05-21");
INSERT INTO inv_issue VALUES("232","IS-CW232","2022-05-22","3780","PA-294","36","SA","82500","88000","0","88000","0","88000","5500","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("233","IS-CW233","2022-05-22","3781","PA-307","36","SA","42750","46000","0","46000","0","46000","3250","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("234","IS-CW234","2022-05-11","2229","PA-374","34","SA","83700","89200","0","89200","0","89200","5500","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("235","IS-CW235","2022-05-12","2238","PA-403","34","SA","193400","207800","1000","206800","0","206800","13400","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("236","IS-CW236","2022-05-13","2247","PA-397","34","SA","156490","164000","0","164000","0","164000","7510","0","","2","10","","0","","","","","2022-05-13");
INSERT INTO inv_issue VALUES("237","IS-CW237","2022-05-14","2248","PA-392","34","SA","57850","60950","0","60950","0","60950","3100","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("238","IS-CW238","2022-05-14","2249","PA-345","34","SA","138600","144900","0","144900","0","393300","6300","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("239","IS-CW239","2022-05-14","2250","PA-383","34","SA","96300","101000","0","101000","0","101000","4700","0","","2","10","","0","","","","","2022-05-14");
INSERT INTO inv_issue VALUES("240","IS-CW240","2022-05-08","4523","PA-064","31","UP","39450","42600","0","42600","0","42600","3150","1","","1","10","","0","","","","","2022-05-08");
INSERT INTO inv_issue VALUES("241","IS-CW241","2022-05-29","5631","PA-059","31","SA","40600","42300","0","42300","0","42300","1700","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("242","IS-CW242","2022-05-29","5632","PA-082","31","SA","134250","150000","0","150000","0","150000","15750","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("243","IS-CW243","2022-05-29","5633","PA-250","31","SA","209000","223500","0","223500","0","223500","14500","0","","2","10","","0","","","","","2022-05-29");
INSERT INTO inv_issue VALUES("244","IS-CW244","2022-05-30","5635","PA-250","31","SA","122500","129500","0","129500","0","129500","7000","0","","2","10","","0","","","","","2022-05-30");
INSERT INTO inv_issue VALUES("245","IS-CW245","2022-05-30","5638","PA-085","31","SA","33940","35240","0","35240","0","35240","1300","0","","2","10","","0","","","","","2022-05-30");
INSERT INTO inv_issue VALUES("246","IS-CW246","2022-05-30","5640","PA-088","31","SA","94300","107000","0","107000","0","107000","12700","0","","2","10","","0","","","","","2022-05-30");
INSERT INTO inv_issue VALUES("247","IS-CW247","2022-05-31","5643","PA-250","31","SA","98200","103600","0","103600","0","103600","5400","0","","2","10","","0","","","","","2022-05-31");
INSERT INTO inv_issue VALUES("248","IS-CW248","2022-05-10","4531","PA-064","31","UP","26750","27900","0","27900","0","27900","1150","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("249","IS-CW249","2022-05-10","4527","PA-049","31","SA","77450","84950","150","84800","0","84800","7350","0","","2","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("250","IS-CW250","2022-05-10","4529","PA-060","31","UP","14379","15685","85","15600","0","15600","1221","1","","1","10","","0","","","","","2022-05-10");
INSERT INTO inv_issue VALUES("251","IS-CW251","2022-05-11","4534","PA-055","31","SA","158650","171200","0","171200","0","171200","12550","0","","2","10","","0","","","","","2022-05-11");
INSERT INTO inv_issue VALUES("252","IS-CW252","2022-05-12","4537","PA-064","31","SA","7250","8150","0","8150","0","8150","900","0","","2","10","","0","","","","","2022-05-12");
INSERT INTO inv_issue VALUES("253","IS-CW253","2022-05-22","3782","PA-274","36","SA","256500","267000","0","267000","0","267000","10500","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("254","IS-CW254","2022-05-22","3783","PA-262","36","SA","38200","39000","0","39000","0","39000","800","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("255","IS-CW255","2022-05-22","3785","PA-270","36","SA","302000","308000","0","308000","0","308000","6000","0","","2","10","","0","","","","","2022-05-22");
INSERT INTO inv_issue VALUES("256","IS-CW256","2022-06-06","3786","PA-263","36","UP","247950","258100","0","258100","0","258100","10150","1","","1","10","","0","","","","","2022-06-06");
INSERT INTO inv_issue VALUES("257","IS-CW257","2022-06-07","247","PA-450","45","SA","10","10000","0","10000","1","9999","9990","0","PAID","2","10","","0","","","","","2022-06-07");
INSERT INTO inv_issue VALUES("258","IS-CW258","2022-06-05","0","PA-450","45","SA","300","400","0","400","0","400","100","0","","2","10","","0","","","","","2022-06-05");
INSERT INTO inv_issue VALUES("259","IS-CW259","2022-06-08","54","PA-097","31","SA","100","200","0","200","0","200","100","0","","2","10","","0","","","","","2022-06-08");
INSERT INTO inv_issue VALUES("260","IS-MP001","2022-06-09","644","PA-425","32","SA","40","80","0","80","0","80","40","0","","2","18","","0","","","","","2022-06-09");
INSERT INTO inv_issue VALUES("261","IS-CW260","2022-06-12","55","PA-003","31","SA","10000","4000","0","4000","0","4000","-6000","0","","2","10","","0","","","","","2022-06-12");
INSERT INTO inv_issue VALUES("262","IS-CW261","2022-06-12","0","PA-425","32","SA","100","200","0","200","0","200","100","0","","2","10","","0","","","","","2022-06-12");



CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `issue_date` date NOT NULL,
  `memono` int(100) NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cur_price` float NOT NULL,
  `cur_price_amount` int(11) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=689 DEFAULT CHARSET=latin1;

INSERT INTO inv_issuedetail VALUES("3","IS-CW001","2022-05-01","1971","01-01-125","499","3","6700","26800","4","7400","29600","U","1","10","39","PA-045","0");
INSERT INTO inv_issuedetail VALUES("4","IS-CW002","2022-05-08","5404","01-01-003","370","3","6700","53600","8","7100","56800","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("5","IS-CW002","2022-05-08","5404","01-01-125","499","3","6700","53600","8","7100","56800","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("6","IS-CW002","2022-05-08","5404","01-03-002","373","19","16100","48300","3","16600","49800","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("7","IS-CW002","2022-05-08","5404","01-03-001","369","19","14100","42300","3","14500","43500","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("10","IS-CW004","2022-05-08","5406","01-01-117","491","3","8400","84000","10","8700","87000","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("11","IS-CW003","2022-05-08","5405","01-01-118","492","3","8500","246500","29","8900","258100","U","1","10","33","PA-130","0");
INSERT INTO inv_issuedetail VALUES("20","IS-CW006","2022-05-01","5117","05-01-001","590","3","45","1350","30","58","1740","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("21","IS-CW006","2022-05-01","5117","01-01-014","388","3","8600","215000","25","9000","225000","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("22","IS-CW006","2022-05-01","5117","06-01-001","592","3","2550","51000","20","2800","56000","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("23","IS-CW006","2022-05-01","5117","01-01-117","491","3","8400","84000","10","8700","87000","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("24","IS-CW006","2022-05-01","5117","01-01-025","399","3","8600","43000","5","9000","45000","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("25","IS-CW007","2022-05-01","5118","01-01-121","495","3","8600","86000","10","9300","93000","U","1","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("31","IS-CW008","2022-05-01","5119","01-03-002","373","19","16100","16100","1","16600","16600","U","1","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("32","IS-CW009","2022-05-08","5121","01-01-092","466","3","8600","146200","17","9200","156400","U","1","10","41","PA-170","0");
INSERT INTO inv_issuedetail VALUES("33","IS-CW009","2022-05-08","5121","01-01-041","415","3","8400","33600","4","8700","34800","U","1","10","41","PA-170","0");
INSERT INTO inv_issuedetail VALUES("39","IS-CW012","2022-05-09","5124","01-03-004","581","19","14100","141000","10","14500","145000","S","2","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("40","IS-CW012","2022-05-09","5124","01-03-005","582","19","14100","70500","5","14500","72500","S","2","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("41","IS-CW012","2022-05-09","5124","01-03-006","583","19","14100","42300","3","14500","43500","S","2","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("42","IS-CW012","2022-05-09","5124","01-03-001","369","19","14100","98700","7","14500","101500","S","2","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("43","IS-CW012","2022-05-09","5124","01-03-007","584","19","12900","25800","2","13500","27000","S","2","10","41","PA-155","0");
INSERT INTO inv_issuedetail VALUES("45","IS-CW013","2022-05-09","5125","01-01-125","499","3","6700","80400","12","7200","86400","U","1","10","41","PA-167","0");
INSERT INTO inv_issuedetail VALUES("46","IS-CW014","2022-05-09","5126","01-01-125","499","3","6700","134000","20","7200","144000","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("47","IS-CW014","2022-05-09","5126","01-03-001","369","19","14100","70500","5","14500","72500","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("54","IS-CW015","2022-05-10","2932","01-02-006","505","3","8250","41250","5","8700","43500","U","1","10","38","PA-171","0");
INSERT INTO inv_issuedetail VALUES("55","IS-CW017","2022-05-12","2936","01-01-117","491","3","8400","84000","10","8700","87000","S","2","10","38","PA-175","0");
INSERT INTO inv_issuedetail VALUES("56","IS-CW017","2022-05-12","2936","01-01-088","462","3","8400","84000","10","8700","87000","S","2","10","38","PA-175","0");
INSERT INTO inv_issuedetail VALUES("57","IS-CW018","2022-05-09","2329","01-01-126","500","3","7300","7300","1","8000","8000","S","2","10","35","PA-176","0");
INSERT INTO inv_issuedetail VALUES("58","IS-CW019","2022-05-10","2330","01-02-047","580","1","8550","85500","10","9500","95000","S","2","10","35","PA-177","0");
INSERT INTO inv_issuedetail VALUES("59","IS-CW020","2022-05-10","2331","01-01-054","428","3","8800","79200","9","10200","91800","S","2","10","35","PA-178","0");
INSERT INTO inv_issuedetail VALUES("60","IS-CW021","2022-05-11","2332","01-02-007","506","3","8850","88500","10","9500","95000","S","2","10","35","PA-179","0");
INSERT INTO inv_issuedetail VALUES("61","IS-CW022","2022-05-11","2333","01-03-001","369","19","14100","70500","5","14500","72500","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("62","IS-CW022","2022-05-11","2333","01-02-017","516","3","8850","44250","5","9300","46500","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("63","IS-CW023","2022-05-11","2334","01-03-001","369","19","14100","70500","5","14500","72500","S","2","10","35","PA-181","0");
INSERT INTO inv_issuedetail VALUES("69","IS-CW024","2022-05-12","2335","01-03-001","369","19","14100","141000","10","14500","145000","U","1","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("70","IS-CW024","2022-05-12","2335","07-01-001","602","19","2850","17100","6","2900","17400","U","1","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("71","IS-CW024","2022-05-12","2335","01-02-017","516","3","8850","44250","5","9300","46500","U","1","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("72","IS-CW024","2022-05-12","2335","01-03-005","582","19","14100","28200","2","14500","29000","U","1","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("73","IS-CW024","2022-05-12","2335","01-03-003","374","19","19100","19100","1","19500","19500","U","1","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("74","IS-CW025","2022-05-11","5127","01-01-121","495","3","8600","430000","50","8800","440000","S","2","10","41","PA-182","0");
INSERT INTO inv_issuedetail VALUES("75","IS-CW026","2022-05-11","5128","01-03-001","369","19","14100","70500","5","14400","72000","S","2","10","41","PA-183","0");
INSERT INTO inv_issuedetail VALUES("76","IS-CW026","2022-05-11","5128","01-03-007","584","19","12900","25800","2","13400","26800","S","2","10","41","PA-183","0");
INSERT INTO inv_issuedetail VALUES("79","IS-CW028","2022-05-11","5089","01-01-119","493","3","8600","25800","3","9100","27300","S","2","10","32","PA-107","0");
INSERT INTO inv_issuedetail VALUES("80","IS-CW029","2022-05-11","5087","01-03-002","373","19","16100","16100","1","16600","16600","S","2","10","32","PA-010","0");
INSERT INTO inv_issuedetail VALUES("81","IS-CW030","2022-05-12","5081","01-03-001","369","19","14100","28200","2","14600","29200","S","2","10","32","PA-105","0");
INSERT INTO inv_issuedetail VALUES("82","IS-CW031","2022-05-08","2477","01-01-123","497","3","8800","123200","14","9200","128800","S","2","10","42","PA-184","0");
INSERT INTO inv_issuedetail VALUES("83","IS-CW032","2022-05-07","2478","01-01-125","499","3","6700","26800","4","7200","28800","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("84","IS-CW032","2022-05-07","2478","08-01-001","605","21","20","800","40","20","800","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("85","IS-CW033","2022-05-09","2479","01-01-001","367","3","8800","44000","5","9200","46000","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("86","IS-CW033","2022-05-09","2479","08-01-001","605","21","20","1000","50","20","1000","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("87","IS-CW034","2022-05-09","2480","01-01-125","499","3","6700","26800","4","7200","28800","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("88","IS-CW034","2022-05-09","2480","08-01-001","605","21","20","800","40","20","800","S","2","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("89","IS-CW035","2022-05-11","2481","01-01-003","370","3","6600","59400","9","7200","64800","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("90","IS-CW035","2022-05-11","2481","01-01-125","499","3","6600","52800","8","7300","58400","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("91","IS-CW035","2022-05-11","2481","01-01-014","388","3","8500","34000","4","9200","36800","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("92","IS-CW035","2022-05-11","2481","01-01-121","495","3","8500","34000","4","9200","36800","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("93","IS-CW035","2022-05-11","2481","01-03-002","373","19","16100","32200","2","16600","33200","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("94","IS-CW035","2022-05-11","2481","01-03-003","374","19","19100","4775","0.25","20000","5000","S","2","10","42","PA-186","0");
INSERT INTO inv_issuedetail VALUES("97","IS-CW036","2022-05-12","2482","08-01-001","605","21","20","1000","50","20","1000","U","1","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("98","IS-CW036","2022-05-12","2482","01-01-001","367","3","8700","43500","5","9200","46000","U","1","10","42","PA-185","0");
INSERT INTO inv_issuedetail VALUES("99","IS-CW037","2022-05-08","5120","01-02-053","604","19","8950","447500","50","9300","465000","S","2","10","41","PA-169","0");
INSERT INTO inv_issuedetail VALUES("100","IS-CW011","2022-05-08","5123","01-03-001","369","19","14100","98700","7","14600","102200","U","1","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("101","IS-CW011","2022-05-08","5123","01-03-002","373","19","16100","20125","1.25","16600","20750","U","1","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("102","IS-CW011","2022-05-08","5123","01-01-005","372","3","8800","8800","1","9200","9200","U","1","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("103","IS-CW038","2022-05-12","2336","01-02-036","535","3","8850","88500","10","9300","93000","S","2","10","35","PA-181","0");
INSERT INTO inv_issuedetail VALUES("104","IS-CW038","2022-05-12","2336","01-03-008","603","19","16100","32200","2","16500","33000","S","2","10","35","PA-181","0");
INSERT INTO inv_issuedetail VALUES("105","IS-CW039","2022-05-11","2935","01-02-054","606","1","8550","213750","25","8950","223750","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("106","IS-CW039","2022-05-11","2935","01-02-055","607","1","8250","206250","25","8800","220000","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("107","IS-CW039","2022-05-11","2935","01-01-058","432","3","8400","42000","5","8650","43250","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("108","IS-CW039","2022-05-11","2935","01-01-088","462","3","8400","42000","5","8650","43250","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("109","IS-CW039","2022-05-11","2935","01-02-006","505","3","8250","41250","5","8600","43000","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("112","IS-CW016","2022-05-10","2934","01-03-001","369","19","14100","28200","2","14700","29400","U","1","10","38","PA-172","0");
INSERT INTO inv_issuedetail VALUES("113","IS-CW005","2022-05-01","5116","01-01-025","399","3","8600","129000","15","9000","135000","U","1","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("114","IS-CW005","2022-05-01","5116","01-01-117","491","3","8400","126000","15","8700","130500","U","1","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("115","IS-CW010","2022-05-08","5122","01-01-125","499","3","6700","134000","20","7100","142000","U","1","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("116","IS-CW010","2022-05-08","5122","01-03-003","374","19","19100","95500","5","19600","98000","U","1","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("119","IS-CW040","2022-05-06","5093","01-03-010","613","19","14100","14100","1","14900","14900","S","2","10","32","PA-008","0");
INSERT INTO inv_issuedetail VALUES("120","IS-CW040","2022-05-06","5093","01-03-011","614","19","14100","14100","1","14900","14900","S","2","10","32","PA-008","0");
INSERT INTO inv_issuedetail VALUES("123","IS-CW027","2022-05-09","5091","01-03-001","369","19","14100","14100","1","14600","14600","U","1","10","32","PA-010","0");
INSERT INTO inv_issuedetail VALUES("124","IS-CW027","2022-05-09","5091","01-03-002","373","19","16100","16100","1","17000","17000","U","1","10","32","PA-010","0");
INSERT INTO inv_issuedetail VALUES("125","IS-CW041","2022-04-28","5110","01-01-018","392","3","7300","36500","5","7600","38000","S","2","10","41","PA-183","0");
INSERT INTO inv_issuedetail VALUES("126","IS-CW041","2022-04-28","5110","01-03-001","369","19","14100","14100","1","14500","14500","S","2","10","41","PA-183","0");
INSERT INTO inv_issuedetail VALUES("127","IS-CW042","2022-04-29","5112","01-01-121","495","3","8600","430000","50","8800","440000","S","2","10","41","PA-182","0");
INSERT INTO inv_issuedetail VALUES("128","IS-CW043","2022-04-28","5111","01-01-014","388","3","8600","77400","9","9300","83700","S","2","10","41","PA-189","0");
INSERT INTO inv_issuedetail VALUES("129","IS-CW044","2022-04-28","5109","01-02-059","615","1","8950","71600","8","9400","75200","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("130","IS-CW044","2022-04-28","5109","01-02-009","508","3","8950","71600","8","9400","75200","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("131","IS-CW044","2022-04-28","5109","01-02-009","508","3","8950","71600","8","9400","75200","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("132","IS-CW044","2022-04-28","5109","01-02-001","375","3","8550","68400","8","9000","72000","S","2","10","41","PA-012","0");
INSERT INTO inv_issuedetail VALUES("133","IS-CW045","2022-04-30","5113","01-01-014","388","3","8600","430000","50","9000","450000","S","2","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("134","IS-CW045","2022-04-30","5113","01-01-003","370","3","6700","134000","20","7100","142000","S","2","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("135","IS-CW045","2022-04-30","5113","01-01-125","499","3","6700","134000","20","7100","142000","S","2","10","41","PA-166","0");
INSERT INTO inv_issuedetail VALUES("136","IS-CW046","2022-04-30","5114","01-03-001","369","19","14100","84600","6","14600","87600","S","2","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("137","IS-CW046","2022-04-30","5114","01-01-005","372","3","8800","8800","1","9200","9200","S","2","10","41","PA-168","0");
INSERT INTO inv_issuedetail VALUES("138","IS-CW047","2022-04-30","5115","01-01-125","499","3","6700","53600","8","7100","56800","S","2","10","41","PA-190","0");
INSERT INTO inv_issuedetail VALUES("139","IS-CW047","2022-04-30","5115","01-01-122","496","3","8700","43500","5","9000","45000","S","2","10","41","PA-190","0");
INSERT INTO inv_issuedetail VALUES("140","IS-CW047","2022-04-30","5115","08-01-001","605","21","20","700","35","20","700","S","2","10","41","PA-190","0");
INSERT INTO inv_issuedetail VALUES("141","IS-CW048","2022-04-28","5401","01-03-003","374","19","19500","78000","4","20000","80000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("142","IS-CW049","2022-04-30","5402","01-01-014","388","3","8600","172000","20","9000","180000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("143","IS-CW050","2022-05-15","5407","01-01-014","388","3","8500","136000","16","9000","144000","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("144","IS-CW050","2022-05-15","5407","01-01-125","499","3","6600","13200","2","7100","14200","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("145","IS-CW050","2022-05-15","5407","01-03-001","369","19","14100","56400","4","14400","57600","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("146","IS-CW050","2022-05-15","5407","01-03-003","374","19","19100","19100","1","19600","19600","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("147","IS-CW050","2022-05-15","5407","09-01-001","616","3","1250","1250","1","1350","1350","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("148","IS-CW051","2022-05-15","5408","01-01-053","427","3","8600","43000","5","9200","46000","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("149","IS-CW051","2022-05-15","5408","01-01-030","404","3","8600","34400","4","9200","36800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("150","IS-CW051","2022-05-15","5408","01-01-112","486","3","8600","34400","4","9200","36800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("151","IS-CW051","2022-05-15","5408","01-03-001","369","19","14100","7050","0.5","14400","7200","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("152","IS-CW052","2022-05-11","5409","01-01-025","399","3","8500","170000","20","9000","180000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("153","IS-CW052","2022-05-11","5409","01-01-121","495","3","8500","85000","10","9000","90000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("154","IS-CW052","2022-05-11","5409","01-01-014","388","3","8500","85000","10","9000","90000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("155","IS-CW052","2022-05-11","5409","01-01-025","399","3","8500","85000","10","9000","90000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("156","IS-CW053","2022-05-18","5410","01-01-014","388","3","8500","68000","8","9100","72800","S","2","10","33","PA-122","0");
INSERT INTO inv_issuedetail VALUES("157","IS-CW054","2022-05-18","5411","01-01-113","487","3","8700","87000","10","9300","93000","S","2","10","33","PA-127","0");
INSERT INTO inv_issuedetail VALUES("158","IS-CW054","2022-05-18","5411","01-01-015","389","3","8600","86000","10","9200","92000","S","2","10","33","PA-127","0");
INSERT INTO inv_issuedetail VALUES("163","IS-CW056","2022-05-18","5412","01-01-125","499","3","6600","39600","6","7200","43200","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("164","IS-CW056","2022-05-18","5412","01-01-018","392","3","7200","28800","4","7800","31200","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("165","IS-CW056","2022-05-18","5412","01-01-119","493","3","8500","17000","2","9000","18000","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("166","IS-CW056","2022-05-18","5412","06-01-004","601","3","2550","25500","10","2700","27000","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("167","IS-CW057","2022-05-21","5418","01-01-042","416","3","8500","85000","10","9000","90000","S","2","10","33","PA-129","0");
INSERT INTO inv_issuedetail VALUES("168","IS-CW057","2022-05-21","5418","01-01-040","414","3","8400","84000","10","8900","89000","S","2","10","33","PA-129","0");
INSERT INTO inv_issuedetail VALUES("169","IS-CW058","2022-05-22","5420","01-01-025","399","3","8500","170000","20","9000","180000","S","2","10","33","PA-118","0");
INSERT INTO inv_issuedetail VALUES("170","IS-CW055","2022-05-18","5412","06-01-004","601","3","2550","25500","10","2700","27000","U","1","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("171","IS-CW055","2022-05-18","5412","01-01-125","499","3","6600","39600","6","7200","43200","U","1","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("172","IS-CW055","2022-05-18","5412","01-01-018","392","3","7200","28800","4","7800","31200","U","1","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("173","IS-CW055","2022-05-18","5412","01-01-119","493","3","8500","17000","2","9000","18000","U","1","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("174","IS-CW059","2022-05-19","5413","01-01-044","418","3","8500","110500","13","9000","117000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("175","IS-CW059","2022-05-19","5413","01-01-003","370","3","6600","105600","16","7100","113600","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("176","IS-CW059","2022-05-19","5413","01-01-125","499","3","6600","132000","20","7100","142000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("177","IS-CW059","2022-05-19","5413","01-01-164","617","3","6600","52800","8","7100","56800","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("178","IS-CW060","2022-05-19","5414","06-01-001","592","3","850","17000","20","950","19000","S","2","10","33","PA-013","0");
INSERT INTO inv_issuedetail VALUES("179","IS-CW060","2022-05-19","5414","06-01-002","593","3","850","12750","15","950","14250","S","2","10","33","PA-013","0");
INSERT INTO inv_issuedetail VALUES("180","IS-CW060","2022-05-19","5414","06-02-002","596","3","1080","5400","5","1150","5750","S","2","10","33","PA-013","0");
INSERT INTO inv_issuedetail VALUES("181","IS-CW061","2022-05-21","5415","01-01-003","370","3","6600","112200","17","7100","120700","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("182","IS-CW061","2022-05-21","5415","01-01-165","618","1","6600","26400","4","7100","28400","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("183","IS-CW061","2022-05-21","5415","01-01-121","495","3","8500","68000","8","9000","72000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("184","IS-CW062","2022-05-22","5418","01-01-125","499","3","6600","79200","12","7100","85200","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("185","IS-CW062","2022-05-22","5418","01-01-125","499","3","6600","52800","8","7100","56800","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("186","IS-CW062","2022-05-22","5418","09-01-002","620","3","580","5800","10","620","6200","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("187","IS-CW062","2022-05-22","5418","01-01-021","395","3","8300","16600","2","8700","17400","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("188","IS-CW063","2022-05-22","5419","01-01-165","618","1","6600","52800","8","7100","56800","S","2","10","33","PA-111","0");
INSERT INTO inv_issuedetail VALUES("189","IS-CW064","2022-05-23","5421","01-01-015","389","3","8600","172000","20","9200","184000","S","2","10","33","PA-127","0");
INSERT INTO inv_issuedetail VALUES("190","IS-CW065","2022-05-23","5422","01-01-121","495","3","8500","153000","18","8900","160200","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("191","IS-CW065","2022-05-23","5422","01-01-101","475","3","8500","42500","5","8900","44500","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("192","IS-CW065","2022-05-23","5422","01-01-052","426","3","8500","42500","5","8900","44500","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("193","IS-CW065","2022-05-23","5422","01-01-125","499","3","6600","79200","12","7000","84000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("194","IS-CW065","2022-05-23","5422","01-01-003","370","3","6600","52800","8","7000","56000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("195","IS-CW065","2022-05-23","5422","01-01-125","499","3","6600","26400","4","7000","28000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("196","IS-CW066","2022-05-24","5423","01-01-018","392","3","7200","28800","4","7800","31200","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("197","IS-CW066","2022-05-24","5423","01-01-014","388","3","8500","34000","4","9000","36000","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("198","IS-CW066","2022-05-24","5423","01-01-121","495","3","8500","34000","4","9000","36000","S","2","10","33","PA-125","0");
INSERT INTO inv_issuedetail VALUES("199","IS-CW067","2022-05-24","5424","01-01-125","499","3","6600","79200","12","7000","84000","S","2","10","33","PA-014","0");
INSERT INTO inv_issuedetail VALUES("200","IS-CW068","2022-05-24","5425","01-01-120","494","3","8600","43000","5","9200","46000","S","2","10","33","PA-013","0");
INSERT INTO inv_issuedetail VALUES("201","IS-CW068","2022-05-24","5425","06-02-002","596","3","1020","10200","10","1150","11500","S","2","10","33","PA-013","0");
INSERT INTO inv_issuedetail VALUES("202","IS-CW069","2022-05-25","5427","01-01-125","499","3","6600","158400","24","7100","170400","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("203","IS-CW069","2022-05-25","5427","01-01-003","370","3","6600","52800","8","7100","56800","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("204","IS-CW069","2022-05-25","5427","01-01-014","388","3","8500","34000","4","9000","36000","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("205","IS-CW069","2022-05-25","5427","01-03-001","369","19","14100","28200","2","14500","29000","S","2","10","33","PA-191","0");
INSERT INTO inv_issuedetail VALUES("206","IS-CW070","2022-05-26","5428","01-03-001","369","19","14100","28200","2","14400","28800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("207","IS-CW070","2022-05-26","5428","01-03-007","584","19","12900","25800","2","13400","26800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("208","IS-CW070","2022-05-26","5428","01-01-030","404","3","8600","43000","5","9200","46000","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("209","IS-CW070","2022-05-26","5428","01-01-053","427","3","8600","43000","5","9200","46000","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("210","IS-CW070","2022-05-26","5428","01-01-041","415","3","8300","33200","4","8700","34800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("211","IS-CW070","2022-05-26","5428","06-03-001","598","3","930","9300","10","950","9500","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("212","IS-CW071","2022-05-24","5426","01-03-001","369","19","14100","21150","1.5","14500","21750","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("213","IS-CW071","2022-05-24","5426","01-03-002","373","19","16100","48300","3","16600","49800","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("214","IS-CW071","2022-05-24","5426","01-01-125","499","3","6600","79200","12","7100","85200","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("215","IS-CW071","2022-05-24","5426","01-01-022","396","3","8400","42000","5","8800","44000","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("216","IS-CW071","2022-05-24","5426","01-01-118","492","3","8400","42000","5","8800","44000","S","2","10","33","PA-165","0");
INSERT INTO inv_issuedetail VALUES("217","IS-CW072","2022-05-22","5417","01-03-007","584","19","12900","12900","1","13400","13400","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("218","IS-CW072","2022-05-22","5417","01-03-001","369","19","14100","28200","2","14400","28800","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("219","IS-CW072","2022-05-22","5417","01-01-026","400","3","8600","43000","5","9700","48500","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("220","IS-CW072","2022-05-22","5417","01-01-030","404","3","8600","43000","5","9200","46000","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("221","IS-CW072","2022-05-22","5417","09-01-002","620","3","580","2900","5","620","3100","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("222","IS-CW072","2022-05-22","5417","09-01-001","616","3","1250","2500","2","1350","2700","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("223","IS-CW072","2022-05-22","5417","01-01-117","491","3","8300","16600","2","8700","17400","S","2","10","33","PA-115","0");
INSERT INTO inv_issuedetail VALUES("224","IS-CW073","2022-05-17","2937","01-01-093","467","3","8600","43000","5","9200","46000","S","2","10","38","PA-195","0");
INSERT INTO inv_issuedetail VALUES("225","IS-CW074","2022-05-17","2938","01-03-012","621","19","14000","42000","3","14300","42900","S","2","10","38","PA-239","0");
INSERT INTO inv_issuedetail VALUES("226","IS-CW074","2022-05-17","2938","01-03-013","622","19","16000","48000","3","16300","48900","S","2","10","38","PA-239","0");
INSERT INTO inv_issuedetail VALUES("227","IS-CW075","2022-05-18","2939","01-01-118","492","3","8400","84000","10","9000","90000","S","2","10","38","PA-208","0");
INSERT INTO inv_issuedetail VALUES("228","IS-CW075","2022-05-18","2939","01-01-089","463","3","8400","33600","4","9000","36000","S","2","10","38","PA-208","0");
INSERT INTO inv_issuedetail VALUES("229","IS-CW076","2022-05-18","2940","01-01-058","432","3","8300","66400","8","8700","69600","S","2","10","38","PA-224","0");
INSERT INTO inv_issuedetail VALUES("230","IS-CW077","2022-05-20","2941","01-01-058","432","3","8300","166000","20","8650","173000","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("231","IS-CW078","2022-05-20","2942","07-01-001","602","19","2850","2850","1","3250","3250","S","2","10","38","PA-224","0");
INSERT INTO inv_issuedetail VALUES("232","IS-CW079","2022-05-22","2943","01-01-117","491","3","8300","66400","8","8700","69600","S","2","10","38","PA-175","0");
INSERT INTO inv_issuedetail VALUES("233","IS-CW079","2022-05-22","2943","01-01-088","462","3","8300","66400","8","8700","69600","S","2","10","38","PA-175","0");
INSERT INTO inv_issuedetail VALUES("234","IS-CW080","2022-05-22","2944","09-01-003","623","3","3600","7200","2","4100","8200","S","2","10","38","PA-208","0");
INSERT INTO inv_issuedetail VALUES("235","IS-CW081","2022-05-23","2945","01-01-120","494","3","8600","86000","10","9000","90000","S","2","10","38","PA-240","0");
INSERT INTO inv_issuedetail VALUES("236","IS-CW082","2022-05-25","2946","01-02-054","606","1","8550","171000","20","8950","179000","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("237","IS-CW082","2022-05-25","2946","01-02-055","607","1","8250","165000","20","8800","176000","S","2","10","38","PA-173","0");
INSERT INTO inv_issuedetail VALUES("238","IS-CW083","2022-05-25","2947","01-02-031","530","3","8850","44250","5","9400","47000","S","2","10","38","PA-217","0");
INSERT INTO inv_issuedetail VALUES("239","IS-CW084","2022-05-13","2337","06-03-001","598","3","850","123250","145","940","136300","S","2","10","35","PA-163","0");
INSERT INTO inv_issuedetail VALUES("240","IS-CW085","2022-05-14","2338","01-03-001","369","19","14100","28200","2","14500","29000","S","2","10","35","PA-179","0");
INSERT INTO inv_issuedetail VALUES("241","IS-CW086","2022-05-16","2339","03-02-001","624","3","9920","9920","1","10700","10700","S","2","10","35","PA-241","0");
INSERT INTO inv_issuedetail VALUES("242","IS-CW087","2022-05-17","2340","01-02-001","375","3","8550","85500","10","8900","89000","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("243","IS-CW087","2022-05-17","2340","01-02-050","587","1","8550","68400","8","8900","71200","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("244","IS-CW087","2022-05-17","2340","06-03-001","598","3","1020","20400","20","1160","23200","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("245","IS-CW087","2022-05-17","2340","01-03-002","373","19","16100","32200","2","16400","32800","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("246","IS-CW088","2022-05-17","2341","01-03-001","369","19","14100","56400","4","14400","57600","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("247","IS-CW088","2022-05-17","2341","01-03-002","373","19","16100","32200","2","16400","32800","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("248","IS-CW088","2022-05-17","2341","01-03-005","582","19","14000","28000","2","14400","28800","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("249","IS-CW088","2022-05-17","2341","01-03-003","374","19","19100","19100","1","19500","19500","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("250","IS-CW089","2022-05-18","2343","01-02-001","375","3","8550","171000","20","8850","177000","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("251","IS-CW089","2022-05-18","2343","01-02-036","535","3","8850","123900","14","9050","126700","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("252","IS-CW089","2022-05-18","2343","01-03-002","373","19","16100","64400","4","16400","65600","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("253","IS-CW089","2022-05-18","2343","01-03-001","369","19","14100","56400","4","14400","57600","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("254","IS-CW089","2022-05-18","2343","01-03-014","626","19","16100","32200","2","16400","32800","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("255","IS-CW090","2022-05-18","2345","01-03-003","374","3","4775","33425","7","5175","36225","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("256","IS-CW090","2022-05-18","2345","01-03-008","603","19","4000","20000","5","4275","21375","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("257","IS-CW091","2022-05-19","2346","01-01-062","436","3","8500","127500","15","9700","145500","S","2","10","35","PA-245","0");
INSERT INTO inv_issuedetail VALUES("258","IS-CW091","2022-05-19","2346","01-02-047","580","1","8550","128250","15","9400","141000","S","2","10","35","PA-245","0");
INSERT INTO inv_issuedetail VALUES("259","IS-CW091","2022-05-19","2346","01-02-030","529","3","8550","171000","20","9400","188000","S","2","10","35","PA-245","0");
INSERT INTO inv_issuedetail VALUES("260","IS-CW092","2022-05-19","2347","01-03-001","369","19","14100","28200","2","14500","29000","S","2","10","35","PA-020","0");
INSERT INTO inv_issuedetail VALUES("261","IS-CW093","2022-05-20","2348","01-03-001","369","19","14100","112800","8","14400","115200","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("262","IS-CW093","2022-05-20","2348","01-03-002","373","19","16100","16100","1","16400","16400","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("263","IS-CW093","2022-05-20","2348","01-03-005","582","19","14000","14000","1","14400","14400","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("264","IS-CW093","2022-05-20","2348","01-03-008","603","19","16000","16000","1","16400","16400","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("265","IS-CW094","2022-05-23","2350","06-01-001","592","3","900","135000","150","940","141000","S","2","10","35","PA-163","0");
INSERT INTO inv_issuedetail VALUES("266","IS-CW094","2022-05-23","2350","06-03-001","598","3","1020","153000","150","1050","157500","S","2","10","35","PA-163","0");
INSERT INTO inv_issuedetail VALUES("267","IS-CW095","2022-05-21","2349","01-01-125","499","3","6600","6600","1","7200","7200","S","2","10","35","PA-246","0");
INSERT INTO inv_issuedetail VALUES("268","IS-CW095","2022-05-21","2349","03-03-001","628","3","43","860","20","46","920","S","2","10","35","PA-246","0");
INSERT INTO inv_issuedetail VALUES("269","IS-CW096","2022-05-23","4901","01-03-005","582","19","14000","42000","3","14400","43200","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("270","IS-CW096","2022-05-23","4901","01-02-017","516","3","8850","35400","4","9300","37200","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("271","IS-CW097","2022-05-23","4802","01-02-045","578","1","8850","88500","10","9300","93000","S","2","10","35","PA-181","0");
INSERT INTO inv_issuedetail VALUES("272","IS-CW098","2022-05-23","4803","01-02-001","375","3","8550","42750","5","8900","44500","S","2","10","35","PA-177","0");
INSERT INTO inv_issuedetail VALUES("273","IS-CW098","2022-05-23","4803","01-02-001","375","3","8550","42750","5","8900","44500","S","2","10","35","PA-177","0");
INSERT INTO inv_issuedetail VALUES("274","IS-CW099","2022-05-23","4804","01-03-003","374","19","19100","57300","3","20400","61200","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("275","IS-CW099","2022-05-23","4804","01-03-005","582","19","14000","14000","1","15100","15100","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("276","IS-CW099","2022-05-23","4804","01-03-008","603","19","16000","32000","2","17100","34200","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("277","IS-CW099","2022-05-23","4804","01-03-002","373","19","16100","16100","1","17100","17100","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("278","IS-CW099","2022-05-23","4804","01-03-001","369","19","14100","14100","1","15100","15100","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("279","IS-CW100","2022-05-23","4805","01-01-125","499","3","6600","26400","4","7200","28800","S","2","10","35","PA-246","0");
INSERT INTO inv_issuedetail VALUES("280","IS-CW101","2022-05-24","4806","01-02-036","535","3","8850","88500","10","9050","90500","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("281","IS-CW101","2022-05-24","4806","01-02-049","586","1","8850","88500","10","9050","90500","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("282","IS-CW101","2022-05-24","4806","01-02-022","521","3","8850","88500","10","9050","90500","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("283","IS-CW101","2022-05-24","4806","01-02-001","375","3","8550","128250","15","8850","132750","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("284","IS-CW101","2022-05-24","4806","01-03-002","373","19","14100","28200","2","14400","28800","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("285","IS-CW101","2022-05-24","4806","01-03-001","369","19","16100","32200","2","16400","32800","S","2","10","35","PA-243","0");
INSERT INTO inv_issuedetail VALUES("286","IS-CW102","2022-05-25","4807","07-01-001","602","19","2850","42750","15","2900","43500","S","2","10","35","PA-247","0");
INSERT INTO inv_issuedetail VALUES("287","IS-CW103","2022-05-25","4808","01-01-157","571","1","8500","42500","5","9800","49000","S","2","10","35","PA-244","0");
INSERT INTO inv_issuedetail VALUES("288","IS-CW104","2022-05-27","4810","01-03-001","369","19","14100","84600","6","14400","86400","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("289","IS-CW104","2022-05-27","4810","01-03-002","373","19","16100","64400","4","16400","65600","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("290","IS-CW104","2022-05-27","4810","01-03-007","584","19","12900","12900","1","13300","13300","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("291","IS-CW104","2022-05-27","4810","01-03-008","603","19","16000","32000","2","16400","32800","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("292","IS-CW104","2022-05-27","4810","01-03-003","374","19","19100","9550","0.5","19500","9750","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("293","IS-CW104","2022-05-27","4810","07-01-001","602","19","2850","25650","9","2900","26100","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("294","IS-CW105","2022-05-27","4811","06-03-001","598","3","1020","62220","61","1060","64660","S","2","10","35","PA-248","0");
INSERT INTO inv_issuedetail VALUES("295","IS-CW105","2022-05-27","4811","06-01-001","592","3","930","52080","56","980","54880","S","2","10","35","PA-248","0");
INSERT INTO inv_issuedetail VALUES("296","IS-CW105","2022-05-27","4811","01-03-002","373","19","16100","32200","2","16300","32600","S","2","10","35","PA-248","0");
INSERT INTO inv_issuedetail VALUES("297","IS-CW105","2022-05-27","4811","01-03-001","369","19","14100","56400","4","14300","57200","S","2","10","35","PA-248","0");
INSERT INTO inv_issuedetail VALUES("298","IS-CW105","2022-05-27","4811","01-03-003","374","19","19100","38200","2","19300","38600","S","2","10","35","PA-248","0");
INSERT INTO inv_issuedetail VALUES("299","IS-CW106","2022-05-27","4813","01-01-054","428","3","8700","43500","5","10100","50500","S","2","10","35","PA-178","0");
INSERT INTO inv_issuedetail VALUES("300","IS-CW106","2022-05-27","4813","09-01-004","629","3","2800","5600","2","3100","6200","S","2","10","35","PA-178","0");
INSERT INTO inv_issuedetail VALUES("301","IS-CW107","2022-05-27","4814","01-03-008","603","19","16000","32000","2","16400","32800","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("302","IS-CW108","2022-05-27","4815","01-01-125","499","3","6600","26400","4","7000","28000","S","2","10","35","PA-249","0");
INSERT INTO inv_issuedetail VALUES("303","IS-CW109","2022-05-28","4816","01-02-030","529","3","8850","123900","14","9300","130200","S","2","10","35","PA-181","0");
INSERT INTO inv_issuedetail VALUES("304","IS-CW110","2022-05-28","2948","01-01-012","386","3","8500","42500","5","9300","46500","S","2","10","38","PA-171","0");
INSERT INTO inv_issuedetail VALUES("305","IS-CW111","2022-05-19","5601","01-01-025","399","3","8500","85000","10","9400","94000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("306","IS-CW111","2022-05-19","5601","01-01-157","571","1","8500","42500","5","9400","47000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("307","IS-CW112","2022-05-20","5602","01-01-010","384","3","8300","199200","24","9000","216000","S","2","10","31","PA-004","0");
INSERT INTO inv_issuedetail VALUES("308","IS-CW112","2022-05-20","5602","01-02-039","538","3","8250","33000","4","9000","36000","S","2","10","31","PA-004","0");
INSERT INTO inv_issuedetail VALUES("309","IS-CW113","2022-05-20","5603","01-01-026","400","3","8600","86000","10","9400","94000","S","2","10","31","PA-078","0");
INSERT INTO inv_issuedetail VALUES("310","IS-CW114","2022-05-20","5605","01-03-002","373","19","16100","16100","1","16700","16700","S","2","10","31","PA-335","0");
INSERT INTO inv_issuedetail VALUES("311","IS-CW114","2022-05-20","5605","09-02-001","642","3","930","1860","2","1000","2000","S","2","10","31","PA-335","0");
INSERT INTO inv_issuedetail VALUES("312","IS-CW115","2022-05-22","5606","01-01-117","491","3","8300","132800","16","8800","140800","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("313","IS-CW115","2022-05-22","5606","01-03-003","374","19","19100","19100","1","20000","20000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("314","IS-CW116","2022-05-23","5607","01-01-014","388","3","8500","42500","5","9800","49000","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("315","IS-CW117","2022-05-23","5608","01-01-119","493","3","8650","43250","5","9500","47500","S","2","10","31","PA-097","0");
INSERT INTO inv_issuedetail VALUES("316","IS-CW117","2022-05-23","5608","01-03-003","374","19","19100","19100","1","20000","20000","S","2","10","31","PA-097","0");
INSERT INTO inv_issuedetail VALUES("317","IS-CW118","2022-05-23","5609","01-02-005","381","3","8650","69200","8","9800","78400","S","2","10","31","PA-085","0");
INSERT INTO inv_issuedetail VALUES("318","IS-CW119","2022-05-23","5611","01-03-002","373","19","16100","16100","1","16700","16700","S","2","10","31","PA-335","0");
INSERT INTO inv_issuedetail VALUES("319","IS-CW119","2022-05-23","5611","09-02-001","642","3","930","930","1","1000","1000","S","2","10","31","PA-335","0");
INSERT INTO inv_issuedetail VALUES("320","IS-CW120","2022-05-23","5612","01-02-007","506","3","8850","35400","4","9600","38400","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("321","IS-CW120","2022-05-23","5612","03-03-011","641","1","800","1600","2","840","1680","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("322","IS-CW120","2022-05-23","5612","03-03-010","640","3","290","2900","10","310","3100","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("323","IS-CW120","2022-05-23","5612","03-03-009","639","3","470","4700","10","490","4900","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("324","IS-CW121","2022-05-23","5613","01-03-009","611","19","16000","16000","1","16500","16500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("325","IS-CW121","2022-05-23","5613","01-03-009","611","19","16000","32000","2","16500","33000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("326","IS-CW122","2022-05-25","5614","01-01-025","399","3","8500","85000","10","9400","94000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("327","IS-CW122","2022-05-25","5614","01-01-101","475","3","8500","85000","10","9400","94000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("328","IS-CW123","2022-05-26","5616","01-01-041","415","3","8300","41500","5","9000","45000","S","2","10","31","PA-002","0");
INSERT INTO inv_issuedetail VALUES("329","IS-CW123","2022-05-26","5616","01-01-047","421","3","8100","8100","1","8800","8800","S","2","10","31","PA-002","0");
INSERT INTO inv_issuedetail VALUES("331","IS-CW125","2022-05-26","5618","01-01-012","386","3","8500","42500","5","9800","49000","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("332","IS-CW125","2022-05-26","5618","01-01-089","463","3","8400","16800","2","9800","19600","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("333","IS-CW126","2022-05-26","5619","01-01-038","412","3","8100","40500","5","8800","44000","S","2","10","31","PA-053","0");
INSERT INTO inv_issuedetail VALUES("334","IS-CW127","2022-05-27","5623","01-03-002","373","19","16100","16100","1","17100","17100","S","2","10","31","PA-336","0");
INSERT INTO inv_issuedetail VALUES("335","IS-CW128","2022-05-27","5624","01-02-061","643","19","16000","32000","2","16500","33000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("336","IS-CW128","2022-05-27","5624","01-03-008","603","19","16000","32000","2","16500","33000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("337","IS-CW129","2022-05-28","5626","01-03-008","603","19","16000","48000","3","16500","49500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("340","IS-CW131","2022-05-29","5630","01-03-003","374","19","19100","19100","1","20000","20000","S","2","10","31","PA-097","0");
INSERT INTO inv_issuedetail VALUES("341","IS-CW130","2022-05-29","5429","01-03-002","373","19","16100","32200","2","16500","33000","U","1","10","31","PA-089","0");
INSERT INTO inv_issuedetail VALUES("342","IS-CW130","2022-05-29","5429","01-03-008","603","19","16100","32200","2","16500","33000","U","1","10","31","PA-089","0");
INSERT INTO inv_issuedetail VALUES("343","IS-CW132","2022-05-29","5604","11-01-001","632","3","5500","16500","3","5500","16500","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("344","IS-CW132","2022-05-29","5604","12-01-001","645","3","120","6000","50","130","6500","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("345","IS-CW132","2022-05-29","5604","03-03-005","634","2","50","500","10","60","600","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("346","IS-CW132","2022-05-29","5604","03-03-006","635","2","30","300","10","40","400","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("347","IS-CW133","2022-05-23","5610","13-01-001","637","3","10400","10400","1","13000","13000","S","2","10","31","PA-077","0");
INSERT INTO inv_issuedetail VALUES("348","IS-CW133","2022-05-23","5610","03-03-008","638","3","450","4500","10","700","7000","S","2","10","31","PA-077","0");
INSERT INTO inv_issuedetail VALUES("349","IS-CW124","2022-05-26","5617","01-03-002","373","19","16100","32200","2","17000","34000","U","1","10","31","PA-067","0");
INSERT INTO inv_issuedetail VALUES("350","IS-CW134","2022-05-26","5620","03-03-012","646","1","220","1100","5","250","1250","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("351","IS-CW134","2022-05-26","5620","03-03-013","647","3","75","1500","20","85","1700","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("352","IS-CW134","2022-05-26","5620","09-01-004","629","3","2800","16800","6","3000","18000","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("353","IS-CW134","2022-05-26","5620","01-07-001","648","3","9200","92000","10","10000","100000","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("354","IS-CW135","2022-05-26","5622","01-01-122","496","3","8600","43000","5","9600","48000","S","2","10","31","PA-080","0");
INSERT INTO inv_issuedetail VALUES("355","IS-CW135","2022-05-26","5622","01-01-093","467","3","8600","43000","5","9600","48000","S","2","10","31","PA-080","0");
INSERT INTO inv_issuedetail VALUES("356","IS-CW135","2022-05-26","5622","10-01-001","649","3","105","6300","60","110","6600","S","2","10","31","PA-080","0");
INSERT INTO inv_issuedetail VALUES("357","IS-CW135","2022-05-26","5622","03-03-013","647","3","75","750","10","85","850","S","2","10","31","PA-080","0");
INSERT INTO inv_issuedetail VALUES("360","IS-CW136","2022-05-29","4817","01-02-007","506","3","8850","132750","15","9500","142500","U","1","10","35","PA-179","0");
INSERT INTO inv_issuedetail VALUES("361","IS-CW137","2022-05-29","4818","01-02-049","586","1","8550","85500","10","8900","89000","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("362","IS-CW137","2022-05-29","4818","01-02-001","375","3","8550","51300","6","8900","53400","S","2","10","35","PA-242","0");
INSERT INTO inv_issuedetail VALUES("363","IS-CW138","2022-05-29","4819","01-03-005","582","19","14000","70000","5","14400","72000","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("364","IS-CW138","2022-05-29","4819","01-02-017","516","3","8850","35400","4","9300","37200","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("365","IS-CW138","2022-05-29","4819","01-03-001","369","19","14100","3525","0.25","14400","3600","S","2","10","35","PA-180","0");
INSERT INTO inv_issuedetail VALUES("366","IS-CW139","2022-05-07","4522","01-01-044","418","3","8600","86000","10","9600","96000","S","2","10","31","PA-337","0");
INSERT INTO inv_issuedetail VALUES("367","IS-CW140","2022-05-08","4524","01-02-005","381","3","8650","34600","4","9800","39200","S","2","10","31","PA-085","0");
INSERT INTO inv_issuedetail VALUES("368","IS-CW141","2022-05-08","4525","01-03-001","369","19","14100","14100","1","14700","14700","S","2","10","31","PA-089","0");
INSERT INTO inv_issuedetail VALUES("369","IS-CW141","2022-05-08","4525","01-03-002","373","19","16100","32200","2","16700","33400","S","2","10","31","PA-089","0");
INSERT INTO inv_issuedetail VALUES("370","IS-CW141","2022-05-08","4525","01-03-008","603","19","16100","32200","2","16700","33400","S","2","10","31","PA-089","0");
INSERT INTO inv_issuedetail VALUES("371","IS-CW142","2022-05-08","4526","01-01-157","571","1","8600","86000","10","9400","94000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("372","IS-CW142","2022-05-08","4526","01-03-008","603","19","16100","80500","5","16500","82500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("373","IS-CW142","2022-05-08","4526","01-03-009","611","19","16100","32200","2","16500","33000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("374","IS-CW143","2022-05-09","4528","01-02-063","651","3","8250","8250","1","9300","9300","S","2","10","31","PA-062","0");
INSERT INTO inv_issuedetail VALUES("375","IS-CW144","2022-05-10","4530","01-01-041","415","3","8400","252000","30","8800","264000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("376","IS-CW144","2022-05-10","4530","01-01-041","415","3","8400","16800","2","8800","17600","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("377","IS-CW144","2022-05-10","4530","01-01-010","384","3","8400","42000","5","8800","44000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("378","IS-CW145","2022-05-11","4532","01-01-092","466","3","8600","86000","10","9200","92000","S","2","10","31","PA-071","0");
INSERT INTO inv_issuedetail VALUES("379","IS-CW145","2022-05-11","4532","01-01-121","495","3","8600","86000","10","9200","92000","S","2","10","31","PA-071","0");
INSERT INTO inv_issuedetail VALUES("380","IS-CW146","2022-05-11","4533","03-03-014","652","19","8350","8350","1","8550","8550","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("381","IS-CW146","2022-05-11","4533","01-02-007","506","3","8850","17700","2","9600","19200","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("382","IS-CW147","2022-05-11","4535","01-03-009","611","19","16100","16100","1","16500","16500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("383","IS-CW147","2022-05-11","4535","01-03-008","603","19","16100","32200","2","16500","33000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("384","IS-CW147","2022-05-11","4535","01-01-157","571","1","8600","129000","15","9400","141000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("385","IS-CW148","2022-05-12","4536","01-03-002","373","19","16100","80500","5","16800","84000","S","2","10","31","PA-066","0");
INSERT INTO inv_issuedetail VALUES("386","IS-CW148","2022-05-12","4536","01-03-001","369","19","14100","70500","5","14800","74000","S","2","10","31","PA-066","0");
INSERT INTO inv_issuedetail VALUES("387","IS-CW148","2022-05-12","4536","01-03-003","374","19","19100","95500","5","20000","100000","S","2","10","31","PA-066","0");
INSERT INTO inv_issuedetail VALUES("388","IS-CW148","2022-05-12","4536","03-03-015","653","3","1200","6000","5","1350","6750","S","2","10","31","PA-066","0");
INSERT INTO inv_issuedetail VALUES("389","IS-CW149","2022-05-12","4538","01-02-056","608","1","8850","44250","5","10000","50000","S","2","10","31","PA-067","0");
INSERT INTO inv_issuedetail VALUES("390","IS-CW150","2022-05-14","4539","01-07-002","654","3","9200","138000","15","10000","150000","S","2","10","31","PA-070","0");
INSERT INTO inv_issuedetail VALUES("391","IS-CW150","2022-05-14","4539","01-07-003","655","3","8700","130500","15","10000","150000","S","2","10","31","PA-070","0");
INSERT INTO inv_issuedetail VALUES("392","IS-CW150","2022-05-14","4539","01-02-027","526","3","8850","132750","15","10000","150000","S","2","10","31","PA-070","0");
INSERT INTO inv_issuedetail VALUES("393","IS-CW151","2022-05-14","4540","06-03-001","598","3","1020","5100","5","1140","5700","S","2","10","31","PA-057","0");
INSERT INTO inv_issuedetail VALUES("394","IS-CW151","2022-05-14","4540","06-02-001","595","3","1080","5400","5","1160","5800","S","2","10","31","PA-057","0");
INSERT INTO inv_issuedetail VALUES("395","IS-CW151","2022-05-14","4540","06-01-004","601","3","850","8500","10","1000","10000","S","2","10","31","PA-057","0");
INSERT INTO inv_issuedetail VALUES("396","IS-CW152","2022-05-14","4541","01-02-006","505","3","8250","33000","4","8900","35600","S","2","10","31","PA-053","0");
INSERT INTO inv_issuedetail VALUES("397","IS-CW152","2022-05-14","4541","07-01-001","602","19","2850","8550","3","3150","9450","S","2","10","31","PA-053","0");
INSERT INTO inv_issuedetail VALUES("398","IS-CW152","2022-05-14","4541","13-01-002","656","3","8100","8100","1","9500","9500","S","2","10","31","PA-053","0");
INSERT INTO inv_issuedetail VALUES("399","IS-CW153","2022-05-14","4542","01-02-002","376","3","8850","44250","5","9500","47500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("403","IS-CW154","2022-05-14","4543","01-02-006","415","3","8300","124500","15","8800","132000","U","1","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("404","IS-CW155","2022-05-17","4544","01-02-065","658","3","8550","128250","15","9200","138000","S","2","10","31","PA-071","0");
INSERT INTO inv_issuedetail VALUES("405","IS-CW156","2022-05-17","4545","01-02-083","676","3","8850","88500","10","10000","100000","S","2","10","31","PA-086","0");
INSERT INTO inv_issuedetail VALUES("406","IS-CW156","2022-05-17","4545","01-07-001","648","3","9200","46000","5","10000","50000","S","2","10","31","PA-086","0");
INSERT INTO inv_issuedetail VALUES("407","IS-CW157","2022-05-17","4546","01-02-001","375","3","8550","85500","10","9000","90000","S","2","10","31","PA-338","0");
INSERT INTO inv_issuedetail VALUES("408","IS-CW158","2022-05-17","4547","01-01-087","461","3","8200","41000","5","8800","44000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("409","IS-CW159","2022-05-18","4548","01-01-041","415","3","8300","124500","15","8800","132000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("410","IS-CW159","2022-05-18","4548","01-01-010","384","3","8300","41500","5","8800","44000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("411","IS-CW159","2022-05-18","4548","01-03-003","374","19","19100","19100","1","20000","20000","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("412","IS-CW159","2022-05-18","4548","03-03-015","653","3","1200","1200","1","1350","1350","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("413","IS-CW160","2022-05-18","4549","01-02-029","528","3","8950","179000","20","9800","196000","S","2","10","31","PA-005","0");
INSERT INTO inv_issuedetail VALUES("414","IS-CW161","2022-05-18","4550","01-03-008","603","19","16000","80000","5","16500","82500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("415","IS-CW161","2022-05-18","4550","01-03-009","611","19","16000","80000","5","16500","82500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("416","IS-CW161","2022-05-18","4550","01-01-021","395","3","8500","42500","5","9400","47000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("417","IS-CW162","2022-05-11","3751","01-02-006","505","3","8250","165000","20","8800","176000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("418","IS-CW162","2022-05-11","3751","01-02-006","505","3","8250","82500","10","8800","88000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("419","IS-CW163","2022-05-12","3752","01-01-159","573","1","8800","70400","8","9600","76800","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("420","IS-CW163","2022-05-12","3752","01-01-012","386","3","8600","43000","5","9100","45500","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("421","IS-CW164","2022-05-12","3753","01-02-006","505","3","8250","74250","9","8700","78300","S","2","10","36","PA-275","0");
INSERT INTO inv_issuedetail VALUES("422","IS-CW165","2022-05-12","3754","01-01-042","416","3","8600","43000","5","9300","46500","S","2","10","36","PA-292","0");
INSERT INTO inv_issuedetail VALUES("423","IS-CW166","2022-05-14","3755","01-02-008","507","3","8650","112450","13","9300","120900","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("424","IS-CW166","2022-05-14","3755","06-01-001","592","3","850","4250","5","1000","5000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("425","IS-CW167","2022-05-14","3756","01-04-001","725","3","9000","180000","20","9700","194000","S","2","10","36","PA-296","0");
INSERT INTO inv_issuedetail VALUES("426","IS-CW168","2022-05-14","3757","01-01-125","499","3","6600","6600","1","7200","7200","S","2","10","36","PA-267","0");
INSERT INTO inv_issuedetail VALUES("427","IS-CW169","2022-05-14","3758","01-03-001","369","19","14100","28200","2","14700","29400","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("428","IS-CW169","2022-05-14","3758","01-03-012","621","19","14100","28200","2","14700","29400","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("429","IS-CW170","2022-05-15","3759","01-02-001","375","3","8550","42750","5","9300","46500","S","2","10","36","PA-283","0");
INSERT INTO inv_issuedetail VALUES("430","IS-CW171","2022-05-15","3760","01-03-001","369","19","14100","14100","1","14500","14500","S","2","10","36","PA-297","0");
INSERT INTO inv_issuedetail VALUES("431","IS-CW171","2022-05-15","3760","01-03-002","373","19","16100","32200","2","16500","33000","S","2","10","36","PA-297","0");
INSERT INTO inv_issuedetail VALUES("432","IS-CW172","2022-05-15","3761","01-01-001","367","3","8700","87000","10","9400","94000","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("433","IS-CW172","2022-05-15","3761","01-03-001","369","19","14100","28200","2","14700","29400","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("434","IS-CW173","2022-05-01","2207","01-02-001","375","3","8550","42750","5","9100","45500","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("435","IS-CW173","2022-05-01","2207","01-02-008","507","3","8250","82500","10","8800","88000","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("436","IS-CW173","2022-05-01","2207","01-01-119","493","3","8600","8600","1","9200","9200","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("437","IS-CW173","2022-05-01","2207","01-03-002","373","19","16100","16100","1","16500","16500","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("438","IS-CW173","2022-05-01","2207","03-02-001","624","3","9860","19720","2","10300","20600","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("439","IS-CW174","2022-05-01","2208","03-02-001","624","3","9860","59160","6","10300","61800","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("440","IS-CW175","2022-05-01","2209","01-01-125","499","3","6700","26800","4","7000","28000","S","2","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("441","IS-CW175","2022-05-01","2209","01-03-015","726","19","16100","16100","1","16500","16500","S","2","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("442","IS-CW176","2022-05-07","2210","01-03-016","727","19","14100","28200","2","14500","29000","S","2","10","34","PA-361","0");
INSERT INTO inv_issuedetail VALUES("443","IS-CW176","2022-05-07","2210","09-01-003","623","3","4500","9000","2","4550","9100","S","2","10","34","PA-361","0");
INSERT INTO inv_issuedetail VALUES("444","IS-CW177","2022-05-08","2211","01-03-003","374","19","19100","38200","2","20000","40000","S","2","10","34","PA-387","0");
INSERT INTO inv_issuedetail VALUES("445","IS-CW178","2022-05-08","2212","01-01-125","499","3","6700","26800","4","6900","27600","S","2","10","34","PA-365","0");
INSERT INTO inv_issuedetail VALUES("446","IS-CW178","2022-05-08","2212","01-01-041","415","3","8400","33600","4","8850","35400","S","2","10","34","PA-365","0");
INSERT INTO inv_issuedetail VALUES("447","IS-CW179","2022-05-09","2213","01-03-003","374","19","19100","19100","1","20000","20000","S","2","10","34","PA-423","0");
INSERT INTO inv_issuedetail VALUES("448","IS-CW180","2022-05-09","2214","01-01-001","367","3","8800","88000","10","9400","94000","S","2","10","34","PA-379","0");
INSERT INTO inv_issuedetail VALUES("449","IS-CW180","2022-05-09","2214","01-07-002","654","3","9200","46000","5","9500","47500","S","2","10","34","PA-379","0");
INSERT INTO inv_issuedetail VALUES("450","IS-CW180","2022-05-09","2214","01-02-008","507","3","8650","43250","5","9200","46000","S","2","10","34","PA-379","0");
INSERT INTO inv_issuedetail VALUES("451","IS-CW180","2022-05-09","2214","01-02-046","579","1","8550","59850","7","9100","63700","S","2","10","34","PA-379","0");
INSERT INTO inv_issuedetail VALUES("452","IS-CW181","2022-05-09","2215","01-01-125","499","3","6700","53600","8","6900","55200","S","2","10","34","PA-346","0");
INSERT INTO inv_issuedetail VALUES("453","IS-CW182","2022-05-10","2217","01-01-125","499","3","6700","26800","4","6900","27600","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("454","IS-CW182","2022-05-10","2217","01-01-167","729","3","6700","26800","4","6900","27600","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("455","IS-CW182","2022-05-10","2217","01-01-168","730","3","6700","26800","4","6900","27600","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("456","IS-CW183","2022-05-10","2218","01-01-094","468","3","8800","26400","3","9000","27000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("457","IS-CW183","2022-05-10","2218","01-01-125","499","3","6700","53600","8","7000","56000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("458","IS-CW184","2022-05-10","2219","03-02-002","625","19","14000","140000","10","14200","142000","S","2","10","34","PA-416","0");
INSERT INTO inv_issuedetail VALUES("459","IS-CW185","2022-05-10","2220","01-01-119","493","3","8600","43000","5","9000","45000","S","2","10","34","PA-413","0");
INSERT INTO inv_issuedetail VALUES("460","IS-CW186","2022-05-10","2221","01-03-002","373","19","16100","48300","3","16400","49200","S","2","10","34","PA-372","0");
INSERT INTO inv_issuedetail VALUES("461","IS-CW187","2022-05-11","2222","01-01-012","386","3","8650","43250","5","9200","46000","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("462","IS-CW187","2022-05-11","2222","03-02-002","625","19","14000","14000","1","14300","14300","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("463","IS-CW187","2022-05-11","2222","03-02-001","624","3","9880","39520","4","10300","41200","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("464","IS-CW188","2022-05-11","2223","01-03-009","611","19","16100","80500","5","16400","82000","S","2","10","34","PA-360","0");
INSERT INTO inv_issuedetail VALUES("465","IS-CW188","2022-05-11","2223","01-03-003","374","19","19100","19100","1","19500","19500","S","2","10","34","PA-360","0");
INSERT INTO inv_issuedetail VALUES("466","IS-CW189","2022-05-11","2224","01-03-001","369","19","14100","28200","2","14500","29000","S","2","10","34","PA-019","0");
INSERT INTO inv_issuedetail VALUES("467","IS-CW190","2022-05-11","2225","01-02-132","731","3","8250","33000","4","8800","35200","S","2","10","34","PA-385","0");
INSERT INTO inv_issuedetail VALUES("468","IS-CW191","2022-05-11","2226","01-01-119","493","3","8600","43000","5","9200","46000","S","2","10","34","PA-410","0");
INSERT INTO inv_issuedetail VALUES("469","IS-CW192","2022-05-11","2227","01-01-090","464","3","8600","43000","5","9000","45000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("470","IS-CW192","2022-05-11","2227","01-01-003","370","3","6700","26800","4","7000","28000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("471","IS-CW193","2022-05-11","2228","01-01-125","499","3","6700","13400","2","6900","13800","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("472","IS-CW194","2022-05-12","2233","01-01-169","732","3","6700","53600","8","7000","56000","S","2","10","34","PA-411","0");
INSERT INTO inv_issuedetail VALUES("474","IS-CW196","2022-05-12","2235","01-01-123","497","3","8950","44750","5","9500","47500","S","2","10","34","PA-355","0");
INSERT INTO inv_issuedetail VALUES("475","IS-CW197","2022-05-12","2236","01-03-017","728","19","16100","16100","1","16400","16400","S","2","10","34","PA-344","0");
INSERT INTO inv_issuedetail VALUES("476","IS-CW197","2022-05-12","2236","01-03-016","727","19","14100","14100","1","14400","14400","S","2","10","34","PA-344","0");
INSERT INTO inv_issuedetail VALUES("477","IS-CW197","2022-05-12","2236","01-03-019","734","19","14100","28200","2","14400","28800","S","2","10","34","PA-344","0");
INSERT INTO inv_issuedetail VALUES("478","IS-CW198","2022-05-13","2241","01-01-170","735","3","8400","42000","5","9000","45000","S","2","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("479","IS-CW198","2022-05-13","2241","01-03-012","621","19","14100","14100","1","14500","14500","S","2","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("480","IS-CW198","2022-05-13","2241","01-03-020","736","19","16100","16100","1","16500","16500","S","2","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("481","IS-CW199","2022-05-13","2242","01-03-019","734","19","14100","14100","1","14500","14500","S","2","10","34","PA-019","0");
INSERT INTO inv_issuedetail VALUES("482","IS-CW200","2022-05-13","2244","01-03-021","737","19","19100","38200","2","19800","39600","S","2","10","34","PA-344","0");
INSERT INTO inv_issuedetail VALUES("483","IS-CW201","2022-05-13","2245","01-02-132","731","3","8250","33000","4","8800","35200","S","2","10","34","PA-385","0");
INSERT INTO inv_issuedetail VALUES("484","IS-CW201","2022-05-13","2245","01-01-125","499","3","6600","26400","4","7200","28800","S","2","10","34","PA-385","0");
INSERT INTO inv_issuedetail VALUES("485","IS-CW202","2022-05-13","2246","01-01-123","497","3","8700","43500","5","9000","45000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("488","IS-CW204","2022-05-11","2230","01-03-022","739","19","14100","14100","1","14500","14500","S","2","10","34","PA-418","0");
INSERT INTO inv_issuedetail VALUES("489","IS-CW205","2022-05-12","2231","01-02-006","505","3","8250","41250","5","8800","44000","S","2","10","34","PA-408","0");
INSERT INTO inv_issuedetail VALUES("490","IS-CW206","2022-05-12","2232","01-01-041","415","3","8400","42000","5","8900","44500","S","2","10","34","PA-408","0");
INSERT INTO inv_issuedetail VALUES("491","IS-CW207","2022-05-12","2237","06-01-001","592","3","850","85000","100","920","92000","S","2","10","34","PA-342","0");
INSERT INTO inv_issuedetail VALUES("492","IS-CW208","2022-05-12","2238","06-01-001","592","3","850","107100","126","920","115920","S","2","10","34","PA-352","0");
INSERT INTO inv_issuedetail VALUES("493","IS-CW209","2022-05-12","2240","06-01-001","592","3","850","17000","20","920","18400","S","2","10","34","PA-356","0");
INSERT INTO inv_issuedetail VALUES("494","IS-CW210","2022-05-13","2243","01-01-012","386","3","8500","42500","5","9300","46500","S","2","10","34","PA-407","0");
INSERT INTO inv_issuedetail VALUES("512","IS-CW211","2022-05-01","2295","01-02-132","731","3","8250","82500","10","8800","88000","U","1","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("516","IS-CW213","2022-05-08","2297","01-01-117","491","3","8250","247500","30","8450","253500","U","1","10","36","PA-300","0");
INSERT INTO inv_issuedetail VALUES("517","IS-CW214","2022-05-08","2298","01-01-171","740","3","6700","134000","20","7100","142000","U","1","10","36","PA-296","0");
INSERT INTO inv_issuedetail VALUES("518","IS-CW215","2022-05-09","2299","01-01-125","499","3","6700","13400","2","7200","14400","U","1","10","36","PA-267","0");
INSERT INTO inv_issuedetail VALUES("519","IS-CW216","2022-05-10","2300","03-02-002","625","19","14000","28000","2","14400","28800","U","1","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("520","IS-CW218","2022-05-17","3764","01-02-133","741","3","8950","35800","4","9400","37600","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("521","IS-CW218","2022-05-17","3764","01-03-002","373","19","16100","16100","1","16700","16700","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("522","IS-CW219","2022-05-17","3765","01-01-125","499","3","6600","52800","8","7000","56000","S","2","10","36","PA-262","0");
INSERT INTO inv_issuedetail VALUES("523","IS-CW220","2022-05-18","3766","01-02-134","742","3","8650","259500","30","9300","279000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("524","IS-CW221","2022-05-18","3767","01-01-014","388","3","8500","42500","5","9000","45000","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("525","IS-CW221","2022-05-18","3767","01-01-041","415","3","8250","33000","4","8700","34800","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("526","IS-CW222","2022-05-18","3768","01-03-001","369","19","14100","70500","5","14300","71500","S","2","10","36","PA-306","0");
INSERT INTO inv_issuedetail VALUES("527","IS-CW222","2022-05-18","3768","01-03-002","373","19","16100","80500","5","16300","81500","S","2","10","36","PA-306","0");
INSERT INTO inv_issuedetail VALUES("528","IS-CW223","2022-05-18","3769","01-01-012","386","3","8500","34000","4","9000","36000","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("529","IS-CW223","2022-05-18","3769","01-01-159","573","1","8800","26400","3","9700","29100","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("530","IS-CW224","2022-05-18","3770","01-03-002","373","19","16100","16100","1","16500","16500","S","2","10","36","PA-297","0");
INSERT INTO inv_issuedetail VALUES("531","IS-CW225","2022-05-19","3771","01-01-117","491","3","8250","247500","30","8800","264000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("532","IS-CW226","2022-05-19","3772","01-03-001","369","19","14100","56400","4","14700","58800","S","2","10","36","PA-017","0");
INSERT INTO inv_issuedetail VALUES("533","IS-CW227","2022-05-19","3773","01-03-001","369","19","14100","28200","2","14500","29000","S","2","10","36","PA-297","0");
INSERT INTO inv_issuedetail VALUES("534","IS-CW227","2022-05-19","3773","01-03-002","373","19","16100","16100","1","16500","16500","S","2","10","36","PA-297","0");
INSERT INTO inv_issuedetail VALUES("535","IS-CW228","2022-05-19","3774","01-03-001","369","19","14100","14100","1","14500","14500","S","2","10","36","PA-293","0");
INSERT INTO inv_issuedetail VALUES("536","IS-CW229","2022-05-21","3375","01-02-007","506","3","8850","44250","5","9500","47500","S","2","10","36","PA-016","0");
INSERT INTO inv_issuedetail VALUES("537","IS-CW230","2022-05-21","3777","01-01-117","491","3","8250","82500","10","8700","87000","S","2","10","36","PA-275","0");
INSERT INTO inv_issuedetail VALUES("538","IS-CW231","2022-05-21","3778","01-01-158","572","1","8700","43500","5","9500","47500","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("539","IS-CW231","2022-05-21","3778","06-01-002","593","3","900","13500","15","1020","15300","S","2","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("540","IS-CW232","2022-05-22","3780","01-01-119","493","3","8250","82500","10","8800","88000","S","2","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("541","IS-CW233","2022-05-22","3781","01-02-001","375","3","8550","42750","5","9200","46000","S","2","10","36","PA-307","0");
INSERT INTO inv_issuedetail VALUES("542","IS-CW203","2022-05-10","2216","03-03-016","738","3","2350","7050","3","2400","7200","U","1","10","34","PA-409","0");
INSERT INTO inv_issuedetail VALUES("543","IS-CW203","2022-05-10","2216","03-02-002","625","19","14000","28000","2","14400","28800","U","1","10","34","PA-409","0");
INSERT INTO inv_issuedetail VALUES("544","IS-CW195","2022-05-12","2234","01-03-003","737","19","19100","19100","1","20000","20000","U","1","10","34","PA-406","0");
INSERT INTO inv_issuedetail VALUES("545","IS-CW234","2022-05-11","2229","01-01-103","477","3","8800","79200","9","9400","84600","S","2","10","34","PA-374","0");
INSERT INTO inv_issuedetail VALUES("546","IS-CW234","2022-05-11","2229","09-01-003","623","3","4500","4500","1","4600","4600","S","2","10","34","PA-374","0");
INSERT INTO inv_issuedetail VALUES("547","IS-CW235","2022-05-12","2238","06-01-001","592","3","850","170000","200","910","182000","S","2","10","34","PA-403","0");
INSERT INTO inv_issuedetail VALUES("548","IS-CW235","2022-05-12","2238","03-03-017","743","3","3900","23400","6","4300","25800","S","2","10","34","PA-403","0");
INSERT INTO inv_issuedetail VALUES("549","IS-CW236","2022-05-13","2247","01-01-012","386","3","8650","43250","5","9200","46000","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("550","IS-CW236","2022-05-13","2247","03-02-001","624","3","14200","28400","2","14300","28600","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("551","IS-CW236","2022-05-13","2247","09-01-003","623","3","4500","22500","5","4560","22800","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("552","IS-CW236","2022-05-13","2247","07-01-001","602","19","3130","9390","3","3300","9900","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("553","IS-CW236","2022-05-13","2247","06-01-001","592","3","850","4250","5","1000","5000","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("554","IS-CW236","2022-05-13","2247","01-01-012","386","3","8650","43250","5","9200","46000","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("555","IS-CW236","2022-05-13","2247","06-02-001","595","3","1090","5450","5","1140","5700","S","2","10","34","PA-397","0");
INSERT INTO inv_issuedetail VALUES("556","IS-CW237","2022-05-14","2248","06-03-002","599","3","1020","10200","10","1060","10600","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("557","IS-CW237","2022-05-14","2248","06-01-001","592","3","850","12750","15","950","14250","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("558","IS-CW237","2022-05-14","2248","06-02-002","596","3","1090","10900","10","1140","11400","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("559","IS-CW237","2022-05-14","2248","03-03-018","744","3","260","13000","50","270","13500","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("560","IS-CW237","2022-05-14","2248","03-03-020","746","3","550","11000","20","560","11200","S","2","10","34","PA-392","0");
INSERT INTO inv_issuedetail VALUES("561","IS-CW238","2022-05-14","2249","01-01-172","747","3","6600","52800","8","6900","55200","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("562","IS-CW238","2022-05-14","2249","01-01-125","499","3","6600","52800","8","6900","55200","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("563","IS-CW238","2022-05-14","2249","01-01-165","618","1","6600","6600","1","6900","6900","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("564","IS-CW238","2022-05-14","2249","01-01-167","729","3","6600","26400","4","6900","27600","S","2","10","34","PA-345","0");
INSERT INTO inv_issuedetail VALUES("565","IS-CW239","2022-05-14","2250","01-01-016","390","3","8700","43500","5","9000","45000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("566","IS-CW239","2022-05-14","2250","01-01-003","370","3","6600","26400","4","7000","28000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("567","IS-CW239","2022-05-14","2250","01-01-125","499","3","6600","26400","4","7000","28000","S","2","10","34","PA-383","0");
INSERT INTO inv_issuedetail VALUES("579","IS-CW241","2022-05-29","5631","09-01-005","644","3","1200","2400","2","1350","2700","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("580","IS-CW241","2022-05-29","5631","01-03-003","374","19","19100","38200","2","19800","39600","S","2","10","31","PA-059","0");
INSERT INTO inv_issuedetail VALUES("581","IS-CW242","2022-05-29","5632","01-02-120","713","3","8950","134250","15","10000","150000","S","2","10","31","PA-082","0");
INSERT INTO inv_issuedetail VALUES("582","IS-CW243","2022-05-29","5633","01-01-026","400","3","8600","86000","10","9400","94000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("583","IS-CW243","2022-05-29","5633","01-01-112","486","3","8600","43000","5","9400","47000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("584","IS-CW243","2022-05-29","5633","01-03-009","611","19","16000","80000","5","16500","82500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("585","IS-CW244","2022-05-30","5635","01-01-157","571","1","8500","42500","5","9400","47000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("586","IS-CW244","2022-05-30","5635","01-03-008","603","19","16000","16000","1","16500","16500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("587","IS-CW244","2022-05-30","5635","01-03-009","611","19","16000","16000","1","16500","16500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("588","IS-CW244","2022-05-30","5635","01-03-008","603","19","16000","48000","3","16500","49500","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("589","IS-CW245","2022-05-30","5638","01-03-014","626","19","16100","16100","1","16600","16600","S","2","10","31","PA-085","0");
INSERT INTO inv_issuedetail VALUES("590","IS-CW245","2022-05-30","5638","01-03-002","373","19","16100","16100","1","16600","16600","S","2","10","31","PA-085","0");
INSERT INTO inv_issuedetail VALUES("591","IS-CW245","2022-05-30","5638","09-01-002","620","3","580","1740","3","680","2040","S","2","10","31","PA-085","0");
INSERT INTO inv_issuedetail VALUES("592","IS-CW246","2022-05-30","5640","01-02-132","731","3","8300","8300","1","9000","9000","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("593","IS-CW246","2022-05-30","5640","01-01-015","389","3","8600","43000","5","9800","49000","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("594","IS-CW246","2022-05-30","5640","01-01-173","758","3","8600","43000","5","9800","49000","S","2","10","31","PA-088","0");
INSERT INTO inv_issuedetail VALUES("595","IS-CW247","2022-05-31","5643","01-02-002","376","3","8550","34200","4","9400","37600","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("596","IS-CW247","2022-05-31","5643","01-03-009","611","19","16000","64000","4","16500","66000","S","2","10","31","PA-250","0");
INSERT INTO inv_issuedetail VALUES("601","IS-CW248","2022-05-10","4531","09-01-003","623","3","315","3150","10","340","3400","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("602","IS-CW248","2022-05-10","4531","03-03-003","631","3","400","4000","10","420","4200","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("603","IS-CW248","2022-05-10","4531","09-01-004","629","3","2800","5600","2","2950","5900","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("604","IS-CW248","2022-05-10","4531","03-02-001","624","3","14000","14000","1","14400","14400","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("605","IS-CW249","2022-05-10","4527","05-01-003","759","3","36","3600","100","50","5000","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("606","IS-CW249","2022-05-10","4527","06-01-004","601","3","2550","25500","10","2800","28000","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("607","IS-CW249","2022-05-10","4527","09-01-006","776","3","4500","9000","2","4600","9200","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("608","IS-CW249","2022-05-10","4527","03-03-042","777","3","3900","19500","5","4100","20500","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("609","IS-CW249","2022-05-10","4527","03-03-040","774","3","1800","9000","5","2000","10000","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("610","IS-CW249","2022-05-10","4527","03-03-041","775","3","1620","8100","5","1800","9000","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("611","IS-CW249","2022-05-10","4527","03-03-024","751","3","55","2750","50","65","3250","S","2","10","31","PA-049","0");
INSERT INTO inv_issuedetail VALUES("640","IS-CW212","2022-05-07","2296","01-01-159","573","1","8800","44000","5","9600","48000","U","1","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("641","IS-CW212","2022-05-07","2296","01-01-012","386","3","8600","25800","3","9100","27300","U","1","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("642","IS-CW212","2022-05-07","2296","07-01-001","602","19","2900","8700","3","3100","9300","U","1","10","36","PA-269","0");
INSERT INTO inv_issuedetail VALUES("643","IS-CW217","2022-05-16","3762","01-07-001","648","3","9200","276000","30","9800","294000","U","1","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("644","IS-CW217","2022-05-16","3762","06-01-004","601","3","850","8500","10","1000","10000","U","1","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("645","IS-CW217","2022-05-16","3762","03-02-001","624","3","14000","28000","2","14400","28800","U","1","10","36","PA-294","0");
INSERT INTO inv_issuedetail VALUES("646","IS-CW251","2022-05-11","4534","03-03-016","738","3","2350","11750","5","2600","13000","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("647","IS-CW251","2022-05-11","4534","03-02-001","624","3","14000","70000","5","14300","71500","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("648","IS-CW251","2022-05-11","4534","06-01-001","592","3","850","42500","50","950","47500","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("649","IS-CW251","2022-05-11","4534","01-02-135","781","3","8600","34400","4","9800","39200","S","2","10","31","PA-055","0");
INSERT INTO inv_issuedetail VALUES("650","IS-CW252","2022-05-12","4537","03-03-036","770","3","25","2500","100","28","2800","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("651","IS-CW252","2022-05-12","4537","03-03-037","771","3","23","2300","100","26","2600","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("652","IS-CW252","2022-05-12","4537","03-03-038","772","3","4.5","450","100","5.5","550","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("653","IS-CW252","2022-05-12","4537","03-03-027","754","3","200","2000","10","220","2200","S","2","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("654","IS-CW253","2022-05-22","3782","01-02-046","579","1","8550","171000","20","8900","178000","S","2","10","36","PA-274","0");
INSERT INTO inv_issuedetail VALUES("655","IS-CW253","2022-05-22","3782","01-02-062","650","3","8550","85500","10","8900","89000","S","2","10","36","PA-274","0");
INSERT INTO inv_issuedetail VALUES("656","IS-CW254","2022-05-22","3783","01-03-003","374","19","19100","38200","2","19500","39000","S","2","10","36","PA-262","0");
INSERT INTO inv_issuedetail VALUES("657","IS-CW255","2022-05-22","3785","01-03-001","369","19","14100","141000","10","14400","144000","S","2","10","36","PA-270","0");
INSERT INTO inv_issuedetail VALUES("658","IS-CW255","2022-05-22","3785","01-03-002","373","19","16100","161000","10","16400","164000","S","2","10","36","PA-270","0");
INSERT INTO inv_issuedetail VALUES("660","IS-CW240","2022-05-08","4523","03-03-026","753","3","8","800","100","10","1000","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("661","IS-CW240","2022-05-08","4523","03-03-023","750","3","8","800","100","10","1000","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("662","IS-CW240","2022-05-08","4523","03-03-025","752","3","6.5","650","100","8","800","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("663","IS-CW240","2022-05-08","4523","03-03-028","755","3","40","2000","50","45","2250","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("664","IS-CW240","2022-05-08","4523","03-03-022","749","3","40","1200","30","45","1350","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("665","IS-CW240","2022-05-08","4523","03-03-024","751","3","90","1890","21","100","2100","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("666","IS-CW240","2022-05-08","4523","03-03-027","754","3","128","2560","20","135","2700","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("667","IS-CW240","2022-05-08","4523","03-03-021","748","3","935","9350","10","975","9750","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("668","IS-CW240","2022-05-08","4523","03-03-029","756","3","645","6450","10","690","6900","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("669","IS-CW240","2022-05-08","4523","06-01-004","601","3","2550","12750","5","2750","13750","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("670","IS-CW240","2022-05-08","4523","03-03-030","757","3","500","1000","2","500","1000","U","1","10","31","PA-064","0");
INSERT INTO inv_issuedetail VALUES("671","IS-CW250","2022-05-10","4529","03-04-001","761","3","30","900","30","34","1020","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("672","IS-CW250","2022-05-10","4529","03-04-002","763","3","95","1140","12","100","1200","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("673","IS-CW250","2022-05-10","4529","03-05-003","780","3","120","1440","12","130","1560","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("674","IS-CW250","2022-05-10","4529","03-05-001","766","3","162","1944","12","175","2100","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("675","IS-CW250","2022-05-10","4529","03-03-032","764","3","47.5","475","10","52.5","525","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("676","IS-CW250","2022-05-10","4529","03-03-031","762","3","200","2000","10","210","2100","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("677","IS-CW250","2022-05-10","4529","03-03-044","779","3","150","750","5","180","900","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("678","IS-CW250","2022-05-10","4529","03-03-033","765","3","125","500","4","140","560","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("679","IS-CW250","2022-05-10","4529","03-03-034","768","3","250","750","3","260","780","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("680","IS-CW250","2022-05-10","4529","03-03-043","778","3","290","580","2","320","640","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("681","IS-CW250","2022-05-10","4529","03-03-017","743","3","3900","3900","1","4300","4300","U","1","10","31","PA-060","0");
INSERT INTO inv_issuedetail VALUES("682","IS-CW256","2022-06-06","3786","01-02-046","579","1","8550","247950","29","8900","258100","U","1","10","36","PA-263","0");
INSERT INTO inv_issuedetail VALUES("683","IS-CW257","2022-06-07","247","01-03-006","583","19","10","10","500","20","10000","S","2","10","45","PA-450","0");
INSERT INTO inv_issuedetail VALUES("684","IS-CW258","2022-06-05","0","01-03-007","584","19","300","300","1","400","400","S","2","10","45","PA-450","0");
INSERT INTO inv_issuedetail VALUES("685","IS-CW259","2022-06-08","54","01-03-017","728","19","100","100","1","200","200","S","2","10","31","PA-097","0");
INSERT INTO inv_issuedetail VALUES("686","IS-MP001","2022-06-09","644","01-01-001","367","3","10","40","4","20","80","S","2","18","32","PA-425","0");
INSERT INTO inv_issuedetail VALUES("687","IS-CW260","2022-06-12","55","01-03-024","784","3","500","10000","20","200","4000","S","2","10","31","PA-003","0");
INSERT INTO inv_issuedetail VALUES("688","IS-CW261","2022-06-12","0","01-03-022","739","19","100","100","1","200","200","S","2","10","32","PA-425","0");



CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO inv_item_unit VALUES("1","kg");
INSERT INTO inv_item_unit VALUES("2","bag");
INSERT INTO inv_item_unit VALUES("3","pcs");
INSERT INTO inv_item_unit VALUES("4","Ton");
INSERT INTO inv_item_unit VALUES("6","ltr");
INSERT INTO inv_item_unit VALUES("7","Drum");
INSERT INTO inv_item_unit VALUES("8","CFT");
INSERT INTO inv_item_unit VALUES("9","Nos");
INSERT INTO inv_item_unit VALUES("12","RFT");
INSERT INTO inv_item_unit VALUES("13","Coil ");
INSERT INTO inv_item_unit VALUES("14","SFT");
INSERT INTO inv_item_unit VALUES("15","Gallon");
INSERT INTO inv_item_unit VALUES("16","Bundle-u");
INSERT INTO inv_item_unit VALUES("17","Dozn");
INSERT INTO inv_item_unit VALUES("18","Roll");
INSERT INTO inv_item_unit VALUES("19","set");
INSERT INTO inv_item_unit VALUES("20","Box");
INSERT INTO inv_item_unit VALUES("21","Liter");



CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id_code` varchar(10) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `brand_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=785 DEFAULT CHARSET=latin1;

INSERT INTO inv_material VALUES("367","01-01-001","40","160","H POWER 29KG G","","","0","","","0","3","100","600","","","2000","","","","");
INSERT INTO inv_material VALUES("368","01-01-002","40","160","Magnet 27Kg N","","","0","","","0","3","0","0","","","400","","","","");
INSERT INTO inv_material VALUES("369","01-03-001","40","162","95AH DJDG","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("370","01-01-003","40","160","Eilong 22kg w","Zhoo","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("371","01-01-004","40","160","King Power 29kg N","Zhoo","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("372","01-01-005","40","160","Power Plus 29kg G","Zhoo","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("373","01-03-002","40","162","120Ah DjDG","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("374","01-03-003","40","162","220Ah DjDG","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("375","01-02-001","40","161","Power Plus MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("376","01-02-002","40","161","3 Dragon N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("377","01-02-003","40","161","Henli Special MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("378","01-01-006","40","160","Yuandi Borac 28.5kg N","","","0","","","0","3","0","0","","","600","","","","");
INSERT INTO inv_material VALUES("379","01-02-004","40","161","Hangli 2","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("380","01-01-007","40","160","Power Gold 28.5 N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("381","01-02-005","40","161","MM high power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("382","01-01-008","40","160","Eilong 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("383","01-01-009","40","160","Eilong 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("384","01-01-010","40","160","Eilong 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("385","01-01-011","40","160","Eilong 28.5kgN","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("386","01-01-012","40","160","Eilong 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("387","01-01-013","40","160","Eilong 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("388","01-01-014","40","160","Eilong 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("389","01-01-015","40","160","Eilong 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("390","01-01-016","40","160","Eilong 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("391","01-01-017","40","160","Eilong 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("392","01-01-018","40","160","Eilong 24kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("393","01-01-019","40","160","H Power 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("394","01-01-020","40","160","H Power 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("395","01-01-021","40","160","H Power 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("396","01-01-022","40","160","H Power 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("397","01-01-023","40","160","H Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("398","01-01-024","40","160","H Power 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("399","01-01-025","40","160","H Power 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("400","01-01-026","40","160","H Power 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("401","01-01-027","40","160","H Power 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("402","01-01-028","40","160","China Power 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("403","01-01-029","40","160","China Power 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("404","01-01-030","40","160","China Power 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("405","01-01-031","40","160","China Power 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("406","01-01-032","40","160","China Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("407","01-01-033","40","160","China Power 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("408","01-01-034","40","160","China Power 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("409","01-01-035","40","160","China Power 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("410","01-01-036","40","160","China Power 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("411","01-01-037","40","160","China Power 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("412","01-01-038","40","160","Power Plus 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("413","01-01-039","40","160","Power Plus 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("414","01-01-040","40","160","Power Plus 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("415","01-01-041","40","160","Power Plus 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("416","01-01-042","40","160","Power Plus 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("417","01-01-043","40","160","Power Plus 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("418","01-01-044","40","160","Power Plus 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("419","01-01-045","40","160","Power Plus 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("420","01-01-046","40","160","Power Plus 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("421","01-01-047","40","160","Yuandi Borac 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("422","01-01-048","40","160","Yuandi Borac 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("423","01-01-049","40","160","Yuandi Borac 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("424","01-01-050","40","160","Yuandi Borac 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("425","01-01-051","40","160","Yuandi Borac 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("426","01-01-052","40","160","Yuandi Borac 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("427","01-01-053","40","160","Yuandi Borac 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("428","01-01-054","40","160","Yuandi Borac 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("429","01-01-055","40","160","Yuandi Borac 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("430","01-01-056","40","160","Borac Super 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("431","01-01-057","40","160","Borac Super 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("432","01-01-058","40","160","Borac Super 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("433","01-01-059","40","160","Borac Super 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("434","01-01-060","40","160","Borac Super 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("435","01-01-061","40","160","Borac Super 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("436","01-01-062","40","160","Borac Super 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("437","01-01-063","40","160","Borac Super 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("438","01-01-064","40","160","Borac Super 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("439","01-01-065","40","160","Borac Super 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("440","01-01-066","40","160","Pacific 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("441","01-01-067","40","160","Pacific 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("442","01-01-068","40","160","Pacific 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("443","01-01-069","40","160","Pacific 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("444","01-01-070","40","160","Pacific 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("445","01-01-071","40","160","Pacific 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("446","01-01-072","40","160","Pacific 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("447","01-01-073","40","160","Pacific 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("448","01-01-074","40","160","Pacific 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("449","01-01-075","40","160","Pacific 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("450","01-01-076","40","160","SF 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("451","01-01-077","40","160","SF 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("452","01-01-078","40","160","SF 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("453","01-01-079","40","160","SF 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("454","01-01-080","40","160","SF 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("455","01-01-081","40","160","SF 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("456","01-01-082","40","160","SF 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("457","01-01-083","40","160","SF 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("458","01-01-084","40","160","SF 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("459","01-01-085","40","160","SF 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("460","01-01-086","40","160","Kin Power 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("461","01-01-087","40","160","Kin Power 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("462","01-01-088","40","160","Kin Power 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("463","01-01-089","40","160","Kin Power 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("464","01-01-090","40","160","Kin Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("465","01-01-091","40","160","Kin Power 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("466","01-01-092","40","160","Kin Power 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("467","01-01-093","40","160","Kin Power 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("468","01-01-094","40","160","Kin Power 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("469","01-01-095","40","160","Kin Power 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("470","01-01-096","40","160","Magnet 27.5Kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("471","01-01-097","40","160","Magnet 28Kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("472","01-01-098","40","160","Magnet 28.5Kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("473","01-01-099","40","160","Magnet 29Kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("474","01-01-100","40","160","Magnet 29.5Kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("475","01-01-101","40","160","Magnet 28Kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("476","01-01-102","40","160","Magnet 28.5Kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("477","01-01-103","40","160","Magnet 29Kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("478","01-01-104","40","160","Magnet 29.5Kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("479","01-01-105","40","160","E Power 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("480","01-01-106","40","160","E Power 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("481","01-01-107","40","160","E Power 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("482","01-01-108","40","160","E Power 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("483","01-01-109","40","160","E Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("484","01-01-110","40","160","E Power 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("485","01-01-111","40","160","E Power 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("486","01-01-112","40","160","E Power 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("487","01-01-113","40","160","E Power 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("488","01-01-114","40","160","E Power 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("489","01-01-115","40","160","Power Plus Janding 27kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("490","01-01-116","40","160","Power Plus Janding 27.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("491","01-01-117","40","160","Power Plus Janding 28kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("492","01-01-118","40","160","Power Plus Janding 28.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("493","01-01-119","40","160","Power Plus Janding 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("494","01-01-120","40","160","Power Plus Janding 29.5kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("495","01-01-121","40","160","Power Plus Janding 28kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("496","01-01-122","40","160","Power Plus Janding 28.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("497","01-01-123","40","160","Power Plus Janding 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("498","01-01-124","40","160","Power Plus Janding 29.5kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("499","01-01-125","40","160","Power Plus 22kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("500","01-01-126","40","160","Power Plus 24kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("501","01-01-127","40","160","XS 22kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("502","01-01-128","40","160","XS 24kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("503","01-01-129","40","160","XP 22kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("504","01-01-130","40","160","XP 24kg W","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("505","01-02-006","40","161","Power Plus N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("506","01-02-007","40","161","Power Plus MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("507","01-02-008","40","161","Power Plus 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("508","01-02-009","40","161","Power Plus 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("509","01-02-010","40","161","Eilong N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("510","01-02-011","40","161","Eilong MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("511","01-02-012","40","161","Eilong MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("512","01-02-013","40","161","Eilong 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("513","01-02-014","40","161","Eilong 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("514","01-02-015","40","161","OT Power N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("515","01-02-016","40","161","OT Power MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("516","01-02-017","40","161","OT Power MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("517","01-02-018","40","161","OT Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("518","01-02-019","40","161","OT Power 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("519","01-02-020","40","161","Hangli N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("520","01-02-021","40","161","Hangli MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("521","01-02-022","40","161","Hangli MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("522","01-02-023","40","161","Hangli 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("523","01-02-024","40","161","Hangli 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("524","01-02-025","40","161","Star Gold N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("525","01-02-026","40","161","Star Gold MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("526","01-02-027","40","161","Star Gold MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("527","01-02-028","40","161","Star Gold 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("528","01-02-029","40","161","Star Gold 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("529","01-02-030","40","161","3 Dragon MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("530","01-02-031","40","161","3 Dragon MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("531","01-02-032","40","161","3 Dragon 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("532","01-02-033","40","161","3 Dragon 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("533","01-02-034","40","161","SA Power N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("534","01-02-035","40","161","SA Power MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("535","01-02-036","40","161","SA Power MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("536","01-02-037","40","161","SA Power 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("537","01-02-038","40","161","SA Power 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("538","01-02-039","40","161","Borac Super N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("539","01-02-040","40","161","Borac Super MM","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("540","01-02-041","40","161","Borac Super MM G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("541","01-02-042","40","161","Borac Super 29kg N","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("542","01-02-043","40","161","Borac Super 29kg G","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("543","01-05-001","40","164","Scrap Material","Scrap","","12","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("544","02-01-001","41","165","Scrap material","Scrap","","100","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("545","01-01-131","40","160","TomTom 27kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("546","01-01-132","40","160","TomTom 27.5Kg N","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("547","01-01-133","40","160","TomTom 28 Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("548","01-01-134","40","160","TomTom 28.5 kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("549","01-01-135","40","160","TomTom 29kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("550","01-01-136","40","160","TomTom 29.5kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("551","01-01-137","40","160","TomTom 28Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("552","01-01-138","40","160","TomTom 28.5Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("553","01-01-139","40","160","TomTom 29 kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("554","01-01-140","40","160","TomTom 29.5kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("555","01-01-141","40","160","Dowedo 27kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("556","01-01-142","40","160","Dowedo 27.5kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("557","01-01-143","40","160","Dowedo 28kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("558","01-01-144","40","160","Dowedo 28.5kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("559","01-01-145","40","160","Dowedo 29kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("560","01-01-146","40","160","Dowedo 29.5kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("561","01-01-147","40","160","Dowedo 28kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("562","01-01-148","40","160","Dowedo 28.5kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("563","01-01-149","40","160","Dowedo 29kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("564","01-01-150","40","160","Dowedo 29.5kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("565","01-01-151","40","160","Power Gold 27Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("566","01-01-152","40","160","Power Gold27.5Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("567","01-01-153","40","160","Power Gold 28Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("568","01-01-154","40","160","Power Gold 28.5Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("569","01-01-155","40","160","Power Gold 29Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("570","01-01-156","40","160","Power Gold 29.5Kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("571","01-01-157","40","160","Power Gold 28Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("572","01-01-158","40","160","Power Gold 28.5Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("573","01-01-159","40","160","Power Gold 29Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("574","01-01-160","40","160","Power Gold 29.5Kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("575","01-01-161","40","160","Borac Super 22Kg (W)","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("576","01-01-162","40","160","Borac Super 24Kg (W)","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("577","01-02-044","40","161","1Dragon MM","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("578","01-02-045","40","161","1Dragon MM G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("579","01-02-046","40","161","Power plus modonpal MM","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("580","01-02-047","40","161","Lotus N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("581","01-03-004","40","162","110Ah Power Plus","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("582","01-03-005","40","162","110Ah Horse Power","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("583","01-03-006","40","162","95Ah DJking","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("584","01-03-007","40","162","70Ah DJDG","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("585","01-02-048","40","161","OX power N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("586","01-02-049","40","161","king Power MM","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("587","01-02-050","40","161","king Power MM G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("588","01-02-051","40","161","king Power 29kg N","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("589","01-02-052","40","161","king Power 29kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("590","05-01-001","44","168","Single Casing","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("591","05-01-002","44","168","Double casing","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("592","06-01-001","45","169","Yuandi H Power glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("593","06-01-002","45","169","Sandi H Power glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("594","06-01-003","45","169","Main born H Power glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("595","06-02-001","45","170","Borac Yuandi glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("596","06-02-002","45","170","Borac Sandi glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("597","06-02-003","45","170","Borac Main Born glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("598","06-03-001","45","171","Trust Yuandi glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("599","06-03-002","45","171","Trust Sandi Glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("600","06-03-003","45","171","Trust Main Born glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("601","06-01-004","45","169","H Power frame Glass","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("602","07-01-001","46","172","sk soket Jamper","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("603","01-03-008","40","162","130Ah high power MM","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("604","01-02-053","40","161","Mahadi Power G","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("605","08-01-001","47","173","Acid Water","","","0","","","0","21","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("606","01-02-054","40","161","Long story MM","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("607","01-02-055","40","161","Long story N","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("608","01-02-056","40","161","Long story MM G","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("609","01-02-057","40","161","Long story 29kg N","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("610","01-02-058","40","161","Long story 29kg G","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("611","01-03-009","40","162","130Ah Horse Power","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("612","01-01-163","40","160","XS Power 29kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("613","01-03-010","40","162","95Ah Sing Power","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("614","01-03-011","40","162","95Ah Power Plus","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("615","01-02-059","40","161","Mars Power 29kg G","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("616","09-01-001","48","174","J R 250Ah Charger","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("617","01-01-164","40","160","Magnet 22kg (W)","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("618","01-01-165","40","160","Yuandi Borac 22kg W","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("619","01-01-166","40","160","Yuandi Borac 24kg W","","CIVIL","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("620","09-01-002","48","174","100Ah Charger","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("621","01-03-012","40","162","100Ah MM","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("622","01-03-013","40","162","120Ah MM","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("623","09-01-003","48","174","60V Tamar Charger ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("624","03-02-001","42","175","Datai Motors","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("625","03-02-002","42","175","Datai motors set","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("626","01-03-014","40","162","150Ah Xing Power","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("627","01-02-060","40","161","LOTUS MM","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("628","03-03-001","42","176","Chaclet Dabule","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("629","09-01-004","48","174","48V","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("630","03-03-002","42","176","Borac Chasma ","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("631","03-03-003","42","176","4 stick Hafs","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("632","11-01-001","50","178","Old Battery","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("633","03-03-004","42","176","Tie Cable Parts","","CIVIL","0","","","0","2","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("634","03-03-005","42","176","Tie Cable big","","","0","","","0","2","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("635","03-03-006","42","176","Tie Cable middle","","","0","","","0","2","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("636","03-03-007","42","176","48v Headlight","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("637","13-01-001","52","180","Body ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("638","03-03-008","42","176","Dram","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("639","03-03-009","42","176","XL China 19 "inch"","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("640","03-03-010","42","176","XL Bangla 19 "inch"","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("641","03-03-011","42","176","Jahajs Cable","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("642","09-02-001","48","177","150Ah Charger","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("643","01-02-061","40","161","130Ah MM Plate","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("644","09-01-005","48","174","250Ah Charger","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("645","12-01-001","51","179","2.75.14 Meghna Tube","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("646","03-03-012","42","176","12 no. nut Full pess","","","0","","","0","1","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("647","03-03-013","42","176","Borac Spandle","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("648","01-07-001","40","182","Power Plus Strong Eco","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("649","10-01-001","49","183","Tiner Dayod","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("650","01-02-062","40","161","Power Plus Jinding MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("651","01-02-063","40","161","1 Dragon N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("652","03-03-014","42","176","17 dater Defensial","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("653","03-03-015","42","176","220Ah Smart Charger","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("654","01-07-002","40","182","Power Plus Strong Bluo (N)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("655","01-07-003","40","182","Lhina Power (N)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("656","13-01-002","52","180","Borac Show ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("657","01-02-064","40","161","MM high power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("658","01-02-065","40","161","MM high power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("659","01-02-066","40","161","MM high Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("660","01-02-067","40","161","MM high power 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("661","01-02-068","40","161","Lotus MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("662","01-02-069","40","161","Lotus 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("663","01-02-070","40","161","Lotus 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("664","01-02-071","40","161","Hangly N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("665","01-02-072","40","161","Hangly MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("666","01-02-073","40","161","Hangly MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("667","01-02-074","40","161","Hangly 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("668","01-02-075","40","161","Hangly 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("669","01-02-076","40","161","Kin power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("670","01-02-077","40","161","OX Power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("671","01-02-078","40","161","OX Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("672","01-02-079","40","161","OX Power 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("673","01-02-080","40","161","OX Power 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("674","01-02-081","40","161","Horse Power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("675","01-02-082","40","161","Horse Power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("676","01-02-083","40","161","Horse Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("677","01-02-084","40","161","Horse Power 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("678","01-02-085","40","161","Horse Power 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("679","01-02-086","40","161","1 Dragon MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("680","01-02-087","40","161","1 Dragon MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("681","01-02-088","40","161","1 Dragon 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("682","01-02-089","40","161","1 Dragon 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("683","01-02-090","40","161","MS Horse Power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("684","01-02-091","40","161","MS Horse Power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("685","01-02-092","40","161","MS Horse Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("686","01-02-093","40","161","MS Horse Power 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("687","01-02-094","40","161","MS Horse Power 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("688","01-02-095","40","161","Power Plus 2022 (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("689","01-02-096","40","161","Eilong  (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("690","01-02-097","40","161","Power Plus (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("691","01-02-098","40","161","OT Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("692","01-02-099","40","161","SA Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("693","01-02-100","40","161","3 Dragon (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("694","01-02-101","40","161","Lotus (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("695","01-02-102","40","161","Hangly (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("696","01-02-103","40","161","Kin Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("697","01-02-104","40","161","1 Dragon (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("698","01-02-105","40","161","Star Gold (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("699","01-02-106","40","161","MS Horse Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("700","01-02-107","40","161","OX Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("701","01-02-108","40","161","Horse Power (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("702","01-02-109","40","161","MM High Power  (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("703","01-02-110","40","161","Borac Supper (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("704","01-02-111","40","161","Mahadi 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("705","01-02-112","40","161","Mahadi 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("706","01-02-113","40","161","Mahadi MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("707","01-02-114","40","161","Mahadi MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("708","01-02-115","40","161","Mahadi N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("709","01-02-116","40","161","UND Power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("710","01-02-117","40","161","UND Power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("711","01-02-118","40","161","UND Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("712","01-02-119","40","161","UND Power 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("713","01-02-120","40","161","UND Power 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("714","01-02-121","40","161","Champion N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("715","01-02-122","40","161","Champion MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("716","01-02-123","40","161","Champion MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("717","01-02-124","40","161","Champion G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("718","01-02-125","40","161","Champion 29kg G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("719","01-02-126","40","161","Champion 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("720","01-02-127","40","161","Mars Power 29kg N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("721","01-02-128","40","161","Mars Power G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("722","01-02-129","40","161","Mars Power MM","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("723","01-02-130","40","161","Mars Power MM G","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("724","01-02-131","40","161","Mars Power N","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("725","01-04-001","40","163","China Eilong Dong ya","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("726","01-03-015","40","162","130Ah Power Plus ","","","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("727","01-03-016","40","162","95ah Jufing","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("728","01-03-017","40","162","120ah Jufing","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("729","01-01-167","40","160","E Power 22Kg (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("730","01-01-168","40","160","Chaina power 22Kg (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("731","01-02-132","40","161","SR Modhon pal Normal Plate","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("732","01-01-169","40","160","H Power 22Kg (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("733","01-03-018","40","162","95Ah Gufing","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("734","01-03-019","40","162","95Ah Chaina man ","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("735","01-01-170","40","160","King Power 28.5kg n","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("736","01-03-020","40","162"," 120Ah Chaina man ","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("737","01-03-021","40","162","220Ah Chaina man ","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("738","03-03-016","42","176","17 dater Footbal","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("739","01-03-022","40","162","95Ah China Manus","","CIVIL","0","","","0","19","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("740","01-01-171","40","160","Power Gold 22Kg (W)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("741","01-02-133","40","161","Champion 29Kg (G)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("742","01-02-134","40","161","Power plus IP 29Kg","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("743","03-03-017","42","176","1000W Contolar","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("744","03-03-018","42","176","19.44 Cross set","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("745","03-03-019","42","176","H Power Break Show","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("746","03-03-020","42","176","4 Stik Dram Chaina","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("747","01-01-172","40","160","Power Plus Jinding (W) 22Kg","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("748","03-03-021","42","176","2.75.14 tyre Hossen","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("749","03-03-022","42","176","6005 N7V bearing","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("750","03-03-023","42","176","22 Dater Plastic Prinium","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("751","03-03-024","42","176","Looking Glass Goal mm","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("752","03-03-025","42","176","Patti Dolnar Nat chikun","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("753","03-03-026","42","176","Patti Dolner nut Mota","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("754","03-03-027","42","176","Dattai pikup","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("755","03-03-028","42","176","Charger cot","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("756","03-03-029","42","176","2.75.14 Rim","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("757","03-03-030","42","176","2.75.14 Tyre","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("758","01-01-173","40","160","King Power 28.5Kg (G)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("759","05-01-003","44","168","Three Quater Casing","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("760","05-01-004","44","168","Tray","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("761","03-04-001","42","184","Flasher ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("762","03-03-031","42","176","3.25.16 Mat Ghat ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("763","03-04-002","42","184","32005 bearing","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("764","03-03-032","42","176","2.75.14 Beg light","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("765","03-03-033","42","176","Borac beg light ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("766","03-05-001","42","185","3.25.16 Tube ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("767","03-05-002","42","185","2.75.16 Tube","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("768","03-03-034","42","176","17 Dhat Gach","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("769","03-03-035","42","176","60V Miter Dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("770","03-03-036","42","176","5 Point conector","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("771","03-03-037","42","176","3 Point Conector ","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("772","03-03-038","42","176","Horn Swich","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("773","03-03-039","42","176","Magnet Pikup Dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("774","03-03-040","42","176","Controller (W) dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("775","03-03-041","42","176","Controller (W) kom dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("776","09-01-006","48","174","60v Charger Dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("777","03-03-042","42","176","Dtai controller Dami","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("778","03-03-043","42","176","52 Dater Prinium","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("779","03-03-044","42","176","14 dater babul prinium","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("780","03-05-003","42","185","2.75.14 Tube","","","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("781","01-02-135","40","161","Power Plus SR modhon pal 28Kg (G)","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("782","01-02-136","40","161","Power plus IP Global 29Kg","","CIVIL","0","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("783","01-03-023","40","162","ignite SMF","ignite","CIVIL","10","","","0","3","0","0","","","0","","","","");
INSERT INTO inv_material VALUES("784","01-03-024","40","162","tanveer battery","","CIVIL","100","","","0","3","0","0","","","300","","","","");



CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5765 DEFAULT CHARSET=latin1;

INSERT INTO inv_materialbalance VALUES("231","MRR-CW001","01-01-014","2022-05-01","25","215000","0","0","8600","Receive","1.1","","0","MRR-CW001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("232","MRR-CW001","01-01-115","2022-05-01","25","205000","0","0","8200","Receive","1.1","","0","MRR-CW001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("233","MRR-CW001","01-01-025","2022-05-01","20","172000","0","0","8600","Receive","1.1","","0","MRR-CW001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("234","MRR-CW001","01-01-121","2022-05-01","10","86000","0","0","8600","Receive","1.1","","0","MRR-CW001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("237","IS-CW001","01-01-125","2022-05-01","0","0","4","0","0","Issue","1.1","1","0","IS-CW001","U","1","10","39","PA-045","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("238","IS-CW002","01-01-003","2022-05-08","0","0","8","0","0","Issue","1.1","2","0","IS-CW002","S","2","10","33","PA-165","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("239","IS-CW002","01-01-125","2022-05-08","0","0","8","0","0","Issue","1.1","2","0","IS-CW002","S","2","10","33","PA-165","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("240","IS-CW002","01-03-002","2022-05-08","0","0","3","0","0","Issue","1.1","2","0","IS-CW002","S","2","10","33","PA-165","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("241","IS-CW002","01-03-001","2022-05-08","0","0","3","0","0","Issue","1.1","2","0","IS-CW002","S","2","10","33","PA-165","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("244","IS-CW004","01-01-117","2022-05-08","0","0","10","0","0","Issue","1.1","2","0","IS-CW004","S","2","10","33","PA-115","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("245","IS-CW003","01-01-118","2022-05-08","0","0","29","0","0","Issue","1.1","1","0","IS-CW003","U","1","10","33","PA-130","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("488","IS-CW006","05-01-001","2022-05-01","0","0","30","0","0","Issue","1.1","1","0","IS-CW006","U","1","10","41","PA-167","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("489","IS-CW006","01-01-014","2022-05-01","0","0","25","0","0","Issue","1.1","1","0","IS-CW006","U","1","10","41","PA-167","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("490","IS-CW006","06-01-001","2022-05-01","0","0","20","0","0","Issue","1.1","1","0","IS-CW006","U","1","10","41","PA-167","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("491","IS-CW006","01-01-117","2022-05-01","0","0","10","0","0","Issue","1.1","1","0","IS-CW006","U","1","10","41","PA-167","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("492","IS-CW006","01-01-025","2022-05-01","0","0","5","0","0","Issue","1.1","1","0","IS-CW006","U","1","10","41","PA-167","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("493","IS-CW007","01-01-121","2022-05-01","0","0","10","0","0","Issue","1.1","1","0","IS-CW007","U","1","10","41","PA-155","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("499","IS-CW008","01-03-002","2022-05-01","0","0","1","0","0","Issue","1.1","1","0","IS-CW008","U","1","10","41","PA-168","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("500","IS-CW009","01-01-092","2022-05-08","0","0","17","0","0","Issue","1.1","1","0","IS-CW009","U","1","10","41","PA-170","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("501","IS-CW009","01-01-041","2022-05-08","0","0","4","0","0","Issue","1.1","1","0","IS-CW009","U","1","10","41","PA-170","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("507","IS-CW012","01-03-004","2022-05-09","0","0","10","0","0","Issue","1.1","2","0","IS-CW012","S","2","10","41","PA-155","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("508","IS-CW012","01-03-005","2022-05-09","0","0","5","0","0","Issue","1.1","2","0","IS-CW012","S","2","10","41","PA-155","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("509","IS-CW012","01-03-006","2022-05-09","0","0","3","0","0","Issue","1.1","2","0","IS-CW012","S","2","10","41","PA-155","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("510","IS-CW012","01-03-001","2022-05-09","0","0","7","0","0","Issue","1.1","2","0","IS-CW012","S","2","10","41","PA-155","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("511","IS-CW012","01-03-007","2022-05-09","0","0","2","0","0","Issue","1.1","2","0","IS-CW012","S","2","10","41","PA-155","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("513","IS-CW013","01-01-125","2022-05-09","0","0","12","0","0","Issue","1.1","1","0","IS-CW013","U","1","10","41","PA-167","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("514","IS-CW014","01-01-125","2022-05-09","0","0","20","0","0","Issue","1.1","2","0","IS-CW014","S","2","10","41","PA-012","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("515","IS-CW014","01-03-001","2022-05-09","0","0","5","0","0","Issue","1.1","2","0","IS-CW014","S","2","10","41","PA-012","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("522","IS-CW015","01-02-006","2022-05-10","0","0","5","0","0","Issue","1.1","1","0","IS-CW015","U","1","10","38","PA-171","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("523","IS-CW017","01-01-117","2022-05-12","0","0","10","0","0","Issue","1.1","2","0","IS-CW017","S","2","10","38","PA-175","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("524","IS-CW017","01-01-088","2022-05-12","0","0","10","0","0","Issue","1.1","2","0","IS-CW017","S","2","10","38","PA-175","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("525","IS-CW018","01-01-126","2022-05-09","0","0","1","0","0","Issue","1.1","2","0","IS-CW018","S","2","10","35","PA-176","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("526","IS-CW019","01-02-047","2022-05-10","0","0","10","0","0","Issue","1.1","2","0","IS-CW019","S","2","10","35","PA-177","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("527","IS-CW020","01-01-054","2022-05-10","0","0","9","0","0","Issue","1.1","2","0","IS-CW020","S","2","10","35","PA-178","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("528","IS-CW021","01-02-007","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW021","S","2","10","35","PA-179","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("529","IS-CW022","01-03-001","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW022","S","2","10","35","PA-180","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("530","IS-CW022","01-02-017","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW022","S","2","10","35","PA-180","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("531","IS-CW023","01-03-001","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW023","S","2","10","35","PA-181","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("773","IS-CW024","01-03-001","2022-05-12","0","0","10","0","0","Issue","1.1","1","0","IS-CW024","U","1","10","35","PA-180","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("774","IS-CW024","07-01-001","2022-05-12","0","0","6","0","0","Issue","1.1","1","0","IS-CW024","U","1","10","35","PA-180","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("775","IS-CW024","01-02-017","2022-05-12","0","0","5","0","0","Issue","1.1","1","0","IS-CW024","U","1","10","35","PA-180","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("776","IS-CW024","01-03-005","2022-05-12","0","0","2","0","0","Issue","1.1","1","0","IS-CW024","U","1","10","35","PA-180","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("777","IS-CW024","01-03-003","2022-05-12","0","0","1","0","0","Issue","1.1","1","0","IS-CW024","U","1","10","35","PA-180","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("778","IS-CW025","01-01-121","2022-05-11","0","0","50","0","0","Issue","1.1","2","0","IS-CW025","S","2","10","41","PA-182","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("779","IS-CW026","01-03-001","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW026","S","2","10","41","PA-183","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("780","IS-CW026","01-03-007","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW026","S","2","10","41","PA-183","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("783","IS-CW028","01-01-119","2022-05-11","0","0","3","0","0","Issue","1.1","2","0","IS-CW028","S","2","10","32","PA-107","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("784","IS-CW029","01-03-002","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW029","S","2","10","32","PA-010","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("785","IS-CW030","01-03-001","2022-05-12","0","0","2","0","0","Issue","1.1","2","0","IS-CW030","S","2","10","32","PA-105","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("786","IS-CW031","01-01-123","2022-05-08","0","0","14","0","0","Issue","1.1","2","0","IS-CW031","S","2","10","42","PA-184","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("787","01-01-001","01-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("788","01-01-002","01-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("789","01-01-003","01-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("790","01-01-004","01-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("791","01-01-005","01-01-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("792","01-01-006","01-01-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("793","01-01-007","01-01-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("794","01-01-008","01-01-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("795","01-01-009","01-01-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("796","01-01-010","01-01-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("797","01-01-011","01-01-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("798","01-01-012","01-01-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("799","01-01-013","01-01-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("800","01-01-014","01-01-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("801","01-01-015","01-01-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("802","01-01-016","01-01-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("803","01-01-017","01-01-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("804","01-01-018","01-01-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("805","01-01-019","01-01-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("806","01-01-020","01-01-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("807","01-01-021","01-01-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("808","01-01-022","01-01-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("809","01-01-023","01-01-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("810","01-01-024","01-01-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("811","01-01-025","01-01-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("812","01-01-026","01-01-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("813","01-01-027","01-01-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("814","01-01-028","01-01-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("815","01-01-029","01-01-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("816","01-01-030","01-01-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("817","01-01-031","01-01-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("818","01-01-032","01-01-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("819","01-01-033","01-01-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("820","01-01-034","01-01-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("821","01-01-035","01-01-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("822","01-01-036","01-01-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("823","01-01-037","01-01-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("824","01-01-038","01-01-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("825","01-01-039","01-01-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("826","01-01-040","01-01-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("827","01-01-041","01-01-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("828","01-01-042","01-01-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("829","01-01-043","01-01-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("830","01-01-044","01-01-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("831","01-01-045","01-01-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("832","01-01-046","01-01-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("833","01-01-047","01-01-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("834","01-01-048","01-01-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("835","01-01-049","01-01-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("836","01-01-050","01-01-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("837","01-01-051","01-01-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("838","01-01-052","01-01-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("839","01-01-053","01-01-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("840","01-01-054","01-01-054","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("841","01-01-055","01-01-055","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("842","01-01-056","01-01-056","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("843","01-01-057","01-01-057","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("844","01-01-058","01-01-058","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("845","01-01-059","01-01-059","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("846","01-01-060","01-01-060","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("847","01-01-061","01-01-061","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("848","01-01-062","01-01-062","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("849","01-01-063","01-01-063","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("850","01-01-064","01-01-064","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("851","01-01-065","01-01-065","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("852","01-01-066","01-01-066","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("853","01-01-067","01-01-067","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("854","01-01-068","01-01-068","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("855","01-01-069","01-01-069","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("856","01-01-070","01-01-070","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("857","01-01-071","01-01-071","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("858","01-01-072","01-01-072","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("859","01-01-073","01-01-073","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("860","01-01-074","01-01-074","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("861","01-01-075","01-01-075","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("862","01-01-076","01-01-076","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("863","01-01-077","01-01-077","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("864","01-01-078","01-01-078","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("865","01-01-079","01-01-079","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("866","01-01-080","01-01-080","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("867","01-01-081","01-01-081","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("868","01-01-082","01-01-082","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("869","01-01-083","01-01-083","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("870","01-01-084","01-01-084","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("871","01-01-085","01-01-085","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("872","01-01-086","01-01-086","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("873","01-01-087","01-01-087","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("874","01-01-088","01-01-088","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("875","01-01-089","01-01-089","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("876","01-01-090","01-01-090","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("877","01-01-091","01-01-091","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("878","01-01-092","01-01-092","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("879","01-01-093","01-01-093","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("880","01-01-094","01-01-094","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("881","01-01-095","01-01-095","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("882","01-01-096","01-01-096","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("883","01-01-097","01-01-097","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("884","01-01-098","01-01-098","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("885","01-01-099","01-01-099","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("886","01-01-100","01-01-100","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("887","01-01-101","01-01-101","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("888","01-01-102","01-01-102","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("889","01-01-103","01-01-103","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("890","01-01-104","01-01-104","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("891","01-01-105","01-01-105","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("892","01-01-106","01-01-106","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("893","01-01-107","01-01-107","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("894","01-01-108","01-01-108","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("895","01-01-109","01-01-109","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("896","01-01-110","01-01-110","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("897","01-01-111","01-01-111","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("898","01-01-112","01-01-112","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("899","01-01-113","01-01-113","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("900","01-01-114","01-01-114","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("901","01-01-115","01-01-115","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("902","01-01-116","01-01-116","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("903","01-01-117","01-01-117","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("904","01-01-118","01-01-118","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("905","01-01-119","01-01-119","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("906","01-01-120","01-01-120","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("907","01-01-121","01-01-121","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("908","01-01-122","01-01-122","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("909","01-01-123","01-01-123","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("910","01-01-124","01-01-124","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("911","01-01-125","01-01-125","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("912","01-01-126","01-01-126","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("913","01-01-127","01-01-127","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("914","01-01-128","01-01-128","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("915","01-01-129","01-01-129","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("916","01-01-130","01-01-130","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("917","01-01-131","01-01-131","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("918","01-01-132","01-01-132","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("919","01-01-133","01-01-133","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("920","01-01-134","01-01-134","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("921","01-01-135","01-01-135","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("922","01-01-136","01-01-136","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("923","01-01-137","01-01-137","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("924","01-01-138","01-01-138","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("925","01-01-139","01-01-139","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("926","01-01-140","01-01-140","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("927","01-01-141","01-01-141","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("928","01-01-142","01-01-142","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("929","01-01-143","01-01-143","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("930","01-01-144","01-01-144","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("931","01-01-145","01-01-145","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("932","01-01-146","01-01-146","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("933","01-01-147","01-01-147","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("934","01-01-148","01-01-148","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("935","01-01-149","01-01-149","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("936","01-01-150","01-01-150","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("937","01-01-151","01-01-151","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("938","01-01-152","01-01-152","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("939","01-01-153","01-01-153","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("940","01-01-154","01-01-154","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("941","01-01-155","01-01-155","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("942","01-01-156","01-01-156","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("943","01-01-157","01-01-157","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("944","01-01-158","01-01-158","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("945","01-01-159","01-01-159","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("946","01-01-160","01-01-160","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("947","01-01-161","01-01-161","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("948","01-01-162","01-01-162","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("949","01-02-001","01-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("950","01-02-002","01-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("951","01-02-003","01-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("952","01-02-004","01-02-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("953","01-02-005","01-02-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("954","01-02-006","01-02-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("955","01-02-007","01-02-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("956","01-02-008","01-02-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("957","01-02-009","01-02-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("958","01-02-010","01-02-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("959","01-02-011","01-02-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("960","01-02-012","01-02-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("961","01-02-013","01-02-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("962","01-02-014","01-02-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("963","01-02-015","01-02-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("964","01-02-016","01-02-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("965","01-02-017","01-02-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("966","01-02-018","01-02-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("967","01-02-019","01-02-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("968","01-02-020","01-02-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("969","01-02-021","01-02-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("970","01-02-022","01-02-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("971","01-02-023","01-02-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("972","01-02-024","01-02-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("973","01-02-025","01-02-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("974","01-02-026","01-02-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("975","01-02-027","01-02-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("976","01-02-028","01-02-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("977","01-02-029","01-02-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("978","01-02-030","01-02-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("979","01-02-031","01-02-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("980","01-02-032","01-02-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("981","01-02-033","01-02-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("982","01-02-034","01-02-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("983","01-02-035","01-02-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("984","01-02-036","01-02-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("985","01-02-037","01-02-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("986","01-02-038","01-02-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("987","01-02-039","01-02-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("988","01-02-040","01-02-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("989","01-02-041","01-02-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("990","01-02-042","01-02-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("991","01-02-043","01-02-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("992","01-02-044","01-02-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("993","01-02-045","01-02-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("994","01-02-046","01-02-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("995","01-02-047","01-02-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("996","01-02-048","01-02-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("997","01-02-049","01-02-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("998","01-02-050","01-02-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("999","01-02-051","01-02-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1000","01-02-052","01-02-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1001","01-02-053","01-02-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1002","01-03-001","01-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1003","01-03-002","01-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1004","01-03-003","01-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1005","01-03-004","01-03-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1006","01-03-005","01-03-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1007","01-03-006","01-03-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1008","01-03-007","01-03-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1009","01-03-008","01-03-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1010","01-05-001","01-05-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1011","02-01-001","02-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1012","05-01-001","05-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1013","05-01-002","05-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1014","06-01-001","06-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1015","06-01-002","06-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1016","06-01-003","06-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1017","06-01-004","06-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1018","06-02-001","06-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1019","06-02-002","06-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1020","06-02-003","06-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1021","06-03-001","06-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1022","06-03-002","06-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1023","06-03-003","06-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1024","07-01-001","07-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1025","08-01-001","08-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1026","IS-CW032","01-01-125","2022-05-07","0","0","4","0","0","Issue","1.1","2","0","IS-CW032","S","2","10","42","PA-185","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1027","IS-CW032","08-01-001","2022-05-07","0","0","40","0","0","Issue","1.1","2","0","IS-CW032","S","2","10","42","PA-185","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1028","IS-CW033","01-01-001","2022-05-09","0","0","5","0","0","Issue","1.1","2","0","IS-CW033","S","2","10","42","PA-185","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1029","IS-CW033","08-01-001","2022-05-09","0","0","50","0","0","Issue","1.1","2","0","IS-CW033","S","2","10","42","PA-185","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1030","IS-CW034","01-01-125","2022-05-09","0","0","4","0","0","Issue","1.1","2","0","IS-CW034","S","2","10","42","PA-185","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1031","IS-CW034","08-01-001","2022-05-09","0","0","40","0","0","Issue","1.1","2","0","IS-CW034","S","2","10","42","PA-185","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1032","IS-CW035","01-01-003","2022-05-11","0","0","9","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1033","IS-CW035","01-01-125","2022-05-11","0","0","8","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1034","IS-CW035","01-01-014","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1035","IS-CW035","01-01-121","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1036","IS-CW035","01-03-002","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1037","IS-CW035","01-03-003","2022-05-11","0","0","0.25","0","0","Issue","1.1","2","0","IS-CW035","S","2","10","42","PA-186","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1040","IS-CW036","08-01-001","2022-05-12","0","0","50","0","0","Issue","1.1","1","0","IS-CW036","U","1","10","42","PA-185","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1041","IS-CW036","01-01-001","2022-05-12","0","0","5","0","0","Issue","1.1","1","0","IS-CW036","U","1","10","42","PA-185","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1042","IS-CW037","01-02-053","2022-05-08","0","0","50","0","0","Issue","1.1","2","0","IS-CW037","S","2","10","41","PA-169","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1043","IS-CW011","01-03-001","2022-05-08","0","0","7","0","0","Issue","1.1","1","0","IS-CW011","U","1","10","41","PA-168","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1044","IS-CW011","01-03-002","2022-05-08","0","0","1.25","0","0","Issue","1.1","1","0","IS-CW011","U","1","10","41","PA-168","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1045","IS-CW011","01-01-005","2022-05-08","0","0","1","0","0","Issue","1.1","1","0","IS-CW011","U","1","10","41","PA-168","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1047","MRR-CW002","01-03-008","2022-05-01","200","3220000","0","0","16100","Receive","1.1","","0","MRR-CW002","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1048","IS-CW038","01-02-036","2022-05-12","0","0","10","0","0","Issue","1.1","2","0","IS-CW038","S","2","10","35","PA-181","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1049","IS-CW038","01-03-008","2022-05-12","0","0","2","0","0","Issue","1.1","2","0","IS-CW038","S","2","10","35","PA-181","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1054","MRR-CW003","01-02-054","2022-05-01","500","4275000","0","0","8550","Receive","1.1","","0","MRR-CW003","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1055","MRR-CW003","01-02-055","2022-05-01","500","4125000","0","0","8250","Receive","1.1","","0","MRR-CW003","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1056","IS-CW039","01-02-054","2022-05-11","0","0","25","0","0","Issue","1.1","2","0","IS-CW039","S","2","10","38","PA-173","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1057","IS-CW039","01-02-055","2022-05-11","0","0","25","0","0","Issue","1.1","2","0","IS-CW039","S","2","10","38","PA-173","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1058","IS-CW039","01-01-058","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW039","S","2","10","38","PA-173","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1059","IS-CW039","01-01-088","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW039","S","2","10","38","PA-173","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1060","IS-CW039","01-02-006","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW039","S","2","10","38","PA-173","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1063","IS-CW016","01-03-001","2022-05-10","0","0","2","0","0","Issue","1.1","1","0","IS-CW016","U","1","10","38","PA-172","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1064","IS-CW005","01-01-025","2022-05-01","0","0","15","0","0","Issue","1.1","1","0","IS-CW005","U","1","10","41","PA-166","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1065","IS-CW005","01-01-117","2022-05-01","0","0","15","0","0","Issue","1.1","1","0","IS-CW005","U","1","10","41","PA-166","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1066","IS-CW010","01-01-125","2022-05-08","0","0","20","0","0","Issue","1.1","1","0","IS-CW010","U","1","10","41","PA-166","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1067","IS-CW010","01-03-003","2022-05-08","0","0","5","0","0","Issue","1.1","1","0","IS-CW010","U","1","10","41","PA-166","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1070","MRR-CW004","01-03-010","2022-05-05","200","2820000","0","0","14100","Receive","1.1","2","0","MRR-CW004","","2","10","","","0","2022-05-05");
INSERT INTO inv_materialbalance VALUES("1071","MRR-CW004","01-03-011","2022-05-05","200","2820000","0","0","14100","Receive","1.1","2","0","MRR-CW004","","2","10","","","0","2022-05-05");
INSERT INTO inv_materialbalance VALUES("1072","IS-CW040","01-03-010","2022-05-06","0","0","1","0","0","Issue","1.1","2","0","IS-CW040","S","2","10","32","PA-008","0","2022-05-06");
INSERT INTO inv_materialbalance VALUES("1073","IS-CW040","01-03-011","2022-05-06","0","0","1","0","0","Issue","1.1","2","0","IS-CW040","S","2","10","32","PA-008","0","2022-05-06");
INSERT INTO inv_materialbalance VALUES("1076","IS-CW027","01-03-001","2022-05-09","0","0","1","0","0","Issue","1.1","1","0","IS-CW027","U","1","10","32","PA-010","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1077","IS-CW027","01-03-002","2022-05-09","0","0","1","0","0","Issue","1.1","1","0","IS-CW027","U","1","10","32","PA-010","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1078","IS-CW041","01-01-018","2022-04-28","0","0","5","0","0","Issue","1.1","2","0","IS-CW041","S","2","10","41","PA-183","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1079","IS-CW041","01-03-001","2022-04-28","0","0","1","0","0","Issue","1.1","2","0","IS-CW041","S","2","10","41","PA-183","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1080","IS-CW042","01-01-121","2022-04-29","0","0","50","0","0","Issue","1.1","2","0","IS-CW042","S","2","10","41","PA-182","0","2022-04-29");
INSERT INTO inv_materialbalance VALUES("1081","IS-CW043","01-01-014","2022-04-28","0","0","9","0","0","Issue","1.1","2","0","IS-CW043","S","2","10","41","PA-189","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1082","MRR-CW005","01-02-059","2022-04-28","200","1790000","0","0","8950","Receive","1.1","2","0","MRR-CW005","","2","10","","","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1083","IS-CW044","01-02-059","2022-04-28","0","0","8","0","0","Issue","1.1","2","0","IS-CW044","S","2","10","41","PA-012","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1084","IS-CW044","01-02-009","2022-04-28","0","0","8","0","0","Issue","1.1","2","0","IS-CW044","S","2","10","41","PA-012","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1085","IS-CW044","01-02-009","2022-04-28","0","0","8","0","0","Issue","1.1","2","0","IS-CW044","S","2","10","41","PA-012","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1086","IS-CW044","01-02-001","2022-04-28","0","0","8","0","0","Issue","1.1","2","0","IS-CW044","S","2","10","41","PA-012","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1087","IS-CW045","01-01-014","2022-04-30","0","0","50","0","0","Issue","1.1","2","0","IS-CW045","S","2","10","41","PA-166","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1088","IS-CW045","01-01-003","2022-04-30","0","0","20","0","0","Issue","1.1","2","0","IS-CW045","S","2","10","41","PA-166","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1089","IS-CW045","01-01-125","2022-04-30","0","0","20","0","0","Issue","1.1","2","0","IS-CW045","S","2","10","41","PA-166","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1090","IS-CW046","01-03-001","2022-04-30","0","0","6","0","0","Issue","1.1","2","0","IS-CW046","S","2","10","41","PA-168","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1091","IS-CW046","01-01-005","2022-04-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW046","S","2","10","41","PA-168","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1092","IS-CW047","01-01-125","2022-04-30","0","0","8","0","0","Issue","1.1","2","0","IS-CW047","S","2","10","41","PA-190","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1093","IS-CW047","01-01-122","2022-04-30","0","0","5","0","0","Issue","1.1","2","0","IS-CW047","S","2","10","41","PA-190","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1094","IS-CW047","08-01-001","2022-04-30","0","0","35","0","0","Issue","1.1","2","0","IS-CW047","S","2","10","41","PA-190","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1095","MRR-CW006","01-01-141","2022-05-02","30","246000","0","0","8200","Receive","1.1","2","0","MRR-CW006","","2","10","","","0","2022-05-02");
INSERT INTO inv_materialbalance VALUES("1096","MRR-CW006","01-01-143","2022-05-02","20","168000","0","0","8400","Receive","1.1","2","0","MRR-CW006","","2","10","","","0","2022-05-02");
INSERT INTO inv_materialbalance VALUES("1097","MRR-CW006","01-01-147","2022-05-02","25","215000","0","0","8600","Receive","1.1","2","0","MRR-CW006","","2","10","","","0","2022-05-02");
INSERT INTO inv_materialbalance VALUES("1098","MRR-CW007","01-01-015","2022-05-04","60","522000","0","0","8700","Receive","1.1","2","0","MRR-CW007","","2","10","","","0","2022-05-04");
INSERT INTO inv_materialbalance VALUES("1099","MRR-CW007","01-01-028","2022-05-04","30","246000","0","0","8200","Receive","1.1","2","0","MRR-CW007","","2","10","","","0","2022-05-04");
INSERT INTO inv_materialbalance VALUES("1100","MRR-CW008","01-01-092","2022-05-06","25","215000","0","0","8600","Receive","1.1","2","0","MRR-CW008","","2","10","","","0","2022-05-06");
INSERT INTO inv_materialbalance VALUES("1101","MRR-CW008","01-01-058","2022-05-06","30","246000","0","0","8200","Receive","1.1","2","0","MRR-CW008","","2","10","","","0","2022-05-06");
INSERT INTO inv_materialbalance VALUES("1102","MRR-CW009","01-01-019","2022-05-09","20","164000","0","0","8200","Receive","1.1","2","0","MRR-CW009","","2","10","","","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1103","MRR-CW009","01-01-058","2022-05-09","50","410000","0","0","8200","Receive","1.1","2","0","MRR-CW009","","2","10","","","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1104","IS-CW048","01-03-003","2022-04-28","0","0","4","0","0","Issue","1.1","2","0","IS-CW048","S","2","10","33","PA-014","0","2022-04-28");
INSERT INTO inv_materialbalance VALUES("1105","IS-CW049","01-01-014","2022-04-30","0","0","20","0","0","Issue","1.1","2","0","IS-CW049","S","2","10","33","PA-118","0","2022-04-30");
INSERT INTO inv_materialbalance VALUES("1106","01-01-001","01-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1107","01-01-002","01-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1108","01-01-003","01-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1109","01-01-004","01-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1110","01-01-005","01-01-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1111","01-01-006","01-01-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1112","01-01-007","01-01-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1113","01-01-008","01-01-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1114","01-01-009","01-01-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1115","01-01-010","01-01-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1116","01-01-011","01-01-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1117","01-01-012","01-01-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1118","01-01-013","01-01-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1119","01-01-014","01-01-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1120","01-01-015","01-01-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1121","01-01-016","01-01-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1122","01-01-017","01-01-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1123","01-01-018","01-01-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1124","01-01-019","01-01-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1125","01-01-020","01-01-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1126","01-01-021","01-01-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1127","01-01-022","01-01-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1128","01-01-023","01-01-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1129","01-01-024","01-01-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1130","01-01-025","01-01-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1131","01-01-026","01-01-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1132","01-01-027","01-01-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1133","01-01-028","01-01-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1134","01-01-029","01-01-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1135","01-01-030","01-01-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1136","01-01-031","01-01-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1137","01-01-032","01-01-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1138","01-01-033","01-01-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1139","01-01-034","01-01-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1140","01-01-035","01-01-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1141","01-01-036","01-01-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1142","01-01-037","01-01-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1143","01-01-038","01-01-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1144","01-01-039","01-01-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1145","01-01-040","01-01-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1146","01-01-041","01-01-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1147","01-01-042","01-01-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1148","01-01-043","01-01-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1149","01-01-044","01-01-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1150","01-01-045","01-01-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1151","01-01-046","01-01-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1152","01-01-047","01-01-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1153","01-01-048","01-01-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1154","01-01-049","01-01-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1155","01-01-050","01-01-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1156","01-01-051","01-01-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1157","01-01-052","01-01-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1158","01-01-053","01-01-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1159","01-01-054","01-01-054","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1160","01-01-055","01-01-055","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1161","01-01-056","01-01-056","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1162","01-01-057","01-01-057","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1163","01-01-058","01-01-058","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1164","01-01-059","01-01-059","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1165","01-01-060","01-01-060","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1166","01-01-061","01-01-061","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1167","01-01-062","01-01-062","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1168","01-01-063","01-01-063","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1169","01-01-064","01-01-064","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1170","01-01-065","01-01-065","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1171","01-01-066","01-01-066","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1172","01-01-067","01-01-067","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1173","01-01-068","01-01-068","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1174","01-01-069","01-01-069","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1175","01-01-070","01-01-070","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1176","01-01-071","01-01-071","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1177","01-01-072","01-01-072","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1178","01-01-073","01-01-073","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1179","01-01-074","01-01-074","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1180","01-01-075","01-01-075","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1181","01-01-076","01-01-076","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1182","01-01-077","01-01-077","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1183","01-01-078","01-01-078","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1184","01-01-079","01-01-079","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1185","01-01-080","01-01-080","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1186","01-01-081","01-01-081","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1187","01-01-082","01-01-082","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1188","01-01-083","01-01-083","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1189","01-01-084","01-01-084","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1190","01-01-085","01-01-085","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1191","01-01-086","01-01-086","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1192","01-01-087","01-01-087","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1193","01-01-088","01-01-088","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1194","01-01-089","01-01-089","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1195","01-01-090","01-01-090","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1196","01-01-091","01-01-091","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1197","01-01-092","01-01-092","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1198","01-01-093","01-01-093","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1199","01-01-094","01-01-094","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1200","01-01-095","01-01-095","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1201","01-01-096","01-01-096","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1202","01-01-097","01-01-097","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1203","01-01-098","01-01-098","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1204","01-01-099","01-01-099","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1205","01-01-100","01-01-100","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1206","01-01-101","01-01-101","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1207","01-01-102","01-01-102","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1208","01-01-103","01-01-103","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1209","01-01-104","01-01-104","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1210","01-01-105","01-01-105","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1211","01-01-106","01-01-106","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1212","01-01-107","01-01-107","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1213","01-01-108","01-01-108","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1214","01-01-109","01-01-109","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1215","01-01-110","01-01-110","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1216","01-01-111","01-01-111","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1217","01-01-112","01-01-112","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1218","01-01-113","01-01-113","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1219","01-01-114","01-01-114","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1220","01-01-115","01-01-115","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1221","01-01-116","01-01-116","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1222","01-01-117","01-01-117","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1223","01-01-118","01-01-118","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1224","01-01-119","01-01-119","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1225","01-01-120","01-01-120","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1226","01-01-121","01-01-121","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1227","01-01-122","01-01-122","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1228","01-01-123","01-01-123","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1229","01-01-124","01-01-124","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1230","01-01-125","01-01-125","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1231","01-01-126","01-01-126","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1232","01-01-127","01-01-127","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1233","01-01-128","01-01-128","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1234","01-01-129","01-01-129","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1235","01-01-130","01-01-130","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1236","01-01-131","01-01-131","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1237","01-01-132","01-01-132","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1238","01-01-133","01-01-133","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1239","01-01-134","01-01-134","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1240","01-01-135","01-01-135","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1241","01-01-136","01-01-136","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1242","01-01-137","01-01-137","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1243","01-01-138","01-01-138","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1244","01-01-139","01-01-139","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1245","01-01-140","01-01-140","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1246","01-01-141","01-01-141","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1247","01-01-142","01-01-142","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1248","01-01-143","01-01-143","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1249","01-01-144","01-01-144","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1250","01-01-145","01-01-145","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1251","01-01-146","01-01-146","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1252","01-01-147","01-01-147","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1253","01-01-148","01-01-148","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1254","01-01-149","01-01-149","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1255","01-01-150","01-01-150","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1256","01-01-151","01-01-151","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1257","01-01-152","01-01-152","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1258","01-01-153","01-01-153","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1259","01-01-154","01-01-154","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1260","01-01-155","01-01-155","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1261","01-01-156","01-01-156","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1262","01-01-157","01-01-157","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1263","01-01-158","01-01-158","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1264","01-01-159","01-01-159","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1265","01-01-160","01-01-160","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1266","01-01-161","01-01-161","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1267","01-01-162","01-01-162","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1268","01-01-163","01-01-163","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1269","01-02-001","01-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1270","01-02-002","01-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1271","01-02-003","01-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1272","01-02-004","01-02-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1273","01-02-005","01-02-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1274","01-02-006","01-02-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1275","01-02-007","01-02-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1276","01-02-008","01-02-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1277","01-02-009","01-02-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1278","01-02-010","01-02-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1279","01-02-011","01-02-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1280","01-02-012","01-02-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1281","01-02-013","01-02-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1282","01-02-014","01-02-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1283","01-02-015","01-02-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1284","01-02-016","01-02-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1285","01-02-017","01-02-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1286","01-02-018","01-02-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1287","01-02-019","01-02-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1288","01-02-020","01-02-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1289","01-02-021","01-02-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1290","01-02-022","01-02-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1291","01-02-023","01-02-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1292","01-02-024","01-02-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1293","01-02-025","01-02-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1294","01-02-026","01-02-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1295","01-02-027","01-02-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1296","01-02-028","01-02-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1297","01-02-029","01-02-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1298","01-02-030","01-02-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1299","01-02-031","01-02-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1300","01-02-032","01-02-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1301","01-02-033","01-02-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1302","01-02-034","01-02-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1303","01-02-035","01-02-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1304","01-02-036","01-02-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1305","01-02-037","01-02-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1306","01-02-038","01-02-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1307","01-02-039","01-02-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1308","01-02-040","01-02-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1309","01-02-041","01-02-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1310","01-02-042","01-02-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1311","01-02-043","01-02-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1312","01-02-044","01-02-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1313","01-02-045","01-02-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1314","01-02-046","01-02-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1315","01-02-047","01-02-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1316","01-02-048","01-02-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1317","01-02-049","01-02-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1318","01-02-050","01-02-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1319","01-02-051","01-02-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1320","01-02-052","01-02-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1321","01-02-053","01-02-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1322","01-02-054","01-02-054","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1323","01-02-055","01-02-055","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1324","01-02-056","01-02-056","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1325","01-02-057","01-02-057","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1326","01-02-058","01-02-058","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1327","01-02-059","01-02-059","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1328","01-03-001","01-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1329","01-03-002","01-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1330","01-03-003","01-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1331","01-03-004","01-03-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1332","01-03-005","01-03-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1333","01-03-006","01-03-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1334","01-03-007","01-03-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1335","01-03-008","01-03-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1336","01-03-009","01-03-009","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1337","01-03-010","01-03-010","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1338","01-03-011","01-03-011","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1339","01-05-001","01-05-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1340","02-01-001","02-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1341","05-01-001","05-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1342","05-01-002","05-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1343","06-01-001","06-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1344","06-01-002","06-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1345","06-01-003","06-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1346","06-01-004","06-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1347","06-02-001","06-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1348","06-02-002","06-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1349","06-02-003","06-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1350","06-03-001","06-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1351","06-03-002","06-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1352","06-03-003","06-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1353","07-01-001","07-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1354","08-01-001","08-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1355","09-01-001","09-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1356","IS-CW050","01-01-014","2022-05-15","0","0","16","0","0","Issue","1.1","2","0","IS-CW050","S","2","10","33","PA-191","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1357","IS-CW050","01-01-125","2022-05-15","0","0","2","0","0","Issue","1.1","2","0","IS-CW050","S","2","10","33","PA-191","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1358","IS-CW050","01-03-001","2022-05-15","0","0","4","0","0","Issue","1.1","2","0","IS-CW050","S","2","10","33","PA-191","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1359","IS-CW050","01-03-003","2022-05-15","0","0","1","0","0","Issue","1.1","2","0","IS-CW050","S","2","10","33","PA-191","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1360","IS-CW050","09-01-001","2022-05-15","0","0","1","0","0","Issue","1.1","2","0","IS-CW050","S","2","10","33","PA-191","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1361","IS-CW051","01-01-053","2022-05-15","0","0","5","0","0","Issue","1.1","2","0","IS-CW051","S","2","10","33","PA-115","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1362","IS-CW051","01-01-030","2022-05-15","0","0","4","0","0","Issue","1.1","2","0","IS-CW051","S","2","10","33","PA-115","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1363","IS-CW051","01-01-112","2022-05-15","0","0","4","0","0","Issue","1.1","2","0","IS-CW051","S","2","10","33","PA-115","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1364","IS-CW051","01-03-001","2022-05-15","0","0","0.5","0","0","Issue","1.1","2","0","IS-CW051","S","2","10","33","PA-115","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1365","IS-CW052","01-01-025","2022-05-11","0","0","20","0","0","Issue","1.1","2","0","IS-CW052","S","2","10","33","PA-118","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1366","IS-CW052","01-01-121","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW052","S","2","10","33","PA-118","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1367","IS-CW052","01-01-014","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW052","S","2","10","33","PA-118","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1368","IS-CW052","01-01-025","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW052","S","2","10","33","PA-118","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1369","IS-CW053","01-01-014","2022-05-18","0","0","8","0","0","Issue","1.1","2","0","IS-CW053","S","2","10","33","PA-122","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1370","IS-CW054","01-01-113","2022-05-18","0","0","10","0","0","Issue","1.1","2","0","IS-CW054","S","2","10","33","PA-127","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1371","IS-CW054","01-01-015","2022-05-18","0","0","10","0","0","Issue","1.1","2","0","IS-CW054","S","2","10","33","PA-127","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1376","IS-CW056","01-01-125","2022-05-18","0","0","6","0","0","Issue","1.1","2","0","IS-CW056","S","2","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1377","IS-CW056","01-01-018","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW056","S","2","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1378","IS-CW056","01-01-119","2022-05-18","0","0","2","0","0","Issue","1.1","2","0","IS-CW056","S","2","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1379","IS-CW056","06-01-004","2022-05-18","0","0","10","0","0","Issue","1.1","2","0","IS-CW056","S","2","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1380","IS-CW057","01-01-042","2022-05-21","0","0","10","0","0","Issue","1.1","2","0","IS-CW057","S","2","10","33","PA-129","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1381","IS-CW057","01-01-040","2022-05-21","0","0","10","0","0","Issue","1.1","2","0","IS-CW057","S","2","10","33","PA-129","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1382","IS-CW058","01-01-025","2022-05-22","0","0","20","0","0","Issue","1.1","2","0","IS-CW058","S","2","10","33","PA-118","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1383","IS-CW055","06-01-004","2022-05-18","0","0","10","0","0","Issue","1.1","1","0","IS-CW055","U","1","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1384","IS-CW055","01-01-125","2022-05-18","0","0","6","0","0","Issue","1.1","1","0","IS-CW055","U","1","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1385","IS-CW055","01-01-018","2022-05-18","0","0","4","0","0","Issue","1.1","1","0","IS-CW055","U","1","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1386","IS-CW055","01-01-119","2022-05-18","0","0","2","0","0","Issue","1.1","1","0","IS-CW055","U","1","10","33","PA-125","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1387","MRR-CW010","01-01-164","2022-05-18","200","1320000","0","0","6600","Receive","1.1","2","0","MRR-CW010","","2","10","","","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1388","IS-CW059","01-01-044","2022-05-19","0","0","13","0","0","Issue","1.1","2","0","IS-CW059","S","2","10","33","PA-014","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1389","IS-CW059","01-01-003","2022-05-19","0","0","16","0","0","Issue","1.1","2","0","IS-CW059","S","2","10","33","PA-014","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1390","IS-CW059","01-01-125","2022-05-19","0","0","20","0","0","Issue","1.1","2","0","IS-CW059","S","2","10","33","PA-014","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1391","IS-CW059","01-01-164","2022-05-19","0","0","8","0","0","Issue","1.1","2","0","IS-CW059","S","2","10","33","PA-014","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1392","IS-CW060","06-01-001","2022-05-19","0","0","20","0","0","Issue","1.1","2","0","IS-CW060","S","2","10","33","PA-013","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1393","IS-CW060","06-01-002","2022-05-19","0","0","15","0","0","Issue","1.1","2","0","IS-CW060","S","2","10","33","PA-013","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1394","IS-CW060","06-02-002","2022-05-19","0","0","5","0","0","Issue","1.1","2","0","IS-CW060","S","2","10","33","PA-013","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1395","MRR-CW011","01-01-165","2022-05-20","200","1320000","0","0","6600","Receive","1.1","2","0","MRR-CW011","","2","10","","","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1396","MRR-CW011","01-01-166","2022-05-20","200","1440000","0","0","7200","Receive","1.1","2","0","MRR-CW011","","2","10","","","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1397","IS-CW061","01-01-003","2022-05-21","0","0","17","0","0","Issue","1.1","2","0","IS-CW061","S","2","10","33","PA-014","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1398","IS-CW061","01-01-165","2022-05-21","0","0","4","0","0","Issue","1.1","2","0","IS-CW061","S","2","10","33","PA-014","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1399","IS-CW061","01-01-121","2022-05-21","0","0","8","0","0","Issue","1.1","2","0","IS-CW061","S","2","10","33","PA-014","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1400","MRR-CW012","09-01-002","2022-05-22","200","116000","0","0","580","Receive","1.1","2","0","MRR-CW012","","2","10","","","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1401","IS-CW062","01-01-125","2022-05-22","0","0","12","0","0","Issue","1.1","2","0","IS-CW062","S","2","10","33","PA-014","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1402","IS-CW062","01-01-125","2022-05-22","0","0","8","0","0","Issue","1.1","2","0","IS-CW062","S","2","10","33","PA-014","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1403","IS-CW062","09-01-002","2022-05-22","0","0","10","0","0","Issue","1.1","2","0","IS-CW062","S","2","10","33","PA-014","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1404","IS-CW062","01-01-021","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW062","S","2","10","33","PA-014","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1405","IS-CW063","01-01-165","2022-05-22","0","0","8","0","0","Issue","1.1","2","0","IS-CW063","S","2","10","33","PA-111","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1406","IS-CW064","01-01-015","2022-05-23","0","0","20","0","0","Issue","1.1","2","0","IS-CW064","S","2","10","33","PA-127","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1407","IS-CW065","01-01-121","2022-05-23","0","0","18","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1408","IS-CW065","01-01-101","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1409","IS-CW065","01-01-052","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1410","IS-CW065","01-01-125","2022-05-23","0","0","12","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1411","IS-CW065","01-01-003","2022-05-23","0","0","8","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1412","IS-CW065","01-01-125","2022-05-23","0","0","4","0","0","Issue","1.1","2","0","IS-CW065","S","2","10","33","PA-014","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1413","IS-CW066","01-01-018","2022-05-24","0","0","4","0","0","Issue","1.1","2","0","IS-CW066","S","2","10","33","PA-125","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1414","IS-CW066","01-01-014","2022-05-24","0","0","4","0","0","Issue","1.1","2","0","IS-CW066","S","2","10","33","PA-125","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1415","IS-CW066","01-01-121","2022-05-24","0","0","4","0","0","Issue","1.1","2","0","IS-CW066","S","2","10","33","PA-125","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1416","IS-CW067","01-01-125","2022-05-24","0","0","12","0","0","Issue","1.1","2","0","IS-CW067","S","2","10","33","PA-014","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1417","IS-CW068","01-01-120","2022-05-24","0","0","5","0","0","Issue","1.1","2","0","IS-CW068","S","2","10","33","PA-013","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1418","IS-CW068","06-02-002","2022-05-24","0","0","10","0","0","Issue","1.1","2","0","IS-CW068","S","2","10","33","PA-013","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1419","IS-CW069","01-01-125","2022-05-25","0","0","24","0","0","Issue","1.1","2","0","IS-CW069","S","2","10","33","PA-191","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1420","IS-CW069","01-01-003","2022-05-25","0","0","8","0","0","Issue","1.1","2","0","IS-CW069","S","2","10","33","PA-191","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1421","IS-CW069","01-01-014","2022-05-25","0","0","4","0","0","Issue","1.1","2","0","IS-CW069","S","2","10","33","PA-191","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1422","IS-CW069","01-03-001","2022-05-25","0","0","2","0","0","Issue","1.1","2","0","IS-CW069","S","2","10","33","PA-191","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1423","IS-CW070","01-03-001","2022-05-26","0","0","2","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1424","IS-CW070","01-03-007","2022-05-26","0","0","2","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1425","IS-CW070","01-01-030","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1426","IS-CW070","01-01-053","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1427","IS-CW070","01-01-041","2022-05-26","0","0","4","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1428","IS-CW070","06-03-001","2022-05-26","0","0","10","0","0","Issue","1.1","2","0","IS-CW070","S","2","10","33","PA-115","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1429","IS-CW071","01-03-001","2022-05-24","0","0","1.5","0","0","Issue","1.1","2","0","IS-CW071","S","2","10","33","PA-165","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1430","IS-CW071","01-03-002","2022-05-24","0","0","3","0","0","Issue","1.1","2","0","IS-CW071","S","2","10","33","PA-165","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1431","IS-CW071","01-01-125","2022-05-24","0","0","12","0","0","Issue","1.1","2","0","IS-CW071","S","2","10","33","PA-165","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1432","IS-CW071","01-01-022","2022-05-24","0","0","5","0","0","Issue","1.1","2","0","IS-CW071","S","2","10","33","PA-165","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1433","IS-CW071","01-01-118","2022-05-24","0","0","5","0","0","Issue","1.1","2","0","IS-CW071","S","2","10","33","PA-165","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1434","IS-CW072","01-03-007","2022-05-22","0","0","1","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1435","IS-CW072","01-03-001","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1436","IS-CW072","01-01-026","2022-05-22","0","0","5","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1437","IS-CW072","01-01-030","2022-05-22","0","0","5","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1438","IS-CW072","09-01-002","2022-05-22","0","0","5","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1439","IS-CW072","09-01-001","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1440","IS-CW072","01-01-117","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW072","S","2","10","33","PA-115","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1441","IS-CW073","01-01-093","2022-05-17","0","0","5","0","0","Issue","1.1","2","0","IS-CW073","S","2","10","38","PA-195","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1442","MRR-CW013","01-03-012","2022-05-15","200","2800000","0","0","14000","Receive","1.1","2","0","MRR-CW013","","2","10","","","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1443","MRR-CW013","01-03-013","2022-05-15","200","3200000","0","0","16000","Receive","1.1","2","0","MRR-CW013","","2","10","","","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1444","IS-CW074","01-03-012","2022-05-17","0","0","3","0","0","Issue","1.1","2","0","IS-CW074","S","2","10","38","PA-239","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1445","IS-CW074","01-03-013","2022-05-17","0","0","3","0","0","Issue","1.1","2","0","IS-CW074","S","2","10","38","PA-239","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1446","IS-CW075","01-01-118","2022-05-18","0","0","10","0","0","Issue","1.1","2","0","IS-CW075","S","2","10","38","PA-208","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1447","IS-CW075","01-01-089","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW075","S","2","10","38","PA-208","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1448","IS-CW076","01-01-058","2022-05-18","0","0","8","0","0","Issue","1.1","2","0","IS-CW076","S","2","10","38","PA-224","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1449","IS-CW077","01-01-058","2022-05-20","0","0","20","0","0","Issue","1.1","2","0","IS-CW077","S","2","10","38","PA-173","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1450","IS-CW078","07-01-001","2022-05-20","0","0","1","0","0","Issue","1.1","2","0","IS-CW078","S","2","10","38","PA-224","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1451","IS-CW079","01-01-117","2022-05-22","0","0","8","0","0","Issue","1.1","2","0","IS-CW079","S","2","10","38","PA-175","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1452","IS-CW079","01-01-088","2022-05-22","0","0","8","0","0","Issue","1.1","2","0","IS-CW079","S","2","10","38","PA-175","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1453","MRR-CW014","09-01-003","2022-05-20","200","720000","0","0","3600","Receive","1.1","2","0","MRR-CW014","","2","10","","","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1454","IS-CW080","09-01-003","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW080","S","2","10","38","PA-208","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1455","IS-CW081","01-01-120","2022-05-23","0","0","10","0","0","Issue","1.1","2","0","IS-CW081","S","2","10","38","PA-240","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1456","IS-CW082","01-02-054","2022-05-25","0","0","20","0","0","Issue","1.1","2","0","IS-CW082","S","2","10","38","PA-173","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1457","IS-CW082","01-02-055","2022-05-25","0","0","20","0","0","Issue","1.1","2","0","IS-CW082","S","2","10","38","PA-173","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1458","IS-CW083","01-02-031","2022-05-25","0","0","5","0","0","Issue","1.1","2","0","IS-CW083","S","2","10","38","PA-217","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1459","IS-CW084","06-03-001","2022-05-13","0","0","145","0","0","Issue","1.1","2","0","IS-CW084","S","2","10","35","PA-163","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("1460","IS-CW085","01-03-001","2022-05-14","0","0","2","0","0","Issue","1.1","2","0","IS-CW085","S","2","10","35","PA-179","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1461","MRR-CW015","03-02-001","2022-05-15","20","198400","0","0","9920","Receive","1.1","2","0","MRR-CW015","","2","10","","","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1462","IS-CW086","03-02-001","2022-05-16","0","0","1","0","0","Issue","1.1","2","0","IS-CW086","S","2","10","35","PA-241","0","2022-05-16");
INSERT INTO inv_materialbalance VALUES("1463","IS-CW087","01-02-001","2022-05-17","0","0","10","0","0","Issue","1.1","2","0","IS-CW087","S","2","10","35","PA-242","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1464","IS-CW087","01-02-050","2022-05-17","0","0","8","0","0","Issue","1.1","2","0","IS-CW087","S","2","10","35","PA-242","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1465","IS-CW087","06-03-001","2022-05-17","0","0","20","0","0","Issue","1.1","2","0","IS-CW087","S","2","10","35","PA-242","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1466","IS-CW087","01-03-002","2022-05-17","0","0","2","0","0","Issue","1.1","2","0","IS-CW087","S","2","10","35","PA-242","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1467","IS-CW088","01-03-001","2022-05-17","0","0","4","0","0","Issue","1.1","2","0","IS-CW088","S","2","10","35","PA-180","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1468","IS-CW088","01-03-002","2022-05-17","0","0","2","0","0","Issue","1.1","2","0","IS-CW088","S","2","10","35","PA-180","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1469","IS-CW088","01-03-005","2022-05-17","0","0","2","0","0","Issue","1.1","2","0","IS-CW088","S","2","10","35","PA-180","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1470","IS-CW088","01-03-003","2022-05-17","0","0","1","0","0","Issue","1.1","2","0","IS-CW088","S","2","10","35","PA-180","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1471","MRR-CW016","01-03-014","2022-05-17","200","3220000","0","0","16100","Receive","1.1","2","0","MRR-CW016","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1472","IS-CW089","01-02-001","2022-05-18","0","0","20","0","0","Issue","1.1","2","0","IS-CW089","S","2","10","35","PA-243","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1473","IS-CW089","01-02-036","2022-05-18","0","0","14","0","0","Issue","1.1","2","0","IS-CW089","S","2","10","35","PA-243","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1474","IS-CW089","01-03-002","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW089","S","2","10","35","PA-243","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1475","IS-CW089","01-03-001","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW089","S","2","10","35","PA-243","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1476","IS-CW089","01-03-014","2022-05-18","0","0","2","0","0","Issue","1.1","2","0","IS-CW089","S","2","10","35","PA-243","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1477","IS-CW090","01-03-003","2022-05-18","0","0","7","0","0","Issue","1.1","2","0","IS-CW090","S","2","10","35","PA-244","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1478","IS-CW090","01-03-008","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW090","S","2","10","35","PA-244","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1479","MRR-CW017","01-02-060","2022-05-18","200","1710000","0","0","8550","Receive","1.1","2","0","MRR-CW017","","2","10","","","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1480","IS-CW091","01-01-062","2022-05-19","0","0","15","0","0","Issue","1.1","2","0","IS-CW091","S","2","10","35","PA-245","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1481","IS-CW091","01-02-047","2022-05-19","0","0","15","0","0","Issue","1.1","2","0","IS-CW091","S","2","10","35","PA-245","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1482","IS-CW091","01-02-030","2022-05-19","0","0","20","0","0","Issue","1.1","2","0","IS-CW091","S","2","10","35","PA-245","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1483","IS-CW092","01-03-001","2022-05-19","0","0","2","0","0","Issue","1.1","2","0","IS-CW092","S","2","10","35","PA-020","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1484","IS-CW093","01-03-001","2022-05-20","0","0","8","0","0","Issue","1.1","2","0","IS-CW093","S","2","10","35","PA-180","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1485","IS-CW093","01-03-002","2022-05-20","0","0","1","0","0","Issue","1.1","2","0","IS-CW093","S","2","10","35","PA-180","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1486","IS-CW093","01-03-005","2022-05-20","0","0","1","0","0","Issue","1.1","2","0","IS-CW093","S","2","10","35","PA-180","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1487","IS-CW093","01-03-008","2022-05-20","0","0","1","0","0","Issue","1.1","2","0","IS-CW093","S","2","10","35","PA-180","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1488","IS-CW094","06-01-001","2022-05-23","0","0","150","0","0","Issue","1.1","2","0","IS-CW094","S","2","10","35","PA-163","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1489","IS-CW094","06-03-001","2022-05-23","0","0","150","0","0","Issue","1.1","2","0","IS-CW094","S","2","10","35","PA-163","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1490","MRR-CW018","03-03-001","2022-05-20","200","8600","0","0","43","Receive","1.1","2","0","MRR-CW018","","2","10","","","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1491","IS-CW095","01-01-125","2022-05-21","0","0","1","0","0","Issue","1.1","2","0","IS-CW095","S","2","10","35","PA-246","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1492","IS-CW095","03-03-001","2022-05-21","0","0","20","0","0","Issue","1.1","2","0","IS-CW095","S","2","10","35","PA-246","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("1493","IS-CW096","01-03-005","2022-05-23","0","0","3","0","0","Issue","1.1","2","0","IS-CW096","S","2","10","35","PA-180","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1494","IS-CW096","01-02-017","2022-05-23","0","0","4","0","0","Issue","1.1","2","0","IS-CW096","S","2","10","35","PA-180","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1495","IS-CW097","01-02-045","2022-05-23","0","0","10","0","0","Issue","1.1","2","0","IS-CW097","S","2","10","35","PA-181","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1496","IS-CW098","01-02-001","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW098","S","2","10","35","PA-177","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1497","IS-CW098","01-02-001","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW098","S","2","10","35","PA-177","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1498","MRR-CW019","01-03-009","2022-05-22","50","800000","0","0","16000","Receive","1.1","2","0","MRR-CW019","","2","10","","","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1499","IS-CW099","01-03-003","2022-05-23","0","0","3","0","0","Issue","1.1","2","0","IS-CW099","S","2","10","35","PA-244","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1500","IS-CW099","01-03-005","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW099","S","2","10","35","PA-244","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1501","IS-CW099","01-03-008","2022-05-23","0","0","2","0","0","Issue","1.1","2","0","IS-CW099","S","2","10","35","PA-244","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1502","IS-CW099","01-03-002","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW099","S","2","10","35","PA-244","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1503","IS-CW099","01-03-001","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW099","S","2","10","35","PA-244","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1504","IS-CW100","01-01-125","2022-05-23","0","0","4","0","0","Issue","1.1","2","0","IS-CW100","S","2","10","35","PA-246","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1505","IS-CW101","01-02-036","2022-05-24","0","0","10","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1506","IS-CW101","01-02-049","2022-05-24","0","0","10","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1507","IS-CW101","01-02-022","2022-05-24","0","0","10","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1508","IS-CW101","01-02-001","2022-05-24","0","0","15","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1509","IS-CW101","01-03-002","2022-05-24","0","0","2","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1510","IS-CW101","01-03-001","2022-05-24","0","0","2","0","0","Issue","1.1","2","0","IS-CW101","S","2","10","35","PA-243","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1511","IS-CW102","07-01-001","2022-05-25","0","0","15","0","0","Issue","1.1","2","0","IS-CW102","S","2","10","35","PA-247","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1512","IS-CW103","01-01-157","2022-05-25","0","0","5","0","0","Issue","1.1","2","0","IS-CW103","S","2","10","35","PA-244","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1513","IS-CW104","01-03-001","2022-05-27","0","0","6","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1514","IS-CW104","01-03-002","2022-05-27","0","0","4","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1515","IS-CW104","01-03-007","2022-05-27","0","0","1","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1516","IS-CW104","01-03-008","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1517","IS-CW104","01-03-003","2022-05-27","0","0","0.5","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1518","IS-CW104","07-01-001","2022-05-27","0","0","9","0","0","Issue","1.1","2","0","IS-CW104","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1519","IS-CW105","06-03-001","2022-05-27","0","0","61","0","0","Issue","1.1","2","0","IS-CW105","S","2","10","35","PA-248","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1520","IS-CW105","06-01-001","2022-05-27","0","0","56","0","0","Issue","1.1","2","0","IS-CW105","S","2","10","35","PA-248","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1521","IS-CW105","01-03-002","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW105","S","2","10","35","PA-248","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1522","IS-CW105","01-03-001","2022-05-27","0","0","4","0","0","Issue","1.1","2","0","IS-CW105","S","2","10","35","PA-248","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1523","IS-CW105","01-03-003","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW105","S","2","10","35","PA-248","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1524","MRR-CW020","09-01-004","2022-05-26","100","280000","0","0","2800","Receive","1.1","2","0","MRR-CW020","","2","10","","","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1525","IS-CW106","01-01-054","2022-05-27","0","0","5","0","0","Issue","1.1","2","0","IS-CW106","S","2","10","35","PA-178","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1526","IS-CW106","09-01-004","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW106","S","2","10","35","PA-178","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1527","IS-CW107","01-03-008","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW107","S","2","10","35","PA-180","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1528","IS-CW108","01-01-125","2022-05-27","0","0","4","0","0","Issue","1.1","2","0","IS-CW108","S","2","10","35","PA-249","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1529","IS-CW109","01-02-030","2022-05-28","0","0","14","0","0","Issue","1.1","2","0","IS-CW109","S","2","10","35","PA-181","0","2022-05-28");
INSERT INTO inv_materialbalance VALUES("1530","MRR-CW021","03-03-002","2022-05-24","100","74000","0","0","740","Receive","1.1","2","0","MRR-CW021","","2","10","","","0","2022-05-24");
INSERT INTO inv_materialbalance VALUES("1531","IS-CW110","01-01-012","2022-05-28","0","0","5","0","0","Issue","1.1","2","0","IS-CW110","S","2","10","38","PA-171","0","2022-05-28");
INSERT INTO inv_materialbalance VALUES("1532","IS-CW111","01-01-025","2022-05-19","0","0","10","0","0","Issue","1.1","2","0","IS-CW111","S","2","10","31","PA-250","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1533","IS-CW111","01-01-157","2022-05-19","0","0","5","0","0","Issue","1.1","2","0","IS-CW111","S","2","10","31","PA-250","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1534","IS-CW112","01-01-010","2022-05-20","0","0","24","0","0","Issue","1.1","2","0","IS-CW112","S","2","10","31","PA-004","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1535","IS-CW112","01-02-039","2022-05-20","0","0","4","0","0","Issue","1.1","2","0","IS-CW112","S","2","10","31","PA-004","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1536","IS-CW113","01-01-026","2022-05-20","0","0","10","0","0","Issue","1.1","2","0","IS-CW113","S","2","10","31","PA-078","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1537","01-01-001","01-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1538","01-01-002","01-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1539","01-01-003","01-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1540","01-01-004","01-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1541","01-01-005","01-01-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1542","01-01-006","01-01-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1543","01-01-007","01-01-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1544","01-01-008","01-01-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1545","01-01-009","01-01-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1546","01-01-010","01-01-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1547","01-01-011","01-01-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1548","01-01-012","01-01-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1549","01-01-013","01-01-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1550","01-01-014","01-01-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1551","01-01-015","01-01-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1552","01-01-016","01-01-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1553","01-01-017","01-01-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1554","01-01-018","01-01-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1555","01-01-019","01-01-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1556","01-01-020","01-01-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1557","01-01-021","01-01-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1558","01-01-022","01-01-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1559","01-01-023","01-01-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1560","01-01-024","01-01-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1561","01-01-025","01-01-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1562","01-01-026","01-01-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1563","01-01-027","01-01-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1564","01-01-028","01-01-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1565","01-01-029","01-01-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1566","01-01-030","01-01-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1567","01-01-031","01-01-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1568","01-01-032","01-01-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1569","01-01-033","01-01-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1570","01-01-034","01-01-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1571","01-01-035","01-01-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1572","01-01-036","01-01-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1573","01-01-037","01-01-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1574","01-01-038","01-01-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1575","01-01-039","01-01-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1576","01-01-040","01-01-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1577","01-01-041","01-01-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1578","01-01-042","01-01-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1579","01-01-043","01-01-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1580","01-01-044","01-01-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1581","01-01-045","01-01-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1582","01-01-046","01-01-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1583","01-01-047","01-01-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1584","01-01-048","01-01-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1585","01-01-049","01-01-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1586","01-01-050","01-01-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1587","01-01-051","01-01-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1588","01-01-052","01-01-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1589","01-01-053","01-01-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1590","01-01-054","01-01-054","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1591","01-01-055","01-01-055","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1592","01-01-056","01-01-056","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1593","01-01-057","01-01-057","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1594","01-01-058","01-01-058","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1595","01-01-059","01-01-059","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1596","01-01-060","01-01-060","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1597","01-01-061","01-01-061","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1598","01-01-062","01-01-062","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1599","01-01-063","01-01-063","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1600","01-01-064","01-01-064","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1601","01-01-065","01-01-065","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1602","01-01-066","01-01-066","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1603","01-01-067","01-01-067","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1604","01-01-068","01-01-068","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1605","01-01-069","01-01-069","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1606","01-01-070","01-01-070","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1607","01-01-071","01-01-071","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1608","01-01-072","01-01-072","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1609","01-01-073","01-01-073","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1610","01-01-074","01-01-074","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1611","01-01-075","01-01-075","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1612","01-01-076","01-01-076","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1613","01-01-077","01-01-077","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1614","01-01-078","01-01-078","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1615","01-01-079","01-01-079","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1616","01-01-080","01-01-080","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1617","01-01-081","01-01-081","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1618","01-01-082","01-01-082","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1619","01-01-083","01-01-083","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1620","01-01-084","01-01-084","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1621","01-01-085","01-01-085","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1622","01-01-086","01-01-086","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1623","01-01-087","01-01-087","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1624","01-01-088","01-01-088","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1625","01-01-089","01-01-089","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1626","01-01-090","01-01-090","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1627","01-01-091","01-01-091","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1628","01-01-092","01-01-092","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1629","01-01-093","01-01-093","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1630","01-01-094","01-01-094","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1631","01-01-095","01-01-095","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1632","01-01-096","01-01-096","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1633","01-01-097","01-01-097","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1634","01-01-098","01-01-098","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1635","01-01-099","01-01-099","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1636","01-01-100","01-01-100","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1637","01-01-101","01-01-101","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1638","01-01-102","01-01-102","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1639","01-01-103","01-01-103","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1640","01-01-104","01-01-104","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1641","01-01-105","01-01-105","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1642","01-01-106","01-01-106","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1643","01-01-107","01-01-107","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1644","01-01-108","01-01-108","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1645","01-01-109","01-01-109","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1646","01-01-110","01-01-110","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1647","01-01-111","01-01-111","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1648","01-01-112","01-01-112","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1649","01-01-113","01-01-113","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1650","01-01-114","01-01-114","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1651","01-01-115","01-01-115","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1652","01-01-116","01-01-116","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1653","01-01-117","01-01-117","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1654","01-01-118","01-01-118","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1655","01-01-119","01-01-119","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1656","01-01-120","01-01-120","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1657","01-01-121","01-01-121","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1658","01-01-122","01-01-122","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1659","01-01-123","01-01-123","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1660","01-01-124","01-01-124","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1661","01-01-125","01-01-125","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1662","01-01-126","01-01-126","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1663","01-01-127","01-01-127","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1664","01-01-128","01-01-128","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1665","01-01-129","01-01-129","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1666","01-01-130","01-01-130","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1667","01-01-131","01-01-131","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1668","01-01-132","01-01-132","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1669","01-01-133","01-01-133","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1670","01-01-134","01-01-134","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1671","01-01-135","01-01-135","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1672","01-01-136","01-01-136","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1673","01-01-137","01-01-137","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1674","01-01-138","01-01-138","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1675","01-01-139","01-01-139","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1676","01-01-140","01-01-140","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1677","01-01-141","01-01-141","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1678","01-01-142","01-01-142","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1679","01-01-143","01-01-143","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1680","01-01-144","01-01-144","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1681","01-01-145","01-01-145","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1682","01-01-146","01-01-146","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1683","01-01-147","01-01-147","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1684","01-01-148","01-01-148","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1685","01-01-149","01-01-149","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1686","01-01-150","01-01-150","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1687","01-01-151","01-01-151","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1688","01-01-152","01-01-152","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1689","01-01-153","01-01-153","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1690","01-01-154","01-01-154","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1691","01-01-155","01-01-155","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1692","01-01-156","01-01-156","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1693","01-01-157","01-01-157","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1694","01-01-158","01-01-158","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1695","01-01-159","01-01-159","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1696","01-01-160","01-01-160","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1697","01-01-161","01-01-161","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1698","01-01-162","01-01-162","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1699","01-01-163","01-01-163","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1700","01-01-164","01-01-164","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1701","01-01-165","01-01-165","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1702","01-01-166","01-01-166","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1703","01-02-001","01-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1704","01-02-002","01-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1705","01-02-003","01-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1706","01-02-004","01-02-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1707","01-02-005","01-02-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1708","01-02-006","01-02-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1709","01-02-007","01-02-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1710","01-02-008","01-02-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1711","01-02-009","01-02-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1712","01-02-010","01-02-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1713","01-02-011","01-02-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1714","01-02-012","01-02-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1715","01-02-013","01-02-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1716","01-02-014","01-02-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1717","01-02-015","01-02-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1718","01-02-016","01-02-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1719","01-02-017","01-02-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1720","01-02-018","01-02-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1721","01-02-019","01-02-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1722","01-02-020","01-02-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1723","01-02-021","01-02-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1724","01-02-022","01-02-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1725","01-02-023","01-02-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1726","01-02-024","01-02-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1727","01-02-025","01-02-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1728","01-02-026","01-02-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1729","01-02-027","01-02-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1730","01-02-028","01-02-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1731","01-02-029","01-02-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1732","01-02-030","01-02-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1733","01-02-031","01-02-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1734","01-02-032","01-02-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1735","01-02-033","01-02-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1736","01-02-034","01-02-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1737","01-02-035","01-02-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1738","01-02-036","01-02-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1739","01-02-037","01-02-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1740","01-02-038","01-02-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1741","01-02-039","01-02-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1742","01-02-040","01-02-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1743","01-02-041","01-02-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1744","01-02-042","01-02-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1745","01-02-043","01-02-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1746","01-02-044","01-02-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1747","01-02-045","01-02-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1748","01-02-046","01-02-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1749","01-02-047","01-02-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1750","01-02-048","01-02-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1751","01-02-049","01-02-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1752","01-02-050","01-02-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1753","01-02-051","01-02-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1754","01-02-052","01-02-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1755","01-02-053","01-02-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1756","01-02-054","01-02-054","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1757","01-02-055","01-02-055","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1758","01-02-056","01-02-056","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1759","01-02-057","01-02-057","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1760","01-02-058","01-02-058","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1761","01-02-059","01-02-059","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1762","01-02-060","01-02-060","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1763","01-03-001","01-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1764","01-03-002","01-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1765","01-03-003","01-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1766","01-03-004","01-03-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1767","01-03-005","01-03-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1768","01-03-006","01-03-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1769","01-03-007","01-03-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1770","01-03-008","01-03-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1771","01-03-009","01-03-009","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1772","01-03-010","01-03-010","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1773","01-03-011","01-03-011","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1774","01-03-012","01-03-012","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1775","01-03-013","01-03-013","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1776","01-03-014","01-03-014","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1777","01-05-001","01-05-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1778","02-01-001","02-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1779","03-02-001","03-02-001","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1780","03-02-002","03-02-002","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1781","03-03-001","03-03-001","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1782","03-03-002","03-03-002","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1783","03-03-003","03-03-003","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1784","03-03-004","03-03-004","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1785","03-03-005","03-03-005","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1786","03-03-006","03-03-006","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1787","03-03-007","03-03-007","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1788","03-03-008","03-03-008","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1789","03-03-009","03-03-009","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1790","03-03-010","03-03-010","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1791","03-03-011","03-03-011","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1792","05-01-001","05-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1793","05-01-002","05-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1794","06-01-001","06-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1795","06-01-002","06-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1796","06-01-003","06-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1797","06-01-004","06-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1798","06-02-001","06-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1799","06-02-002","06-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1800","06-02-003","06-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1801","06-03-001","06-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1802","06-03-002","06-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1803","06-03-003","06-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1804","07-01-001","07-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1805","08-01-001","08-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1806","09-01-001","09-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1807","09-01-002","09-01-002","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1808","09-01-003","09-01-003","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1809","09-01-004","09-01-004","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1810","11-01-001","11-01-001","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1811","13-01-001","13-01-001","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1812","MRR-CW022","09-02-001","2022-05-19","200","186000","0","0","930","Receive","1.1","2","0","MRR-CW022","","2","10","","","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("1813","IS-CW114","01-03-002","2022-05-20","0","0","1","0","0","Issue","1.1","2","0","IS-CW114","S","2","10","31","PA-335","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1814","IS-CW114","09-02-001","2022-05-20","0","0","2","0","0","Issue","1.1","2","0","IS-CW114","S","2","10","31","PA-335","0","2022-05-20");
INSERT INTO inv_materialbalance VALUES("1815","IS-CW115","01-01-117","2022-05-22","0","0","16","0","0","Issue","1.1","2","0","IS-CW115","S","2","10","31","PA-059","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1816","IS-CW115","01-03-003","2022-05-22","0","0","1","0","0","Issue","1.1","2","0","IS-CW115","S","2","10","31","PA-059","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("1817","IS-CW116","01-01-014","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW116","S","2","10","31","PA-088","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1818","IS-CW117","01-01-119","2022-05-23","0","0","5","0","0","Issue","1.1","2","0","IS-CW117","S","2","10","31","PA-097","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1819","IS-CW117","01-03-003","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW117","S","2","10","31","PA-097","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1820","IS-CW118","01-02-005","2022-05-23","0","0","8","0","0","Issue","1.1","2","0","IS-CW118","S","2","10","31","PA-085","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1821","IS-CW119","01-03-002","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW119","S","2","10","31","PA-335","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1822","IS-CW119","09-02-001","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW119","S","2","10","31","PA-335","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1823","IS-CW120","01-02-007","2022-05-23","0","0","4","0","0","Issue","1.1","2","0","IS-CW120","S","2","10","31","PA-064","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1824","IS-CW120","03-03-011","2022-05-23","0","0","2","0","0","Issue","1.1","2","0","IS-CW120","S","2","10","31","PA-064","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1825","IS-CW120","03-03-010","2022-05-23","0","0","10","0","0","Issue","1.1","2","0","IS-CW120","S","2","10","31","PA-064","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1826","IS-CW120","03-03-009","2022-05-23","0","0","10","0","0","Issue","1.1","2","0","IS-CW120","S","2","10","31","PA-064","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1827","IS-CW121","01-03-009","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW121","S","2","10","31","PA-250","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1828","IS-CW121","01-03-009","2022-05-23","0","0","2","0","0","Issue","1.1","2","0","IS-CW121","S","2","10","31","PA-250","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1829","IS-CW122","01-01-025","2022-05-25","0","0","10","0","0","Issue","1.1","2","0","IS-CW122","S","2","10","31","PA-250","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1830","IS-CW122","01-01-101","2022-05-25","0","0","10","0","0","Issue","1.1","2","0","IS-CW122","S","2","10","31","PA-250","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1831","IS-CW123","01-01-041","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW123","S","2","10","31","PA-002","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1832","IS-CW123","01-01-047","2022-05-26","0","0","1","0","0","Issue","1.1","2","0","IS-CW123","S","2","10","31","PA-002","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1834","IS-CW125","01-01-012","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW125","S","2","10","31","PA-088","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1835","IS-CW125","01-01-089","2022-05-26","0","0","2","0","0","Issue","1.1","2","0","IS-CW125","S","2","10","31","PA-088","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1836","IS-CW126","01-01-038","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW126","S","2","10","31","PA-053","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1837","IS-CW127","01-03-002","2022-05-27","0","0","1","0","0","Issue","1.1","2","0","IS-CW127","S","2","10","31","PA-336","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1838","MRR-CW023","01-02-061","2022-05-26","200","3200000","0","0","16000","Receive","1.1","2","0","MRR-CW023","","2","10","","","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1839","IS-CW128","01-02-061","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW128","S","2","10","31","PA-250","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1840","IS-CW128","01-03-008","2022-05-27","0","0","2","0","0","Issue","1.1","2","0","IS-CW128","S","2","10","31","PA-250","0","2022-05-27");
INSERT INTO inv_materialbalance VALUES("1841","IS-CW129","01-03-008","2022-05-28","0","0","3","0","0","Issue","1.1","2","0","IS-CW129","S","2","10","31","PA-250","0","2022-05-28");
INSERT INTO inv_materialbalance VALUES("1844","IS-CW131","01-03-003","2022-05-29","0","0","1","0","0","Issue","1.1","2","0","IS-CW131","S","2","10","31","PA-097","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1845","IS-CW130","01-03-002","2022-05-29","0","0","2","0","0","Issue","1.1","1","0","IS-CW130","U","1","10","31","PA-089","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1846","IS-CW130","01-03-008","2022-05-29","0","0","2","0","0","Issue","1.1","1","0","IS-CW130","U","1","10","31","PA-089","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1848","MRR-CW024","12-01-001","2022-05-19","200","24000","0","0","120","Receive","1.1","","0","MRR-CW024","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("1849","IS-CW132","11-01-001","2022-05-29","0","0","3","0","0","Issue","1.1","2","0","IS-CW132","S","2","10","31","PA-064","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1850","IS-CW132","12-01-001","2022-05-29","0","0","50","0","0","Issue","1.1","2","0","IS-CW132","S","2","10","31","PA-064","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1851","IS-CW132","03-03-005","2022-05-29","0","0","10","0","0","Issue","1.1","2","0","IS-CW132","S","2","10","31","PA-064","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1852","IS-CW132","03-03-006","2022-05-29","0","0","10","0","0","Issue","1.1","2","0","IS-CW132","S","2","10","31","PA-064","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1853","IS-CW133","13-01-001","2022-05-23","0","0","1","0","0","Issue","1.1","2","0","IS-CW133","S","2","10","31","PA-077","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1854","IS-CW133","03-03-008","2022-05-23","0","0","10","0","0","Issue","1.1","2","0","IS-CW133","S","2","10","31","PA-077","0","2022-05-23");
INSERT INTO inv_materialbalance VALUES("1855","IS-CW124","01-03-002","2022-05-26","0","0","2","0","0","Issue","1.1","1","0","IS-CW124","U","1","10","31","PA-067","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1856","MRR-CW025","01-07-001","2022-05-25","200","1840000","0","0","9200","Receive","1.1","2","0","MRR-CW025","","2","10","","","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1857","MRR-CW026","03-03-012","2022-05-25","200","44000","0","0","220","Receive","1.1","2","0","MRR-CW026","","2","10","","","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1858","MRR-CW026","03-03-013","2022-05-25","200","15000","0","0","75","Receive","1.1","2","0","MRR-CW026","","2","10","","","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1859","IS-CW134","03-03-012","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW134","S","2","10","31","PA-055","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1860","IS-CW134","03-03-013","2022-05-26","0","0","20","0","0","Issue","1.1","2","0","IS-CW134","S","2","10","31","PA-055","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1861","IS-CW134","09-01-004","2022-05-26","0","0","6","0","0","Issue","1.1","2","0","IS-CW134","S","2","10","31","PA-055","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1862","IS-CW134","01-07-001","2022-05-26","0","0","10","0","0","Issue","1.1","2","0","IS-CW134","S","2","10","31","PA-055","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1863","MRR-CW027","10-01-001","2022-05-25","300","31500","0","0","105","Receive","1.1","2","0","MRR-CW027","","2","10","","","0","2022-05-25");
INSERT INTO inv_materialbalance VALUES("1864","IS-CW135","01-01-122","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW135","S","2","10","31","PA-080","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1865","IS-CW135","01-01-093","2022-05-26","0","0","5","0","0","Issue","1.1","2","0","IS-CW135","S","2","10","31","PA-080","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1866","IS-CW135","10-01-001","2022-05-26","0","0","60","0","0","Issue","1.1","2","0","IS-CW135","S","2","10","31","PA-080","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1867","IS-CW135","03-03-013","2022-05-26","0","0","10","0","0","Issue","1.1","2","0","IS-CW135","S","2","10","31","PA-080","0","2022-05-26");
INSERT INTO inv_materialbalance VALUES("1870","IS-CW136","01-02-007","2022-05-29","0","0","15","0","0","Issue","1.1","1","0","IS-CW136","U","1","10","35","PA-179","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1871","IS-CW137","01-02-049","2022-05-29","0","0","10","0","0","Issue","1.1","2","0","IS-CW137","S","2","10","35","PA-242","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1872","IS-CW137","01-02-001","2022-05-29","0","0","6","0","0","Issue","1.1","2","0","IS-CW137","S","2","10","35","PA-242","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1873","IS-CW138","01-03-005","2022-05-29","0","0","5","0","0","Issue","1.1","2","0","IS-CW138","S","2","10","35","PA-180","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1874","IS-CW138","01-02-017","2022-05-29","0","0","4","0","0","Issue","1.1","2","0","IS-CW138","S","2","10","35","PA-180","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1875","IS-CW138","01-03-001","2022-05-29","0","0","0.25","0","0","Issue","1.1","2","0","IS-CW138","S","2","10","35","PA-180","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("1876","IS-CW139","01-01-044","2022-05-07","0","0","10","0","0","Issue","1.1","2","0","IS-CW139","S","2","10","31","PA-337","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1877","IS-CW140","01-02-005","2022-05-08","0","0","4","0","0","Issue","1.1","2","0","IS-CW140","S","2","10","31","PA-085","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1878","IS-CW141","01-03-001","2022-05-08","0","0","1","0","0","Issue","1.1","2","0","IS-CW141","S","2","10","31","PA-089","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1879","IS-CW141","01-03-002","2022-05-08","0","0","2","0","0","Issue","1.1","2","0","IS-CW141","S","2","10","31","PA-089","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1880","IS-CW141","01-03-008","2022-05-08","0","0","2","0","0","Issue","1.1","2","0","IS-CW141","S","2","10","31","PA-089","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1881","IS-CW142","01-01-157","2022-05-08","0","0","10","0","0","Issue","1.1","2","0","IS-CW142","S","2","10","31","PA-250","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1882","IS-CW142","01-03-008","2022-05-08","0","0","5","0","0","Issue","1.1","2","0","IS-CW142","S","2","10","31","PA-250","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1883","IS-CW142","01-03-009","2022-05-08","0","0","2","0","0","Issue","1.1","2","0","IS-CW142","S","2","10","31","PA-250","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1884","MRR-CW028","01-02-063","2022-05-08","200","1650000","0","0","8250","Receive","1.1","2","0","MRR-CW028","","2","10","","","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1885","IS-CW143","01-02-063","2022-05-09","0","0","1","0","0","Issue","1.1","2","0","IS-CW143","S","2","10","31","PA-062","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1886","IS-CW144","01-01-041","2022-05-10","0","0","30","0","0","Issue","1.1","2","0","IS-CW144","S","2","10","31","PA-059","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1887","IS-CW144","01-01-041","2022-05-10","0","0","2","0","0","Issue","1.1","2","0","IS-CW144","S","2","10","31","PA-059","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1888","IS-CW144","01-01-010","2022-05-10","0","0","5","0","0","Issue","1.1","2","0","IS-CW144","S","2","10","31","PA-059","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1889","IS-CW145","01-01-092","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW145","S","2","10","31","PA-071","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1890","IS-CW145","01-01-121","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW145","S","2","10","31","PA-071","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1891","MRR-CW029","03-03-014","2022-05-10","200","1670000","0","0","8350","Receive","1.1","2","0","MRR-CW029","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1892","IS-CW146","03-03-014","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW146","S","2","10","31","PA-064","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1893","IS-CW146","01-02-007","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW146","S","2","10","31","PA-064","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1894","IS-CW147","01-03-009","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW147","S","2","10","31","PA-250","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1895","IS-CW147","01-03-008","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW147","S","2","10","31","PA-250","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1896","IS-CW147","01-01-157","2022-05-11","0","0","15","0","0","Issue","1.1","2","0","IS-CW147","S","2","10","31","PA-250","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1897","MRR-CW030","03-03-015","2022-05-11","200","240000","0","0","1200","Receive","1.1","2","0","MRR-CW030","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1898","IS-CW148","01-03-002","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW148","S","2","10","31","PA-066","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1899","IS-CW148","01-03-001","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW148","S","2","10","31","PA-066","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1900","IS-CW148","01-03-003","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW148","S","2","10","31","PA-066","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1901","IS-CW148","03-03-015","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW148","S","2","10","31","PA-066","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1902","MRR-CW031","01-02-056","2022-05-11","200","1770000","0","0","8850","Receive","1.1","2","0","MRR-CW031","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1903","IS-CW149","01-02-056","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW149","S","2","10","31","PA-067","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1904","MRR-CW032","01-07-002","2022-05-13","200","1840000","0","0","9200","Receive","1.1","2","0","MRR-CW032","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("1905","MRR-CW033","01-07-003","2022-05-13","200","1740000","0","0","8700","Receive","1.1","2","0","MRR-CW033","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("1906","IS-CW150","01-07-002","2022-05-14","0","0","15","0","0","Issue","1.1","2","0","IS-CW150","S","2","10","31","PA-070","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1907","IS-CW150","01-07-003","2022-05-14","0","0","15","0","0","Issue","1.1","2","0","IS-CW150","S","2","10","31","PA-070","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1908","IS-CW150","01-02-027","2022-05-14","0","0","15","0","0","Issue","1.1","2","0","IS-CW150","S","2","10","31","PA-070","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1909","IS-CW151","06-03-001","2022-05-14","0","0","5","0","0","Issue","1.1","2","0","IS-CW151","S","2","10","31","PA-057","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1910","IS-CW151","06-02-001","2022-05-14","0","0","5","0","0","Issue","1.1","2","0","IS-CW151","S","2","10","31","PA-057","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1911","IS-CW151","06-01-004","2022-05-14","0","0","10","0","0","Issue","1.1","2","0","IS-CW151","S","2","10","31","PA-057","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1912","MRR-CW034","13-01-002","2022-05-13","100","810000","0","0","8100","Receive","1.1","2","0","MRR-CW034","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("1913","IS-CW152","01-02-006","2022-05-14","0","0","4","0","0","Issue","1.1","2","0","IS-CW152","S","2","10","31","PA-053","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1914","IS-CW152","07-01-001","2022-05-14","0","0","3","0","0","Issue","1.1","2","0","IS-CW152","S","2","10","31","PA-053","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1915","IS-CW152","13-01-002","2022-05-14","0","0","1","0","0","Issue","1.1","2","0","IS-CW152","S","2","10","31","PA-053","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1916","IS-CW153","01-02-002","2022-05-14","0","0","5","0","0","Issue","1.1","2","0","IS-CW153","S","2","10","31","PA-250","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1920","IS-CW154","01-02-006","2022-05-14","0","0","15","0","0","Issue","1.1","1","0","IS-CW154","U","1","10","31","PA-059","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1921","MRR-CW035","01-02-065","2022-05-17","200","1710000","0","0","8550","Receive","1.1","2","0","MRR-CW035","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1922","IS-CW155","01-02-065","2022-05-17","0","0","15","0","0","Issue","1.1","2","0","IS-CW155","S","2","10","31","PA-071","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1923","MRR-CW036","01-02-083","2022-05-17","200","1770000","0","0","8850","Receive","1.1","2","0","MRR-CW036","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1924","MRR-CW036","01-02-081","2022-05-17","200","1650000","0","0","8250","Receive","1.1","2","0","MRR-CW036","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1925","MRR-CW036","01-02-082","2022-05-17","200","1710000","0","0","8550","Receive","1.1","2","0","MRR-CW036","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1926","IS-CW156","01-02-083","2022-05-17","0","0","10","0","0","Issue","1.1","2","0","IS-CW156","S","2","10","31","PA-086","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1927","IS-CW156","01-07-001","2022-05-17","0","0","5","0","0","Issue","1.1","2","0","IS-CW156","S","2","10","31","PA-086","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1928","IS-CW157","01-02-001","2022-05-17","0","0","10","0","0","Issue","1.1","2","0","IS-CW157","S","2","10","31","PA-338","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1929","IS-CW158","01-01-087","2022-05-17","0","0","5","0","0","Issue","1.1","2","0","IS-CW158","S","2","10","31","PA-250","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("1930","IS-CW159","01-01-041","2022-05-18","0","0","15","0","0","Issue","1.1","2","0","IS-CW159","S","2","10","31","PA-059","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1931","IS-CW159","01-01-010","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW159","S","2","10","31","PA-059","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1932","IS-CW159","01-03-003","2022-05-18","0","0","1","0","0","Issue","1.1","2","0","IS-CW159","S","2","10","31","PA-059","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1933","IS-CW159","03-03-015","2022-05-18","0","0","1","0","0","Issue","1.1","2","0","IS-CW159","S","2","10","31","PA-059","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1934","IS-CW160","01-02-029","2022-05-18","0","0","20","0","0","Issue","1.1","2","0","IS-CW160","S","2","10","31","PA-005","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1935","IS-CW161","01-03-008","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW161","S","2","10","31","PA-250","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1936","IS-CW161","01-03-009","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW161","S","2","10","31","PA-250","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1937","IS-CW161","01-01-021","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW161","S","2","10","31","PA-250","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("1938","IS-CW162","01-02-006","2022-05-11","0","0","20","0","0","Issue","1.1","2","0","IS-CW162","S","2","10","36","PA-294","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1939","IS-CW162","01-02-006","2022-05-11","0","0","10","0","0","Issue","1.1","2","0","IS-CW162","S","2","10","36","PA-294","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1940","IS-CW163","01-01-159","2022-05-12","0","0","8","0","0","Issue","1.1","2","0","IS-CW163","S","2","10","36","PA-269","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1941","IS-CW163","01-01-012","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW163","S","2","10","36","PA-269","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1942","IS-CW164","01-02-006","2022-05-12","0","0","9","0","0","Issue","1.1","2","0","IS-CW164","S","2","10","36","PA-275","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1943","IS-CW165","01-01-042","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW165","S","2","10","36","PA-292","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("1944","IS-CW166","01-02-008","2022-05-14","0","0","13","0","0","Issue","1.1","2","0","IS-CW166","S","2","10","36","PA-294","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1945","IS-CW166","06-01-001","2022-05-14","0","0","5","0","0","Issue","1.1","2","0","IS-CW166","S","2","10","36","PA-294","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1946","MRR-CW037","01-04-001","2022-05-14","200","1800000","0","0","9000","Receive","1.1","2","0","MRR-CW037","","2","10","","","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1947","IS-CW167","01-04-001","2022-05-14","0","0","20","0","0","Issue","1.1","2","0","IS-CW167","S","2","10","36","PA-296","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1948","IS-CW168","01-01-125","2022-05-14","0","0","1","0","0","Issue","1.1","2","0","IS-CW168","S","2","10","36","PA-267","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1949","IS-CW169","01-03-001","2022-05-14","0","0","2","0","0","Issue","1.1","2","0","IS-CW169","S","2","10","36","PA-017","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1950","IS-CW169","01-03-012","2022-05-14","0","0","2","0","0","Issue","1.1","2","0","IS-CW169","S","2","10","36","PA-017","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("1951","IS-CW170","01-02-001","2022-05-15","0","0","5","0","0","Issue","1.1","2","0","IS-CW170","S","2","10","36","PA-283","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1952","IS-CW171","01-03-001","2022-05-15","0","0","1","0","0","Issue","1.1","2","0","IS-CW171","S","2","10","36","PA-297","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1953","IS-CW171","01-03-002","2022-05-15","0","0","2","0","0","Issue","1.1","2","0","IS-CW171","S","2","10","36","PA-297","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1954","IS-CW172","01-01-001","2022-05-15","0","0","10","0","0","Issue","1.1","2","0","IS-CW172","S","2","10","36","PA-017","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1955","IS-CW172","01-03-001","2022-05-15","0","0","2","0","0","Issue","1.1","2","0","IS-CW172","S","2","10","36","PA-017","0","2022-05-15");
INSERT INTO inv_materialbalance VALUES("1956","IS-CW173","01-02-001","2022-05-01","0","0","5","0","0","Issue","1.1","2","0","IS-CW173","S","2","10","34","PA-397","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1957","IS-CW173","01-02-008","2022-05-01","0","0","10","0","0","Issue","1.1","2","0","IS-CW173","S","2","10","34","PA-397","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1958","IS-CW173","01-01-119","2022-05-01","0","0","1","0","0","Issue","1.1","2","0","IS-CW173","S","2","10","34","PA-397","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1959","IS-CW173","01-03-002","2022-05-01","0","0","1","0","0","Issue","1.1","2","0","IS-CW173","S","2","10","34","PA-397","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1960","IS-CW173","03-02-001","2022-05-01","0","0","2","0","0","Issue","1.1","2","0","IS-CW173","S","2","10","34","PA-397","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1961","IS-CW174","03-02-001","2022-05-01","0","0","6","0","0","Issue","1.1","2","0","IS-CW174","S","2","10","34","PA-392","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1962","MRR-CW038","01-03-015","2022-05-01","200","3220000","0","0","16100","Receive","1.1","2","0","MRR-CW038","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1963","IS-CW175","01-01-125","2022-05-01","0","0","4","0","0","Issue","1.1","2","0","IS-CW175","S","2","10","34","PA-406","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1964","IS-CW175","01-03-015","2022-05-01","0","0","1","0","0","Issue","1.1","2","0","IS-CW175","S","2","10","34","PA-406","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("1965","MRR-CW039","01-03-016","2022-05-07","200","2820000","0","0","14100","Receive","1.1","2","0","MRR-CW039","","2","10","","","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1966","IS-CW176","01-03-016","2022-05-07","0","0","2","0","0","Issue","1.1","2","0","IS-CW176","S","2","10","34","PA-361","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1967","IS-CW176","09-01-003","2022-05-07","0","0","2","0","0","Issue","1.1","2","0","IS-CW176","S","2","10","34","PA-361","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("1968","IS-CW177","01-03-003","2022-05-08","0","0","2","0","0","Issue","1.1","2","0","IS-CW177","S","2","10","34","PA-387","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1969","IS-CW178","01-01-125","2022-05-08","0","0","4","0","0","Issue","1.1","2","0","IS-CW178","S","2","10","34","PA-365","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1970","IS-CW178","01-01-041","2022-05-08","0","0","4","0","0","Issue","1.1","2","0","IS-CW178","S","2","10","34","PA-365","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("1971","IS-CW179","01-03-003","2022-05-09","0","0","1","0","0","Issue","1.1","2","0","IS-CW179","S","2","10","34","PA-423","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1972","IS-CW180","01-01-001","2022-05-09","0","0","10","0","0","Issue","1.1","2","0","IS-CW180","S","2","10","34","PA-379","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1973","IS-CW180","01-07-002","2022-05-09","0","0","5","0","0","Issue","1.1","2","0","IS-CW180","S","2","10","34","PA-379","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1974","IS-CW180","01-02-008","2022-05-09","0","0","5","0","0","Issue","1.1","2","0","IS-CW180","S","2","10","34","PA-379","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1975","IS-CW180","01-02-046","2022-05-09","0","0","7","0","0","Issue","1.1","2","0","IS-CW180","S","2","10","34","PA-379","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1976","IS-CW181","01-01-125","2022-05-09","0","0","8","0","0","Issue","1.1","2","0","IS-CW181","S","2","10","34","PA-346","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1977","MRR-CW040","01-01-167","2022-05-09","200","1344000","0","0","6720","Receive","1.1","2","0","MRR-CW040","","2","10","","","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1978","MRR-CW041","01-01-168","2022-05-09","200","1340000","0","0","6700","Receive","1.1","2","0","MRR-CW041","","2","10","","","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1979","IS-CW182","01-01-125","2022-05-10","0","0","4","0","0","Issue","1.1","2","0","IS-CW182","S","2","10","34","PA-345","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1980","IS-CW182","01-01-167","2022-05-10","0","0","4","0","0","Issue","1.1","2","0","IS-CW182","S","2","10","34","PA-345","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1981","IS-CW182","01-01-168","2022-05-10","0","0","4","0","0","Issue","1.1","2","0","IS-CW182","S","2","10","34","PA-345","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1982","IS-CW183","01-01-094","2022-05-10","0","0","3","0","0","Issue","1.1","2","0","IS-CW183","S","2","10","34","PA-383","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1983","IS-CW183","01-01-125","2022-05-10","0","0","8","0","0","Issue","1.1","2","0","IS-CW183","S","2","10","34","PA-383","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1984","MRR-CW042","03-02-002","2022-05-09","200","2800000","0","0","14000","Receive","1.1","2","0","MRR-CW042","","2","10","","","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("1985","IS-CW184","03-02-002","2022-05-10","0","0","10","0","0","Issue","1.1","2","0","IS-CW184","S","2","10","34","PA-416","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1986","IS-CW185","01-01-119","2022-05-10","0","0","5","0","0","Issue","1.1","2","0","IS-CW185","S","2","10","34","PA-413","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1987","IS-CW186","01-03-002","2022-05-10","0","0","3","0","0","Issue","1.1","2","0","IS-CW186","S","2","10","34","PA-372","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1988","IS-CW187","01-01-012","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW187","S","2","10","34","PA-397","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1989","IS-CW187","03-02-002","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW187","S","2","10","34","PA-397","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1990","IS-CW187","03-02-001","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW187","S","2","10","34","PA-397","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1991","IS-CW188","01-03-009","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW188","S","2","10","34","PA-360","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1992","IS-CW188","01-03-003","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW188","S","2","10","34","PA-360","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1993","IS-CW189","01-03-001","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW189","S","2","10","34","PA-019","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1994","MRR-CW043","01-02-132","2022-05-10","200","1650000","0","0","8250","Receive","1.1","2","0","MRR-CW043","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("1995","IS-CW190","01-02-132","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW190","S","2","10","34","PA-385","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1996","IS-CW191","01-01-119","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW191","S","2","10","34","PA-410","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1997","IS-CW192","01-01-090","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW192","S","2","10","34","PA-383","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1998","IS-CW192","01-01-003","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW192","S","2","10","34","PA-383","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("1999","IS-CW193","01-01-125","2022-05-11","0","0","2","0","0","Issue","1.1","2","0","IS-CW193","S","2","10","34","PA-345","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2000","MRR-CW044","01-01-169","2022-05-11","200","1340000","0","0","6700","Receive","1.1","2","0","MRR-CW044","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2001","IS-CW194","01-01-169","2022-05-12","0","0","8","0","0","Issue","1.1","2","0","IS-CW194","S","2","10","34","PA-411","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2003","IS-CW196","01-01-123","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW196","S","2","10","34","PA-355","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2004","MRR-CW045","01-03-017","2022-05-11","100","1610000","0","0","16100","Receive","1.1","2","0","MRR-CW045","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2005","MRR-CW046","01-03-019","2022-05-11","200","2820000","0","0","14100","Receive","1.1","2","0","MRR-CW046","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2006","IS-CW197","01-03-017","2022-05-12","0","0","1","0","0","Issue","1.1","2","0","IS-CW197","S","2","10","34","PA-344","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2007","IS-CW197","01-03-016","2022-05-12","0","0","1","0","0","Issue","1.1","2","0","IS-CW197","S","2","10","34","PA-344","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2008","IS-CW197","01-03-019","2022-05-12","0","0","2","0","0","Issue","1.1","2","0","IS-CW197","S","2","10","34","PA-344","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2009","MRR-CW047","01-01-170","2022-05-13","200","1680000","0","0","8400","Receive","1.1","2","0","MRR-CW047","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2010","MRR-CW048","01-03-020","2022-05-12","200","3220000","0","0","16100","Receive","1.1","2","0","MRR-CW048","","2","10","","","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2011","IS-CW198","01-01-170","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW198","S","2","10","34","PA-406","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2012","IS-CW198","01-03-012","2022-05-13","0","0","1","0","0","Issue","1.1","2","0","IS-CW198","S","2","10","34","PA-406","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2013","IS-CW198","01-03-020","2022-05-13","0","0","1","0","0","Issue","1.1","2","0","IS-CW198","S","2","10","34","PA-406","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2014","IS-CW199","01-03-019","2022-05-13","0","0","1","0","0","Issue","1.1","2","0","IS-CW199","S","2","10","34","PA-019","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2015","MRR-CW049","01-03-021","2022-05-12","200","3820000","0","0","19100","Receive","1.1","2","0","MRR-CW049","","2","10","","","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2016","IS-CW200","01-03-021","2022-05-13","0","0","2","0","0","Issue","1.1","2","0","IS-CW200","S","2","10","34","PA-344","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2017","IS-CW201","01-02-132","2022-05-13","0","0","4","0","0","Issue","1.1","2","0","IS-CW201","S","2","10","34","PA-385","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2018","IS-CW201","01-01-125","2022-05-13","0","0","4","0","0","Issue","1.1","2","0","IS-CW201","S","2","10","34","PA-385","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2019","IS-CW202","01-01-123","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW202","S","2","10","34","PA-383","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2020","MRR-CW050","03-03-016","2022-05-10","200","470000","0","0","2350","Receive","1.1","2","0","MRR-CW050","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2023","MRR-CW051","01-03-022","2022-05-31","200","2820000","0","0","14100","Receive","1.1","2","0","MRR-CW051","","2","10","","","0","2022-05-31");
INSERT INTO inv_materialbalance VALUES("2024","IS-CW204","01-03-022","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW204","S","2","10","34","PA-418","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2025","IS-CW205","01-02-006","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW205","S","2","10","34","PA-408","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2026","IS-CW206","01-01-041","2022-05-12","0","0","5","0","0","Issue","1.1","2","0","IS-CW206","S","2","10","34","PA-408","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2027","IS-CW207","06-01-001","2022-05-12","0","0","100","0","0","Issue","1.1","2","0","IS-CW207","S","2","10","34","PA-342","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2028","IS-CW208","06-01-001","2022-05-12","0","0","126","0","0","Issue","1.1","2","0","IS-CW208","S","2","10","34","PA-352","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2029","IS-CW209","06-01-001","2022-05-12","0","0","20","0","0","Issue","1.1","2","0","IS-CW209","S","2","10","34","PA-356","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2030","IS-CW210","01-01-012","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW210","S","2","10","34","PA-407","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2032","MRR-CW052","01-01-012","2022-06-06","200","1720000","0","0","8600","Receive","1.1","2","0","MRR-CW052","","2","10","","","0","2022-06-06");
INSERT INTO inv_materialbalance VALUES("2037","MRR-CW053","01-01-171","2022-06-07","200","1340000","0","0","6700","Receive","1.1","2","0","MRR-CW053","","2","10","","","0","2022-06-07");
INSERT INTO inv_materialbalance VALUES("2050","IS-CW211","01-02-132","2022-05-01","0","0","10","0","0","Issue","1.1","1","0","IS-CW211","U","1","10","36","PA-294","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2054","IS-CW213","01-01-117","2022-05-08","0","0","30","0","0","Issue","1.1","1","0","IS-CW213","U","1","10","36","PA-300","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2055","IS-CW214","01-01-171","2022-05-08","0","0","20","0","0","Issue","1.1","1","0","IS-CW214","U","1","10","36","PA-296","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2056","IS-CW215","01-01-125","2022-05-09","0","0","2","0","0","Issue","1.1","1","0","IS-CW215","U","1","10","36","PA-267","0","2022-05-09");
INSERT INTO inv_materialbalance VALUES("2057","IS-CW216","03-02-002","2022-05-10","0","0","2","0","0","Issue","1.1","1","0","IS-CW216","U","1","10","36","PA-269","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2058","MRR-CW054","01-02-133","2022-05-16","100","890000","0","0","8900","Receive","1.1","2","0","MRR-CW054","","2","10","","","0","2022-05-16");
INSERT INTO inv_materialbalance VALUES("2059","IS-CW218","01-02-133","2022-05-17","0","0","4","0","0","Issue","1.1","2","0","IS-CW218","S","2","10","36","PA-017","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("2060","IS-CW218","01-03-002","2022-05-17","0","0","1","0","0","Issue","1.1","2","0","IS-CW218","S","2","10","36","PA-017","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("2061","IS-CW219","01-01-125","2022-05-17","0","0","8","0","0","Issue","1.1","2","0","IS-CW219","S","2","10","36","PA-262","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("2062","MRR-CW055","01-02-134","2022-05-17","50","432500","0","0","8650","Receive","1.1","2","0","MRR-CW055","","2","10","","","0","2022-05-17");
INSERT INTO inv_materialbalance VALUES("2063","IS-CW220","01-02-134","2022-05-18","0","0","30","0","0","Issue","1.1","2","0","IS-CW220","S","2","10","36","PA-294","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2064","IS-CW221","01-01-014","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW221","S","2","10","36","PA-269","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2065","IS-CW221","01-01-041","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW221","S","2","10","36","PA-269","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2066","IS-CW222","01-03-001","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW222","S","2","10","36","PA-306","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2067","IS-CW222","01-03-002","2022-05-18","0","0","5","0","0","Issue","1.1","2","0","IS-CW222","S","2","10","36","PA-306","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2068","IS-CW223","01-01-012","2022-05-18","0","0","4","0","0","Issue","1.1","2","0","IS-CW223","S","2","10","36","PA-269","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2069","IS-CW223","01-01-159","2022-05-18","0","0","3","0","0","Issue","1.1","2","0","IS-CW223","S","2","10","36","PA-269","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2070","IS-CW224","01-03-002","2022-05-18","0","0","1","0","0","Issue","1.1","2","0","IS-CW224","S","2","10","36","PA-297","0","2022-05-18");
INSERT INTO inv_materialbalance VALUES("2071","IS-CW225","01-01-117","2022-05-19","0","0","30","0","0","Issue","1.1","2","0","IS-CW225","S","2","10","36","PA-294","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("2072","IS-CW226","01-03-001","2022-05-19","0","0","4","0","0","Issue","1.1","2","0","IS-CW226","S","2","10","36","PA-017","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("2073","IS-CW227","01-03-001","2022-05-19","0","0","2","0","0","Issue","1.1","2","0","IS-CW227","S","2","10","36","PA-297","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("2074","IS-CW227","01-03-002","2022-05-19","0","0","1","0","0","Issue","1.1","2","0","IS-CW227","S","2","10","36","PA-297","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("2075","IS-CW228","01-03-001","2022-05-19","0","0","1","0","0","Issue","1.1","2","0","IS-CW228","S","2","10","36","PA-293","0","2022-05-19");
INSERT INTO inv_materialbalance VALUES("2076","IS-CW229","01-02-007","2022-05-21","0","0","5","0","0","Issue","1.1","2","0","IS-CW229","S","2","10","36","PA-016","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("2077","IS-CW230","01-01-117","2022-05-21","0","0","10","0","0","Issue","1.1","2","0","IS-CW230","S","2","10","36","PA-275","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("2078","IS-CW231","01-01-158","2022-05-21","0","0","5","0","0","Issue","1.1","2","0","IS-CW231","S","2","10","36","PA-269","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("2079","IS-CW231","06-01-002","2022-05-21","0","0","15","0","0","Issue","1.1","2","0","IS-CW231","S","2","10","36","PA-269","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("2080","IS-CW232","01-01-119","2022-05-22","0","0","10","0","0","Issue","1.1","2","0","IS-CW232","S","2","10","36","PA-294","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2081","IS-CW233","01-02-001","2022-05-22","0","0","5","0","0","Issue","1.1","2","0","IS-CW233","S","2","10","36","PA-307","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2082","IS-CW203","03-03-016","2022-05-10","0","0","3","0","0","Issue","1.1","1","0","IS-CW203","U","1","10","34","PA-409","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2083","IS-CW203","03-02-002","2022-05-10","0","0","2","0","0","Issue","1.1","1","0","IS-CW203","U","1","10","34","PA-409","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2084","IS-CW195","01-03-003","2022-05-12","0","0","1","0","0","Issue","1.1","1","0","IS-CW195","U","1","10","34","PA-406","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2085","MRR-GA001","01-01-103","2022-05-10","200","1760000","0","0","8800","Receive","1.1","2","0","MRR-GA001","","2","18","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2086","MRR-CW056","09-01-003","2022-05-10","200","900000","0","0","4500","Receive","1.1","2","0","MRR-CW056","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2087","IS-CW234","01-01-103","2022-05-11","0","0","9","0","0","Issue","1.1","2","0","IS-CW234","S","2","10","34","PA-374","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2088","IS-CW234","09-01-003","2022-05-11","0","0","1","0","0","Issue","1.1","2","0","IS-CW234","S","2","10","34","PA-374","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2089","MRR-CW057","03-03-017","2022-05-10","200","780000","0","0","3900","Receive","1.1","2","0","MRR-CW057","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2090","IS-CW235","06-01-001","2022-05-12","0","0","200","0","0","Issue","1.1","2","0","IS-CW235","S","2","10","34","PA-403","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2091","IS-CW235","03-03-017","2022-05-12","0","0","6","0","0","Issue","1.1","2","0","IS-CW235","S","2","10","34","PA-403","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2092","IS-CW236","01-01-012","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2093","IS-CW236","03-02-001","2022-05-13","0","0","2","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2094","IS-CW236","09-01-003","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2095","IS-CW236","07-01-001","2022-05-13","0","0","3","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2096","IS-CW236","06-01-001","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2097","IS-CW236","01-01-012","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2098","IS-CW236","06-02-001","2022-05-13","0","0","5","0","0","Issue","1.1","2","0","IS-CW236","S","2","10","34","PA-397","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2099","MRR-CW058","03-03-018","2022-05-13","200","52000","0","0","260","Receive","1.1","2","0","MRR-CW058","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2100","MRR-CW059","03-03-019","2022-05-13","200","31000","0","0","155","Receive","1.1","2","0","MRR-CW059","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2101","MRR-CW060","03-03-020","2022-05-13","200","110000","0","0","550","Receive","1.1","2","0","MRR-CW060","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2102","MRR-CW061","03-03-018","2022-05-13","200","52000","0","0","260","Receive","1.1","2","0","MRR-CW061","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2103","IS-CW237","06-03-002","2022-05-14","0","0","10","0","0","Issue","1.1","2","0","IS-CW237","S","2","10","34","PA-392","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2104","IS-CW237","06-01-001","2022-05-14","0","0","15","0","0","Issue","1.1","2","0","IS-CW237","S","2","10","34","PA-392","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2105","IS-CW237","06-02-002","2022-05-14","0","0","10","0","0","Issue","1.1","2","0","IS-CW237","S","2","10","34","PA-392","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2106","IS-CW237","03-03-018","2022-05-14","0","0","50","0","0","Issue","1.1","2","0","IS-CW237","S","2","10","34","PA-392","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2107","IS-CW237","03-03-020","2022-05-14","0","0","20","0","0","Issue","1.1","2","0","IS-CW237","S","2","10","34","PA-392","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2108","MRR-CW062","01-01-172","2022-05-13","200","1320000","0","0","6600","Receive","1.1","2","0","MRR-CW062","","2","10","","","0","2022-05-13");
INSERT INTO inv_materialbalance VALUES("2109","IS-CW238","01-01-172","2022-05-14","0","0","8","0","0","Issue","1.1","2","0","IS-CW238","S","2","10","34","PA-345","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2110","IS-CW238","01-01-125","2022-05-14","0","0","8","0","0","Issue","1.1","2","0","IS-CW238","S","2","10","34","PA-345","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2111","IS-CW238","01-01-165","2022-05-14","0","0","1","0","0","Issue","1.1","2","0","IS-CW238","S","2","10","34","PA-345","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2112","IS-CW238","01-01-167","2022-05-14","0","0","4","0","0","Issue","1.1","2","0","IS-CW238","S","2","10","34","PA-345","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2113","IS-CW239","01-01-016","2022-05-14","0","0","5","0","0","Issue","1.1","2","0","IS-CW239","S","2","10","34","PA-383","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2114","IS-CW239","01-01-003","2022-05-14","0","0","4","0","0","Issue","1.1","2","0","IS-CW239","S","2","10","34","PA-383","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2115","IS-CW239","01-01-125","2022-05-14","0","0","4","0","0","Issue","1.1","2","0","IS-CW239","S","2","10","34","PA-383","0","2022-05-14");
INSERT INTO inv_materialbalance VALUES("2116","MRR-CW063","03-03-021","2022-05-01","500","467500","0","0","935","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2117","MRR-CW063","03-03-030","2022-05-01","500","485000","0","0","970","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2118","MRR-CW063","03-03-023","2022-05-01","500","4000","0","0","8","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2119","MRR-CW063","03-03-024","2022-05-01","500","45000","0","0","90","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2120","MRR-CW063","03-03-025","2022-05-01","500","3250","0","0","6.5","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2121","MRR-CW063","03-03-026","2022-05-01","500","4000","0","0","8","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2122","MRR-CW063","03-03-027","2022-05-01","500","64000","0","0","128","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2123","MRR-CW063","03-03-028","2022-05-01","1000","40000","0","0","40","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2124","MRR-CW063","03-03-022","2022-05-01","500","20000","0","0","40","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2125","MRR-CW063","03-03-029","2022-05-01","500","322500","0","0","645","Receive","1.1","2","0","MRR-CW063","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2137","MRR-CW064","09-01-005","2022-05-28","200","240000","0","0","1200","Receive","1.1","2","0","MRR-CW064","","2","10","","","0","2022-05-28");
INSERT INTO inv_materialbalance VALUES("2138","IS-CW241","09-01-005","2022-05-29","0","0","2","0","0","Issue","1.1","2","0","IS-CW241","S","2","10","31","PA-059","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2139","IS-CW241","01-03-003","2022-05-29","0","0","2","0","0","Issue","1.1","2","0","IS-CW241","S","2","10","31","PA-059","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2140","MRR-CW065","01-02-120","2022-05-28","200","1790000","0","0","8950","Receive","1.1","2","0","MRR-CW065","","2","10","","","0","2022-05-28");
INSERT INTO inv_materialbalance VALUES("2141","IS-CW242","01-02-120","2022-05-29","0","0","15","0","0","Issue","1.1","2","0","IS-CW242","S","2","10","31","PA-082","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2142","IS-CW243","01-01-026","2022-05-29","0","0","10","0","0","Issue","1.1","2","0","IS-CW243","S","2","10","31","PA-250","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2143","IS-CW243","01-01-112","2022-05-29","0","0","5","0","0","Issue","1.1","2","0","IS-CW243","S","2","10","31","PA-250","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2144","IS-CW243","01-03-009","2022-05-29","0","0","5","0","0","Issue","1.1","2","0","IS-CW243","S","2","10","31","PA-250","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2145","IS-CW244","01-01-157","2022-05-30","0","0","5","0","0","Issue","1.1","2","0","IS-CW244","S","2","10","31","PA-250","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2146","IS-CW244","01-03-008","2022-05-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW244","S","2","10","31","PA-250","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2147","IS-CW244","01-03-009","2022-05-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW244","S","2","10","31","PA-250","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2148","IS-CW244","01-03-008","2022-05-30","0","0","3","0","0","Issue","1.1","2","0","IS-CW244","S","2","10","31","PA-250","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2149","IS-CW245","01-03-014","2022-05-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW245","S","2","10","31","PA-085","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2150","IS-CW245","01-03-002","2022-05-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW245","S","2","10","31","PA-085","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2151","IS-CW245","09-01-002","2022-05-30","0","0","3","0","0","Issue","1.1","2","0","IS-CW245","S","2","10","31","PA-085","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2152","MRR-CW066","01-01-173","2022-05-29","200","1720000","0","0","8600","Receive","1.1","2","0","MRR-CW066","","2","10","","","0","2022-05-29");
INSERT INTO inv_materialbalance VALUES("2153","IS-CW246","01-02-132","2022-05-30","0","0","1","0","0","Issue","1.1","2","0","IS-CW246","S","2","10","31","PA-088","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2154","IS-CW246","01-01-015","2022-05-30","0","0","5","0","0","Issue","1.1","2","0","IS-CW246","S","2","10","31","PA-088","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2155","IS-CW246","01-01-173","2022-05-30","0","0","5","0","0","Issue","1.1","2","0","IS-CW246","S","2","10","31","PA-088","0","2022-05-30");
INSERT INTO inv_materialbalance VALUES("2156","IS-CW247","01-02-002","2022-05-31","0","0","4","0","0","Issue","1.1","2","0","IS-CW247","S","2","10","31","PA-250","0","2022-05-31");
INSERT INTO inv_materialbalance VALUES("2157","IS-CW247","01-03-009","2022-05-31","0","0","4","0","0","Issue","1.1","2","0","IS-CW247","S","2","10","31","PA-250","0","2022-05-31");
INSERT INTO inv_materialbalance VALUES("2158","MRR-CW067","03-03-034","2022-04-01","200","50000","0","0","250","Receive","1.1","2","0","MRR-CW067","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2159","MRR-CW068","03-03-003","2022-04-01","500","200000","0","0","400","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2160","MRR-CW068","03-03-035","2022-04-01","500","157500","0","0","315","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2161","MRR-CW068","09-01-004","2022-04-01","500","1400000","0","0","2800","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2162","MRR-CW068","03-03-036","2022-04-01","500","12500","0","0","25","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2163","MRR-CW068","03-03-037","2022-04-01","500","11500","0","0","23","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2164","MRR-CW068","03-03-038","2022-04-01","500","2250","0","0","4.5","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2165","MRR-CW068","03-03-039","2022-04-01","500","77500","0","0","155","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2166","MRR-CW068","03-03-031","2022-04-01","500","100000","0","0","200","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2167","MRR-CW068","03-03-032","2022-04-01","500","42500","0","0","85","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2168","MRR-CW068","03-03-033","2022-04-01","500","125000","0","0","250","Receive","1.1","2","0","MRR-CW068","","2","10","","","0","2022-04-01");
INSERT INTO inv_materialbalance VALUES("2173","IS-CW248","09-01-003","2022-05-10","0","0","10","0","0","Issue","1.1","1","0","IS-CW248","U","1","10","31","PA-064","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2174","IS-CW248","03-03-003","2022-05-10","0","0","10","0","0","Issue","1.1","1","0","IS-CW248","U","1","10","31","PA-064","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2175","IS-CW248","09-01-004","2022-05-10","0","0","2","0","0","Issue","1.1","1","0","IS-CW248","U","1","10","31","PA-064","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2176","IS-CW248","03-02-001","2022-05-10","0","0","1","0","0","Issue","1.1","1","0","IS-CW248","U","1","10","31","PA-064","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2177","MRR-CW069","05-01-003","2022-05-01","2000","72000","0","0","36","Receive","1.1","2","0","MRR-CW069","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2178","MRR-CW070","03-03-040","2022-05-01","500","900000","0","0","1800","Receive","1.1","2","0","MRR-CW070","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2179","MRR-CW070","03-03-041","2022-05-01","500","810000","0","0","1620","Receive","1.1","2","0","MRR-CW070","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2180","MRR-CW071","09-01-006","2022-05-01","500","2250000","0","0","4500","Receive","1.1","2","0","MRR-CW071","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2181","MRR-CW072","03-03-042","2022-05-01","500","1950000","0","0","3900","Receive","1.1","2","0","MRR-CW072","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2182","IS-CW249","05-01-003","2022-05-10","0","0","100","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2183","IS-CW249","06-01-004","2022-05-10","0","0","10","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2184","IS-CW249","09-01-006","2022-05-10","0","0","2","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2185","IS-CW249","03-03-042","2022-05-10","0","0","5","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2186","IS-CW249","03-03-040","2022-05-10","0","0","5","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2187","IS-CW249","03-03-041","2022-05-10","0","0","5","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2188","IS-CW249","03-03-024","2022-05-10","0","0","50","0","0","Issue","1.1","2","0","IS-CW249","S","2","10","31","PA-049","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2189","MRR-CW073","03-04-001","2022-05-01","500","15000","0","0","30","Receive","1.1","2","0","MRR-CW073","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2190","MRR-CW074","03-03-043","2022-05-01","500","145000","0","0","290","Receive","1.1","2","0","MRR-CW074","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2191","MRR-CW074","03-03-044","2022-05-01","500","75000","0","0","150","Receive","1.1","2","0","MRR-CW074","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2199","MRR-CW075","03-05-003","2022-05-01","500","60000","0","0","120","Receive","1.1","2","0","MRR-CW075","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2200","MRR-CW075","03-05-001","2022-05-01","500","81000","0","0","162","Receive","1.1","2","0","MRR-CW075","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2211","MRR-CW076","03-04-002","2022-05-01","500","47500","0","0","95","Receive","1.1","2","0","MRR-CW076","","2","10","","","0","2022-05-01");
INSERT INTO inv_materialbalance VALUES("2223","IS-CW212","01-01-159","2022-05-07","0","0","5","0","0","Issue","1.1","1","0","IS-CW212","U","1","10","36","PA-269","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("2224","IS-CW212","01-01-012","2022-05-07","0","0","3","0","0","Issue","1.1","1","0","IS-CW212","U","1","10","36","PA-269","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("2225","IS-CW212","07-01-001","2022-05-07","0","0","3","0","0","Issue","1.1","1","0","IS-CW212","U","1","10","36","PA-269","0","2022-05-07");
INSERT INTO inv_materialbalance VALUES("2226","IS-CW217","01-07-001","2022-05-16","0","0","30","0","0","Issue","1.1","1","0","IS-CW217","U","1","10","36","PA-294","0","2022-05-16");
INSERT INTO inv_materialbalance VALUES("2227","IS-CW217","06-01-004","2022-05-16","0","0","10","0","0","Issue","1.1","1","0","IS-CW217","U","1","10","36","PA-294","0","2022-05-16");
INSERT INTO inv_materialbalance VALUES("2228","IS-CW217","03-02-001","2022-05-16","0","0","2","0","0","Issue","1.1","1","0","IS-CW217","U","1","10","36","PA-294","0","2022-05-16");
INSERT INTO inv_materialbalance VALUES("2229","MRR-CW077","01-02-135","2022-05-10","200","1720000","0","0","8600","Receive","1.1","2","0","MRR-CW077","","2","10","","","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2230","IS-CW251","03-03-016","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW251","S","2","10","31","PA-055","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2231","IS-CW251","03-02-001","2022-05-11","0","0","5","0","0","Issue","1.1","2","0","IS-CW251","S","2","10","31","PA-055","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2232","IS-CW251","06-01-001","2022-05-11","0","0","50","0","0","Issue","1.1","2","0","IS-CW251","S","2","10","31","PA-055","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2233","IS-CW251","01-02-135","2022-05-11","0","0","4","0","0","Issue","1.1","2","0","IS-CW251","S","2","10","31","PA-055","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2234","MRR-CW078","03-03-036","2022-05-11","500","12500","0","0","25","Receive","1.1","2","0","MRR-CW078","","2","10","","","0","2022-05-11");
INSERT INTO inv_materialbalance VALUES("2235","IS-CW252","03-03-036","2022-05-12","0","0","100","0","0","Issue","1.1","2","0","IS-CW252","S","2","10","31","PA-064","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2236","IS-CW252","03-03-037","2022-05-12","0","0","100","0","0","Issue","1.1","2","0","IS-CW252","S","2","10","31","PA-064","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2237","IS-CW252","03-03-038","2022-05-12","0","0","100","0","0","Issue","1.1","2","0","IS-CW252","S","2","10","31","PA-064","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2238","IS-CW252","03-03-027","2022-05-12","0","0","10","0","0","Issue","1.1","2","0","IS-CW252","S","2","10","31","PA-064","0","2022-05-12");
INSERT INTO inv_materialbalance VALUES("2239","MRR-CW079","01-02-062","2022-05-21","2000","17100000","0","0","8550","Receive","1.1","2","0","MRR-CW079","","2","10","","","0","2022-05-21");
INSERT INTO inv_materialbalance VALUES("2240","IS-CW253","01-02-046","2022-05-22","0","0","20","0","0","Issue","1.1","2","0","IS-CW253","S","2","10","36","PA-274","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2241","IS-CW253","01-02-062","2022-05-22","0","0","10","0","0","Issue","1.1","2","0","IS-CW253","S","2","10","36","PA-274","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2242","IS-CW254","01-03-003","2022-05-22","0","0","2","0","0","Issue","1.1","2","0","IS-CW254","S","2","10","36","PA-262","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2243","IS-CW255","01-03-001","2022-05-22","0","0","10","0","0","Issue","1.1","2","0","IS-CW255","S","2","10","36","PA-270","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2244","IS-CW255","01-03-002","2022-05-22","0","0","10","0","0","Issue","1.1","2","0","IS-CW255","S","2","10","36","PA-270","0","2022-05-22");
INSERT INTO inv_materialbalance VALUES("2246","IS-CW240","03-03-026","2022-05-08","0","0","100","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2247","IS-CW240","03-03-023","2022-05-08","0","0","100","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2248","IS-CW240","03-03-025","2022-05-08","0","0","100","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2249","IS-CW240","03-03-028","2022-05-08","0","0","50","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2250","IS-CW240","03-03-022","2022-05-08","0","0","30","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2251","IS-CW240","03-03-024","2022-05-08","0","0","21","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2252","IS-CW240","03-03-027","2022-05-08","0","0","20","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2253","IS-CW240","03-03-021","2022-05-08","0","0","10","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2254","IS-CW240","03-03-029","2022-05-08","0","0","10","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2255","IS-CW240","06-01-004","2022-05-08","0","0","5","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2256","IS-CW240","03-03-030","2022-05-08","0","0","2","0","0","Issue","1.1","1","0","IS-CW240","U","1","10","31","PA-064","0","2022-05-08");
INSERT INTO inv_materialbalance VALUES("2257","IS-CW250","03-04-001","2022-05-10","0","0","30","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2258","IS-CW250","03-04-002","2022-05-10","0","0","12","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2259","IS-CW250","03-05-003","2022-05-10","0","0","12","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2260","IS-CW250","03-05-001","2022-05-10","0","0","12","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2261","IS-CW250","03-03-032","2022-05-10","0","0","10","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2262","IS-CW250","03-03-031","2022-05-10","0","0","10","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2263","IS-CW250","03-03-044","2022-05-10","0","0","5","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2264","IS-CW250","03-03-033","2022-05-10","0","0","4","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2265","IS-CW250","03-03-034","2022-05-10","0","0","3","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2266","IS-CW250","03-03-043","2022-05-10","0","0","2","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2267","IS-CW250","03-03-017","2022-05-10","0","0","1","0","0","Issue","1.1","1","0","IS-CW250","U","1","10","31","PA-060","0","2022-05-10");
INSERT INTO inv_materialbalance VALUES("2268","IS-CW256","01-02-046","2022-06-06","0","0","29","0","0","Issue","1.1","1","0","IS-CW256","U","1","10","36","PA-263","0","2022-06-06");
INSERT INTO inv_materialbalance VALUES("2269","01-01-001","01-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2270","01-01-002","01-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2271","01-01-003","01-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2272","01-01-004","01-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2273","01-01-005","01-01-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2274","01-01-006","01-01-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2275","01-01-007","01-01-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2276","01-01-008","01-01-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2277","01-01-009","01-01-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2278","01-01-010","01-01-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2279","01-01-011","01-01-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2280","01-01-012","01-01-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2281","01-01-013","01-01-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2282","01-01-014","01-01-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2283","01-01-015","01-01-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2284","01-01-016","01-01-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2285","01-01-017","01-01-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2286","01-01-018","01-01-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2287","01-01-019","01-01-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2288","01-01-020","01-01-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2289","01-01-021","01-01-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2290","01-01-022","01-01-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2291","01-01-023","01-01-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2292","01-01-024","01-01-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2293","01-01-025","01-01-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2294","01-01-026","01-01-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2295","01-01-027","01-01-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2296","01-01-028","01-01-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2297","01-01-029","01-01-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2298","01-01-030","01-01-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2299","01-01-031","01-01-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2300","01-01-032","01-01-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2301","01-01-033","01-01-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2302","01-01-034","01-01-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2303","01-01-035","01-01-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2304","01-01-036","01-01-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2305","01-01-037","01-01-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2306","01-01-038","01-01-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2307","01-01-039","01-01-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2308","01-01-040","01-01-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2309","01-01-041","01-01-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2310","01-01-042","01-01-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2311","01-01-043","01-01-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2312","01-01-044","01-01-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2313","01-01-045","01-01-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2314","01-01-046","01-01-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2315","01-01-047","01-01-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2316","01-01-048","01-01-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2317","01-01-049","01-01-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2318","01-01-050","01-01-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2319","01-01-051","01-01-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2320","01-01-052","01-01-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2321","01-01-053","01-01-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2322","01-01-054","01-01-054","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2323","01-01-055","01-01-055","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2324","01-01-056","01-01-056","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2325","01-01-057","01-01-057","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2326","01-01-058","01-01-058","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2327","01-01-059","01-01-059","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2328","01-01-060","01-01-060","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2329","01-01-061","01-01-061","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2330","01-01-062","01-01-062","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2331","01-01-063","01-01-063","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2332","01-01-064","01-01-064","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2333","01-01-065","01-01-065","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2334","01-01-066","01-01-066","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2335","01-01-067","01-01-067","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2336","01-01-068","01-01-068","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2337","01-01-069","01-01-069","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2338","01-01-070","01-01-070","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2339","01-01-071","01-01-071","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2340","01-01-072","01-01-072","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2341","01-01-073","01-01-073","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2342","01-01-074","01-01-074","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2343","01-01-075","01-01-075","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2344","01-01-076","01-01-076","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2345","01-01-077","01-01-077","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2346","01-01-078","01-01-078","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2347","01-01-079","01-01-079","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2348","01-01-080","01-01-080","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2349","01-01-081","01-01-081","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2350","01-01-082","01-01-082","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2351","01-01-083","01-01-083","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2352","01-01-084","01-01-084","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2353","01-01-085","01-01-085","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2354","01-01-086","01-01-086","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2355","01-01-087","01-01-087","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2356","01-01-088","01-01-088","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2357","01-01-089","01-01-089","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2358","01-01-090","01-01-090","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2359","01-01-091","01-01-091","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2360","01-01-092","01-01-092","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2361","01-01-093","01-01-093","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2362","01-01-094","01-01-094","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2363","01-01-095","01-01-095","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2364","01-01-096","01-01-096","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2365","01-01-097","01-01-097","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2366","01-01-098","01-01-098","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2367","01-01-099","01-01-099","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2368","01-01-100","01-01-100","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2369","01-01-101","01-01-101","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2370","01-01-102","01-01-102","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2371","01-01-103","01-01-103","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2372","01-01-104","01-01-104","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2373","01-01-105","01-01-105","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2374","01-01-106","01-01-106","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2375","01-01-107","01-01-107","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2376","01-01-108","01-01-108","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2377","01-01-109","01-01-109","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2378","01-01-110","01-01-110","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2379","01-01-111","01-01-111","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2380","01-01-112","01-01-112","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2381","01-01-113","01-01-113","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2382","01-01-114","01-01-114","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2383","01-01-115","01-01-115","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2384","01-01-116","01-01-116","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2385","01-01-117","01-01-117","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2386","01-01-118","01-01-118","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2387","01-01-119","01-01-119","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2388","01-01-120","01-01-120","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2389","01-01-121","01-01-121","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2390","01-01-122","01-01-122","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2391","01-01-123","01-01-123","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2392","01-01-124","01-01-124","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2393","01-01-125","01-01-125","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2394","01-01-126","01-01-126","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2395","01-01-127","01-01-127","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2396","01-01-128","01-01-128","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2397","01-01-129","01-01-129","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2398","01-01-130","01-01-130","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2399","01-01-131","01-01-131","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2400","01-01-132","01-01-132","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2401","01-01-133","01-01-133","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2402","01-01-134","01-01-134","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2403","01-01-135","01-01-135","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2404","01-01-136","01-01-136","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2405","01-01-137","01-01-137","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2406","01-01-138","01-01-138","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2407","01-01-139","01-01-139","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2408","01-01-140","01-01-140","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2409","01-01-141","01-01-141","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2410","01-01-142","01-01-142","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2411","01-01-143","01-01-143","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2412","01-01-144","01-01-144","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2413","01-01-145","01-01-145","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2414","01-01-146","01-01-146","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2415","01-01-147","01-01-147","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2416","01-01-148","01-01-148","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2417","01-01-149","01-01-149","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2418","01-01-150","01-01-150","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2419","01-01-151","01-01-151","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2420","01-01-152","01-01-152","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2421","01-01-153","01-01-153","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2422","01-01-154","01-01-154","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2423","01-01-155","01-01-155","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2424","01-01-156","01-01-156","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2425","01-01-157","01-01-157","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2426","01-01-158","01-01-158","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2427","01-01-159","01-01-159","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2428","01-01-160","01-01-160","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2429","01-01-161","01-01-161","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2430","01-01-162","01-01-162","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2431","01-01-163","01-01-163","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2432","01-01-164","01-01-164","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2433","01-01-165","01-01-165","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2434","01-01-166","01-01-166","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2435","01-01-167","01-01-167","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2436","01-01-168","01-01-168","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2437","01-01-169","01-01-169","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2438","01-01-170","01-01-170","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2439","01-01-171","01-01-171","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2440","01-01-172","01-01-172","2022-04-30","7","56","0","0","8","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2441","01-01-173","01-01-173","2022-04-30","69","2628070","0","0","38088","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2442","01-02-001","01-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2443","01-02-002","01-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2444","01-02-003","01-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2445","01-02-004","01-02-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2446","01-02-005","01-02-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2447","01-02-006","01-02-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2448","01-02-007","01-02-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2449","01-02-008","01-02-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2450","01-02-009","01-02-009","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2451","01-02-010","01-02-010","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2452","01-02-011","01-02-011","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2453","01-02-012","01-02-012","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2454","01-02-013","01-02-013","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2455","01-02-014","01-02-014","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2456","01-02-015","01-02-015","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2457","01-02-016","01-02-016","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2458","01-02-017","01-02-017","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2459","01-02-018","01-02-018","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2460","01-02-019","01-02-019","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2461","01-02-020","01-02-020","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2462","01-02-021","01-02-021","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2463","01-02-022","01-02-022","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2464","01-02-023","01-02-023","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2465","01-02-024","01-02-024","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2466","01-02-025","01-02-025","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2467","01-02-026","01-02-026","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2468","01-02-027","01-02-027","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2469","01-02-028","01-02-028","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2470","01-02-029","01-02-029","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2471","01-02-030","01-02-030","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2472","01-02-031","01-02-031","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2473","01-02-032","01-02-032","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2474","01-02-033","01-02-033","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2475","01-02-034","01-02-034","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2476","01-02-035","01-02-035","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2477","01-02-036","01-02-036","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2478","01-02-037","01-02-037","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2479","01-02-038","01-02-038","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2480","01-02-039","01-02-039","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2481","01-02-040","01-02-040","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2482","01-02-041","01-02-041","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2483","01-02-042","01-02-042","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2484","01-02-043","01-02-043","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2485","01-02-044","01-02-044","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2486","01-02-045","01-02-045","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2487","01-02-046","01-02-046","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2488","01-02-047","01-02-047","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2489","01-02-048","01-02-048","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2490","01-02-049","01-02-049","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2491","01-02-050","01-02-050","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2492","01-02-051","01-02-051","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2493","01-02-052","01-02-052","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2494","01-02-053","01-02-053","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2495","01-02-054","01-02-054","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2496","01-02-055","01-02-055","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2497","01-02-056","01-02-056","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2498","01-02-057","01-02-057","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2499","01-02-058","01-02-058","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2500","01-02-059","01-02-059","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2501","01-02-060","01-02-060","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2502","01-02-061","01-02-061","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2503","01-02-062","01-02-062","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2504","01-02-063","01-02-063","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2505","01-02-064","01-02-064","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2506","01-02-065","01-02-065","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2507","01-02-066","01-02-066","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2508","01-02-067","01-02-067","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2509","01-02-068","01-02-068","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2510","01-02-069","01-02-069","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2511","01-02-070","01-02-070","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2512","01-02-071","01-02-071","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2513","01-02-072","01-02-072","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2514","01-02-073","01-02-073","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2515","01-02-074","01-02-074","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2516","01-02-075","01-02-075","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2517","01-02-076","01-02-076","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2518","01-02-077","01-02-077","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2519","01-02-078","01-02-078","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2520","01-02-079","01-02-079","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2521","01-02-080","01-02-080","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2522","01-02-081","01-02-081","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2523","01-02-082","01-02-082","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2524","01-02-083","01-02-083","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2525","01-02-084","01-02-084","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2526","01-02-085","01-02-085","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2527","01-02-086","01-02-086","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2528","01-02-087","01-02-087","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2529","01-02-088","01-02-088","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2530","01-02-089","01-02-089","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2531","01-02-090","01-02-090","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2532","01-02-091","01-02-091","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2533","01-02-092","01-02-092","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2534","01-02-093","01-02-093","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2535","01-02-094","01-02-094","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2536","01-02-095","01-02-095","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2537","01-02-096","01-02-096","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2538","01-02-097","01-02-097","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2539","01-02-098","01-02-098","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2540","01-02-099","01-02-099","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2541","01-02-100","01-02-100","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2542","01-02-101","01-02-101","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2543","01-02-102","01-02-102","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2544","01-02-103","01-02-103","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2545","01-02-104","01-02-104","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2546","01-02-105","01-02-105","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2547","01-02-106","01-02-106","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2548","01-02-107","01-02-107","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2549","01-02-108","01-02-108","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2550","01-02-109","01-02-109","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2551","01-02-110","01-02-110","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2552","01-02-111","01-02-111","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2553","01-02-112","01-02-112","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2554","01-02-113","01-02-113","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2555","01-02-114","01-02-114","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2556","01-02-115","01-02-115","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2557","01-02-116","01-02-116","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2558","01-02-117","01-02-117","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2559","01-02-118","01-02-118","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2560","01-02-119","01-02-119","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2561","01-02-120","01-02-120","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2562","01-02-121","01-02-121","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2563","01-02-122","01-02-122","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2564","01-02-123","01-02-123","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2565","01-02-124","01-02-124","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2566","01-02-125","01-02-125","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2567","01-02-126","01-02-126","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2568","01-02-127","01-02-127","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2569","01-02-128","01-02-128","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2570","01-02-129","01-02-129","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2571","01-02-130","01-02-130","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2572","01-02-131","01-02-131","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2573","01-02-132","01-02-132","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2574","01-02-133","01-02-133","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2575","01-02-134","01-02-134","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2576","01-02-135","01-02-135","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2577","01-02-136","01-02-136","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2578","01-03-001","01-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2579","01-03-002","01-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2580","01-03-003","01-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2581","01-03-004","01-03-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2582","01-03-005","01-03-005","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2583","01-03-006","01-03-006","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2584","01-03-007","01-03-007","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2585","01-03-008","01-03-008","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2586","01-03-009","01-03-009","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2587","01-03-010","01-03-010","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2588","01-03-011","01-03-011","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2589","01-03-012","01-03-012","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2590","01-03-013","01-03-013","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2591","01-03-014","01-03-014","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2592","01-03-015","01-03-015","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2593","01-03-016","01-03-016","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2594","01-03-017","01-03-017","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2595","01-03-018","01-03-018","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2596","01-03-019","01-03-019","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2597","01-03-020","01-03-020","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2598","01-03-021","01-03-021","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2599","01-03-022","01-03-022","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2600","01-04-001","01-04-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2601","01-05-001","01-05-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2602","01-07-001","01-07-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2603","01-07-002","01-07-002","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2604","01-07-003","01-07-003","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2605","02-01-001","02-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2606","03-02-001","03-02-001","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2607","03-02-002","03-02-002","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2608","03-03-001","03-03-001","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2609","03-03-002","03-03-002","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2610","03-03-003","03-03-003","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2611","03-03-004","03-03-004","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2612","03-03-005","03-03-005","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2613","03-03-006","03-03-006","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2614","03-03-007","03-03-007","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2615","03-03-008","03-03-008","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2616","03-03-009","03-03-009","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2617","03-03-010","03-03-010","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2618","03-03-011","03-03-011","2022-04-30","100","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2619","03-03-012","03-03-012","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2620","03-03-013","03-03-013","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2621","03-03-014","03-03-014","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2622","03-03-015","03-03-015","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2623","03-03-016","03-03-016","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2624","03-03-017","03-03-017","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2625","03-03-018","03-03-018","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2626","03-03-019","03-03-019","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2627","03-03-020","03-03-020","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2628","03-03-021","03-03-021","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2629","03-03-022","03-03-022","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2630","03-03-023","03-03-023","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2631","03-03-024","03-03-024","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2632","03-03-025","03-03-025","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2633","03-03-026","03-03-026","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2634","03-03-027","03-03-027","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2635","03-03-028","03-03-028","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2636","03-03-029","03-03-029","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2637","03-03-030","03-03-030","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2638","03-03-031","03-03-031","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2639","03-03-032","03-03-032","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2640","03-03-033","03-03-033","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2641","03-03-034","03-03-034","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2642","03-03-035","03-03-035","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2643","03-03-036","03-03-036","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2644","03-03-037","03-03-037","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2645","03-03-038","03-03-038","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2646","03-03-039","03-03-039","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2647","03-03-040","03-03-040","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2648","03-03-041","03-03-041","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2649","03-03-042","03-03-042","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2650","03-03-043","03-03-043","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2651","03-03-044","03-03-044","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2652","03-04-001","03-04-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2653","03-04-002","03-04-002","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2654","03-05-001","03-05-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2655","03-05-002","03-05-002","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2656","03-05-003","03-05-003","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2657","05-01-001","05-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2658","05-01-002","05-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2659","05-01-003","05-01-003","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2660","05-01-004","05-01-004","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2661","06-01-001","06-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2662","06-01-002","06-01-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2663","06-01-003","06-01-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2664","06-01-004","06-01-004","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2665","06-02-001","06-02-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2666","06-02-002","06-02-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2667","06-02-003","06-02-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2668","06-03-001","06-03-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2669","06-03-002","06-03-002","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2670","06-03-003","06-03-003","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2671","07-01-001","07-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2672","08-01-001","08-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2673","09-01-001","09-01-001","2022-04-30","500","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2674","09-01-002","09-01-002","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2675","09-01-003","09-01-003","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2676","09-01-004","09-01-004","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2677","09-01-005","09-01-005","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2678","09-01-006","09-01-006","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2679","09-02-001","09-02-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2680","10-01-001","10-01-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2681","11-01-001","11-01-001","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2682","12-01-001","12-01-001","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2683","13-01-001","13-01-001","2022-04-30","200","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("2684","13-01-002","13-01-002","2022-04-30","0","0","0","0","0","OP","0","","","","","2","10","","","0","");
INSERT INTO inv_materialbalance VALUES("4349","OP","01-01-001","2022-06-06","100","5000","0","0","500000","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4350","OP","01-01-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4351","OP","01-01-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4352","OP","01-01-004","2022-06-06","30","930","0","0","27900","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4353","OP","01-01-005","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4354","OP","01-01-006","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4355","OP","01-01-007","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4356","OP","01-01-008","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4357","OP","01-01-009","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4358","OP","01-01-010","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4359","OP","01-01-011","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4360","OP","01-01-012","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4361","OP","01-01-013","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4362","OP","01-01-014","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4363","OP","01-01-015","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4364","OP","01-01-016","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4365","OP","01-01-017","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4366","OP","01-01-018","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4367","OP","01-01-019","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4368","OP","01-01-020","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4369","OP","01-01-021","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4370","OP","01-01-022","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4371","OP","01-01-023","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4372","OP","01-01-024","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4373","OP","01-01-025","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4374","OP","01-01-026","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4375","OP","01-01-027","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4376","OP","01-01-028","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4377","OP","01-01-029","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4378","OP","01-01-030","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4379","OP","01-01-031","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4380","OP","01-01-032","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4381","OP","01-01-033","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4382","OP","01-01-034","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4383","OP","01-01-035","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4384","OP","01-01-036","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4385","OP","01-01-037","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4386","OP","01-01-038","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4387","OP","01-01-039","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4388","OP","01-01-040","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4389","OP","01-01-041","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4390","OP","01-01-042","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4391","OP","01-01-043","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4392","OP","01-01-044","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4393","OP","01-01-045","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4394","OP","01-01-046","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4395","OP","01-01-047","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4396","OP","01-01-048","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4397","OP","01-01-049","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4398","OP","01-01-050","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4399","OP","01-01-051","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4400","OP","01-01-052","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4401","OP","01-01-053","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4402","OP","01-01-054","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4403","OP","01-01-055","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4404","OP","01-01-056","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4405","OP","01-01-057","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4406","OP","01-01-058","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4407","OP","01-01-059","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4408","OP","01-01-060","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4409","OP","01-01-061","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4410","OP","01-01-062","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4411","OP","01-01-063","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4412","OP","01-01-064","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4413","OP","01-01-065","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4414","OP","01-01-066","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4415","OP","01-01-067","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4416","OP","01-01-068","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4417","OP","01-01-069","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4418","OP","01-01-070","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4419","OP","01-01-071","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4420","OP","01-01-072","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4421","OP","01-01-073","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4422","OP","01-01-074","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4423","OP","01-01-075","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4424","OP","01-01-076","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4425","OP","01-01-077","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4426","OP","01-01-078","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4427","OP","01-01-079","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4428","OP","01-01-080","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4429","OP","01-01-081","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4430","OP","01-01-082","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4431","OP","01-01-083","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4432","OP","01-01-084","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4433","OP","01-01-085","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4434","OP","01-01-086","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4435","OP","01-01-087","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4436","OP","01-01-088","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4437","OP","01-01-089","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4438","OP","01-01-090","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4439","OP","01-01-091","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4440","OP","01-01-092","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4441","OP","01-01-093","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4442","OP","01-01-094","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4443","OP","01-01-095","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4444","OP","01-01-096","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4445","OP","01-01-097","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4446","OP","01-01-098","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4447","OP","01-01-099","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4448","OP","01-01-100","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4449","OP","01-01-101","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4450","OP","01-01-102","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4451","OP","01-01-103","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4452","OP","01-01-104","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4453","OP","01-01-105","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4454","OP","01-01-106","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4455","OP","01-01-107","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4456","OP","01-01-108","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4457","OP","01-01-109","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4458","OP","01-01-110","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4459","OP","01-01-111","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4460","OP","01-01-112","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4461","OP","01-01-113","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4462","OP","01-01-114","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4463","OP","01-01-115","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4464","OP","01-01-116","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4465","OP","01-01-117","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4466","OP","01-01-118","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4467","OP","01-01-119","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4468","OP","01-01-120","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4469","OP","01-01-121","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4470","OP","01-01-122","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4471","OP","01-01-123","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4472","OP","01-01-124","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4473","OP","01-01-125","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4474","OP","01-01-126","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4475","OP","01-01-127","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4476","OP","01-01-128","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4477","OP","01-01-129","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4478","OP","01-01-130","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4479","OP","01-01-131","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4480","OP","01-01-132","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4481","OP","01-01-133","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4482","OP","01-01-134","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4483","OP","01-01-135","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4484","OP","01-01-136","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4485","OP","01-01-137","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4486","OP","01-01-138","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4487","OP","01-01-139","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4488","OP","01-01-140","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4489","OP","01-01-141","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4490","OP","01-01-142","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4491","OP","01-01-143","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4492","OP","01-01-144","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4493","OP","01-01-145","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4494","OP","01-01-146","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4495","OP","01-01-147","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4496","OP","01-01-148","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4497","OP","01-01-149","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4498","OP","01-01-150","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4499","OP","01-01-151","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4500","OP","01-01-152","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4501","OP","01-01-153","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4502","OP","01-01-154","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4503","OP","01-01-155","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4504","OP","01-01-156","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4505","OP","01-01-157","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4506","OP","01-01-158","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4507","OP","01-01-159","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4508","OP","01-01-160","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4509","OP","01-01-161","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4510","OP","01-01-162","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4511","OP","01-01-163","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4512","OP","01-01-164","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4513","OP","01-01-165","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4514","OP","01-01-166","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4515","OP","01-01-167","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4516","OP","01-01-168","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4517","OP","01-01-169","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4518","OP","01-01-170","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4519","OP","01-01-171","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4520","OP","01-01-172","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4521","OP","01-01-173","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4522","OP","01-02-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4523","OP","01-02-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4524","OP","01-02-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4525","OP","01-02-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4526","OP","01-02-005","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4527","OP","01-02-006","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4528","OP","01-02-007","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4529","OP","01-02-008","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4530","OP","01-02-009","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4531","OP","01-02-010","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4532","OP","01-02-011","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4533","OP","01-02-012","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4534","OP","01-02-013","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4535","OP","01-02-014","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4536","OP","01-02-015","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4537","OP","01-02-016","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4538","OP","01-02-017","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4539","OP","01-02-018","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4540","OP","01-02-019","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4541","OP","01-02-020","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4542","OP","01-02-021","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4543","OP","01-02-022","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4544","OP","01-02-023","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4545","OP","01-02-024","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4546","OP","01-02-025","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4547","OP","01-02-026","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4548","OP","01-02-027","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4549","OP","01-02-028","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4550","OP","01-02-029","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4551","OP","01-02-030","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4552","OP","01-02-031","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4553","OP","01-02-032","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4554","OP","01-02-033","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4555","OP","01-02-034","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4556","OP","01-02-035","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4557","OP","01-02-036","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4558","OP","01-02-037","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4559","OP","01-02-038","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4560","OP","01-02-039","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4561","OP","01-02-040","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4562","OP","01-02-041","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4563","OP","01-02-042","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4564","OP","01-02-043","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4565","OP","01-02-044","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4566","OP","01-02-045","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4567","OP","01-02-046","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4568","OP","01-02-047","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4569","OP","01-02-048","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4570","OP","01-02-049","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4571","OP","01-02-050","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4572","OP","01-02-051","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4573","OP","01-02-052","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4574","OP","01-02-053","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4575","OP","01-02-054","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4576","OP","01-02-055","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4577","OP","01-02-056","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4578","OP","01-02-057","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4579","OP","01-02-058","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4580","OP","01-02-059","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4581","OP","01-02-060","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4582","OP","01-02-061","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4583","OP","01-02-062","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4584","OP","01-02-063","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4585","OP","01-02-064","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4586","OP","01-02-065","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4587","OP","01-02-066","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4588","OP","01-02-067","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4589","OP","01-02-068","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4590","OP","01-02-069","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4591","OP","01-02-070","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4592","OP","01-02-071","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4593","OP","01-02-072","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4594","OP","01-02-073","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4595","OP","01-02-074","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4596","OP","01-02-075","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4597","OP","01-02-076","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4598","OP","01-02-077","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4599","OP","01-02-078","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4600","OP","01-02-079","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4601","OP","01-02-080","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4602","OP","01-02-081","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4603","OP","01-02-082","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4604","OP","01-02-083","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4605","OP","01-02-084","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4606","OP","01-02-085","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4607","OP","01-02-086","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4608","OP","01-02-087","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4609","OP","01-02-088","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4610","OP","01-02-089","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4611","OP","01-02-090","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4612","OP","01-02-091","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4613","OP","01-02-092","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4614","OP","01-02-093","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4615","OP","01-02-094","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4616","OP","01-02-095","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4617","OP","01-02-096","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4618","OP","01-02-097","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4619","OP","01-02-098","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4620","OP","01-02-099","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4621","OP","01-02-100","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4622","OP","01-02-101","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4623","OP","01-02-102","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4624","OP","01-02-103","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4625","OP","01-02-104","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4626","OP","01-02-105","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4627","OP","01-02-106","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4628","OP","01-02-107","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4629","OP","01-02-108","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4630","OP","01-02-109","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4631","OP","01-02-110","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4632","OP","01-02-111","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4633","OP","01-02-112","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4634","OP","01-02-113","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4635","OP","01-02-114","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4636","OP","01-02-115","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4637","OP","01-02-116","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4638","OP","01-02-117","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4639","OP","01-02-118","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4640","OP","01-02-119","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4641","OP","01-02-120","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4642","OP","01-02-121","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4643","OP","01-02-122","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4644","OP","01-02-123","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4645","OP","01-02-124","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4646","OP","01-02-125","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4647","OP","01-02-126","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4648","OP","01-02-127","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4649","OP","01-02-128","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4650","OP","01-02-129","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4651","OP","01-02-130","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4652","OP","01-02-131","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4653","OP","01-02-132","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4654","OP","01-02-133","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4655","OP","01-02-134","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4656","OP","01-02-135","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4657","OP","01-02-136","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4658","OP","01-03-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4659","OP","01-03-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4660","OP","01-03-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4661","OP","01-03-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4662","OP","01-03-005","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4663","OP","01-03-006","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4664","OP","01-03-007","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4665","OP","01-03-008","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4666","OP","01-03-009","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4667","OP","01-03-010","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4668","OP","01-03-011","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4669","OP","01-03-012","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4670","OP","01-03-013","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4671","OP","01-03-014","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4672","OP","01-03-015","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4673","OP","01-03-016","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4674","OP","01-03-017","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4675","OP","01-03-018","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4676","OP","01-03-019","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4677","OP","01-03-020","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4678","OP","01-03-021","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4679","OP","01-03-022","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4680","OP","01-04-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4681","OP","01-05-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4682","OP","01-07-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4683","OP","01-07-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4684","OP","01-07-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4685","OP","02-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4686","OP","03-02-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4687","OP","03-02-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4688","OP","03-03-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4689","OP","03-03-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4690","OP","03-03-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4691","OP","03-03-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4692","OP","03-03-005","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4693","OP","03-03-006","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4694","OP","03-03-007","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4695","OP","03-03-008","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4696","OP","03-03-009","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4697","OP","03-03-010","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4698","OP","03-03-011","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4699","OP","03-03-012","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4700","OP","03-03-013","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4701","OP","03-03-014","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4702","OP","03-03-015","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4703","OP","03-03-016","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4704","OP","03-03-017","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4705","OP","03-03-018","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4706","OP","03-03-019","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4707","OP","03-03-020","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4708","OP","03-03-021","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4709","OP","03-03-022","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4710","OP","03-03-023","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4711","OP","03-03-024","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4712","OP","03-03-025","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4713","OP","03-03-026","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4714","OP","03-03-027","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4715","OP","03-03-028","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4716","OP","03-03-029","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4717","OP","03-03-030","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4718","OP","03-03-031","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4719","OP","03-03-032","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4720","OP","03-03-033","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4721","OP","03-03-034","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4722","OP","03-03-035","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4723","OP","03-03-036","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4724","OP","03-03-037","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4725","OP","03-03-038","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4726","OP","03-03-039","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4727","OP","03-03-040","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4728","OP","03-03-041","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4729","OP","03-03-042","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4730","OP","03-03-043","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4731","OP","03-03-044","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4732","OP","03-04-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4733","OP","03-04-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4734","OP","03-05-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4735","OP","03-05-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4736","OP","03-05-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4737","OP","05-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4738","OP","05-01-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4739","OP","05-01-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4740","OP","05-01-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4741","OP","06-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4742","OP","06-01-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4743","OP","06-01-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4744","OP","06-01-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4745","OP","06-02-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4746","OP","06-02-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4747","OP","06-02-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4748","OP","06-03-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4749","OP","06-03-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4750","OP","06-03-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4751","OP","07-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4752","OP","08-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4753","OP","09-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4754","OP","09-01-002","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4755","OP","09-01-003","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4756","OP","09-01-004","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4757","OP","09-01-005","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4758","OP","09-01-006","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4759","OP","09-02-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4760","OP","10-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4761","OP","11-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4762","OP","12-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4763","OP","13-01-001","2022-06-06","0","0","0","0","0","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4764","OP","13-01-002","2022-06-06","30","12000","0","0","360000","OP","0","","","","","2","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4765","IS-CW257","01-03-006","2022-06-07","0","0","500","0","0","Issue","1.1","2","0","IS-CW257","S","2","10","45","PA-450","0","2022-06-07");
INSERT INTO inv_materialbalance VALUES("4766","IS-CW258","01-03-007","2022-06-05","0","0","1","0","0","Issue","1.1","2","0","IS-CW258","S","2","10","45","PA-450","0","2022-06-05");
INSERT INTO inv_materialbalance VALUES("4767","IS-CW259","01-03-017","2022-06-08","0","0","1","0","0","Issue","1.1","2","0","IS-CW259","S","2","10","31","PA-097","0","2022-06-08");
INSERT INTO inv_materialbalance VALUES("4775","WT-CW002","01-03-006","2022-06-08","3","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4777","WT-CW002","01-03-019","2022-06-08","2","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4779","WT-CW002","01-03-006","2022-06-08","200","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4856","WT-CW002","01-03-022","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4857","WT-CW002","01-03-022","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4858","WT-CW002","01-03-022","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4859","WT-CW002","01-03-022","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4860","WT-CW002","01-03-003","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4861","WT-CW002","01-03-003","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4862","WT-CW002","01-03-003","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4863","WT-CW002","01-03-003","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4864","WT-CW002","01-03-019","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4865","WT-CW002","01-03-019","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4866","WT-CW002","01-03-022","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4867","WT-CW002","01-03-022","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4868","WT-CW002","01-03-007","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4869","WT-CW002","01-03-007","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4870","WT-CW002","01-03-022","2022-06-08","0","0","1","0","0","Transfer Out","1.1","","0","WT-CW002","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4871","WT-CW002","01-03-022","2022-06-08","1","0","0","0","0","Transfer In","1.1","","0","WT-CW002","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4906","WT-CW004","01-03-001","2022-06-08","0","0","11","0","0","Transfer Out","1.1","2","0","WT-CW004","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4907","WT-CW004","01-03-001","2022-06-08","11","0","0","0","0","Transfer In","1.1","2","0","WT-CW004","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("4908","WT-CW004","01-03-009","2022-06-08","0","0","10","0","0","Transfer Out","1.1","2","0","WT-CW004","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4909","WT-CW004","01-03-009","2022-06-08","10","0","0","0","0","Transfer In","1.1","2","0","WT-CW004","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("4910","WT-CW001","01-03-003","2022-06-08","0","0","6","0","0","Transfer Out","1.1","2","0","WT-CW001","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4911","WT-CW001","01-03-003","2022-06-08","6","0","0","0","0","Transfer In","1.1","2","0","WT-CW001","","","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4912","MRR-CW080","01-03-023","2022-06-08","500","5000","0","0","10","Receive","1.1","2","0","MRR-CW080","ignite","2","10","","","0","2022-06-08");
INSERT INTO inv_materialbalance VALUES("4913","WT-CW005","01-03-023","2022-06-08","0","0","20","0","0","Transfer Out","1.1","2","0","WT-CW005","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4914","WT-CW005","01-03-023","2022-06-08","20","0","0","0","0","Transfer In","1.1","2","0","WT-CW005","","","17","","","0","");
INSERT INTO inv_materialbalance VALUES("4915","WT-CW006","01-03-023","2022-06-08","0","0","30","0","0","Transfer Out","1.1","2","0","WT-CW006","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4916","WT-CW006","01-03-023","2022-06-08","30","0","0","0","0","Transfer In","1.1","2","0","WT-CW006","","","18","","","0","");
INSERT INTO inv_materialbalance VALUES("4917","MRR-TA001","01-03-023","2022-06-08","30","60","0","0","2","Receive","1.1","2","0","MRR-TA001","ignite","2","17","","","0","2022-06-08");
INSERT INTO inv_materialbalance VALUES("4918","WT-TA001","01-03-023","2022-06-08","0","0","5","0","0","Transfer Out","1.1","2","0","WT-TA001","","","17","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("4919","WT-TA001","01-03-023","2022-06-08","5","0","0","0","0","Transfer In","1.1","2","0","WT-TA001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("4920","OP","01-01-001","2022-06-09","69","2956580","0","0","42849","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4921","OP","01-01-002","2022-06-09","6","30","0","0","5","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4922","OP","01-01-003","2022-06-09","8","96","0","0","12","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4923","OP","01-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4924","OP","01-01-005","2022-06-09","6","1944","0","0","324","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4925","OP","01-01-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4926","OP","01-01-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4927","OP","01-01-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4928","OP","01-01-009","2022-06-09","7","2744","0","0","392","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4929","OP","01-01-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4930","OP","01-01-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4931","OP","01-01-012","2022-06-09","5","1000","0","0","200","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4932","OP","01-01-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4933","OP","01-01-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4934","OP","01-01-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4935","OP","01-01-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4936","OP","01-01-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4937","OP","01-01-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4938","OP","01-01-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4939","OP","01-01-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4940","OP","01-01-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4941","OP","01-01-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4942","OP","01-01-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4943","OP","01-01-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4944","OP","01-01-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4945","OP","01-01-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4946","OP","01-01-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4947","OP","01-01-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4948","OP","01-01-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4949","OP","01-01-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4950","OP","01-01-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4951","OP","01-01-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4952","OP","01-01-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4953","OP","01-01-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4954","OP","01-01-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4955","OP","01-01-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4956","OP","01-01-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4957","OP","01-01-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4958","OP","01-01-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4959","OP","01-01-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4960","OP","01-01-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4961","OP","01-01-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4962","OP","01-01-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4963","OP","01-01-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4964","OP","01-01-045","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4965","OP","01-01-046","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4966","OP","01-01-047","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4967","OP","01-01-048","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4968","OP","01-01-049","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4969","OP","01-01-050","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4970","OP","01-01-051","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4971","OP","01-01-052","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4972","OP","01-01-053","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4973","OP","01-01-054","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4974","OP","01-01-055","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4975","OP","01-01-056","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4976","OP","01-01-057","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4977","OP","01-01-058","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4978","OP","01-01-059","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4979","OP","01-01-060","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4980","OP","01-01-061","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4981","OP","01-01-062","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4982","OP","01-01-063","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4983","OP","01-01-064","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4984","OP","01-01-065","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4985","OP","01-01-066","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4986","OP","01-01-067","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4987","OP","01-01-068","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4988","OP","01-01-069","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4989","OP","01-01-070","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4990","OP","01-01-071","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4991","OP","01-01-072","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4992","OP","01-01-073","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4993","OP","01-01-074","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4994","OP","01-01-075","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4995","OP","01-01-076","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4996","OP","01-01-077","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4997","OP","01-01-078","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4998","OP","01-01-079","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("4999","OP","01-01-080","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5000","OP","01-01-081","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5001","OP","01-01-082","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5002","OP","01-01-083","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5003","OP","01-01-084","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5004","OP","01-01-085","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5005","OP","01-01-086","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5006","OP","01-01-087","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5007","OP","01-01-088","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5008","OP","01-01-089","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5009","OP","01-01-090","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5010","OP","01-01-091","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5011","OP","01-01-092","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5012","OP","01-01-093","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5013","OP","01-01-094","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5014","OP","01-01-095","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5015","OP","01-01-096","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5016","OP","01-01-097","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5017","OP","01-01-098","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5018","OP","01-01-099","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5019","OP","01-01-100","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5020","OP","01-01-101","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5021","OP","01-01-102","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5022","OP","01-01-103","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5023","OP","01-01-104","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5024","OP","01-01-105","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5025","OP","01-01-106","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5026","OP","01-01-107","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5027","OP","01-01-108","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5028","OP","01-01-109","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5029","OP","01-01-110","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5030","OP","01-01-111","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5031","OP","01-01-112","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5032","OP","01-01-113","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5033","OP","01-01-114","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5034","OP","01-01-115","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5035","OP","01-01-116","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5036","OP","01-01-117","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5037","OP","01-01-118","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5038","OP","01-01-119","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5039","OP","01-01-120","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5040","OP","01-01-121","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5041","OP","01-01-122","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5042","OP","01-01-123","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5043","OP","01-01-124","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5044","OP","01-01-125","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5045","OP","01-01-126","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5046","OP","01-01-127","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5047","OP","01-01-128","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5048","OP","01-01-129","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5049","OP","01-01-130","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5050","OP","01-01-131","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5051","OP","01-01-132","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5052","OP","01-01-133","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5053","OP","01-01-134","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5054","OP","01-01-135","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5055","OP","01-01-136","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5056","OP","01-01-137","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5057","OP","01-01-138","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5058","OP","01-01-139","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5059","OP","01-01-140","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5060","OP","01-01-141","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5061","OP","01-01-142","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5062","OP","01-01-143","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5063","OP","01-01-144","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5064","OP","01-01-145","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5065","OP","01-01-146","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5066","OP","01-01-147","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5067","OP","01-01-148","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5068","OP","01-01-149","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5069","OP","01-01-150","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5070","OP","01-01-151","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5071","OP","01-01-152","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5072","OP","01-01-153","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5073","OP","01-01-154","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5074","OP","01-01-155","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5075","OP","01-01-156","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5076","OP","01-01-157","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5077","OP","01-01-158","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5078","OP","01-01-159","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5079","OP","01-01-160","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5080","OP","01-01-161","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5081","OP","01-01-162","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5082","OP","01-01-163","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5083","OP","01-01-164","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5084","OP","01-01-165","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5085","OP","01-01-166","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5086","OP","01-01-167","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5087","OP","01-01-168","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5088","OP","01-01-169","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5089","OP","01-01-170","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5090","OP","01-01-171","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5091","OP","01-01-172","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5092","OP","01-01-173","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5093","OP","01-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5094","OP","01-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5095","OP","01-02-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5096","OP","01-02-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5097","OP","01-02-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5098","OP","01-02-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5099","OP","01-02-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5100","OP","01-02-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5101","OP","01-02-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5102","OP","01-02-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5103","OP","01-02-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5104","OP","01-02-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5105","OP","01-02-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5106","OP","01-02-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5107","OP","01-02-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5108","OP","01-02-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5109","OP","01-02-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5110","OP","01-02-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5111","OP","01-02-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5112","OP","01-02-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5113","OP","01-02-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5114","OP","01-02-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5115","OP","01-02-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5116","OP","01-02-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5117","OP","01-02-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5118","OP","01-02-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5119","OP","01-02-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5120","OP","01-02-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5121","OP","01-02-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5122","OP","01-02-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5123","OP","01-02-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5124","OP","01-02-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5125","OP","01-02-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5126","OP","01-02-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5127","OP","01-02-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5128","OP","01-02-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5129","OP","01-02-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5130","OP","01-02-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5131","OP","01-02-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5132","OP","01-02-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5133","OP","01-02-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5134","OP","01-02-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5135","OP","01-02-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5136","OP","01-02-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5137","OP","01-02-045","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5138","OP","01-02-046","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5139","OP","01-02-047","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5140","OP","01-02-048","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5141","OP","01-02-049","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5142","OP","01-02-050","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5143","OP","01-02-051","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5144","OP","01-02-052","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5145","OP","01-02-053","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5146","OP","01-02-054","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5147","OP","01-02-055","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5148","OP","01-02-056","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5149","OP","01-02-057","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5150","OP","01-02-058","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5151","OP","01-02-059","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5152","OP","01-02-060","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5153","OP","01-02-061","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5154","OP","01-02-062","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5155","OP","01-02-063","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5156","OP","01-02-064","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5157","OP","01-02-065","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5158","OP","01-02-066","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5159","OP","01-02-067","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5160","OP","01-02-068","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5161","OP","01-02-069","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5162","OP","01-02-070","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5163","OP","01-02-071","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5164","OP","01-02-072","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5165","OP","01-02-073","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5166","OP","01-02-074","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5167","OP","01-02-075","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5168","OP","01-02-076","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5169","OP","01-02-077","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5170","OP","01-02-078","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5171","OP","01-02-079","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5172","OP","01-02-080","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5173","OP","01-02-081","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5174","OP","01-02-082","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5175","OP","01-02-083","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5176","OP","01-02-084","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5177","OP","01-02-085","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5178","OP","01-02-086","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5179","OP","01-02-087","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5180","OP","01-02-088","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5181","OP","01-02-089","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5182","OP","01-02-090","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5183","OP","01-02-091","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5184","OP","01-02-092","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5185","OP","01-02-093","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5186","OP","01-02-094","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5187","OP","01-02-095","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5188","OP","01-02-096","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5189","OP","01-02-097","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5190","OP","01-02-098","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5191","OP","01-02-099","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5192","OP","01-02-100","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5193","OP","01-02-101","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5194","OP","01-02-102","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5195","OP","01-02-103","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5196","OP","01-02-104","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5197","OP","01-02-105","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5198","OP","01-02-106","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5199","OP","01-02-107","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5200","OP","01-02-108","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5201","OP","01-02-109","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5202","OP","01-02-110","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5203","OP","01-02-111","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5204","OP","01-02-112","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5205","OP","01-02-113","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5206","OP","01-02-114","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5207","OP","01-02-115","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5208","OP","01-02-116","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5209","OP","01-02-117","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5210","OP","01-02-118","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5211","OP","01-02-119","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5212","OP","01-02-120","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5213","OP","01-02-121","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5214","OP","01-02-122","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5215","OP","01-02-123","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5216","OP","01-02-124","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5217","OP","01-02-125","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5218","OP","01-02-126","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5219","OP","01-02-127","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5220","OP","01-02-128","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5221","OP","01-02-129","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5222","OP","01-02-130","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5223","OP","01-02-131","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5224","OP","01-02-132","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5225","OP","01-02-133","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5226","OP","01-02-134","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5227","OP","01-02-135","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5228","OP","01-02-136","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5229","OP","01-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5230","OP","01-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5231","OP","01-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5232","OP","01-03-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5233","OP","01-03-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5234","OP","01-03-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5235","OP","01-03-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5236","OP","01-03-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5237","OP","01-03-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5238","OP","01-03-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5239","OP","01-03-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5240","OP","01-03-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5241","OP","01-03-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5242","OP","01-03-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5243","OP","01-03-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5244","OP","01-03-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5245","OP","01-03-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5246","OP","01-03-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5247","OP","01-03-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5248","OP","01-03-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5249","OP","01-03-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5250","OP","01-03-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5251","OP","01-03-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5252","OP","01-04-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5253","OP","01-05-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5254","OP","01-07-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5255","OP","01-07-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5256","OP","01-07-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5257","OP","02-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5258","OP","03-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5259","OP","03-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5260","OP","03-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5261","OP","03-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5262","OP","03-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5263","OP","03-03-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5264","OP","03-03-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5265","OP","03-03-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5266","OP","03-03-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5267","OP","03-03-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5268","OP","03-03-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5269","OP","03-03-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5270","OP","03-03-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5271","OP","03-03-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5272","OP","03-03-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5273","OP","03-03-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5274","OP","03-03-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5275","OP","03-03-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5276","OP","03-03-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5277","OP","03-03-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5278","OP","03-03-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5279","OP","03-03-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5280","OP","03-03-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5281","OP","03-03-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5282","OP","03-03-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5283","OP","03-03-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5284","OP","03-03-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5285","OP","03-03-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5286","OP","03-03-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5287","OP","03-03-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5288","OP","03-03-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5289","OP","03-03-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5290","OP","03-03-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5291","OP","03-03-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5292","OP","03-03-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5293","OP","03-03-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5294","OP","03-03-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5295","OP","03-03-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5296","OP","03-03-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5297","OP","03-03-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5298","OP","03-03-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5299","OP","03-03-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5300","OP","03-03-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5301","OP","03-03-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5302","OP","03-03-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5303","OP","03-03-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5304","OP","03-04-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5305","OP","03-04-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5306","OP","03-05-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5307","OP","03-05-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5308","OP","03-05-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5309","OP","05-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5310","OP","05-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5311","OP","05-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5312","OP","05-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5313","OP","06-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5314","OP","06-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5315","OP","06-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5316","OP","06-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5317","OP","06-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5318","OP","06-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5319","OP","06-02-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5320","OP","06-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5321","OP","06-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5322","OP","06-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5323","OP","07-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5324","OP","08-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5325","OP","09-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5326","OP","09-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5327","OP","09-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5328","OP","09-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5329","OP","09-01-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5330","OP","09-01-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5331","OP","09-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5332","OP","10-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5333","OP","11-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5334","OP","12-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5335","OP","13-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5336","OP","13-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","20","","","0","");
INSERT INTO inv_materialbalance VALUES("5337","WT-CW003","01-03-006","2022-06-08","0","0","1","0","0","Transfer Out","1.1","2","0","WT-CW003","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("5338","WT-CW003","01-03-006","2022-06-08","1","0","0","0","0","Transfer In","1.1","2","0","WT-CW003","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("5339","WT-CW003","01-03-019","2022-06-08","0","0","1","0","0","Transfer Out","1.1","2","0","WT-CW003","","","10","","","0","2022-06-08 12:00:00");
INSERT INTO inv_materialbalance VALUES("5340","WT-CW003","01-03-019","2022-06-08","1","0","0","0","0","Transfer In","1.1","2","0","WT-CW003","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("5341","OP","01-01-001","2022-06-09","100","600","0","0","6","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5342","OP","01-01-002","2022-06-09","600","3000","0","0","5","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5343","OP","01-01-003","2022-06-09","700","4200","0","0","6","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5344","OP","01-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5345","OP","01-01-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5346","OP","01-01-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5347","OP","01-01-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5348","OP","01-01-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5349","OP","01-01-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5350","OP","01-01-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5351","OP","01-01-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5352","OP","01-01-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5353","OP","01-01-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5354","OP","01-01-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5355","OP","01-01-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5356","OP","01-01-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5357","OP","01-01-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5358","OP","01-01-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5359","OP","01-01-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5360","OP","01-01-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5361","OP","01-01-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5362","OP","01-01-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5363","OP","01-01-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5364","OP","01-01-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5365","OP","01-01-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5366","OP","01-01-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5367","OP","01-01-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5368","OP","01-01-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5369","OP","01-01-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5370","OP","01-01-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5371","OP","01-01-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5372","OP","01-01-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5373","OP","01-01-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5374","OP","01-01-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5375","OP","01-01-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5376","OP","01-01-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5377","OP","01-01-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5378","OP","01-01-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5379","OP","01-01-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5380","OP","01-01-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5381","OP","01-01-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5382","OP","01-01-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5383","OP","01-01-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5384","OP","01-01-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5385","OP","01-01-045","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5386","OP","01-01-046","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5387","OP","01-01-047","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5388","OP","01-01-048","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5389","OP","01-01-049","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5390","OP","01-01-050","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5391","OP","01-01-051","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5392","OP","01-01-052","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5393","OP","01-01-053","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5394","OP","01-01-054","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5395","OP","01-01-055","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5396","OP","01-01-056","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5397","OP","01-01-057","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5398","OP","01-01-058","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5399","OP","01-01-059","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5400","OP","01-01-060","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5401","OP","01-01-061","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5402","OP","01-01-062","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5403","OP","01-01-063","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5404","OP","01-01-064","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5405","OP","01-01-065","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5406","OP","01-01-066","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5407","OP","01-01-067","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5408","OP","01-01-068","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5409","OP","01-01-069","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5410","OP","01-01-070","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5411","OP","01-01-071","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5412","OP","01-01-072","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5413","OP","01-01-073","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5414","OP","01-01-074","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5415","OP","01-01-075","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5416","OP","01-01-076","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5417","OP","01-01-077","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5418","OP","01-01-078","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5419","OP","01-01-079","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5420","OP","01-01-080","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5421","OP","01-01-081","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5422","OP","01-01-082","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5423","OP","01-01-083","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5424","OP","01-01-084","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5425","OP","01-01-085","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5426","OP","01-01-086","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5427","OP","01-01-087","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5428","OP","01-01-088","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5429","OP","01-01-089","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5430","OP","01-01-090","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5431","OP","01-01-091","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5432","OP","01-01-092","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5433","OP","01-01-093","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5434","OP","01-01-094","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5435","OP","01-01-095","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5436","OP","01-01-096","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5437","OP","01-01-097","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5438","OP","01-01-098","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5439","OP","01-01-099","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5440","OP","01-01-100","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5441","OP","01-01-101","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5442","OP","01-01-102","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5443","OP","01-01-103","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5444","OP","01-01-104","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5445","OP","01-01-105","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5446","OP","01-01-106","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5447","OP","01-01-107","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5448","OP","01-01-108","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5449","OP","01-01-109","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5450","OP","01-01-110","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5451","OP","01-01-111","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5452","OP","01-01-112","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5453","OP","01-01-113","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5454","OP","01-01-114","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5455","OP","01-01-115","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5456","OP","01-01-116","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5457","OP","01-01-117","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5458","OP","01-01-118","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5459","OP","01-01-119","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5460","OP","01-01-120","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5461","OP","01-01-121","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5462","OP","01-01-122","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5463","OP","01-01-123","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5464","OP","01-01-124","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5465","OP","01-01-125","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5466","OP","01-01-126","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5467","OP","01-01-127","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5468","OP","01-01-128","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5469","OP","01-01-129","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5470","OP","01-01-130","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5471","OP","01-01-131","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5472","OP","01-01-132","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5473","OP","01-01-133","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5474","OP","01-01-134","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5475","OP","01-01-135","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5476","OP","01-01-136","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5477","OP","01-01-137","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5478","OP","01-01-138","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5479","OP","01-01-139","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5480","OP","01-01-140","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5481","OP","01-01-141","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5482","OP","01-01-142","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5483","OP","01-01-143","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5484","OP","01-01-144","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5485","OP","01-01-145","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5486","OP","01-01-146","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5487","OP","01-01-147","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5488","OP","01-01-148","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5489","OP","01-01-149","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5490","OP","01-01-150","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5491","OP","01-01-151","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5492","OP","01-01-152","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5493","OP","01-01-153","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5494","OP","01-01-154","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5495","OP","01-01-155","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5496","OP","01-01-156","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5497","OP","01-01-157","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5498","OP","01-01-158","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5499","OP","01-01-159","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5500","OP","01-01-160","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5501","OP","01-01-161","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5502","OP","01-01-162","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5503","OP","01-01-163","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5504","OP","01-01-164","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5505","OP","01-01-165","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5506","OP","01-01-166","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5507","OP","01-01-167","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5508","OP","01-01-168","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5509","OP","01-01-169","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5510","OP","01-01-170","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5511","OP","01-01-171","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5512","OP","01-01-172","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5513","OP","01-01-173","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5514","OP","01-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5515","OP","01-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5516","OP","01-02-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5517","OP","01-02-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5518","OP","01-02-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5519","OP","01-02-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5520","OP","01-02-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5521","OP","01-02-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5522","OP","01-02-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5523","OP","01-02-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5524","OP","01-02-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5525","OP","01-02-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5526","OP","01-02-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5527","OP","01-02-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5528","OP","01-02-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5529","OP","01-02-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5530","OP","01-02-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5531","OP","01-02-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5532","OP","01-02-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5533","OP","01-02-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5534","OP","01-02-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5535","OP","01-02-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5536","OP","01-02-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5537","OP","01-02-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5538","OP","01-02-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5539","OP","01-02-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5540","OP","01-02-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5541","OP","01-02-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5542","OP","01-02-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5543","OP","01-02-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5544","OP","01-02-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5545","OP","01-02-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5546","OP","01-02-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5547","OP","01-02-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5548","OP","01-02-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5549","OP","01-02-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5550","OP","01-02-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5551","OP","01-02-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5552","OP","01-02-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5553","OP","01-02-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5554","OP","01-02-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5555","OP","01-02-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5556","OP","01-02-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5557","OP","01-02-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5558","OP","01-02-045","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5559","OP","01-02-046","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5560","OP","01-02-047","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5561","OP","01-02-048","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5562","OP","01-02-049","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5563","OP","01-02-050","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5564","OP","01-02-051","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5565","OP","01-02-052","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5566","OP","01-02-053","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5567","OP","01-02-054","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5568","OP","01-02-055","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5569","OP","01-02-056","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5570","OP","01-02-057","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5571","OP","01-02-058","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5572","OP","01-02-059","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5573","OP","01-02-060","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5574","OP","01-02-061","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5575","OP","01-02-062","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5576","OP","01-02-063","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5577","OP","01-02-064","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5578","OP","01-02-065","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5579","OP","01-02-066","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5580","OP","01-02-067","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5581","OP","01-02-068","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5582","OP","01-02-069","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5583","OP","01-02-070","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5584","OP","01-02-071","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5585","OP","01-02-072","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5586","OP","01-02-073","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5587","OP","01-02-074","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5588","OP","01-02-075","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5589","OP","01-02-076","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5590","OP","01-02-077","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5591","OP","01-02-078","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5592","OP","01-02-079","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5593","OP","01-02-080","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5594","OP","01-02-081","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5595","OP","01-02-082","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5596","OP","01-02-083","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5597","OP","01-02-084","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5598","OP","01-02-085","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5599","OP","01-02-086","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5600","OP","01-02-087","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5601","OP","01-02-088","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5602","OP","01-02-089","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5603","OP","01-02-090","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5604","OP","01-02-091","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5605","OP","01-02-092","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5606","OP","01-02-093","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5607","OP","01-02-094","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5608","OP","01-02-095","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5609","OP","01-02-096","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5610","OP","01-02-097","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5611","OP","01-02-098","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5612","OP","01-02-099","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5613","OP","01-02-100","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5614","OP","01-02-101","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5615","OP","01-02-102","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5616","OP","01-02-103","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5617","OP","01-02-104","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5618","OP","01-02-105","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5619","OP","01-02-106","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5620","OP","01-02-107","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5621","OP","01-02-108","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5622","OP","01-02-109","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5623","OP","01-02-110","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5624","OP","01-02-111","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5625","OP","01-02-112","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5626","OP","01-02-113","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5627","OP","01-02-114","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5628","OP","01-02-115","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5629","OP","01-02-116","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5630","OP","01-02-117","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5631","OP","01-02-118","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5632","OP","01-02-119","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5633","OP","01-02-120","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5634","OP","01-02-121","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5635","OP","01-02-122","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5636","OP","01-02-123","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5637","OP","01-02-124","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5638","OP","01-02-125","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5639","OP","01-02-126","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5640","OP","01-02-127","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5641","OP","01-02-128","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5642","OP","01-02-129","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5643","OP","01-02-130","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5644","OP","01-02-131","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5645","OP","01-02-132","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5646","OP","01-02-133","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5647","OP","01-02-134","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5648","OP","01-02-135","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5649","OP","01-02-136","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5650","OP","01-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5651","OP","01-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5652","OP","01-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5653","OP","01-03-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5654","OP","01-03-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5655","OP","01-03-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5656","OP","01-03-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5657","OP","01-03-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5658","OP","01-03-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5659","OP","01-03-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5660","OP","01-03-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5661","OP","01-03-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5662","OP","01-03-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5663","OP","01-03-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5664","OP","01-03-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5665","OP","01-03-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5666","OP","01-03-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5667","OP","01-03-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5668","OP","01-03-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5669","OP","01-03-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5670","OP","01-03-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5671","OP","01-03-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5672","OP","01-03-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5673","OP","01-04-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5674","OP","01-05-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5675","OP","01-07-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5676","OP","01-07-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5677","OP","01-07-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5678","OP","02-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5679","OP","03-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5680","OP","03-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5681","OP","03-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5682","OP","03-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5683","OP","03-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5684","OP","03-03-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5685","OP","03-03-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5686","OP","03-03-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5687","OP","03-03-007","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5688","OP","03-03-008","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5689","OP","03-03-009","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5690","OP","03-03-010","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5691","OP","03-03-011","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5692","OP","03-03-012","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5693","OP","03-03-013","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5694","OP","03-03-014","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5695","OP","03-03-015","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5696","OP","03-03-016","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5697","OP","03-03-017","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5698","OP","03-03-018","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5699","OP","03-03-019","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5700","OP","03-03-020","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5701","OP","03-03-021","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5702","OP","03-03-022","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5703","OP","03-03-023","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5704","OP","03-03-024","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5705","OP","03-03-025","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5706","OP","03-03-026","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5707","OP","03-03-027","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5708","OP","03-03-028","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5709","OP","03-03-029","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5710","OP","03-03-030","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5711","OP","03-03-031","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5712","OP","03-03-032","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5713","OP","03-03-033","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5714","OP","03-03-034","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5715","OP","03-03-035","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5716","OP","03-03-036","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5717","OP","03-03-037","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5718","OP","03-03-038","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5719","OP","03-03-039","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5720","OP","03-03-040","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5721","OP","03-03-041","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5722","OP","03-03-042","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5723","OP","03-03-043","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5724","OP","03-03-044","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5725","OP","03-04-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5726","OP","03-04-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5727","OP","03-05-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5728","OP","03-05-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5729","OP","03-05-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5730","OP","05-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5731","OP","05-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5732","OP","05-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5733","OP","05-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5734","OP","06-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5735","OP","06-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5736","OP","06-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5737","OP","06-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5738","OP","06-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5739","OP","06-02-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5740","OP","06-02-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5741","OP","06-03-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5742","OP","06-03-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5743","OP","06-03-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5744","OP","07-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5745","OP","08-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5746","OP","09-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5747","OP","09-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5748","OP","09-01-003","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5749","OP","09-01-004","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5750","OP","09-01-005","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5751","OP","09-01-006","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5752","OP","09-02-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5753","OP","10-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5754","OP","11-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5755","OP","12-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5756","OP","13-01-001","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5757","OP","13-01-002","2022-06-09","0","0","0","0","0","OP","0","","","","","2","18","","","0","");
INSERT INTO inv_materialbalance VALUES("5758","WT-MP001","01-01-001","2022-06-09","0","0","20","0","0","Transfer Out","1.1","2","0","WT-MP001","","","18","","","0","2022-06-09 12:00:00");
INSERT INTO inv_materialbalance VALUES("5759","WT-MP001","01-01-001","2022-06-09","20","0","0","0","0","Transfer In","1.1","2","0","WT-MP001","","","10","","","0","");
INSERT INTO inv_materialbalance VALUES("5760","MRR-MP002","01-01-001","2022-06-09","5","200","0","0","40","Receive","1.1","2","0","MRR-MP002","","2","18","","","0","2022-06-09");
INSERT INTO inv_materialbalance VALUES("5761","IS-MP001","01-01-001","2022-06-09","0","0","4","0","0","Issue","1.1","2","0","IS-MP001","S","2","18","32","PA-425","0","2022-06-09");
INSERT INTO inv_materialbalance VALUES("5762","MRR-CW081","01-03-024","2022-06-12","100","2000","0","0","20","Receive","1.1","2","0","MRR-CW081","","2","10","","","0","2022-06-12");
INSERT INTO inv_materialbalance VALUES("5763","IS-CW260","01-03-024","2022-06-12","0","0","20","0","0","Issue","1.1","2","0","IS-CW260","S","2","10","31","PA-003","0","2022-06-12");
INSERT INTO inv_materialbalance VALUES("5764","IS-CW261","01-03-022","2022-06-12","0","0","1","0","0","Issue","1.1","2","0","IS-CW261","S","2","10","32","PA-425","0","2022-06-12");



CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_sub_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

INSERT INTO inv_materialcategory VALUES("160","01-01-000","40","ZHOO");
INSERT INTO inv_materialcategory VALUES("161","01-02-000","40","ZIRANI");
INSERT INTO inv_materialcategory VALUES("162","01-03-000","40","DK");
INSERT INTO inv_materialcategory VALUES("163","01-04-000","40","DONG YA");
INSERT INTO inv_materialcategory VALUES("164","01-05-000","40","Scrap Material");
INSERT INTO inv_materialcategory VALUES("165","02-01-000","41","Scrap Material");
INSERT INTO inv_materialcategory VALUES("166","01-06-000","40","Shapon");
INSERT INTO inv_materialcategory VALUES("167","03-01-000","42","Anowar");
INSERT INTO inv_materialcategory VALUES("168","05-01-000","44","Masud Casing");
INSERT INTO inv_materialcategory VALUES("169","06-01-000","45","H power glass");
INSERT INTO inv_materialcategory VALUES("170","06-02-000","45","Borac glass");
INSERT INTO inv_materialcategory VALUES("171","06-03-000","45","Trust glass");
INSERT INTO inv_materialcategory VALUES("172","07-01-000","46","SK Soket Jamper");
INSERT INTO inv_materialcategory VALUES("173","08-01-000","47","Acid shenakolan Tongi");
INSERT INTO inv_materialcategory VALUES("174","09-01-000","48","Charger");
INSERT INTO inv_materialcategory VALUES("175","03-02-000","42","Luminus");
INSERT INTO inv_materialcategory VALUES("176","03-03-000","42","Sk");
INSERT INTO inv_materialcategory VALUES("177","09-02-000","48","Charger");
INSERT INTO inv_materialcategory VALUES("178","11-01-000","50","Warehouse");
INSERT INTO inv_materialcategory VALUES("179","12-01-000","51","Megna Company");
INSERT INTO inv_materialcategory VALUES("180","13-01-000","52","Zhoo Manikgonj");
INSERT INTO inv_materialcategory VALUES("181","13-02-000","52","CNG Body ");
INSERT INTO inv_materialcategory VALUES("182","01-07-000","40","Eco Company");
INSERT INTO inv_materialcategory VALUES("183","10-01-000","49","Khushiara Company");
INSERT INTO inv_materialcategory VALUES("184","03-04-000","42","AIR International");
INSERT INTO inv_materialcategory VALUES("185","03-05-000","42","Hossen Company  ");



CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO inv_materialcategorysub VALUES("40","01-00-000","BATTERY","","","");
INSERT INTO inv_materialcategorysub VALUES("41","02-00-000","Scrap Material","","","");
INSERT INTO inv_materialcategorysub VALUES("42","03-00-000","Parts","","","");
INSERT INTO inv_materialcategorysub VALUES("43","04-00-000","Shapon","","","");
INSERT INTO inv_materialcategorysub VALUES("44","05-00-000","Casing","","","");
INSERT INTO inv_materialcategorysub VALUES("45","06-00-000","Glass","","","");
INSERT INTO inv_materialcategorysub VALUES("46","07-00-000","Soket Jamper","","","");
INSERT INTO inv_materialcategorysub VALUES("47","08-00-000","Acid Water","","","");
INSERT INTO inv_materialcategorysub VALUES("48","09-00-000","Charger","","","");
INSERT INTO inv_materialcategorysub VALUES("49","10-00-000","Parts","","","");
INSERT INTO inv_materialcategorysub VALUES("50","11-00-000","Old Battery","","","");
INSERT INTO inv_materialcategorysub VALUES("51","12-00-000","Tube/Tyer","","","");
INSERT INTO inv_materialcategorysub VALUES("52","13-00-000","Easy Bike","","","");



CREATE TABLE `inv_partybalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `pb_date` date NOT NULL,
  `memono` int(20) NOT NULL,
  `partner_id` varchar(20) NOT NULL,
  `pb_party_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `pb_dr_amount` float NOT NULL,
  `pb_cr_amount` float NOT NULL,
  `pb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `pb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `receivermode` varchar(200) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=latin1;

INSERT INTO inv_partybalance VALUES("3","IS-CW001","10","2022-05-01","1971","39","PA-045","29600","0","","IS-CW001","","0");
INSERT INTO inv_partybalance VALUES("4","IS-CW002","10","2022-05-08","5404","33","PA-165","206900","0","","IS-CW002","","0");
INSERT INTO inv_partybalance VALUES("7","IS-CW004","10","2022-05-08","5406","33","PA-115","87000","0","","IS-CW004","","0");
INSERT INTO inv_partybalance VALUES("8","IS-CW003","10","2022-05-08","5405","33","PA-130","258100","0","","IS-CW003","","0");
INSERT INTO inv_partybalance VALUES("12","IS-CW006","10","2022-05-01","5117","41","PA-167","414740","0","","IS-CW006","","0");
INSERT INTO inv_partybalance VALUES("13","IS-CW007","10","2022-05-01","5118","41","PA-155","93000","0","","IS-CW007","","0");
INSERT INTO inv_partybalance VALUES("17","IS-CW008","10","2022-05-01","5119","41","PA-168","16600","0","","IS-CW008","","0");
INSERT INTO inv_partybalance VALUES("18","IS-CW009","10","2022-05-08","5121","41","PA-170","191200","0","","IS-CW009","","0");
INSERT INTO inv_partybalance VALUES("21","VID-021","10","2022-05-11","5124","35","PA-178","0","0","","","Check Pass","0");
INSERT INTO inv_partybalance VALUES("23","VID-023","10","2022-05-12","5125","35","PA-181","0","0","","","Maruf","0");
INSERT INTO inv_partybalance VALUES("24","IS-CW014","10","2022-05-09","5126","41","PA-012","216500","0","","IS-CW014","","0");
INSERT INTO inv_partybalance VALUES("29","IS-CW015","10","2022-05-10","2932","38","PA-171","43500","0","","IS-CW015","","0");
INSERT INTO inv_partybalance VALUES("30","IS-CW017","10","2022-05-12","2936","38","PA-175","174000","0","Battary ","IS-CW017","","0");
INSERT INTO inv_partybalance VALUES("31","VID-001","10","2022-05-15","0","38","PA-175","0","7800","Battery Cash Paid","VID-001","","0");
INSERT INTO inv_partybalance VALUES("32","IS-CW018","10","2022-05-09","2329","35","PA-176","8000","0","","IS-CW018","","0");
INSERT INTO inv_partybalance VALUES("33","IS-CW019","10","2022-05-10","2330","35","PA-177","95000","0","","IS-CW019","","0");
INSERT INTO inv_partybalance VALUES("34","IS-CW020","10","2022-05-10","2331","35","PA-178","91800","0","","IS-CW020","","0");
INSERT INTO inv_partybalance VALUES("35","IS-CW021","10","2022-05-11","2332","35","PA-179","95000","0","","IS-CW021","","0");
INSERT INTO inv_partybalance VALUES("36","IS-CW022","10","2022-05-11","2333","35","PA-180","119000","0","","IS-CW022","","0");
INSERT INTO inv_partybalance VALUES("37","IS-CW023","10","2022-05-11","2334","35","PA-181","72500","0","","IS-CW023","","0");
INSERT INTO inv_partybalance VALUES("39","IS-CW024","10","2022-05-12","2335","35","PA-180","257000","0","","IS-CW024","","0");
INSERT INTO inv_partybalance VALUES("40","IS-CW025","10","2022-05-11","5127","41","PA-182","435000","0","","IS-CW025","","0");
INSERT INTO inv_partybalance VALUES("41","IS-CW026","10","2022-05-11","5128","41","PA-183","98800","0","","IS-CW026","","0");
INSERT INTO inv_partybalance VALUES("43","IS-CW028","10","2022-05-11","5089","32","PA-107","27300","0","","IS-CW028","","0");
INSERT INTO inv_partybalance VALUES("44","IS-CW029","10","2022-05-11","5087","32","PA-010","16600","0","","IS-CW029","","0");
INSERT INTO inv_partybalance VALUES("45","IS-CW030","10","2022-05-12","5081","32","PA-105","29200","0","","IS-CW030","","0");
INSERT INTO inv_partybalance VALUES("46","IS-CW031","10","2022-05-08","2477","42","PA-184","128800","0","","IS-CW031","","0");
INSERT INTO inv_partybalance VALUES("47","IS-CW032","10","2022-05-07","2478","42","PA-185","29600","0","","IS-CW032","","0");
INSERT INTO inv_partybalance VALUES("48","IS-CW033","10","2022-05-09","2479","42","PA-185","46800","0","","IS-CW033","","0");
INSERT INTO inv_partybalance VALUES("49","IS-CW034","10","2022-05-09","2480","42","PA-185","29600","0","","IS-CW034","","0");
INSERT INTO inv_partybalance VALUES("50","IS-CW035","10","2022-05-11","2481","42","PA-186","235000","0","","IS-CW035","","0");
INSERT INTO inv_partybalance VALUES("52","IS-CW036","10","2022-05-12","2482","42","PA-185","47000","0","","IS-CW036","","0");
INSERT INTO inv_partybalance VALUES("53","IS-CW037","10","2022-05-08","5120","41","PA-169","465000","0","","IS-CW037","","0");
INSERT INTO inv_partybalance VALUES("54","IS-CW011","10","2022-05-08","5123","41","PA-168","132150","0","","IS-CW011","","0");
INSERT INTO inv_partybalance VALUES("55","IS-CW038","10","2022-05-12","2336","35","PA-181","125000","0","","IS-CW038","","0");
INSERT INTO inv_partybalance VALUES("56","IS-CW039","10","2022-05-11","2935","38","PA-173","573250","0","","IS-CW039","","0");
INSERT INTO inv_partybalance VALUES("58","IS-CW016","10","2022-05-10","2934","38","PA-172","29300","0","","IS-CW016","","0");
INSERT INTO inv_partybalance VALUES("59","VID-002","10","2022-05-01","0","41","PA-166","0","365500","","VID-002","","0");
INSERT INTO inv_partybalance VALUES("60","VID-003","10","2022-05-01","0","41","PA-167","0","114000","","VID-003","","0");
INSERT INTO inv_partybalance VALUES("61","VID-004","10","2022-05-01","0","41","PA-155","0","93000","","VID-004","","0");
INSERT INTO inv_partybalance VALUES("62","VID-005","10","2022-05-01","0","41","PA-168","0","16600","","VID-005","Faruk2","0");
INSERT INTO inv_partybalance VALUES("63","VID-006","10","2022-05-08","0","41","PA-169","0","370000","Check Pass","VID-006","","0");
INSERT INTO inv_partybalance VALUES("64","VID-007","10","2022-05-08","0","41","PA-170","0","141200","","VID-007","","0");
INSERT INTO inv_partybalance VALUES("65","VID-008","10","2022-05-08","0","41","PA-166","0","240000","","VID-008","","0");
INSERT INTO inv_partybalance VALUES("66","VID-009","10","2022-05-08","0","41","PA-168","0","122150","","VID-009","","0");
INSERT INTO inv_partybalance VALUES("67","VID-010","10","2022-05-09","0","41","PA-155","0","65500","","VID-010","","0");
INSERT INTO inv_partybalance VALUES("68","VID-011","10","2022-05-09","0","41","PA-167","0","86400","","VID-011","","0");
INSERT INTO inv_partybalance VALUES("69","VID-012","10","2022-05-09","0","41","PA-012","0","312800","","VID-012","","0");
INSERT INTO inv_partybalance VALUES("70","VID-013","10","2022-05-11","0","41","PA-182","0","10000","","VID-013","","0");
INSERT INTO inv_partybalance VALUES("71","VID-014","10","2022-05-11","0","41","PA-183","0","98000","","VID-014","","0");
INSERT INTO inv_partybalance VALUES("72","IS-CW005","10","2022-05-01","5116","41","PA-166","265500","0","","IS-CW005","","0");
INSERT INTO inv_partybalance VALUES("73","IS-CW010","10","2022-05-08","5122","41","PA-166","240000","0","Discount Gift Less","IS-CW010","","0");
INSERT INTO inv_partybalance VALUES("74","VID-015","10","2022-05-10","0","38","PA-171","0","43500","","VID-015","","0");
INSERT INTO inv_partybalance VALUES("75","VID-016","10","2022-05-10","0","38","PA-172","0","29300","","VID-016","","0");
INSERT INTO inv_partybalance VALUES("76","VID-017","10","2022-05-11","0","38","PA-173","0","140000","IBBL","VID-017","","0");
INSERT INTO inv_partybalance VALUES("77","VID-018","10","2022-05-12","0","38","PA-175","0","166200","","VID-018","","0");
INSERT INTO inv_partybalance VALUES("79","IS-CW040","10","2022-05-06","5093","32","PA-008","29800","0","","IS-CW040","","0");
INSERT INTO inv_partybalance VALUES("81","IS-CW027","10","2022-05-09","5091","32","PA-010","31200","0","","IS-CW027","","0");
INSERT INTO inv_partybalance VALUES("82","VID-019","10","2022-05-15","0","35","PA-159","0","60000","","VID-019","","0");
INSERT INTO inv_partybalance VALUES("83","VID-020","10","2022-05-10","0","35","PA-177","0","60000","","VID-020","","0");
INSERT INTO inv_partybalance VALUES("84","VID-021","10","2022-05-15","0","35","PA-178","0","34000","Check pass","VID-021","Check Pass","0");
INSERT INTO inv_partybalance VALUES("85","VID-022","10","2022-05-16","0","35","PA-180","0","119000","","VID-022","Maruf","0");
INSERT INTO inv_partybalance VALUES("86","VID-023","10","2022-05-14","0","35","PA-181","0","90000","","VID-023","Maruf","0");
INSERT INTO inv_partybalance VALUES("87","VID-024","10","2022-05-12","0","35","PA-180","0","242000","","VID-024","Maruf","0");
INSERT INTO inv_partybalance VALUES("88","VID-025","10","2022-05-12","0","35","PA-181","0","127000","","VID-025","Maruf","0");
INSERT INTO inv_partybalance VALUES("89","IS-CW041","10","2022-04-28","5110","41","PA-183","52500","0","","IS-CW041","NAP","0");
INSERT INTO inv_partybalance VALUES("90","IS-CW042","10","2022-04-29","5112","41","PA-182","440000","0","","IS-CW042","NAP","0");
INSERT INTO inv_partybalance VALUES("91","IS-CW043","10","2022-04-28","5111","41","PA-189","82700","0","","IS-CW043","NAP","0");
INSERT INTO inv_partybalance VALUES("92","IS-CW044","10","2022-04-28","5109","41","PA-012","297600","0","","IS-CW044","NAP","0");
INSERT INTO inv_partybalance VALUES("93","IS-CW045","10","2022-04-30","5113","41","PA-166","734000","0","","IS-CW045","NAP","0");
INSERT INTO inv_partybalance VALUES("94","IS-CW046","10","2022-04-30","5114","41","PA-168","96800","0","","IS-CW046","NAP","0");
INSERT INTO inv_partybalance VALUES("95","IS-CW047","10","2022-04-30","5115","41","PA-190","102500","0","","IS-CW047","NAP","0");
INSERT INTO inv_partybalance VALUES("96","OP","10","2022-04-30","0","41","PA-183","50000","0","OP","OP","OP","0");
INSERT INTO inv_partybalance VALUES("97","IS-CW048","10","2022-04-28","5401","33","PA-014","80000","0","","IS-CW048","NAP","0");
INSERT INTO inv_partybalance VALUES("98","IS-CW049","10","2022-04-30","5402","33","PA-118","180000","0","","IS-CW049","NAP","0");
INSERT INTO inv_partybalance VALUES("99","IS-CW050","10","2022-05-15","5407","33","PA-191","236750","0","","IS-CW050","NAP","0");
INSERT INTO inv_partybalance VALUES("100","IS-CW051","10","2022-05-15","5408","33","PA-115","126800","0","","IS-CW051","NAP","0");
INSERT INTO inv_partybalance VALUES("101","IS-CW052","10","2022-05-11","5409","33","PA-118","450000","0","","IS-CW052","NAP","0");
INSERT INTO inv_partybalance VALUES("102","IS-CW053","10","2022-05-18","5410","33","PA-122","72800","0","","IS-CW053","NAP","0");
INSERT INTO inv_partybalance VALUES("103","IS-CW054","10","2022-05-18","5411","33","PA-127","185000","0","","IS-CW054","NAP","0");
INSERT INTO inv_partybalance VALUES("105","IS-CW056","10","2022-05-18","5412","33","PA-125","119400","0","","IS-CW056","NAP","0");
INSERT INTO inv_partybalance VALUES("106","IS-CW057","10","2022-05-21","5418","33","PA-129","179000","0","","IS-CW057","NAP","0");
INSERT INTO inv_partybalance VALUES("107","IS-CW058","10","2022-05-22","5420","33","PA-118","180000","0","","IS-CW058","NAP","0");
INSERT INTO inv_partybalance VALUES("108","IS-CW055","10","2022-05-18","5412","33","PA-125","119400","0","","IS-CW055","","0");
INSERT INTO inv_partybalance VALUES("109","IS-CW059","10","2022-05-19","5413","33","PA-014","429400","0","","IS-CW059","NAP","0");
INSERT INTO inv_partybalance VALUES("110","IS-CW060","10","2022-05-19","5414","33","PA-013","39000","0","","IS-CW060","NAP","0");
INSERT INTO inv_partybalance VALUES("111","IS-CW061","10","2022-05-21","5415","33","PA-014","221100","0","","IS-CW061","NAP","0");
INSERT INTO inv_partybalance VALUES("112","IS-CW062","10","2022-05-22","5418","33","PA-014","165600","0","","IS-CW062","NAP","0");
INSERT INTO inv_partybalance VALUES("113","IS-CW063","10","2022-05-22","5419","33","PA-111","56800","0","","IS-CW063","NAP","0");
INSERT INTO inv_partybalance VALUES("114","IS-CW064","10","2022-05-23","5421","33","PA-127","184000","0","","IS-CW064","NAP","0");
INSERT INTO inv_partybalance VALUES("115","IS-CW065","10","2022-05-23","5422","33","PA-014","417200","0","","IS-CW065","NAP","0");
INSERT INTO inv_partybalance VALUES("116","IS-CW066","10","2022-05-24","5423","33","PA-125","103200","0","","IS-CW066","NAP","0");
INSERT INTO inv_partybalance VALUES("117","IS-CW067","10","2022-05-24","5424","33","PA-014","84000","0","","IS-CW067","NAP","0");
INSERT INTO inv_partybalance VALUES("118","IS-CW068","10","2022-05-24","5425","33","PA-013","57000","0","","IS-CW068","NAP","0");
INSERT INTO inv_partybalance VALUES("119","IS-CW069","10","2022-05-25","5427","33","PA-191","292000","0","","IS-CW069","NAP","0");
INSERT INTO inv_partybalance VALUES("120","IS-CW070","10","2022-05-26","5428","33","PA-115","191900","0","","IS-CW070","NAP","0");
INSERT INTO inv_partybalance VALUES("121","IS-CW071","10","2022-05-24","5426","33","PA-165","244750","0","","IS-CW071","NAP","0");
INSERT INTO inv_partybalance VALUES("122","IS-CW072","10","2022-05-22","5417","33","PA-115","159900","0","H power 28.5kg G replace babod 500tk increase kora hoice","IS-CW072","NAP","0");
INSERT INTO inv_partybalance VALUES("123","IS-CW073","10","2022-05-17","2937","38","PA-195","46000","0","","IS-CW073","NAP","0");
INSERT INTO inv_partybalance VALUES("124","IS-CW074","10","2022-05-17","2938","38","PA-239","91800","0","","IS-CW074","NAP","0");
INSERT INTO inv_partybalance VALUES("125","IS-CW075","10","2022-05-18","2939","38","PA-208","126000","0","","IS-CW075","NAP","0");
INSERT INTO inv_partybalance VALUES("126","IS-CW076","10","2022-05-18","2940","38","PA-224","69300","0","","IS-CW076","NAP","0");
INSERT INTO inv_partybalance VALUES("127","IS-CW077","10","2022-05-20","2941","38","PA-173","172000","0","","IS-CW077","NAP","0");
INSERT INTO inv_partybalance VALUES("128","IS-CW078","10","2022-05-20","2942","38","PA-224","3200","0","","IS-CW078","NAP","0");
INSERT INTO inv_partybalance VALUES("129","IS-CW079","10","2022-05-22","2943","38","PA-175","139200","0","","IS-CW079","NAP","0");
INSERT INTO inv_partybalance VALUES("130","IS-CW080","10","2022-05-22","2944","38","PA-208","8200","0","","IS-CW080","NAP","0");
INSERT INTO inv_partybalance VALUES("131","IS-CW081","10","2022-05-23","2945","38","PA-240","90000","0","","IS-CW081","NAP","0");
INSERT INTO inv_partybalance VALUES("132","IS-CW082","10","2022-05-25","2946","38","PA-173","355000","0","","IS-CW082","NAP","0");
INSERT INTO inv_partybalance VALUES("133","IS-CW083","10","2022-05-25","2947","38","PA-217","46800","0","","IS-CW083","NAP","0");
INSERT INTO inv_partybalance VALUES("134","IS-CW084","10","2022-05-13","2337","35","PA-163","136000","0","","IS-CW084","NAP","0");
INSERT INTO inv_partybalance VALUES("135","IS-CW085","10","2022-05-14","2338","35","PA-179","29000","0","","IS-CW085","NAP","0");
INSERT INTO inv_partybalance VALUES("136","IS-CW086","10","2022-05-16","2339","35","PA-241","10700","0","","IS-CW086","NAP","0");
INSERT INTO inv_partybalance VALUES("137","IS-CW087","10","2022-05-17","2340","35","PA-242","214000","0","","IS-CW087","NAP","0");
INSERT INTO inv_partybalance VALUES("138","IS-CW088","10","2022-05-17","2341","35","PA-180","138600","0","","IS-CW088","NAP","0");
INSERT INTO inv_partybalance VALUES("139","IS-CW089","10","2022-05-18","2343","35","PA-243","459700","0","","IS-CW089","NAP","0");
INSERT INTO inv_partybalance VALUES("140","IS-CW090","10","2022-05-18","2345","35","PA-244","57600","0","","IS-CW090","NAP","0");
INSERT INTO inv_partybalance VALUES("141","IS-CW091","10","2022-05-19","2346","35","PA-245","474500","0","","IS-CW091","NAP","0");
INSERT INTO inv_partybalance VALUES("142","IS-CW092","10","2022-05-19","2347","35","PA-020","29000","0","","IS-CW092","NAP","0");
INSERT INTO inv_partybalance VALUES("143","IS-CW093","10","2022-05-20","2348","35","PA-180","162400","0","","IS-CW093","NAP","0");
INSERT INTO inv_partybalance VALUES("144","IS-CW094","10","2022-05-23","2350","35","PA-163","298500","0","","IS-CW094","NAP","0");
INSERT INTO inv_partybalance VALUES("145","IS-CW095","10","2022-05-21","2349","35","PA-246","8120","0","","IS-CW095","NAP","0");
INSERT INTO inv_partybalance VALUES("146","IS-CW096","10","2022-05-23","4901","35","PA-180","80400","0","","IS-CW096","NAP","0");
INSERT INTO inv_partybalance VALUES("147","IS-CW097","10","2022-05-23","4802","35","PA-181","93000","0","","IS-CW097","NAP","0");
INSERT INTO inv_partybalance VALUES("148","IS-CW098","10","2022-05-23","4803","35","PA-177","89000","0","","IS-CW098","NAP","0");
INSERT INTO inv_partybalance VALUES("149","IS-CW099","10","2022-05-23","4804","35","PA-244","142700","0","","IS-CW099","NAP","0");
INSERT INTO inv_partybalance VALUES("150","IS-CW100","10","2022-05-23","4805","35","PA-246","28000","0","","IS-CW100","NAP","0");
INSERT INTO inv_partybalance VALUES("151","IS-CW101","10","2022-05-24","4806","35","PA-243","465850","0","","IS-CW101","NAP","0");
INSERT INTO inv_partybalance VALUES("152","IS-CW102","10","2022-05-25","4807","35","PA-247","43500","0","","IS-CW102","NAP","0");
INSERT INTO inv_partybalance VALUES("153","IS-CW103","10","2022-05-25","4808","35","PA-244","49000","0","","IS-CW103","NAP","0");
INSERT INTO inv_partybalance VALUES("154","IS-CW104","10","2022-05-27","4810","35","PA-180","233950","0","","IS-CW104","NAP","0");
INSERT INTO inv_partybalance VALUES("155","IS-CW105","10","2022-05-27","4811","35","PA-248","246880","0","Trust Glass 1 pc Broken","IS-CW105","NAP","0");
INSERT INTO inv_partybalance VALUES("156","IS-CW106","10","2022-05-27","4813","35","PA-178","56700","0","","IS-CW106","NAP","0");
INSERT INTO inv_partybalance VALUES("157","IS-CW107","10","2022-05-27","4814","35","PA-180","32800","0","","IS-CW107","NAP","0");
INSERT INTO inv_partybalance VALUES("158","IS-CW108","10","2022-05-27","4815","35","PA-249","28000","0","","IS-CW108","NAP","0");
INSERT INTO inv_partybalance VALUES("159","IS-CW109","10","2022-05-28","4816","35","PA-181","130200","0","","IS-CW109","NAP","0");
INSERT INTO inv_partybalance VALUES("160","IS-CW110","10","2022-05-28","2948","38","PA-171","46500","0","","IS-CW110","NAP","0");
INSERT INTO inv_partybalance VALUES("161","IS-CW111","10","2022-05-19","5601","31","PA-250","141000","0","","IS-CW111","NAP","0");
INSERT INTO inv_partybalance VALUES("162","IS-CW112","10","2022-05-20","5602","31","PA-004","252000","0","","IS-CW112","NAP","0");
INSERT INTO inv_partybalance VALUES("163","IS-CW113","10","2022-05-20","5603","31","PA-078","94000","0","","IS-CW113","NAP","0");
INSERT INTO inv_partybalance VALUES("164","IS-CW114","10","2022-05-20","5605","31","PA-335","18700","0","","IS-CW114","NAP","0");
INSERT INTO inv_partybalance VALUES("165","IS-CW115","10","2022-05-22","5606","31","PA-059","160800","0","","IS-CW115","NAP","0");
INSERT INTO inv_partybalance VALUES("166","IS-CW116","10","2022-05-23","5607","31","PA-088","49000","0","","IS-CW116","NAP","0");
INSERT INTO inv_partybalance VALUES("167","IS-CW117","10","2022-05-23","5608","31","PA-097","66800","0","","IS-CW117","NAP","0");
INSERT INTO inv_partybalance VALUES("168","IS-CW118","10","2022-05-23","5609","31","PA-085","78400","0","","IS-CW118","NAP","0");
INSERT INTO inv_partybalance VALUES("169","IS-CW119","10","2022-05-23","5611","31","PA-335","17700","0","","IS-CW119","NAP","0");
INSERT INTO inv_partybalance VALUES("170","IS-CW120","10","2022-05-23","5612","31","PA-064","48080","0","","IS-CW120","NAP","0");
INSERT INTO inv_partybalance VALUES("171","IS-CW121","10","2022-05-23","5613","31","PA-250","49500","0","","IS-CW121","NAP","0");
INSERT INTO inv_partybalance VALUES("172","IS-CW122","10","2022-05-25","5614","31","PA-250","188000","0","","IS-CW122","NAP","0");
INSERT INTO inv_partybalance VALUES("173","IS-CW123","10","2022-05-26","5616","31","PA-002","53800","0","","IS-CW123","NAP","0");
INSERT INTO inv_partybalance VALUES("175","IS-CW125","10","2022-05-26","5618","31","PA-088","68600","0","","IS-CW125","NAP","0");
INSERT INTO inv_partybalance VALUES("176","IS-CW126","10","2022-05-26","5619","31","PA-053","44000","0","","IS-CW126","NAP","0");
INSERT INTO inv_partybalance VALUES("177","IS-CW127","10","2022-05-27","5623","31","PA-336","17100","0","","IS-CW127","NAP","0");
INSERT INTO inv_partybalance VALUES("178","IS-CW128","10","2022-05-27","5624","31","PA-250","66000","0","","IS-CW128","NAP","0");
INSERT INTO inv_partybalance VALUES("179","IS-CW129","10","2022-05-28","5626","31","PA-250","49500","0","","IS-CW129","NAP","0");
INSERT INTO inv_partybalance VALUES("181","IS-CW131","10","2022-05-29","5630","31","PA-097","20000","0","","IS-CW131","NAP","0");
INSERT INTO inv_partybalance VALUES("182","IS-CW130","10","2022-05-29","5429","31","PA-089","66000","0","","IS-CW130","","0");
INSERT INTO inv_partybalance VALUES("183","IS-CW132","10","2022-05-29","5604","31","PA-064","24000","0","","IS-CW132","NAP","0");
INSERT INTO inv_partybalance VALUES("184","IS-CW133","10","2022-05-23","5610","31","PA-077","20000","0","","IS-CW133","NAP","0");
INSERT INTO inv_partybalance VALUES("185","IS-CW124","10","2022-05-26","5617","31","PA-067","33500","0","","IS-CW124","","0");
INSERT INTO inv_partybalance VALUES("186","IS-CW134","10","2022-05-26","5620","31","PA-055","120950","0","","IS-CW134","NAP","0");
INSERT INTO inv_partybalance VALUES("187","IS-CW135","10","2022-05-26","5622","31","PA-080","103450","0","","IS-CW135","NAP","0");
INSERT INTO inv_partybalance VALUES("190","IS-CW136","10","2022-05-29","4817","35","PA-179","142500","0","","IS-CW136","","0");
INSERT INTO inv_partybalance VALUES("191","IS-CW137","10","2022-05-29","4818","35","PA-242","142400","0","","IS-CW137","NAP","0");
INSERT INTO inv_partybalance VALUES("192","IS-CW138","10","2022-05-29","4819","35","PA-180","112800","0","","IS-CW138","NAP","0");
INSERT INTO inv_partybalance VALUES("193","IS-CW139","10","2022-05-07","4522","31","PA-337","96000","0","","IS-CW139","NAP","0");
INSERT INTO inv_partybalance VALUES("194","IS-CW140","10","2022-05-08","4524","31","PA-085","39200","0","","IS-CW140","NAP","0");
INSERT INTO inv_partybalance VALUES("195","IS-CW141","10","2022-05-08","4525","31","PA-089","80500","0","","IS-CW141","NAP","0");
INSERT INTO inv_partybalance VALUES("196","IS-CW142","10","2022-05-08","4526","31","PA-250","207500","0","","IS-CW142","NAP","0");
INSERT INTO inv_partybalance VALUES("197","IS-CW143","10","2022-05-09","4528","31","PA-062","9300","0","","IS-CW143","NAP","0");
INSERT INTO inv_partybalance VALUES("198","IS-CW144","10","2022-05-10","4530","31","PA-059","325600","0","","IS-CW144","NAP","0");
INSERT INTO inv_partybalance VALUES("199","VID-026","10","2022-05-10","0","31","PA-059","0","18800","Battery Baboth Cash Paid","VID-026","","0");
INSERT INTO inv_partybalance VALUES("200","IS-CW145","10","2022-05-11","4532","31","PA-071","184000","0","","IS-CW145","NAP","0");
INSERT INTO inv_partybalance VALUES("201","IS-CW146","10","2022-05-11","4533","31","PA-064","27750","0","","IS-CW146","NAP","0");
INSERT INTO inv_partybalance VALUES("202","IS-CW147","10","2022-05-11","4535","31","PA-250","190500","0","","IS-CW147","NAP","0");
INSERT INTO inv_partybalance VALUES("203","IS-CW148","10","2022-05-12","4536","31","PA-066","263101","0","","IS-CW148","NAP","0");
INSERT INTO inv_partybalance VALUES("204","IS-CW149","10","2022-05-12","4538","31","PA-067","50000","0","","IS-CW149","NAP","0");
INSERT INTO inv_partybalance VALUES("205","IS-CW150","10","2022-05-14","4539","31","PA-070","450000","0","","IS-CW150","NAP","0");
INSERT INTO inv_partybalance VALUES("206","IS-CW151","10","2022-05-14","4540","31","PA-057","21500","0","","IS-CW151","NAP","0");
INSERT INTO inv_partybalance VALUES("207","IS-CW152","10","2022-05-14","4541","31","PA-053","54550","0","","IS-CW152","NAP","0");
INSERT INTO inv_partybalance VALUES("208","IS-CW153","10","2022-05-14","4542","31","PA-250","47500","0","","IS-CW153","NAP","0");
INSERT INTO inv_partybalance VALUES("210","IS-CW154","10","2022-05-14","4543","31","PA-059","132000","0","","IS-CW154","","0");
INSERT INTO inv_partybalance VALUES("211","IS-CW155","10","2022-05-17","4544","31","PA-071","138000","0","","IS-CW155","NAP","0");
INSERT INTO inv_partybalance VALUES("212","IS-CW156","10","2022-05-17","4545","31","PA-086","150000","0","","IS-CW156","NAP","0");
INSERT INTO inv_partybalance VALUES("213","VID-027","10","2022-05-14","0","31","PA-059","0","28200","Battery Baboth Cash paid","VID-027","Aziz","0");
INSERT INTO inv_partybalance VALUES("214","IS-CW157","10","2022-05-17","4546","31","PA-338","90000","0","","IS-CW157","NAP","0");
INSERT INTO inv_partybalance VALUES("215","IS-CW158","10","2022-05-17","4547","31","PA-250","44000","0","","IS-CW158","NAP","0");
INSERT INTO inv_partybalance VALUES("216","IS-CW159","10","2022-05-18","4548","31","PA-059","197350","0","","IS-CW159","NAP","0");
INSERT INTO inv_partybalance VALUES("217","IS-CW160","10","2022-05-18","4549","31","PA-005","196000","0","","IS-CW160","NAP","0");
INSERT INTO inv_partybalance VALUES("218","IS-CW161","10","2022-05-18","4550","31","PA-250","212000","0","","IS-CW161","NAP","0");
INSERT INTO inv_partybalance VALUES("219","IS-CW162","10","2022-05-11","3751","36","PA-294","264000","0","","IS-CW162","NAP","0");
INSERT INTO inv_partybalance VALUES("220","IS-CW163","10","2022-05-12","3752","36","PA-269","122300","0","","IS-CW163","NAP","0");
INSERT INTO inv_partybalance VALUES("221","IS-CW164","10","2022-05-12","3753","36","PA-275","78300","0","","IS-CW164","NAP","0");
INSERT INTO inv_partybalance VALUES("222","IS-CW165","10","2022-05-12","3754","36","PA-292","46500","0","","IS-CW165","NAP","0");
INSERT INTO inv_partybalance VALUES("223","IS-CW166","10","2022-05-14","3755","36","PA-294","125900","0","","IS-CW166","NAP","0");
INSERT INTO inv_partybalance VALUES("224","IS-CW167","10","2022-05-14","3756","36","PA-296","194000","0","","IS-CW167","NAP","0");
INSERT INTO inv_partybalance VALUES("225","IS-CW168","10","2022-05-14","3757","36","PA-267","7200","0","","IS-CW168","NAP","0");
INSERT INTO inv_partybalance VALUES("226","IS-CW169","10","2022-05-14","3758","36","PA-017","58800","0","","IS-CW169","NAP","0");
INSERT INTO inv_partybalance VALUES("227","IS-CW170","10","2022-05-15","3759","36","PA-283","46500","0","","IS-CW170","NAP","0");
INSERT INTO inv_partybalance VALUES("228","IS-CW171","10","2022-05-15","3760","36","PA-297","47500","0","","IS-CW171","NAP","0");
INSERT INTO inv_partybalance VALUES("229","IS-CW172","10","2022-05-15","3761","36","PA-017","123400","0","","IS-CW172","NAP","0");
INSERT INTO inv_partybalance VALUES("230","IS-CW173","10","2022-05-01","2207","34","PA-397","179800","0","","IS-CW173","NAP","0");
INSERT INTO inv_partybalance VALUES("231","IS-CW174","10","2022-05-01","2208","34","PA-392","61800","0","","IS-CW174","NAP","0");
INSERT INTO inv_partybalance VALUES("232","IS-CW175","10","2022-05-01","2209","34","PA-406","44500","0","","IS-CW175","NAP","0");
INSERT INTO inv_partybalance VALUES("233","IS-CW176","10","2022-05-07","2210","34","PA-361","38100","0","","IS-CW176","NAP","0");
INSERT INTO inv_partybalance VALUES("234","IS-CW177","10","2022-05-08","2211","34","PA-387","40000","0","","IS-CW177","NAP","0");
INSERT INTO inv_partybalance VALUES("235","IS-CW178","10","2022-05-08","2212","34","PA-365","63000","0","","IS-CW178","NAP","0");
INSERT INTO inv_partybalance VALUES("236","IS-CW179","10","2022-05-09","2213","34","PA-423","20000","0","","IS-CW179","NAP","0");
INSERT INTO inv_partybalance VALUES("237","IS-CW180","10","2022-05-09","2214","34","PA-379","250000","0","","IS-CW180","NAP","0");
INSERT INTO inv_partybalance VALUES("238","IS-CW181","10","2022-05-09","2215","34","PA-346","55200","0","","IS-CW181","NAP","0");
INSERT INTO inv_partybalance VALUES("239","IS-CW182","10","2022-05-10","2217","34","PA-345","82800","0","","IS-CW182","NAP","0");
INSERT INTO inv_partybalance VALUES("240","IS-CW183","10","2022-05-10","2218","34","PA-383","83000","0","","IS-CW183","NAP","0");
INSERT INTO inv_partybalance VALUES("241","IS-CW184","10","2022-05-10","2219","34","PA-416","142000","0","","IS-CW184","NAP","0");
INSERT INTO inv_partybalance VALUES("242","IS-CW185","10","2022-05-10","2220","34","PA-413","45000","0","","IS-CW185","NAP","0");
INSERT INTO inv_partybalance VALUES("243","IS-CW186","10","2022-05-10","2221","34","PA-372","49200","0","","IS-CW186","NAP","0");
INSERT INTO inv_partybalance VALUES("244","IS-CW187","10","2022-05-11","2222","34","PA-397","101500","0","","IS-CW187","NAP","0");
INSERT INTO inv_partybalance VALUES("245","IS-CW188","10","2022-05-11","2223","34","PA-360","101500","0","","IS-CW188","NAP","0");
INSERT INTO inv_partybalance VALUES("246","IS-CW189","10","2022-05-11","2224","34","PA-019","29000","0","","IS-CW189","NAP","0");
INSERT INTO inv_partybalance VALUES("247","IS-CW190","10","2022-05-11","2225","34","PA-385","35200","0","","IS-CW190","NAP","0");
INSERT INTO inv_partybalance VALUES("248","IS-CW191","10","2022-05-11","2226","34","PA-410","46000","0","","IS-CW191","NAP","0");
INSERT INTO inv_partybalance VALUES("249","IS-CW192","10","2022-05-11","2227","34","PA-383","73000","0","","IS-CW192","NAP","0");
INSERT INTO inv_partybalance VALUES("250","IS-CW193","10","2022-05-11","2228","34","PA-345","13800","0","","IS-CW193","NAP","0");
INSERT INTO inv_partybalance VALUES("251","IS-CW194","10","2022-05-12","2233","34","PA-411","56000","0","","IS-CW194","NAP","0");
INSERT INTO inv_partybalance VALUES("253","IS-CW196","10","2022-05-12","2235","34","PA-355","47500","0","","IS-CW196","NAP","0");
INSERT INTO inv_partybalance VALUES("254","IS-CW197","10","2022-05-12","2236","34","PA-344","59600","0","","IS-CW197","NAP","0");
INSERT INTO inv_partybalance VALUES("255","IS-CW198","10","2022-05-13","2241","34","PA-406","76000","0","","IS-CW198","NAP","0");
INSERT INTO inv_partybalance VALUES("256","IS-CW199","10","2022-05-13","2242","34","PA-019","14500","0","","IS-CW199","NAP","0");
INSERT INTO inv_partybalance VALUES("257","IS-CW200","10","2022-05-13","2244","34","PA-344","39600","0","","IS-CW200","NAP","0");
INSERT INTO inv_partybalance VALUES("258","IS-CW201","10","2022-05-13","2245","34","PA-385","64000","0","","IS-CW201","NAP","0");
INSERT INTO inv_partybalance VALUES("259","IS-CW202","10","2022-05-13","2246","34","PA-383","45000","0","","IS-CW202","NAP","0");
INSERT INTO inv_partybalance VALUES("261","IS-CW204","10","2022-05-11","2230","34","PA-418","14500","0","","IS-CW204","NAP","0");
INSERT INTO inv_partybalance VALUES("262","IS-CW205","10","2022-05-12","2231","34","PA-408","44000","0","","IS-CW205","NAP","0");
INSERT INTO inv_partybalance VALUES("263","IS-CW206","10","2022-05-12","2232","34","PA-408","44500","0","","IS-CW206","NAP","0");
INSERT INTO inv_partybalance VALUES("264","IS-CW207","10","2022-05-12","2237","34","PA-342","92000","0","","IS-CW207","NAP","0");
INSERT INTO inv_partybalance VALUES("265","IS-CW208","10","2022-05-12","2238","34","PA-352","115920","0","","IS-CW208","NAP","0");
INSERT INTO inv_partybalance VALUES("266","IS-CW209","10","2022-05-12","2240","34","PA-356","18400","0","","IS-CW209","NAP","0");
INSERT INTO inv_partybalance VALUES("267","IS-CW210","10","2022-05-13","2243","34","PA-407","46500","0","","IS-CW210","NAP","0");
INSERT INTO inv_partybalance VALUES("268","VID-028","10","2022-05-01","0","39","PA-038","0","180000","","VID-028","Shahadat","0");
INSERT INTO inv_partybalance VALUES("269","VID-029","10","2022-05-01","0","39","PA-045","0","23000","","VID-029","Shahadat","0");
INSERT INTO inv_partybalance VALUES("270","VID-030","10","2022-05-01","0","39","PA-029","0","45000","","VID-030","Shahadat","0");
INSERT INTO inv_partybalance VALUES("271","VID-031","10","2022-05-01","0","32","PA-104","0","5000","","VID-031","Anower","0");
INSERT INTO inv_partybalance VALUES("272","VID-032","10","2022-05-01","0","32","PA-008","0","2000","","VID-032","Anower","0");
INSERT INTO inv_partybalance VALUES("273","VID-033","10","2022-05-01","0","32","PA-109","0","14800","","VID-033","Anower","0");
INSERT INTO inv_partybalance VALUES("274","VID-034","10","2022-05-01","0","34","PA-397","0","175000","","VID-034","Resel","0");
INSERT INTO inv_partybalance VALUES("275","VID-035","10","2022-05-01","0","36","PA-294","0","88000","","VID-035","Ohid","0");
INSERT INTO inv_partybalance VALUES("276","VID-036","10","2022-05-01","0","35","PA-159","0","60000","","VID-036","Maruf","0");
INSERT INTO inv_partybalance VALUES("277","VID-037","10","2022-05-01","0","34","PA-406","0","44500","","VID-037","Rasel2","0");
INSERT INTO inv_partybalance VALUES("278","VID-038","10","2022-05-01","0","34","PA-392","0","61800","","VID-038","Rasel2","0");
INSERT INTO inv_partybalance VALUES("279","VID-039","10","2022-05-01","0","34","PA-345","0","20000","","VID-039","Resel","0");
INSERT INTO inv_partybalance VALUES("280","VID-040","10","2022-05-01","0","39","PA-045","0","29600","","VID-040","Liton","0");
INSERT INTO inv_partybalance VALUES("281","VID-041","10","2022-05-01","0","34","PA-405","0","50000","","VID-041","DBBL(H)","0");
INSERT INTO inv_partybalance VALUES("282","VID-042","10","2022-05-07","0","32","PA-010","0","10000","","VID-042","Anower","0");
INSERT INTO inv_partybalance VALUES("283","VID-043","10","2022-05-07","0","34","PA-361","0","38100","","VID-043","Rasel2","0");
INSERT INTO inv_partybalance VALUES("284","VID-044","10","2022-05-07","0","42","PA-185","0","29600","","VID-044","zakir","0");
INSERT INTO inv_partybalance VALUES("285","VID-045","10","2022-05-07","0","36","PA-269","0","84500","","VID-045","Ohid","0");
INSERT INTO inv_partybalance VALUES("286","VID-046","10","2022-05-07","0","31","PA-049","0","26800","","VID-046","Aziz","0");
INSERT INTO inv_partybalance VALUES("287","VID-047","10","2022-05-07","0","31","PA-066","0","18000","","VID-047","Aziz","0");
INSERT INTO inv_partybalance VALUES("288","VID-048","10","2022-05-07","0","31","PA-337","0","96000","","VID-048","Aziz","0");
INSERT INTO inv_partybalance VALUES("289","VID-049","10","2022-05-07","0","34","PA-345","0","20000","","VID-049","Rasel2","0");
INSERT INTO inv_partybalance VALUES("290","VID-050","10","2022-05-08","0","32","PA-008","0","29800","","VID-050","Anower","0");
INSERT INTO inv_partybalance VALUES("291","VID-051","10","2022-05-08","0","41","PA-169","0","370000","","VID-051","Check Pass","0");
INSERT INTO inv_partybalance VALUES("292","VID-052","10","2022-05-08","0","39","PA-040","0","100000","","VID-052","IBBL","0");
INSERT INTO inv_partybalance VALUES("293","VID-053","10","2022-05-08","0","35","PA-424","0","15000","","VID-053","IBBL","0");
INSERT INTO inv_partybalance VALUES("294","VID-054","10","2022-05-08","0","35","PA-244","0","50000","","VID-054","IBBL","0");
INSERT INTO inv_partybalance VALUES("295","VID-055","10","2022-05-08","0","41","PA-155","0","43000","","VID-055","Check Pass","0");
INSERT INTO inv_partybalance VALUES("296","VID-056","10","2022-05-08","0","41","PA-155","0","150000","","VID-056","Check Pass","0");
INSERT INTO inv_partybalance VALUES("297","VID-057","10","2022-05-08","0","34","PA-405","0","80000","","VID-057","DBBL(H)","0");
INSERT INTO inv_partybalance VALUES("298","VID-058","10","2022-05-08","0","31","PA-067","0","45000","","VID-058","BBL","0");
INSERT INTO inv_partybalance VALUES("299","VID-059","10","2022-05-08","0","31","PA-250","0","227000","","VID-059","IBBL(A)","0");
INSERT INTO inv_partybalance VALUES("300","VID-060","10","2022-05-08","0","34","PA-365","0","63000","","VID-060","Rasel2","0");
INSERT INTO inv_partybalance VALUES("301","VID-061","10","2022-05-08","0","41","PA-170","0","141200","","VID-061","Saiful","0");
INSERT INTO inv_partybalance VALUES("302","VID-062","10","2022-05-08","0","36","PA-296","0","142000","","VID-062","Ohid","0");
INSERT INTO inv_partybalance VALUES("303","VID-063","10","2022-05-08","0","33","PA-165","0","206900","","VID-063","Saiful","0");
INSERT INTO inv_partybalance VALUES("304","VID-064","10","2022-05-08","0","42","PA-184","0","128800","","VID-064","Zakir","0");
INSERT INTO inv_partybalance VALUES("305","VID-065","10","2022-05-08","0","36","PA-300","0","253500","","VID-065","Ohid","0");
INSERT INTO inv_partybalance VALUES("306","VID-066","10","2022-05-08","0","34","PA-387","0","40000","","VID-066","Rasel2","0");
INSERT INTO inv_partybalance VALUES("307","VID-067","10","2022-05-08","0","33","PA-130","0","258100","","VID-067","Saiful","0");
INSERT INTO inv_partybalance VALUES("308","VID-068","10","2022-05-08","0","33","PA-014","0","200000","","VID-068","Saiful","0");
INSERT INTO inv_partybalance VALUES("309","VID-069","10","2022-05-08","0","40","PA-334","0","94000","","VID-069","Miraj","0");
INSERT INTO inv_partybalance VALUES("310","VID-070","10","2022-05-08","0","31","PA-085","0","39200","","VID-070","Aziz","0");
INSERT INTO inv_partybalance VALUES("311","VID-071","10","2022-05-08","0","31","PA-089","0","80500","","VID-071","Aziz","0");
INSERT INTO inv_partybalance VALUES("312","VID-072","10","2022-05-09","0","40","PA-329","0","10000","","VID-072","Miraj","0");
INSERT INTO inv_partybalance VALUES("313","VID-073","10","2022-05-09","0","40","PA-329","0","7140","","VID-073","Miraj","0");
INSERT INTO inv_partybalance VALUES("314","VID-074","10","2022-05-09","0","40","PA-329","0","2860","Loking Glass","VID-074","Mamun","0");
INSERT INTO inv_partybalance VALUES("315","VID-075","10","2022-05-09","0","34","PA-423","0","20000","","VID-075","Resel","0");
INSERT INTO inv_partybalance VALUES("316","VID-076","10","2022-05-09","0","40","PA-333","0","27600","","VID-076","Miraj","0");
INSERT INTO inv_partybalance VALUES("317","VID-077","10","2022-05-09","0","42","PA-185","0","46800","","VID-077","","0");
INSERT INTO inv_partybalance VALUES("318","VID-078","10","2022-05-09","0","35","PA-178","0","34000","","VID-078","Check Pass","0");
INSERT INTO inv_partybalance VALUES("319","VID-079","10","2022-05-09","0","34","PA-379","0","110000","","VID-079","Check Pass","0");
INSERT INTO inv_partybalance VALUES("320","VID-080","10","2022-05-09","0","33","PA-013","0","41700","","VID-080","IBBL","0");
INSERT INTO inv_partybalance VALUES("321","VID-081","10","2022-05-09","0","40","PA-333","0","45000","","VID-081","IBBL","0");
INSERT INTO inv_partybalance VALUES("322","VID-082","10","2022-05-09","0","39","PA-034","0","100000","","VID-082","IBBL","0");
INSERT INTO inv_partybalance VALUES("323","VID-083","10","2022-05-09","0","35","PA-245","0","90000","","VID-083","BBL","0");
INSERT INTO inv_partybalance VALUES("324","VID-084","10","2022-05-09","0","39","PA-033","0","50000","","VID-084","BBL","0");
INSERT INTO inv_partybalance VALUES("325","VID-085","10","2022-05-09","0","31","PA-004","0","180000","","VID-085","BBL","0");
INSERT INTO inv_partybalance VALUES("326","VID-086","10","2022-05-09","0","41","PA-167","0","100000","","VID-086","Faruk2","0");
INSERT INTO inv_partybalance VALUES("327","VID-087","10","2022-05-09","0","31","PA-062","0","9300","","VID-087","BBL","0");
INSERT INTO inv_partybalance VALUES("328","VID-088","10","2022-05-09","0","40","PA-329","0","27600","","VID-088","Miraj","0");
INSERT INTO inv_partybalance VALUES("329","VID-089","10","2022-05-09","0","42","PA-185","0","29600","","VID-089","Rasel2","0");
INSERT INTO inv_partybalance VALUES("330","VID-090","10","2022-05-09","0","34","PA-345","0","60000","","VID-090","Azumul","0");
INSERT INTO inv_partybalance VALUES("331","VID-091","10","2022-05-09","0","41","PA-155","0","65500","","VID-091","Saiful","0");
INSERT INTO inv_partybalance VALUES("332","VID-092","10","2022-05-09","0","33","PA-115","0","90000","","VID-092","Saiful","0");
INSERT INTO inv_partybalance VALUES("333","VID-093","10","2022-05-09","0","36","PA-267","0","14400","","VID-093","Ohid","0");
INSERT INTO inv_partybalance VALUES("334","VID-094","10","2022-05-09","0","34","PA-379","0","10000","","VID-094","Rasel2","0");
INSERT INTO inv_partybalance VALUES("335","VID-095","10","2022-05-10","0","33","PA-132","0","140000","","VID-095","Check Pass","0");
INSERT INTO inv_partybalance VALUES("336","VID-096","10","2022-05-10","0","41","PA-012","0","312800","","VID-096","Check Pass","0");
INSERT INTO inv_partybalance VALUES("337","VID-097","10","2022-05-10","0","32","PA-007","0","150000","","VID-097","PBL","0");
INSERT INTO inv_partybalance VALUES("338","VID-098","10","2022-05-10","0","37","PA-149","0","50000","","VID-098","BBL","0");
INSERT INTO inv_partybalance VALUES("339","VID-099","10","2022-05-10","0","31","PA-064","0","43000","","VID-099","Aziz","0");
INSERT INTO inv_partybalance VALUES("340","VID-100","10","2022-05-10","0","34","PA-383","0","50000","","VID-100","Azimul","0");
INSERT INTO inv_partybalance VALUES("341","VID-101","10","2022-05-10","0","34","PA-372","0","25000","","VID-101","Rasel2","0");
INSERT INTO inv_partybalance VALUES("342","VID-102","10","2022-05-10","0","34","PA-345","0","85000","","VID-102","Azimul","0");
INSERT INTO inv_partybalance VALUES("343","VID-103","10","2022-05-10","0","34","PA-412","0","45000","","VID-103","Rasel2","0");
INSERT INTO inv_partybalance VALUES("344","VID-104","10","2022-05-10","0","41","PA-167","0","86400","","VID-104","Saiful","0");
INSERT INTO inv_partybalance VALUES("345","VID-105","10","2022-05-10","0","31","PA-059","0","312300","","VID-105","Aziz","0");
INSERT INTO inv_partybalance VALUES("346","VID-106","10","2022-05-10","0","36","PA-269","0","28800","","VID-106","Ohid","0");
INSERT INTO inv_partybalance VALUES("347","VID-107","10","2022-05-10","0","31","PA-049","0","84800","","VID-107","Aziz","0");
INSERT INTO inv_partybalance VALUES("348","VID-108","10","2022-05-10","0","31","PA-060","0","15600","","VID-108","Aziz","0");
INSERT INTO inv_partybalance VALUES("349","VID-109","10","2022-05-10","0","31","PA-064","0","27900","","VID-109","Aziz","0");
INSERT INTO inv_partybalance VALUES("350","VID-110","10","2022-05-10","0","35","PA-177","0","60000","","VID-110","Maruf","0");
INSERT INTO inv_partybalance VALUES("351","VID-111","10","2022-05-10","0","37","PA-011","0","200000","","VID-111","AIBL","0");
INSERT INTO inv_partybalance VALUES("352","VID-112","10","2022-05-11","0","32","PA-010","0","20000","","VID-112","Anower","0");
INSERT INTO inv_partybalance VALUES("353","VID-113","10","2022-05-11","0","32","PA-425","0","110000","","VID-113","Anower","0");
INSERT INTO inv_partybalance VALUES("354","VID-114","10","2022-05-11","0","41","PA-155","0","100000","","VID-114","Check Pass","0");
INSERT INTO inv_partybalance VALUES("355","VID-115","10","2022-05-11","0","37","PA-149","0","50000","","VID-115","BBL","0");
INSERT INTO inv_partybalance VALUES("356","VID-116","10","2022-05-11","0","34","PA-411","0","56000","","VID-116","IBBL","0");
INSERT INTO inv_partybalance VALUES("357","VID-117","10","2022-05-11","0","34","PA-379","0","100000","","VID-117","IBBL","0");
INSERT INTO inv_partybalance VALUES("358","VID-118","10","2022-05-11","0","31","PA-250","0","158000","","VID-118","IBBL","0");
INSERT INTO inv_partybalance VALUES("359","VID-119","10","2022-05-11","0","34","PA-410","0","46000","","VID-119","Rasel2","0");
INSERT INTO inv_partybalance VALUES("360","VID-120","10","2022-05-11","0","34","PA-385","0","16000","","VID-120","Rasel2","0");
INSERT INTO inv_partybalance VALUES("361","VID-121","10","2022-05-11","0","34","PA-374","0","89200","","VID-121","Resel","0");
INSERT INTO inv_partybalance VALUES("362","VID-122","10","2022-05-11","0","34","PA-345","0","20000","","VID-122","Rasel2","0");
INSERT INTO inv_partybalance VALUES("363","VID-123","10","2022-05-11","0","34","PA-383","0","50000","","VID-123","Rasel2","0");
INSERT INTO inv_partybalance VALUES("364","VID-124","10","2022-05-11","0","34","PA-019","0","29000","","VID-124","Rasel2","0");
INSERT INTO inv_partybalance VALUES("365","VID-125","10","2022-05-11","0","36","PA-294","0","264000","","VID-125","Ohid","0");
INSERT INTO inv_partybalance VALUES("366","VID-126","10","2022-05-11","0","34","PA-397","0","101500","","VID-126","Rasel2","0");
INSERT INTO inv_partybalance VALUES("367","VID-127","10","2022-05-11","0","34","PA-360","0","101500","","VID-127","Rasel2","0");
INSERT INTO inv_partybalance VALUES("368","VID-128","10","2022-05-11","0","42","PA-186","0","235000","","VID-128","Saiful","0");
INSERT INTO inv_partybalance VALUES("369","VID-129","10","2022-05-11","0","41","PA-183","0","98000","","VID-129","Saiful","0");
INSERT INTO inv_partybalance VALUES("370","VID-130","10","2022-05-11","0","31","PA-064","0","27750","","VID-130","Aziz","0");
INSERT INTO inv_partybalance VALUES("371","VID-131","10","2022-05-12","0","34","PA-408","0","30000","","VID-131","Rasel2","0");
INSERT INTO inv_partybalance VALUES("372","VID-132","10","2022-05-12","0","35","PA-181","0","90000","","VID-132","Maruf","0");
INSERT INTO inv_partybalance VALUES("373","VID-133","10","2022-05-12","0","35","PA-180","0","119000","","VID-133","Maruf","0");
INSERT INTO inv_partybalance VALUES("374","VID-134","10","2022-05-12","0","34","PA-408","0","20000","","VID-134","Rasel2","0");
INSERT INTO inv_partybalance VALUES("375","VID-135","10","2022-05-12","0","32","PA-105","0","29200","","VID-135","Anower","0");
INSERT INTO inv_partybalance VALUES("376","VID-136","10","2022-05-12","0","31","PA-088","0","35000","","VID-136","BBL","0");
INSERT INTO inv_partybalance VALUES("377","VID-137","10","2022-05-12","0","31","PA-071","0","185000","","VID-137","BBL","0");
INSERT INTO inv_partybalance VALUES("378","VID-138","10","2022-05-12","0","37","PA-149","0","50000","","VID-138","BBL","0");
INSERT INTO inv_partybalance VALUES("379","VID-139","10","2022-05-12","0","39","PA-021","0","100000","","VID-139","PBL","0");
INSERT INTO inv_partybalance VALUES("380","VID-140","10","2022-05-12","0","41","PA-435","0","150000","","VID-140","Check Pass","0");
INSERT INTO inv_partybalance VALUES("381","VID-141","10","2022-05-12","0","37","PA-146","0","100000","","VID-141","PBL","0");
INSERT INTO inv_partybalance VALUES("382","VID-142","10","2022-05-12","0","31","PA-070","0","50000","","VID-142","IBBL(A)","0");
INSERT INTO inv_partybalance VALUES("383","VID-143","10","2022-05-12","0","31","PA-080","0","43000","","VID-143","IBBL(A)","0");
INSERT INTO inv_partybalance VALUES("384","VID-144","10","2022-05-12","0","31","PA-066","0","300000","","VID-144","IBBL","0");
INSERT INTO inv_partybalance VALUES("385","VID-145","10","2022-05-12","0","39","PA-040","0","70000","","VID-145","IBBL","0");
INSERT INTO inv_partybalance VALUES("386","VID-146","10","2022-05-12","0","34","PA-343","0","46000","","VID-146","IBBL","0");
INSERT INTO inv_partybalance VALUES("387","VID-147","10","2022-05-12","0","35","PA-248","0","50000","","VID-147","IBBL","0");
INSERT INTO inv_partybalance VALUES("388","VID-148","10","2022-05-12","0","38","PA-173","0","150000","","VID-148","IBBL","0");
INSERT INTO inv_partybalance VALUES("389","VID-149","10","2022-05-12","0","41","PA-182","0","425000","","VID-149","Check Pass","0");
INSERT INTO inv_partybalance VALUES("390","VID-150","10","2022-05-12","0","38","PA-194","0","300000","","VID-150","IBBL","0");
INSERT INTO inv_partybalance VALUES("391","VID-151","10","2022-05-12","0","42","PA-185","0","47000","","VID-151","Rasel2","0");
INSERT INTO inv_partybalance VALUES("392","VID-152","10","2022-05-12","0","38","PA-173","0","50000","","VID-152","IBBL","0");
INSERT INTO inv_partybalance VALUES("393","VID-153","10","2022-05-12","0","31","PA-082","0","10000","","VID-153","Aziz","0");
INSERT INTO inv_partybalance VALUES("394","VID-154","10","2022-05-12","0","34","PA-385","0","19200","","VID-154","Rasel2","0");
INSERT INTO inv_partybalance VALUES("395","VID-155","10","2022-05-12","0","34","PA-344","0","59600","","VID-155","Azimul","0");
INSERT INTO inv_partybalance VALUES("396","VID-156","10","2022-05-12","0","34","PA-383","0","50000","","VID-156","Azimul","0");
INSERT INTO inv_partybalance VALUES("397","VID-157","10","2022-05-12","0","34","PA-403","0","206800","","VID-157","Rasel2","0");
INSERT INTO inv_partybalance VALUES("398","VID-158","10","2022-05-12","0","34","PA-342","0","95000","","VID-158","Rasel2","0");
INSERT INTO inv_partybalance VALUES("399","VID-159","10","2022-05-12","0","34","PA-356","0","18400","","VID-159","Rasel2","0");
INSERT INTO inv_partybalance VALUES("400","VID-160","10","2022-05-12","0","34","PA-352","0","20900","","VID-160","Rasel2","0");
INSERT INTO inv_partybalance VALUES("401","VID-161","10","2022-05-12","0","34","PA-406","0","20000","","VID-161","Rasel2","0");
INSERT INTO inv_partybalance VALUES("402","VID-162","10","2022-05-12","0","34","PA-355","0","47500","","VID-162","Rasel2","0");
INSERT INTO inv_partybalance VALUES("403","VID-163","10","2022-05-12","0","36","PA-269","0","70000","","VID-163","Ohid","0");
INSERT INTO inv_partybalance VALUES("404","VID-164","10","2022-05-12","0","36","PA-292","0","46500","","VID-164","Ohid","0");
INSERT INTO inv_partybalance VALUES("405","VID-165","10","2022-05-12","0","36","PA-269","0","78300","","VID-165","Ohid","0");
INSERT INTO inv_partybalance VALUES("406","VID-166","10","2022-05-12","0","38","PA-175","0","166200","","VID-166","faruk3","0");
INSERT INTO inv_partybalance VALUES("407","VID-167","10","2022-05-12","0","35","PA-181","0","127000","","VID-167","faruk3","0");
INSERT INTO inv_partybalance VALUES("408","VID-168","10","2022-05-12","0","35","PA-180","0","242000","","VID-168","Maruf","0");
INSERT INTO inv_partybalance VALUES("409","VID-169","10","2022-05-12","0","31","PA-064","0","8150","","VID-169","Aziz","0");
INSERT INTO inv_partybalance VALUES("410","VID-170","10","2022-05-12","0","31","PA-067","0","50000","","VID-170","Aziz","0");
INSERT INTO inv_partybalance VALUES("420","IS-CW211","10","2022-05-01","2295","36","PA-294","88000","0","","IS-CW211","","0");
INSERT INTO inv_partybalance VALUES("422","IS-CW213","10","2022-05-08","2297","36","PA-300","253500","0","","IS-CW213","","0");
INSERT INTO inv_partybalance VALUES("423","IS-CW214","10","2022-05-08","2298","36","PA-296","142000","0","","IS-CW214","","0");
INSERT INTO inv_partybalance VALUES("424","IS-CW215","10","2022-05-09","2299","36","PA-267","14400","0","","IS-CW215","","0");
INSERT INTO inv_partybalance VALUES("425","IS-CW216","10","2022-05-10","2300","36","PA-269","28800","0","","IS-CW216","","0");
INSERT INTO inv_partybalance VALUES("426","IS-CW218","10","2022-05-17","3764","36","PA-017","54300","0","","IS-CW218","NAP","0");
INSERT INTO inv_partybalance VALUES("427","IS-CW219","10","2022-05-17","3765","36","PA-262","56000","0","","IS-CW219","NAP","0");
INSERT INTO inv_partybalance VALUES("428","IS-CW220","10","2022-05-18","3766","36","PA-294","279000","0","","IS-CW220","NAP","0");
INSERT INTO inv_partybalance VALUES("429","IS-CW221","10","2022-05-18","3767","36","PA-269","79800","0","","IS-CW221","NAP","0");
INSERT INTO inv_partybalance VALUES("430","IS-CW222","10","2022-05-18","3768","36","PA-306","153000","0","","IS-CW222","NAP","0");
INSERT INTO inv_partybalance VALUES("431","IS-CW223","10","2022-05-18","3769","36","PA-269","64500","0","","IS-CW223","NAP","0");
INSERT INTO inv_partybalance VALUES("432","IS-CW224","10","2022-05-18","3770","36","PA-297","16500","0","","IS-CW224","NAP","0");
INSERT INTO inv_partybalance VALUES("433","IS-CW225","10","2022-05-19","3771","36","PA-294","264000","0","","IS-CW225","NAP","0");
INSERT INTO inv_partybalance VALUES("434","IS-CW226","10","2022-05-19","3772","36","PA-017","58800","0","","IS-CW226","NAP","0");
INSERT INTO inv_partybalance VALUES("435","IS-CW227","10","2022-05-19","3773","36","PA-297","45500","0","","IS-CW227","NAP","0");
INSERT INTO inv_partybalance VALUES("436","IS-CW228","10","2022-05-19","3774","36","PA-293","14500","0","","IS-CW228","NAP","0");
INSERT INTO inv_partybalance VALUES("437","IS-CW229","10","2022-05-21","3375","36","PA-016","47500","0","","IS-CW229","NAP","0");
INSERT INTO inv_partybalance VALUES("438","IS-CW230","10","2022-05-21","3777","36","PA-275","87000","0","","IS-CW230","NAP","0");
INSERT INTO inv_partybalance VALUES("439","IS-CW231","10","2022-05-21","3778","36","PA-269","62800","0","","IS-CW231","NAP","0");
INSERT INTO inv_partybalance VALUES("440","IS-CW232","10","2022-05-22","3780","36","PA-294","88000","0","","IS-CW232","NAP","0");
INSERT INTO inv_partybalance VALUES("441","IS-CW233","10","2022-05-22","3781","36","PA-307","46000","0","","IS-CW233","NAP","0");
INSERT INTO inv_partybalance VALUES("442","IS-CW203","10","2022-05-10","2216","34","PA-409","36000","0","","IS-CW203","","0");
INSERT INTO inv_partybalance VALUES("443","IS-CW195","10","2022-05-12","2234","34","PA-406","20000","0","","IS-CW195","","0");
INSERT INTO inv_partybalance VALUES("444","VID-171","10","2022-05-13","0","34","PA-408","0","38000","","VID-171","Rasel2","0");
INSERT INTO inv_partybalance VALUES("445","VID-172","10","2022-05-13","0","34","PA-385","0","64000","","VID-172","Rasel2","0");
INSERT INTO inv_partybalance VALUES("446","VID-173","10","2022-05-13","0","34","PA-406","0","76000","","VID-173","Rasel2","0");
INSERT INTO inv_partybalance VALUES("447","VID-174","10","2022-05-13","0","34","PA-019","0","20500","","VID-174","Resel","0");
INSERT INTO inv_partybalance VALUES("448","VID-175","10","2022-05-13","0","34","PA-407","0","46500","","VID-175","Rasel2","0");
INSERT INTO inv_partybalance VALUES("449","VID-176","10","2022-05-13","0","34","PA-383","0","50000","","VID-176","Rasel2","0");
INSERT INTO inv_partybalance VALUES("450","VID-177","10","2022-05-13","0","41","PA-166","0","640000","","VID-177","Saiful","0");
INSERT INTO inv_partybalance VALUES("451","VID-178","10","2022-05-13","0","31","PA-070","0","50000","","VID-178","Aziz","0");
INSERT INTO inv_partybalance VALUES("452","VID-179","10","2022-05-13","0","41","PA-189","0","138000","","VID-179","Saiful","0");
INSERT INTO inv_partybalance VALUES("453","VID-180","10","2022-05-13","0","41","PA-167","0","200000","","VID-180","Saiful","0");
INSERT INTO inv_partybalance VALUES("454","VID-181","10","2022-05-13","0","41","PA-442","0","72000","","VID-181","Saiful","0");
INSERT INTO inv_partybalance VALUES("455","VID-182","10","2022-05-14","0","32","PA-107","0","27300","","VID-182","Anower","0");
INSERT INTO inv_partybalance VALUES("456","VID-183","10","2022-05-14","0","32","PA-010","0","15000","","VID-183","Anower","0");
INSERT INTO inv_partybalance VALUES("457","VID-184","10","2022-05-14","0","32","PA-109","0","1900","","VID-184","Anower","0");
INSERT INTO inv_partybalance VALUES("458","VID-185","10","2022-05-14","0","41","PA-166","0","26000","","VID-185","Saiful","0");
INSERT INTO inv_partybalance VALUES("459","VID-186","10","2022-05-14","0","31","PA-250","0","107500","","VID-186","BBL","0");
INSERT INTO inv_partybalance VALUES("460","VID-187","10","2022-05-14","0","34","PA-345","0","135000","","VID-187","Azimul","0");
INSERT INTO inv_partybalance VALUES("461","VID-188","10","2022-05-14","0","34","PA-383","0","50000","","VID-188","Azimul","0");
INSERT INTO inv_partybalance VALUES("462","VID-189","10","2022-05-14","0","34","PA-344","0","56000","","VID-189","Azimul","0");
INSERT INTO inv_partybalance VALUES("463","VID-190","10","2022-05-14","0","34","PA-412","0","51600","","VID-190","Rasel2","0");
INSERT INTO inv_partybalance VALUES("464","VID-191","10","2022-05-14","0","34","PA-348","0","10000","","VID-191","Rasel2","0");
INSERT INTO inv_partybalance VALUES("465","VID-192","10","2022-05-14","0","36","PA-296","0","194000","","VID-192","Ohid","0");
INSERT INTO inv_partybalance VALUES("466","VID-193","10","2022-05-14","0","36","PA-267","0","7200","","VID-193","Ohid","0");
INSERT INTO inv_partybalance VALUES("467","VID-194","10","2022-05-14","0","36","PA-017","0","58800","","VID-194","Ohid","0");
INSERT INTO inv_partybalance VALUES("468","VID-195","10","2022-05-14","0","34","PA-397","0","164000","","VID-195","Rasel2","0");
INSERT INTO inv_partybalance VALUES("469","VID-196","10","2022-05-14","0","36","PA-294","0","125900","","VID-196","Ohid","0");
INSERT INTO inv_partybalance VALUES("470","VID-197","10","2022-05-14","0","42","PA-260","0","5000","","VID-197","Ohid","0");
INSERT INTO inv_partybalance VALUES("471","VID-198","10","2022-05-14","0","34","PA-392","0","60950","","VID-198","Rasel2","0");
INSERT INTO inv_partybalance VALUES("472","VID-199","10","2022-05-14","0","31","PA-070","0","160000","","VID-199","Aziz","0");
INSERT INTO inv_partybalance VALUES("473","VID-200","10","2022-05-14","0","31","PA-057","0","21500","","VID-200","Aziz","0");
INSERT INTO inv_partybalance VALUES("474","VID-201","10","2022-05-15","0","32","PA-107","0","20000","","VID-201","Anower","0");
INSERT INTO inv_partybalance VALUES("475","VID-202","10","2022-05-15","0","39","PA-039","0","10000","","VID-202","Bkash","0");
INSERT INTO inv_partybalance VALUES("476","VID-203","10","2022-05-15","0","34","PA-361","0","30000","","VID-203","Rasel2","0");
INSERT INTO inv_partybalance VALUES("477","VID-204","10","2022-05-15","0","42","PA-185","0","29400","","VID-204","Ohid","0");
INSERT INTO inv_partybalance VALUES("478","VID-205","10","2022-05-15","0","40","PA-321","0","300000","","VID-205","Miraj","0");
INSERT INTO inv_partybalance VALUES("479","VID-206","10","2022-05-15","0","34","PA-408","0","3000","","VID-206","Rasel2","0");
INSERT INTO inv_partybalance VALUES("480","VID-207","10","2022-05-15","0","34","PA-403","0","224400","","VID-207","Rasel2","0");
INSERT INTO inv_partybalance VALUES("481","VID-208","10","2022-05-15","0","34","PA-414","0","10000","","VID-208","IBBL","0");
INSERT INTO inv_partybalance VALUES("482","VID-209","10","2022-05-15","0","34","PA-412","0","49800","","VID-209","Rasel2","0");
INSERT INTO inv_partybalance VALUES("483","VID-210","10","2022-05-15","0","34","PA-389","0","47500","","VID-210","Rasel2","0");
INSERT INTO inv_partybalance VALUES("484","VID-211","10","2022-05-15","0","39","PA-030","0","141000","","VID-211","Liton","0");
INSERT INTO inv_partybalance VALUES("485","VID-212","10","2022-05-15","0","34","PA-387","0","28500","","VID-212","Rasel2","0");
INSERT INTO inv_partybalance VALUES("486","VID-213","10","2022-05-15","0","41","PA-167","0","101500","","VID-213","Saiful","0");
INSERT INTO inv_partybalance VALUES("487","VID-214","10","2022-05-15","0","41","PA-012","0","9000","","VID-214","Saiful","0");
INSERT INTO inv_partybalance VALUES("488","VID-215","10","2022-05-15","0","34","PA-355","0","30000","","VID-215","Rasel2","0");
INSERT INTO inv_partybalance VALUES("489","VID-216","10","2022-05-15","0","34","PA-368","0","20000","","VID-216","Rasel2","0");
INSERT INTO inv_partybalance VALUES("490","VID-217","10","2022-05-15","0","34","PA-345","0","130000","","VID-217","Azimul","0");
INSERT INTO inv_partybalance VALUES("491","VID-218","10","2022-05-15","0","34","PA-396","0","70000","","VID-218","Azimul","0");
INSERT INTO inv_partybalance VALUES("492","VID-219","10","2022-05-15","0","34","PA-383","0","50000","","VID-219","Rasel2","0");
INSERT INTO inv_partybalance VALUES("493","VID-220","10","2022-05-15","0","34","PA-344","0","28800","","VID-220","Azimul","0");
INSERT INTO inv_partybalance VALUES("494","VID-221","10","2022-05-15","0","34","PA-385","0","7000","","VID-221","Rasel2","0");
INSERT INTO inv_partybalance VALUES("495","VID-222","10","2022-05-15","0","36","PA-297","0","47500","","VID-222","Ohid","0");
INSERT INTO inv_partybalance VALUES("496","VID-223","10","2022-05-15","0","36","PA-017","0","123400","","VID-223","Ohid","0");
INSERT INTO inv_partybalance VALUES("497","VID-224","10","2022-05-15","0","40","PA-334","0","61000","","VID-224","Miraj","0");
INSERT INTO inv_partybalance VALUES("498","VID-225","10","2022-05-15","0","33","PA-191","0","236750","","VID-225","Saiful","0");
INSERT INTO inv_partybalance VALUES("499","VID-226","10","2022-05-15","0","33","PA-115","0","130000","","VID-226","Saiful","0");
INSERT INTO inv_partybalance VALUES("500","VID-227","10","2022-05-15","0","39","PA-022","0","4100","","VID-227","Liton","0");
INSERT INTO inv_partybalance VALUES("501","VID-228","10","2022-05-15","0","31","PA-055","0","100000","","VID-228","Check Pass","0");
INSERT INTO inv_partybalance VALUES("502","VID-229","10","2022-05-15","0","35","PA-159","0","51900","","VID-229","Check Pass","0");
INSERT INTO inv_partybalance VALUES("503","VID-230","10","2022-06-06","0","41","PA-435","0","191000","","VID-230","DBBL(H)","0");
INSERT INTO inv_partybalance VALUES("504","IS-CW234","10","2022-05-11","2229","34","PA-374","89200","0","","IS-CW234","NAP","0");
INSERT INTO inv_partybalance VALUES("505","IS-CW235","10","2022-05-12","2238","34","PA-403","206800","0","","IS-CW235","NAP","0");
INSERT INTO inv_partybalance VALUES("506","IS-CW236","10","2022-05-13","2247","34","PA-397","164000","0","","IS-CW236","NAP","0");
INSERT INTO inv_partybalance VALUES("507","IS-CW237","10","2022-05-14","2248","34","PA-392","60950","0","","IS-CW237","NAP","0");
INSERT INTO inv_partybalance VALUES("508","IS-CW238","10","2022-05-14","2249","34","PA-345","144900","0","","IS-CW238","NAP","0");
INSERT INTO inv_partybalance VALUES("509","IS-CW239","10","2022-05-14","2250","34","PA-383","101000","0","","IS-CW239","NAP","0");
INSERT INTO inv_partybalance VALUES("511","IS-CW241","10","2022-05-29","5631","31","PA-059","42300","0","","IS-CW241","NAP","0");
INSERT INTO inv_partybalance VALUES("512","IS-CW242","10","2022-05-29","5632","31","PA-082","150000","0","","IS-CW242","NAP","0");
INSERT INTO inv_partybalance VALUES("513","IS-CW243","10","2022-05-29","5633","31","PA-250","223500","0","","IS-CW243","NAP","0");
INSERT INTO inv_partybalance VALUES("514","IS-CW244","10","2022-05-30","5635","31","PA-250","129500","0","","IS-CW244","NAP","0");
INSERT INTO inv_partybalance VALUES("515","IS-CW245","10","2022-05-30","5638","31","PA-085","35240","0","","IS-CW245","NAP","0");
INSERT INTO inv_partybalance VALUES("516","IS-CW246","10","2022-05-30","5640","31","PA-088","107000","0","","IS-CW246","NAP","0");
INSERT INTO inv_partybalance VALUES("517","IS-CW247","10","2022-05-31","5643","31","PA-250","103600","0","","IS-CW247","NAP","0");
INSERT INTO inv_partybalance VALUES("519","IS-CW248","10","2022-05-10","4531","31","PA-064","27900","0","","IS-CW248","","0");
INSERT INTO inv_partybalance VALUES("520","IS-CW249","10","2022-05-10","4527","31","PA-049","84800","0","","IS-CW249","NAP","0");
INSERT INTO inv_partybalance VALUES("524","IS-CW212","10","2022-05-07","2296","36","PA-269","84500","0","","IS-CW212","","0");
INSERT INTO inv_partybalance VALUES("525","IS-CW217","10","2022-05-16","3762","36","PA-294","332600","0","","IS-CW217","","0");
INSERT INTO inv_partybalance VALUES("526","IS-CW251","10","2022-05-11","4534","31","PA-055","171200","0","","IS-CW251","NAP","0");
INSERT INTO inv_partybalance VALUES("527","IS-CW252","10","2022-05-12","4537","31","PA-064","8150","0","","IS-CW252","NAP","0");
INSERT INTO inv_partybalance VALUES("528","IS-CW253","10","2022-05-22","3782","36","PA-274","267000","0","","IS-CW253","NAP","0");
INSERT INTO inv_partybalance VALUES("529","IS-CW254","10","2022-05-22","3783","36","PA-262","39000","0","","IS-CW254","NAP","0");
INSERT INTO inv_partybalance VALUES("530","IS-CW255","10","2022-05-22","3785","36","PA-270","308000","0","","IS-CW255","NAP","0");
INSERT INTO inv_partybalance VALUES("532","IS-CW240","10","2022-05-08","4523","31","PA-064","42600","0","","IS-CW240","","0");
INSERT INTO inv_partybalance VALUES("533","IS-CW250","10","2022-05-10","4529","31","PA-060","15600","0","","IS-CW250","","0");
INSERT INTO inv_partybalance VALUES("534","IS-CW256","10","2022-06-06","3786","36","PA-263","258100","0","","IS-CW256","","0");
INSERT INTO inv_partybalance VALUES("535","IS-CW257","10","2022-06-07","247","45","PA-450","10000","1","PAID","IS-CW257","NAP","0");
INSERT INTO inv_partybalance VALUES("536","VID-231","10","2022-06-07","0","45","PA-450","0","9000","J","VID-231","HA","0");
INSERT INTO inv_partybalance VALUES("537","VID-232","10","2022-06-05","0","45","PA-450","0","52","fdsf","VID-232","fsd","0");
INSERT INTO inv_partybalance VALUES("538","IS-CW258","10","2022-06-05","0","45","PA-450","400","0","","IS-CW258","NAP","0");
INSERT INTO inv_partybalance VALUES("539","IS-CW259","10","2022-06-08","54","31","PA-097","200","0","","IS-CW259","NAP","0");
INSERT INTO inv_partybalance VALUES("540","VID-233","10","2022-06-08","0","31","PA-097","0","50","n","VID-233","Receiver Hasan. A/c:014785423","0");
INSERT INTO inv_partybalance VALUES("541","IS-MP001","18","2022-06-09","644","32","PA-425","80","0","","IS-MP001","NAP","0");
INSERT INTO inv_partybalance VALUES("542","IS-CW260","10","2022-06-12","55","31","PA-003","4000","0","","IS-CW260","NAP","0");
INSERT INTO inv_partybalance VALUES("543","VID-234","10","2022-06-12","0","32","PA-425","0","10","h","VID-234","Receiver Hasan. A/c:014785423","0");
INSERT INTO inv_partybalance VALUES("544","IS-CW261","10","2022-06-12","0","32","PA-425","200","0","","IS-CW261","NAP","0");



CREATE TABLE `inv_profitshare` (
  `billno` varchar(20) CHARACTER SET latin1 NOT NULL,
  `billdate` date NOT NULL,
  `partnerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ownerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partyid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `totalcur` float NOT NULL,
  `totalamount` float NOT NULL,
  `profitamount` float NOT NULL,
  `profitowneramount` float NOT NULL,
  `profitpatneramount` float NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`billno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO inv_profitshare VALUES("IS-CW001","2022-05-01","39","MM-1","PA-045","26800","29600","2800","1400","1400","10");
INSERT INTO inv_profitshare VALUES("IS-CW002","2022-05-08","33","MM-1","PA-165","197800","206900","9100","4550","4550","10");
INSERT INTO inv_profitshare VALUES("IS-CW003","2022-05-08","33","MM-1","PA-130","246500","258100","11600","5800","5800","10");
INSERT INTO inv_profitshare VALUES("IS-CW004","2022-05-08","33","MM-1","PA-115","84000","87000","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW005","2022-05-01","41","MM-1","PA-166","255000","265500","10500","5250","5250","10");
INSERT INTO inv_profitshare VALUES("IS-CW006","2022-05-01","41","MM-1","PA-167","394350","414740","20390","10195","10195","10");
INSERT INTO inv_profitshare VALUES("IS-CW007","2022-05-01","41","MM-1","PA-155","86000","93000","7000","3500","3500","10");
INSERT INTO inv_profitshare VALUES("IS-CW008","2022-05-01","41","MM-1","PA-168","16100","16600","500","250","250","10");
INSERT INTO inv_profitshare VALUES("IS-CW009","2022-05-08","41","MM-1","PA-170","179800","191200","11400","5700","5700","10");
INSERT INTO inv_profitshare VALUES("IS-CW010","2022-05-08","41","MM-1","PA-166","229500","240000","10500","5250","5250","10");
INSERT INTO inv_profitshare VALUES("IS-CW011","2022-05-08","41","MM-1","PA-168","127625","132150","4525","2262.5","2262.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW012","2022-05-09","41","MM-1","PA-155","378300","389500","11200","5600","5600","10");
INSERT INTO inv_profitshare VALUES("IS-CW013","2022-05-09","41","MM-1","PA-167","80400","86400","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW014","2022-05-09","41","MM-1","PA-012","204500","216500","12000","6000","6000","10");
INSERT INTO inv_profitshare VALUES("IS-CW015","2022-05-10","38","MM-1","PA-171","41250","43500","2250","1125","1125","10");
INSERT INTO inv_profitshare VALUES("IS-CW016","2022-05-10","38","MM-1","PA-172","28200","29300","1100","550","550","10");
INSERT INTO inv_profitshare VALUES("IS-CW017","2022-05-12","38","MM-1","PA-175","168000","174000","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW018","2022-05-09","35","MM-1","PA-176","7300","8000","700","350","350","10");
INSERT INTO inv_profitshare VALUES("IS-CW019","2022-05-10","35","MM-1","PA-177","85500","95000","9500","4750","4750","10");
INSERT INTO inv_profitshare VALUES("IS-CW020","2022-05-10","35","MM-1","PA-178","79200","91800","12600","6300","6300","10");
INSERT INTO inv_profitshare VALUES("IS-CW021","2022-05-11","35","MM-1","PA-179","88500","95000","6500","3250","3250","10");
INSERT INTO inv_profitshare VALUES("IS-CW022","2022-05-11","35","MM-1","PA-180","114750","119000","4250","2125","2125","10");
INSERT INTO inv_profitshare VALUES("IS-CW023","2022-05-11","35","MM-1","PA-181","70500","72500","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW024","2022-05-12","35","MM-1","PA-180","249650","257000","7350","3675","3675","10");
INSERT INTO inv_profitshare VALUES("IS-CW025","2022-05-11","41","MM-1","PA-182","430000","435000","5000","2500","2500","10");
INSERT INTO inv_profitshare VALUES("IS-CW026","2022-05-11","41","MM-1","PA-183","96300","98800","2500","1250","1250","10");
INSERT INTO inv_profitshare VALUES("IS-CW027","2022-05-09","32","MM-1","PA-010","30200","31200","1000","500","500","10");
INSERT INTO inv_profitshare VALUES("IS-CW028","2022-05-11","32","MM-1","PA-107","25800","27300","1500","750","750","10");
INSERT INTO inv_profitshare VALUES("IS-CW029","2022-05-11","32","MM-1","PA-010","16100","16600","500","250","250","10");
INSERT INTO inv_profitshare VALUES("IS-CW030","2022-05-12","32","MM-1","PA-105","28200","29200","1000","500","500","10");
INSERT INTO inv_profitshare VALUES("IS-CW031","2022-05-08","42","MM-1","PA-184","123200","128800","5600","2800","2800","10");
INSERT INTO inv_profitshare VALUES("IS-CW032","2022-05-07","42","MM-1","PA-185","27600","29600","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW033","2022-05-09","42","MM-1","PA-185","45000","46800","1800","900","900","10");
INSERT INTO inv_profitshare VALUES("IS-CW034","2022-05-09","42","MM-1","PA-185","27600","29600","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW035","2022-05-11","42","MM-1","PA-186","217175","235000","17825","8912.5","8912.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW036","2022-05-12","42","MM-1","PA-185","44500","47000","2500","1250","1250","10");
INSERT INTO inv_profitshare VALUES("IS-CW037","2022-05-08","41","MM-1","PA-169","447500","465000","17500","8750","8750","10");
INSERT INTO inv_profitshare VALUES("IS-CW038","2022-05-12","35","MM-1","PA-181","120700","125000","4300","2150","2150","10");
INSERT INTO inv_profitshare VALUES("IS-CW039","2022-05-11","38","MM-1","PA-173","545250","573250","28000","14000","14000","10");
INSERT INTO inv_profitshare VALUES("IS-CW040","2022-05-06","32","MM-1","PA-008","28200","29800","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW041","2022-04-28","41","MM-1","PA-183","50600","52500","1900","950","950","10");
INSERT INTO inv_profitshare VALUES("IS-CW042","2022-04-29","41","MM-1","PA-182","430000","440000","10000","5000","5000","10");
INSERT INTO inv_profitshare VALUES("IS-CW043","2022-04-28","41","MM-1","PA-189","77400","82700","5300","2650","2650","10");
INSERT INTO inv_profitshare VALUES("IS-CW044","2022-04-28","41","MM-1","PA-012","283200","297600","14400","7200","7200","10");
INSERT INTO inv_profitshare VALUES("IS-CW045","2022-04-30","41","MM-1","PA-166","698000","734000","36000","18000","18000","10");
INSERT INTO inv_profitshare VALUES("IS-CW046","2022-04-30","41","MM-1","PA-168","93400","96800","3400","1700","1700","10");
INSERT INTO inv_profitshare VALUES("IS-CW047","2022-04-30","41","MM-1","PA-190","97800","102500","4700","2350","2350","10");
INSERT INTO inv_profitshare VALUES("IS-CW048","2022-04-28","33","MM-1","PA-014","78000","80000","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW049","2022-04-30","33","MM-1","PA-118","172000","180000","8000","4000","4000","10");
INSERT INTO inv_profitshare VALUES("IS-CW050","2022-05-15","33","MM-1","PA-191","225950","236750","10800","5400","5400","10");
INSERT INTO inv_profitshare VALUES("IS-CW051","2022-05-15","33","MM-1","PA-115","118850","126800","7950","3975","3975","10");
INSERT INTO inv_profitshare VALUES("IS-CW052","2022-05-11","33","MM-1","PA-118","425000","450000","25000","12500","12500","10");
INSERT INTO inv_profitshare VALUES("IS-CW053","2022-05-18","33","MM-1","PA-122","68000","72800","4800","2400","2400","10");
INSERT INTO inv_profitshare VALUES("IS-CW054","2022-05-18","33","MM-1","PA-127","173000","185000","12000","6000","6000","10");
INSERT INTO inv_profitshare VALUES("IS-CW055","2022-05-18","33","MM-1","PA-125","110900","119400","8500","4250","4250","10");
INSERT INTO inv_profitshare VALUES("IS-CW056","2022-05-18","33","MM-1","PA-125","110900","119400","8500","4250","4250","10");
INSERT INTO inv_profitshare VALUES("IS-CW057","2022-05-21","33","MM-1","PA-129","169000","179000","10000","5000","5000","10");
INSERT INTO inv_profitshare VALUES("IS-CW058","2022-05-22","33","MM-1","PA-118","170000","180000","10000","5000","5000","10");
INSERT INTO inv_profitshare VALUES("IS-CW059","2022-05-19","33","MM-1","PA-014","400900","429400","28500","14250","14250","10");
INSERT INTO inv_profitshare VALUES("IS-CW060","2022-05-19","33","MM-1","PA-013","35150","39000","3850","1925","1925","10");
INSERT INTO inv_profitshare VALUES("IS-CW061","2022-05-21","33","MM-1","PA-014","206600","221100","14500","7250","7250","10");
INSERT INTO inv_profitshare VALUES("IS-CW062","2022-05-22","33","MM-1","PA-014","154400","165600","11200","5600","5600","10");
INSERT INTO inv_profitshare VALUES("IS-CW063","2022-05-22","33","MM-1","PA-111","52800","56800","4000","2000","2000","10");
INSERT INTO inv_profitshare VALUES("IS-CW064","2022-05-23","33","MM-1","PA-127","172000","184000","12000","6000","6000","10");
INSERT INTO inv_profitshare VALUES("IS-CW065","2022-05-23","33","MM-1","PA-014","396400","417200","20800","10400","10400","10");
INSERT INTO inv_profitshare VALUES("IS-CW066","2022-05-24","33","MM-1","PA-125","96800","103200","6400","3200","3200","10");
INSERT INTO inv_profitshare VALUES("IS-CW067","2022-05-24","33","MM-1","PA-014","79200","84000","4800","2400","2400","10");
INSERT INTO inv_profitshare VALUES("IS-CW068","2022-05-24","33","MM-1","PA-013","53200","57000","3800","1900","1900","10");
INSERT INTO inv_profitshare VALUES("IS-CW069","2022-05-25","33","MM-1","PA-191","273400","292000","18600","9300","9300","10");
INSERT INTO inv_profitshare VALUES("IS-CW070","2022-05-26","33","MM-1","PA-115","182500","191900","9400","4700","4700","10");
INSERT INTO inv_profitshare VALUES("IS-CW071","2022-05-24","33","MM-1","PA-165","232650","244750","12100","6050","6050","10");
INSERT INTO inv_profitshare VALUES("IS-CW072","2022-05-22","33","MM-1","PA-115","149100","159900","10800","5400","5400","10");
INSERT INTO inv_profitshare VALUES("IS-CW073","2022-05-17","38","MM-1","PA-195","43000","46000","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW074","2022-05-17","38","MM-1","PA-239","90000","91800","1800","900","900","10");
INSERT INTO inv_profitshare VALUES("IS-CW075","2022-05-18","38","MM-1","PA-208","117600","126000","8400","4200","4200","10");
INSERT INTO inv_profitshare VALUES("IS-CW076","2022-05-18","38","MM-1","PA-224","66400","69300","2900","1450","1450","10");
INSERT INTO inv_profitshare VALUES("IS-CW077","2022-05-20","38","MM-1","PA-173","166000","172000","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW078","2022-05-20","38","MM-1","PA-224","2850","3200","350","175","175","10");
INSERT INTO inv_profitshare VALUES("IS-CW079","2022-05-22","38","MM-1","PA-175","132800","139200","6400","3200","3200","10");
INSERT INTO inv_profitshare VALUES("IS-CW080","2022-05-22","38","MM-1","PA-208","7200","8200","1000","500","500","10");
INSERT INTO inv_profitshare VALUES("IS-CW081","2022-05-23","38","MM-1","PA-240","86000","90000","4000","2000","2000","10");
INSERT INTO inv_profitshare VALUES("IS-CW082","2022-05-25","38","MM-1","PA-173","336000","355000","19000","9500","9500","10");
INSERT INTO inv_profitshare VALUES("IS-CW083","2022-05-25","38","MM-1","PA-217","44250","46800","2550","1275","1275","10");
INSERT INTO inv_profitshare VALUES("IS-CW084","2022-05-13","35","MM-1","PA-163","123250","136000","12750","6375","6375","10");
INSERT INTO inv_profitshare VALUES("IS-CW085","2022-05-14","35","MM-1","PA-179","28200","29000","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW086","2022-05-16","35","MM-1","PA-241","9920","10700","780","390","390","10");
INSERT INTO inv_profitshare VALUES("IS-CW087","2022-05-17","35","MM-1","PA-242","206500","214000","7500","3750","3750","10");
INSERT INTO inv_profitshare VALUES("IS-CW088","2022-05-17","35","MM-1","PA-180","135700","138600","2900","1450","1450","10");
INSERT INTO inv_profitshare VALUES("IS-CW089","2022-05-18","35","MM-1","PA-243","447900","459700","11800","5900","5900","10");
INSERT INTO inv_profitshare VALUES("IS-CW090","2022-05-18","35","MM-1","PA-244","53425","57600","4175","2087.5","2087.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW091","2022-05-19","35","MM-1","PA-245","426750","474500","47750","23875","23875","10");
INSERT INTO inv_profitshare VALUES("IS-CW092","2022-05-19","35","MM-1","PA-020","28200","29000","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW093","2022-05-20","35","MM-1","PA-180","158900","162400","3500","1750","1750","10");
INSERT INTO inv_profitshare VALUES("IS-CW094","2022-05-23","35","MM-1","PA-163","288000","298500","10500","5250","5250","10");
INSERT INTO inv_profitshare VALUES("IS-CW095","2022-05-21","35","MM-1","PA-246","7460","8120","660","330","330","10");
INSERT INTO inv_profitshare VALUES("IS-CW096","2022-05-23","35","MM-1","PA-180","77400","80400","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW097","2022-05-23","35","MM-1","PA-181","88500","93000","4500","2250","2250","10");
INSERT INTO inv_profitshare VALUES("IS-CW098","2022-05-23","35","MM-1","PA-177","85500","89000","3500","1750","1750","10");
INSERT INTO inv_profitshare VALUES("IS-CW099","2022-05-23","35","MM-1","PA-244","133500","142700","9200","4600","4600","10");
INSERT INTO inv_profitshare VALUES("IS-CW100","2022-05-23","35","MM-1","PA-246","26400","28000","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW101","2022-05-24","35","MM-1","PA-243","454150","465850","11700","5850","5850","10");
INSERT INTO inv_profitshare VALUES("IS-CW102","2022-05-25","35","MM-1","PA-247","42750","43500","750","375","375","10");
INSERT INTO inv_profitshare VALUES("IS-CW103","2022-05-25","35","MM-1","PA-244","42500","49000","6500","3250","3250","10");
INSERT INTO inv_profitshare VALUES("IS-CW104","2022-05-27","35","MM-1","PA-180","229100","233950","4850","2425","2425","10");
INSERT INTO inv_profitshare VALUES("IS-CW105","2022-05-27","35","MM-1","PA-248","241100","246880","5780","2890","2890","10");
INSERT INTO inv_profitshare VALUES("IS-CW106","2022-05-27","35","MM-1","PA-178","49100","56700","7600","3800","3800","10");
INSERT INTO inv_profitshare VALUES("IS-CW107","2022-05-27","35","MM-1","PA-180","32000","32800","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW108","2022-05-27","35","MM-1","PA-249","26400","28000","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW109","2022-05-28","35","MM-1","PA-181","123900","130200","6300","3150","3150","10");
INSERT INTO inv_profitshare VALUES("IS-CW110","2022-05-28","38","MM-1","PA-171","42500","46500","4000","2000","2000","10");
INSERT INTO inv_profitshare VALUES("IS-CW111","2022-05-19","31","MM-1","PA-250","127500","141000","13500","6750","6750","10");
INSERT INTO inv_profitshare VALUES("IS-CW112","2022-05-20","31","MM-1","PA-004","232200","252000","19800","9900","9900","10");
INSERT INTO inv_profitshare VALUES("IS-CW113","2022-05-20","31","MM-1","PA-078","86000","94000","8000","4000","4000","10");
INSERT INTO inv_profitshare VALUES("IS-CW114","2022-05-20","31","MM-1","PA-335","17960","18700","740","370","370","10");
INSERT INTO inv_profitshare VALUES("IS-CW115","2022-05-22","31","MM-1","PA-059","151900","160800","8900","4450","4450","10");
INSERT INTO inv_profitshare VALUES("IS-CW116","2022-05-23","31","MM-1","PA-088","42500","49000","6500","3250","3250","10");
INSERT INTO inv_profitshare VALUES("IS-CW117","2022-05-23","31","MM-1","PA-097","62350","66800","4450","2225","2225","10");
INSERT INTO inv_profitshare VALUES("IS-CW118","2022-05-23","31","MM-1","PA-085","69200","78400","9200","4600","4600","10");
INSERT INTO inv_profitshare VALUES("IS-CW119","2022-05-23","31","MM-1","PA-335","17030","17700","670","335","335","10");
INSERT INTO inv_profitshare VALUES("IS-CW120","2022-05-23","31","MM-1","PA-064","44600","48080","3480","1740","1740","10");
INSERT INTO inv_profitshare VALUES("IS-CW121","2022-05-23","31","MM-1","PA-250","48000","49500","1500","750","750","10");
INSERT INTO inv_profitshare VALUES("IS-CW122","2022-05-25","31","MM-1","PA-250","170000","188000","18000","9000","9000","10");
INSERT INTO inv_profitshare VALUES("IS-CW123","2022-05-26","31","MM-1","PA-002","49600","53800","4200","2100","2100","10");
INSERT INTO inv_profitshare VALUES("IS-CW124","2022-05-26","31","MM-1","PA-067","32200","33500","1300","650","650","10");
INSERT INTO inv_profitshare VALUES("IS-CW125","2022-05-26","31","MM-1","PA-088","59300","68600","9300","4650","4650","10");
INSERT INTO inv_profitshare VALUES("IS-CW126","2022-05-26","31","MM-1","PA-053","40500","44000","3500","1750","1750","10");
INSERT INTO inv_profitshare VALUES("IS-CW127","2022-05-27","31","MM-1","PA-336","16100","17100","1000","500","500","10");
INSERT INTO inv_profitshare VALUES("IS-CW128","2022-05-27","31","MM-1","PA-250","64000","66000","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW129","2022-05-28","31","MM-1","PA-250","48000","49500","1500","750","750","10");
INSERT INTO inv_profitshare VALUES("IS-CW130","2022-05-29","31","MM-1","PA-089","64400","66000","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW131","2022-05-29","31","MM-1","PA-097","19100","20000","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW132","2022-05-29","31","MM-1","PA-064","23300","24000","700","350","350","10");
INSERT INTO inv_profitshare VALUES("IS-CW133","2022-05-23","31","MM-1","PA-077","14900","20000","5100","2550","2550","10");
INSERT INTO inv_profitshare VALUES("IS-CW134","2022-05-26","31","MM-1","PA-055","111400","120950","9550","4775","4775","10");
INSERT INTO inv_profitshare VALUES("IS-CW135","2022-05-26","31","MM-1","PA-080","93050","103450","10400","5200","5200","10");
INSERT INTO inv_profitshare VALUES("IS-CW136","2022-05-29","35","MM-1","PA-179","132750","142500","9750","4875","4875","10");
INSERT INTO inv_profitshare VALUES("IS-CW137","2022-05-29","35","MM-1","PA-242","136800","142400","5600","2800","2800","10");
INSERT INTO inv_profitshare VALUES("IS-CW138","2022-05-29","35","MM-1","PA-180","108925","112800","3875","1937.5","1937.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW139","2022-05-07","31","MM-1","PA-337","86000","96000","10000","5000","5000","10");
INSERT INTO inv_profitshare VALUES("IS-CW140","2022-05-08","31","MM-1","PA-085","34600","39200","4600","2300","2300","10");
INSERT INTO inv_profitshare VALUES("IS-CW141","2022-05-08","31","MM-1","PA-089","78500","80500","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW142","2022-05-08","31","MM-1","PA-250","198700","207500","8800","4400","4400","10");
INSERT INTO inv_profitshare VALUES("IS-CW143","2022-05-09","31","MM-1","PA-062","8250","9300","1050","525","525","10");
INSERT INTO inv_profitshare VALUES("IS-CW144","2022-05-10","31","MM-1","PA-059","310800","325600","14800","7400","7400","10");
INSERT INTO inv_profitshare VALUES("IS-CW145","2022-05-11","31","MM-1","PA-071","172000","184000","12000","6000","6000","10");
INSERT INTO inv_profitshare VALUES("IS-CW146","2022-05-11","31","MM-1","PA-064","26050","27750","1700","850","850","10");
INSERT INTO inv_profitshare VALUES("IS-CW147","2022-05-11","31","MM-1","PA-250","177300","190500","13200","6600","6600","10");
INSERT INTO inv_profitshare VALUES("IS-CW148","2022-05-12","31","MM-1","PA-066","252500","263101","10601","5300.5","5300.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW149","2022-05-12","31","MM-1","PA-067","44250","50000","5750","2875","2875","10");
INSERT INTO inv_profitshare VALUES("IS-CW150","2022-05-14","31","MM-1","PA-070","401250","450000","48750","24375","24375","10");
INSERT INTO inv_profitshare VALUES("IS-CW151","2022-05-14","31","MM-1","PA-057","19000","21500","2500","1250","1250","10");
INSERT INTO inv_profitshare VALUES("IS-CW152","2022-05-14","31","MM-1","PA-053","49650","54550","4900","2450","2450","10");
INSERT INTO inv_profitshare VALUES("IS-CW153","2022-05-14","31","MM-1","PA-250","44250","47500","3250","1625","1625","10");
INSERT INTO inv_profitshare VALUES("IS-CW154","2022-05-14","31","MM-1","PA-059","124500","132000","7500","3750","3750","10");
INSERT INTO inv_profitshare VALUES("IS-CW155","2022-05-17","31","MM-1","PA-071","128250","138000","9750","4875","4875","10");
INSERT INTO inv_profitshare VALUES("IS-CW156","2022-05-17","31","MM-1","PA-086","134500","150000","15500","7750","7750","10");
INSERT INTO inv_profitshare VALUES("IS-CW157","2022-05-17","31","MM-1","PA-338","85500","90000","4500","2250","2250","10");
INSERT INTO inv_profitshare VALUES("IS-CW158","2022-05-17","31","MM-1","PA-250","41000","44000","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW159","2022-05-18","31","MM-1","PA-059","186300","197350","11050","5525","5525","10");
INSERT INTO inv_profitshare VALUES("IS-CW160","2022-05-18","31","MM-1","PA-005","179000","196000","17000","8500","8500","10");
INSERT INTO inv_profitshare VALUES("IS-CW161","2022-05-18","31","MM-1","PA-250","202500","212000","9500","4750","4750","10");
INSERT INTO inv_profitshare VALUES("IS-CW162","2022-05-11","36","MM-1","PA-294","247500","264000","16500","8250","8250","10");
INSERT INTO inv_profitshare VALUES("IS-CW163","2022-05-12","36","MM-1","PA-269","113400","122300","8900","4450","4450","10");
INSERT INTO inv_profitshare VALUES("IS-CW164","2022-05-12","36","MM-1","PA-275","74250","78300","4050","2025","2025","10");
INSERT INTO inv_profitshare VALUES("IS-CW165","2022-05-12","36","MM-1","PA-292","43000","46500","3500","1750","1750","10");
INSERT INTO inv_profitshare VALUES("IS-CW166","2022-05-14","36","MM-1","PA-294","116700","125900","9200","4600","4600","10");
INSERT INTO inv_profitshare VALUES("IS-CW167","2022-05-14","36","MM-1","PA-296","180000","194000","14000","7000","7000","10");
INSERT INTO inv_profitshare VALUES("IS-CW168","2022-05-14","36","MM-1","PA-267","6600","7200","600","300","300","10");
INSERT INTO inv_profitshare VALUES("IS-CW169","2022-05-14","36","MM-1","PA-017","56400","58800","2400","1200","1200","10");
INSERT INTO inv_profitshare VALUES("IS-CW170","2022-05-15","36","MM-1","PA-283","42750","46500","3750","1875","1875","10");
INSERT INTO inv_profitshare VALUES("IS-CW171","2022-05-15","36","MM-1","PA-297","46300","47500","1200","600","600","10");
INSERT INTO inv_profitshare VALUES("IS-CW172","2022-05-15","36","MM-1","PA-017","115200","123400","8200","4100","4100","10");
INSERT INTO inv_profitshare VALUES("IS-CW173","2022-05-01","34","MM-1","PA-397","169670","179800","10130","5065","5065","10");
INSERT INTO inv_profitshare VALUES("IS-CW174","2022-05-01","34","MM-1","PA-392","59160","61800","2640","1320","1320","10");
INSERT INTO inv_profitshare VALUES("IS-CW175","2022-05-01","34","MM-1","PA-406","42900","44500","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW176","2022-05-07","34","MM-1","PA-361","37200","38100","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW177","2022-05-08","34","MM-1","PA-387","38200","40000","1800","900","900","10");
INSERT INTO inv_profitshare VALUES("IS-CW178","2022-05-08","34","MM-1","PA-365","60400","63000","2600","1300","1300","10");
INSERT INTO inv_profitshare VALUES("IS-CW179","2022-05-09","34","MM-1","PA-423","19100","20000","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW180","2022-05-09","34","MM-1","PA-379","237100","250000","12900","6450","6450","10");
INSERT INTO inv_profitshare VALUES("IS-CW181","2022-05-09","34","MM-1","PA-346","53600","55200","1600","800","800","10");
INSERT INTO inv_profitshare VALUES("IS-CW182","2022-05-10","34","MM-1","PA-345","80400","82800","2400","1200","1200","10");
INSERT INTO inv_profitshare VALUES("IS-CW183","2022-05-10","34","MM-1","PA-383","80000","83000","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW184","2022-05-10","34","MM-1","PA-416","140000","142000","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW185","2022-05-10","34","MM-1","PA-413","43000","45000","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW186","2022-05-10","34","MM-1","PA-372","48300","49200","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW187","2022-05-11","34","MM-1","PA-397","96770","101500","4730","2365","2365","10");
INSERT INTO inv_profitshare VALUES("IS-CW188","2022-05-11","34","MM-1","PA-360","99600","101500","1900","950","950","10");
INSERT INTO inv_profitshare VALUES("IS-CW189","2022-05-11","34","MM-1","PA-019","28200","29000","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW190","2022-05-11","34","MM-1","PA-385","33000","35200","2200","1100","1100","10");
INSERT INTO inv_profitshare VALUES("IS-CW191","2022-05-11","34","MM-1","PA-410","43000","46000","3000","1500","1500","10");
INSERT INTO inv_profitshare VALUES("IS-CW192","2022-05-11","34","MM-1","PA-383","69800","73000","3200","1600","1600","10");
INSERT INTO inv_profitshare VALUES("IS-CW193","2022-05-11","34","MM-1","PA-345","13400","13800","400","200","200","10");
INSERT INTO inv_profitshare VALUES("IS-CW194","2022-05-12","34","MM-1","PA-411","53600","56000","2400","1200","1200","10");
INSERT INTO inv_profitshare VALUES("IS-CW195","2022-05-12","34","MM-1","PA-406","19100","20000","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW196","2022-05-12","34","MM-1","PA-355","44750","47500","2750","1375","1375","10");
INSERT INTO inv_profitshare VALUES("IS-CW197","2022-05-12","34","MM-1","PA-344","58400","59600","1200","600","600","10");
INSERT INTO inv_profitshare VALUES("IS-CW198","2022-05-13","34","MM-1","PA-406","72200","76000","3800","1900","1900","10");
INSERT INTO inv_profitshare VALUES("IS-CW199","2022-05-13","34","MM-1","PA-019","14100","14500","400","200","200","10");
INSERT INTO inv_profitshare VALUES("IS-CW200","2022-05-13","34","MM-1","PA-344","38200","39600","1400","700","700","10");
INSERT INTO inv_profitshare VALUES("IS-CW201","2022-05-13","34","MM-1","PA-385","59400","64000","4600","2300","2300","10");
INSERT INTO inv_profitshare VALUES("IS-CW202","2022-05-13","34","MM-1","PA-383","43500","45000","1500","750","750","10");
INSERT INTO inv_profitshare VALUES("IS-CW203","2022-05-10","34","MM-1","PA-409","35050","36000","950","475","475","10");
INSERT INTO inv_profitshare VALUES("IS-CW204","2022-05-11","34","MM-1","PA-418","14100","14500","400","200","200","10");
INSERT INTO inv_profitshare VALUES("IS-CW205","2022-05-12","34","MM-1","PA-408","41250","44000","2750","1375","1375","10");
INSERT INTO inv_profitshare VALUES("IS-CW206","2022-05-12","34","MM-1","PA-408","42000","44500","2500","1250","1250","10");
INSERT INTO inv_profitshare VALUES("IS-CW207","2022-05-12","34","MM-1","PA-342","85000","92000","7000","3500","3500","10");
INSERT INTO inv_profitshare VALUES("IS-CW208","2022-05-12","34","MM-1","PA-352","107100","115920","8820","4410","4410","10");
INSERT INTO inv_profitshare VALUES("IS-CW209","2022-05-12","34","MM-1","PA-356","17000","18400","1400","700","700","10");
INSERT INTO inv_profitshare VALUES("IS-CW210","2022-05-13","34","MM-1","PA-407","42500","46500","4000","2000","2000","10");
INSERT INTO inv_profitshare VALUES("IS-CW211","2022-05-01","36","MM-1","PA-294","82500","88000","5500","2750","2750","10");
INSERT INTO inv_profitshare VALUES("IS-CW212","2022-05-07","36","MM-1","PA-269","78500","84500","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW213","2022-05-08","36","MM-1","PA-300","247500","253500","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW214","2022-05-08","36","MM-1","PA-296","134000","142000","8000","4000","4000","10");
INSERT INTO inv_profitshare VALUES("IS-CW215","2022-05-09","36","MM-1","PA-267","13400","14400","1000","500","500","10");
INSERT INTO inv_profitshare VALUES("IS-CW216","2022-05-10","36","MM-1","PA-269","28000","28800","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW217","2022-05-16","36","MM-1","PA-294","312500","332600","20100","10050","10050","10");
INSERT INTO inv_profitshare VALUES("IS-CW218","2022-05-17","36","MM-1","PA-017","51900","54300","2400","1200","1200","10");
INSERT INTO inv_profitshare VALUES("IS-CW219","2022-05-17","36","MM-1","PA-262","52800","56000","3200","1600","1600","10");
INSERT INTO inv_profitshare VALUES("IS-CW220","2022-05-18","36","MM-1","PA-294","259500","279000","19500","9750","9750","10");
INSERT INTO inv_profitshare VALUES("IS-CW221","2022-05-18","36","MM-1","PA-269","75500","79800","4300","2150","2150","10");
INSERT INTO inv_profitshare VALUES("IS-CW222","2022-05-18","36","MM-1","PA-306","151000","153000","2000","1000","1000","10");
INSERT INTO inv_profitshare VALUES("IS-CW223","2022-05-18","36","MM-1","PA-269","60400","64500","4100","2050","2050","10");
INSERT INTO inv_profitshare VALUES("IS-CW224","2022-05-18","36","MM-1","PA-297","16100","16500","400","200","200","10");
INSERT INTO inv_profitshare VALUES("IS-CW225","2022-05-19","36","MM-1","PA-294","247500","264000","16500","8250","8250","10");
INSERT INTO inv_profitshare VALUES("IS-CW226","2022-05-19","36","MM-1","PA-017","56400","58800","2400","1200","1200","10");
INSERT INTO inv_profitshare VALUES("IS-CW227","2022-05-19","36","MM-1","PA-297","44300","45500","1200","600","600","10");
INSERT INTO inv_profitshare VALUES("IS-CW228","2022-05-19","36","MM-1","PA-293","14100","14500","400","200","200","10");
INSERT INTO inv_profitshare VALUES("IS-CW229","2022-05-21","36","MM-1","PA-016","44250","47500","3250","1625","1625","10");
INSERT INTO inv_profitshare VALUES("IS-CW230","2022-05-21","36","MM-1","PA-275","82500","87000","4500","2250","2250","10");
INSERT INTO inv_profitshare VALUES("IS-CW231","2022-05-21","36","MM-1","PA-269","57000","62800","5800","2900","2900","10");
INSERT INTO inv_profitshare VALUES("IS-CW232","2022-05-22","36","MM-1","PA-294","82500","88000","5500","2750","2750","10");
INSERT INTO inv_profitshare VALUES("IS-CW233","2022-05-22","36","MM-1","PA-307","42750","46000","3250","1625","1625","10");
INSERT INTO inv_profitshare VALUES("IS-CW234","2022-05-11","34","MM-1","PA-374","83700","89200","5500","2750","2750","10");
INSERT INTO inv_profitshare VALUES("IS-CW235","2022-05-12","34","MM-1","PA-403","193400","206800","13400","6700","6700","10");
INSERT INTO inv_profitshare VALUES("IS-CW236","2022-05-13","34","MM-1","PA-397","156490","164000","7510","3755","3755","10");
INSERT INTO inv_profitshare VALUES("IS-CW237","2022-05-14","34","MM-1","PA-392","57850","60950","3100","1550","1550","10");
INSERT INTO inv_profitshare VALUES("IS-CW238","2022-05-14","34","MM-1","PA-345","138600","144900","6300","3150","3150","10");
INSERT INTO inv_profitshare VALUES("IS-CW239","2022-05-14","34","MM-1","PA-383","96300","101000","4700","2350","2350","10");
INSERT INTO inv_profitshare VALUES("IS-CW240","2022-05-08","31","MM-1","PA-064","39450","42600","3150","1575","1575","10");
INSERT INTO inv_profitshare VALUES("IS-CW241","2022-05-29","31","MM-1","PA-059","40600","42300","1700","850","850","10");
INSERT INTO inv_profitshare VALUES("IS-CW242","2022-05-29","31","MM-1","PA-082","134250","150000","15750","7875","7875","10");
INSERT INTO inv_profitshare VALUES("IS-CW243","2022-05-29","31","MM-1","PA-250","209000","223500","14500","7250","7250","10");
INSERT INTO inv_profitshare VALUES("IS-CW244","2022-05-30","31","MM-1","PA-250","122500","129500","7000","3500","3500","10");
INSERT INTO inv_profitshare VALUES("IS-CW245","2022-05-30","31","MM-1","PA-085","33940","35240","1300","650","650","10");
INSERT INTO inv_profitshare VALUES("IS-CW246","2022-05-30","31","MM-1","PA-088","94300","107000","12700","6350","6350","10");
INSERT INTO inv_profitshare VALUES("IS-CW247","2022-05-31","31","MM-1","PA-250","98200","103600","5400","2700","2700","10");
INSERT INTO inv_profitshare VALUES("IS-CW248","2022-05-10","31","MM-1","PA-064","26750","27900","1150","575","575","10");
INSERT INTO inv_profitshare VALUES("IS-CW249","2022-05-10","31","MM-1","PA-049","77450","84800","7350","3675","3675","10");
INSERT INTO inv_profitshare VALUES("IS-CW250","2022-05-10","31","MM-1","PA-060","14379","15600","1221","610.5","610.5","10");
INSERT INTO inv_profitshare VALUES("IS-CW251","2022-05-11","31","MM-1","PA-055","158650","171200","12550","6275","6275","10");
INSERT INTO inv_profitshare VALUES("IS-CW252","2022-05-12","31","MM-1","PA-064","7250","8150","900","450","450","10");
INSERT INTO inv_profitshare VALUES("IS-CW253","2022-05-22","36","MM-1","PA-274","256500","267000","10500","5250","5250","10");
INSERT INTO inv_profitshare VALUES("IS-CW254","2022-05-22","36","MM-1","PA-262","38200","39000","800","400","400","10");
INSERT INTO inv_profitshare VALUES("IS-CW255","2022-05-22","36","MM-1","PA-270","302000","308000","6000","3000","3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW256","2022-06-06","36","MM-1","PA-263","247950","258100","10150","5075","5075","10");
INSERT INTO inv_profitshare VALUES("IS-CW257","2022-06-07","45","MM-1","PA-450","10","10000","9990","4995","4995","10");
INSERT INTO inv_profitshare VALUES("IS-CW258","2022-06-05","45","MM-1","PA-450","300","400","100","50","50","10");
INSERT INTO inv_profitshare VALUES("IS-CW259","2022-06-08","31","MM-1","PA-097","100","200","100","50","50","10");
INSERT INTO inv_profitshare VALUES("IS-CW260","2022-06-12","31","MM-1","PA-003","10000","4000","-6000","-3000","-3000","10");
INSERT INTO inv_profitshare VALUES("IS-CW261","2022-06-12","32","MM-1","PA-425","100","200","100","50","50","10");
INSERT INTO inv_profitshare VALUES("IS-MP001","2022-06-09","32","MM-1","PA-425","40","80","40","20","20","18");



CREATE TABLE `inv_profitsharescrap` (
  `billno` varchar(20) CHARACTER SET latin1 NOT NULL,
  `billdate` date NOT NULL,
  `partnerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ownerid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `totalamount` float NOT NULL,
  `profitowneramount` float NOT NULL,
  `profitpatneramount` float NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`billno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO inv_profitsharescrap VALUES("SS-CW001","2022-05-18","PID-001","MM-1","15600","7800","7800","10");



CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL,
  `created_at` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

INSERT INTO inv_receive VALUES("1","MRR-CW001","2022-05-01","","16-001-001","SID-001","0","NAV","Receive Faruk2","Credit","","10","1","","678000","80","4424","2022-05-15","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-15");
INSERT INTO inv_receive VALUES("2","MRR-CW002","2022-05-01","","16-001-001","SID-003","0","NAV"," NAR","Credit","","10","1","","3220000","200","","2022-05-16","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-16");
INSERT INTO inv_receive VALUES("3","MRR-CW003","2022-05-01","","16-001-001","SID-002","0","NAV"," NAR","Credit","","10","1","","8400000","1000","","2022-05-16","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-16");
INSERT INTO inv_receive VALUES("4","MRR-CW004","2022-05-05","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","5640000","400","0","2022-05-17","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-05");
INSERT INTO inv_receive VALUES("5","MRR-CW005","2022-04-28","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1790000","200","052","2022-04-28","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-04-28");
INSERT INTO inv_receive VALUES("6","MRR-CW006","2022-05-02","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","629000","75","564","2022-05-02","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-02");
INSERT INTO inv_receive VALUES("7","MRR-CW007","2022-05-04","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","768000","90","842","2022-05-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-04");
INSERT INTO inv_receive VALUES("8","MRR-CW008","2022-05-06","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","461000","55","951","2022-05-06","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-06");
INSERT INTO inv_receive VALUES("9","MRR-CW009","2022-05-09","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","574000","70","315","2022-05-25","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-09");
INSERT INTO inv_receive VALUES("10","MRR-CW010","2022-05-18","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1320000","200","0","2022-05-25","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-18");
INSERT INTO inv_receive VALUES("11","MRR-CW011","2022-05-20","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","2760000","400","0","2022-05-25","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-20");
INSERT INTO inv_receive VALUES("12","MRR-CW012","2022-05-22","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","116000","200","000","2022-05-22","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-22");
INSERT INTO inv_receive VALUES("13","MRR-CW013","2022-05-15","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","6000000","400","0","2022-05-15","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-15");
INSERT INTO inv_receive VALUES("14","MRR-CW014","2022-05-20","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","720000","200","0","2022-05-20","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-20");
INSERT INTO inv_receive VALUES("15","MRR-CW015","2022-05-15","","6-14-010","SID-008","0","NAV"," NAR","Credit","2","10","1","","198400","20","0","2022-05-15","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-15");
INSERT INTO inv_receive VALUES("16","MRR-CW016","2022-05-17","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","3220000","200","0","2022-05-28","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-17");
INSERT INTO inv_receive VALUES("17","MRR-CW017","2022-05-18","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1710000","200","0","2022-05-18","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-18");
INSERT INTO inv_receive VALUES("18","MRR-CW018","2022-05-20","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","8600","200","0","2022-05-20","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-20");
INSERT INTO inv_receive VALUES("19","MRR-CW019","2022-05-22","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","800000","50","0","2022-05-22","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-22");
INSERT INTO inv_receive VALUES("20","MRR-CW020","2022-05-26","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","280000","100","0","2022-05-26","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-26");
INSERT INTO inv_receive VALUES("21","MRR-CW021","2022-05-24","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","74000","100","0","2022-05-24","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-24");
INSERT INTO inv_receive VALUES("22","MRR-CW022","2022-05-19","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","186000","200","0","2022-05-19","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-19");
INSERT INTO inv_receive VALUES("23","MRR-CW023","2022-05-26","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","3200000","200","0","2022-05-26","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-26");
INSERT INTO inv_receive VALUES("24","MRR-CW024","2022-05-19","","16-001-001","SID-010","0","NAV"," NAR","Credit","","10","1","","24000","200","","2022-05-29","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-29");
INSERT INTO inv_receive VALUES("25","MRR-CW025","2022-05-25","","6-14-010","SID-004","0","NAV"," NAR","Credit","2","10","1","","1840000","200","0","2022-05-29","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-25");
INSERT INTO inv_receive VALUES("26","MRR-CW026","2022-05-25","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","59000","400","0","2022-05-29","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-25");
INSERT INTO inv_receive VALUES("27","MRR-CW027","2022-05-25","","6-14-010","SID-011","0","NAV"," NAR","Credit","2","10","1","","31500","300","0","2022-05-29","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-25");
INSERT INTO inv_receive VALUES("28","MRR-CW028","2022-05-08","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1650000","200","0","2022-05-30","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-08");
INSERT INTO inv_receive VALUES("29","MRR-CW029","2022-05-10","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","1670000","200","4533","2022-05-30","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("30","MRR-CW030","2022-05-11","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","240000","200","0","2022-05-30","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("31","MRR-CW031","2022-05-11","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1770000","200","0","2022-05-11","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("32","MRR-CW032","2022-05-13","","6-14-010","SID-004","0","NAV"," NAR","Credit","2","10","1","","1840000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("33","MRR-CW033","2022-05-13","","6-14-010","SID-004","0","NAV"," NAR","Credit","2","10","1","","1740000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("34","MRR-CW034","2022-05-13","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","810000","100","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("35","MRR-CW035","2022-05-17","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1710000","200","0","2022-05-30","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-17");
INSERT INTO inv_receive VALUES("36","MRR-CW036","2022-05-17","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","5130000","600","0","2022-05-30","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-17");
INSERT INTO inv_receive VALUES("37","MRR-CW037","2022-05-14","","6-14-010","SID-005","0","NAV"," NAR","Credit","2","10","1","","1800000","200","0","2022-05-14","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-14");
INSERT INTO inv_receive VALUES("38","MRR-CW038","2022-05-01","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","3220000","200","0","2022-05-31","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("39","MRR-CW039","2022-05-07","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","2820000","200","0","2022-05-07","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-07");
INSERT INTO inv_receive VALUES("40","MRR-CW040","2022-05-09","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1344000","200","0","2022-05-09","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-09");
INSERT INTO inv_receive VALUES("41","MRR-CW041","2022-05-09","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1340000","200","0","2022-05-09","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-09");
INSERT INTO inv_receive VALUES("42","MRR-CW042","2022-05-09","","6-14-010","SID-008","0","NAV"," NAR","Credit","2","10","1","","2800000","200","0","2022-05-09","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-09");
INSERT INTO inv_receive VALUES("43","MRR-CW043","2022-05-10","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1650000","200","0","2022-05-10","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("44","MRR-CW044","2022-05-11","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1340000","200","0","2022-05-11","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("45","MRR-CW045","2022-05-11","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","1610000","100","0","2022-05-11","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("46","MRR-CW046","2022-05-11","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","2820000","200","0","2022-05-11","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("47","MRR-CW047","2022-05-13","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1680000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("48","MRR-CW048","2022-05-12","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","3220000","200","0","2022-05-12","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-12");
INSERT INTO inv_receive VALUES("49","MRR-CW049","2022-05-12","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","3820000","200","0","2022-05-12","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-12");
INSERT INTO inv_receive VALUES("50","MRR-CW050","2022-05-10","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","470000","200","0","2022-05-31","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("51","MRR-CW051","2022-05-31","","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","2820000","200","0","2022-05-31","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-31");
INSERT INTO inv_receive VALUES("52","MRR-CW052","2022-06-06","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1720000","200","0","2022-06-06","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-06-06");
INSERT INTO inv_receive VALUES("53","MRR-CW053","2022-06-07","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1340000","200","0","2022-06-07","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-06-07");
INSERT INTO inv_receive VALUES("54","MRR-CW054","2022-05-16","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","890000","100","0","2022-05-16","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-16");
INSERT INTO inv_receive VALUES("55","MRR-CW055","2022-05-17","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","432500","50","0","2022-06-17","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-17");
INSERT INTO inv_receive VALUES("56","MRR-GA001","2022-05-10","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","18","1","","1760000","200","0","2022-05-10","","","","0000-00-00 00:00:00","2","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("57","MRR-CW056","2022-05-10","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","900000","200","0","2022-05-10","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("58","MRR-CW057","2022-05-10","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","780000","200","0","2022-05-10","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("59","MRR-CW058","2022-05-13","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","52000","200","0","2022-06-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("60","MRR-CW059","2022-05-13","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","31000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("61","MRR-CW060","2022-05-13","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","110000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("62","MRR-CW061","2022-05-13","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","52000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("63","MRR-CW062","2022-05-13","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1320000","200","0","2022-05-13","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-13");
INSERT INTO inv_receive VALUES("64","MRR-CW063","2022-05-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","1455250","5500","0","2022-05-01","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("65","MRR-CW064","2022-05-28","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","240000","200","0","2022-05-28","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-28");
INSERT INTO inv_receive VALUES("66","MRR-CW065","2022-05-28","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1790000","200","0","2022-05-28","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-28");
INSERT INTO inv_receive VALUES("67","MRR-CW066","2022-05-29","","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","1720000","200","0","2022-05-29","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-29");
INSERT INTO inv_receive VALUES("68","MRR-CW067","2022-04-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","50000","200","0","2022-04-01","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-04-01");
INSERT INTO inv_receive VALUES("69","MRR-CW068","2022-04-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","2128750","5000","0","2022-04-01","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-04-01");
INSERT INTO inv_receive VALUES("70","MRR-CW069","2022-05-01","","6-14-010","SID-016","0","NAV"," NAR","Credit","2","10","1","","72000","2000","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("71","MRR-CW070","2022-05-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","1710000","1000","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("72","MRR-CW071","2022-05-01","","6-14-010","SID-007","0","NAV"," NAR","Credit","2","10","1","","2250000","500","0","2022-05-01","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("73","MRR-CW072","2022-05-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","1950000","500","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("74","MRR-CW073","2022-05-01","","6-14-010","SID-014","0","NAV"," NAR","Credit","2","10","1","","15000","500","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("75","MRR-CW074","2022-05-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","220000","1000","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("76","MRR-CW075","2022-05-01","","6-14-010","SID-015","0","NAV"," NAR","Credit","2","10","1","","141000","1000","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("77","MRR-CW076","2022-05-01","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","47500","500","0","2022-06-04","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-01");
INSERT INTO inv_receive VALUES("78","MRR-CW077","2022-05-10","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","1720000","200","0","2022-05-10","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-10");
INSERT INTO inv_receive VALUES("79","MRR-CW078","2022-05-11","","6-14-010","SID-009","0","NAV"," NAR","Credit","2","10","1","","12500","500","0","2022-05-11","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-11");
INSERT INTO inv_receive VALUES("80","MRR-CW079","2022-05-21","","6-14-010","SID-002","0","NAV"," NAR","Credit","2","10","1","","17100000","2000","","2022-05-21","","","","0000-00-00 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-05-21");
INSERT INTO inv_receive VALUES("81","MRR-CW080","2022-06-08","P","6-14-010","SID-001","0","NAV"," NAR","Credit","2","10","1","","5000","500","454","2022-06-08","","ignite","R","2022-06-08 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-06-08");
INSERT INTO inv_receive VALUES("82","MRR-TA001","2022-06-08","P","6-14-010","SID-001","0","NAV"," NAR","Credit","2","17","1","","60","30","454","2022-06-08","","ignite","R","2022-06-08 00:00:00","2","0","","0000-00-00 00:00:00","","","2022-06-08");
INSERT INTO inv_receive VALUES("83","MRR-MP002","2022-06-09","P","6-14-010","SID-001","0","NAV"," NAR","Credit","2","18","1","","200","5","gdf","2022-06-09","","","R","2022-06-09 00:00:00","3","0","","0000-00-00 00:00:00","","","2022-06-09");
INSERT INTO inv_receive VALUES("84","MRR-CW081","2022-06-12","P","6-14-010","SID-003","0","NAV"," NAR","Credit","2","10","1","","2000","100","5435","2022-06-12","","","R","2022-06-12 00:00:00","1","0","","0000-00-00 00:00:00","","","2022-06-12");



CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

INSERT INTO inv_receivedetail VALUES("5","MRR-CW001","01-01-014","388","3","25","8600","1","215000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("6","MRR-CW001","01-01-115","489","3","25","8200","1","205000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("7","MRR-CW001","01-01-025","399","3","20","8600","1","172000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("8","MRR-CW001","01-01-121","495","3","10","8600","1","86000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("10","MRR-CW002","01-03-008","603","19","200","16100","1","3220000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("15","MRR-CW003","01-02-054","606","1","500","8550","1","4275000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("16","MRR-CW003","01-02-055","607","1","500","8250","1","4125000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("17","MRR-CW004","01-03-010","613","19","200","14100","1","2820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("18","MRR-CW004","01-03-011","614","19","200","14100","1","2820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("19","MRR-CW005","01-02-059","615","1","200","8950","1","1790000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("20","MRR-CW006","01-01-141","555","1","30","8200","1","246000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("21","MRR-CW006","01-01-143","557","1","20","8400","1","168000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("22","MRR-CW006","01-01-147","561","1","25","8600","1","215000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("23","MRR-CW007","01-01-015","389","3","60","8700","1","522000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("24","MRR-CW007","01-01-028","402","3","30","8200","1","246000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("25","MRR-CW008","01-01-092","466","3","25","8600","1","215000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("26","MRR-CW008","01-01-058","432","3","30","8200","1","246000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("27","MRR-CW009","01-01-019","393","3","20","8200","1","164000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("28","MRR-CW009","01-01-058","432","3","50","8200","1","410000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("29","MRR-CW010","01-01-164","617","3","200","6600","1","1320000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("30","MRR-CW011","01-01-165","618","1","200","6600","1","1320000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("31","MRR-CW011","01-01-166","619","1","200","7200","1","1440000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("32","MRR-CW012","09-01-002","620","3","200","580","1","116000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("33","MRR-CW013","01-03-012","621","19","200","14000","1","2800000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("34","MRR-CW013","01-03-013","622","19","200","16000","1","3200000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("35","MRR-CW014","09-01-003","623","3","200","3600","1","720000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("36","MRR-CW015","03-02-001","624","3","20","9920","1","198400","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("37","MRR-CW016","01-03-014","626","19","200","16100","1","3220000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("38","MRR-CW017","01-02-060","627","19","200","8550","1","1710000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("39","MRR-CW018","03-03-001","628","3","200","43","1","8600","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("40","MRR-CW019","01-03-009","611","19","50","16000","1","800000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("41","MRR-CW020","09-01-004","629","3","100","2800","1","280000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("42","MRR-CW021","03-03-002","630","19","100","740","1","74000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("43","MRR-CW022","09-02-001","642","3","200","930","1","186000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("44","MRR-CW023","01-02-061","643","19","200","16000","1","3200000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("46","MRR-CW024","12-01-001","645","3","200","120","1","24000","","","","10","0");
INSERT INTO inv_receivedetail VALUES("47","MRR-CW025","01-07-001","648","3","200","9200","1","1840000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("48","MRR-CW026","03-03-012","646","1","200","220","1","44000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("49","MRR-CW026","03-03-013","647","3","200","75","1","15000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("50","MRR-CW027","10-01-001","649","3","300","105","1","31500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("51","MRR-CW028","01-02-063","651","3","200","8250","1","1650000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("52","MRR-CW029","03-03-014","652","19","200","8350","1","1670000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("53","MRR-CW030","03-03-015","653","3","200","1200","1","240000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("54","MRR-CW031","01-02-056","608","1","200","8850","1","1770000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("55","MRR-CW032","01-07-002","654","3","200","9200","1","1840000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("56","MRR-CW033","01-07-003","655","3","200","8700","1","1740000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("57","MRR-CW034","13-01-002","656","3","100","8100","1","810000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("58","MRR-CW035","01-02-065","658","3","200","8550","1","1710000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("59","MRR-CW036","01-02-083","676","3","200","8850","1","1770000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("60","MRR-CW036","01-02-081","674","3","200","8250","1","1650000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("61","MRR-CW036","01-02-082","675","3","200","8550","1","1710000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("62","MRR-CW037","01-04-001","725","3","200","9000","1","1800000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("63","MRR-CW038","01-03-015","726","19","200","16100","1","3220000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("64","MRR-CW039","01-03-016","727","19","200","14100","1","2820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("65","MRR-CW040","01-01-167","729","3","200","6720","1","1344000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("66","MRR-CW041","01-01-168","730","3","200","6700","1","1340000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("67","MRR-CW042","03-02-002","625","19","200","14000","1","2800000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("68","MRR-CW043","01-02-132","731","3","200","8250","1","1650000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("69","MRR-CW044","01-01-169","732","3","200","6700","1","1340000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("70","MRR-CW045","01-03-017","728","19","100","16100","1","1610000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("71","MRR-CW046","01-03-019","734","19","200","14100","1","2820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("72","MRR-CW047","01-01-170","735","3","200","8400","1","1680000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("73","MRR-CW048","01-03-020","736","19","200","16100","1","3220000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("74","MRR-CW049","01-03-021","737","19","200","19100","1","3820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("75","MRR-CW050","03-03-016","738","3","200","2350","1","470000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("76","MRR-CW051","01-03-022","739","19","200","14100","1","2820000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("77","MRR-CW052","01-01-012","386","3","200","8600","1","1720000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("78","MRR-CW053","01-01-171","740","3","200","6700","1","1340000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("79","MRR-CW054","01-02-133","741","3","100","8900","1","890000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("80","MRR-CW055","01-02-134","742","3","50","8650","1","432500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("81","MRR-GA001","01-01-103","477","3","200","8800","1","1760000","","","2","18","0");
INSERT INTO inv_receivedetail VALUES("82","MRR-CW056","09-01-003","623","3","200","4500","1","900000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("83","MRR-CW057","03-03-017","743","3","200","3900","1","780000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("84","MRR-CW058","03-03-018","744","3","200","260","1","52000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("85","MRR-CW059","03-03-019","745","3","200","155","1","31000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("86","MRR-CW060","03-03-020","746","3","200","550","1","110000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("87","MRR-CW061","03-03-018","744","3","200","260","1","52000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("88","MRR-CW062","01-01-172","747","3","200","6600","1","1320000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("89","MRR-CW063","03-03-021","748","3","500","935","1","467500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("90","MRR-CW063","03-03-030","757","3","500","970","1","485000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("91","MRR-CW063","03-03-023","750","3","500","8","1","4000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("92","MRR-CW063","03-03-024","751","3","500","90","1","45000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("93","MRR-CW063","03-03-025","752","3","500","6.5","1","3250","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("94","MRR-CW063","03-03-026","753","3","500","8","1","4000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("95","MRR-CW063","03-03-027","754","3","500","128","1","64000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("96","MRR-CW063","03-03-028","755","3","1000","40","1","40000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("97","MRR-CW063","03-03-022","749","3","500","40","1","20000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("98","MRR-CW063","03-03-029","756","3","500","645","1","322500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("99","MRR-CW064","09-01-005","644","3","200","1200","1","240000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("100","MRR-CW065","01-02-120","713","3","200","8950","1","1790000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("101","MRR-CW066","01-01-173","758","3","200","8600","1","1720000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("102","MRR-CW067","03-03-034","768","3","200","250","1","50000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("103","MRR-CW068","03-03-003","631","3","500","400","1","200000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("104","MRR-CW068","03-03-035","769","3","500","315","1","157500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("105","MRR-CW068","09-01-004","629","3","500","2800","1","1400000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("106","MRR-CW068","03-03-036","770","3","500","25","1","12500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("107","MRR-CW068","03-03-037","771","3","500","23","1","11500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("108","MRR-CW068","03-03-038","772","3","500","4.5","1","2250","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("109","MRR-CW068","03-03-039","773","3","500","155","1","77500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("110","MRR-CW068","03-03-031","762","3","500","200","1","100000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("111","MRR-CW068","03-03-032","764","3","500","85","1","42500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("112","MRR-CW068","03-03-033","765","3","500","250","1","125000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("113","MRR-CW069","05-01-003","759","3","2000","36","1","72000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("114","MRR-CW070","03-03-040","774","3","500","1800","1","900000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("115","MRR-CW070","03-03-041","775","3","500","1620","1","810000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("116","MRR-CW071","09-01-006","776","3","500","4500","1","2250000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("117","MRR-CW072","03-03-042","777","3","500","3900","1","1950000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("118","MRR-CW073","03-04-001","761","3","500","30","1","15000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("119","MRR-CW074","03-03-043","778","3","500","290","1","145000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("120","MRR-CW074","03-03-044","779","3","500","150","1","75000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("121","MRR-CW075","03-05-003","780","3","500","120","1","60000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("122","MRR-CW075","03-05-001","766","3","500","162","1","81000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("123","MRR-CW076","03-04-002","763","3","500","95","1","47500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("124","MRR-CW077","01-02-135","781","3","200","8600","1","1720000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("125","MRR-CW078","03-03-036","770","3","500","25","1","12500","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("126","MRR-CW079","01-02-062","650","3","2000","8550","1","17100000","","","2","10","0");
INSERT INTO inv_receivedetail VALUES("127","MRR-CW080","01-03-023","783","3","500","10","1","5000","","ignite","2","10","0");
INSERT INTO inv_receivedetail VALUES("128","MRR-TA001","01-03-023","783","3","30","2","1","60","","ignite","2","17","0");
INSERT INTO inv_receivedetail VALUES("129","MRR-MP002","01-01-001","367","3","5","40","1","200","","","2","18","0");
INSERT INTO inv_receivedetail VALUES("130","MRR-CW081","01-03-024","784","3","100","20","1","2000","","","2","10","0");



CREATE TABLE `inv_replaceoutsupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ros_id` varchar(25) NOT NULL,
  `ros_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO inv_replaceoutsupplier VALUES("1","SO-CW001","2022-01-05","","2","10","SID-001","","");
INSERT INTO inv_replaceoutsupplier VALUES("2","SO-CW002","2022-01-01","","2","10","SID-001","","");
INSERT INTO inv_replaceoutsupplier VALUES("3","SO-CW003","1970-01-01","chk point","2","10","SID-001","","");
INSERT INTO inv_replaceoutsupplier VALUES("4","SO-CW004","2022-05-26","Opening Replace pawna form factory","2","10","SID-001","","");
INSERT INTO inv_replaceoutsupplier VALUES("5","SO-CW005","2022-06-07","battery remarks","2","10","SID-002","","");



CREATE TABLE `inv_replaceoutsupplierdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ros_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ros_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO inv_replaceoutsupplierdetails VALUES("6","SO-CW001","2022-01-05","01-01-125","499","3","2","1","","2","10");
INSERT INTO inv_replaceoutsupplierdetails VALUES("7","SO-CW002","2022-01-01","01-01-064","438","3","2","1","","2","10");
INSERT INTO inv_replaceoutsupplierdetails VALUES("8","SO-CW003","1970-01-01","01-01-060","434","3","10","1","","2","10");
INSERT INTO inv_replaceoutsupplierdetails VALUES("10","SO-CW004","2022-05-26","01-01-038","412","3","60","1","","2","10");
INSERT INTO inv_replaceoutsupplierdetails VALUES("11","SO-CW005","2022-06-07","01-03-019","734","19","65","1","","2","10");



CREATE TABLE `inv_replacerecivesupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rrs_id` varchar(25) NOT NULL,
  `rrs_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO inv_replacerecivesupplier VALUES("1","SR-CW001","2022-05-16","k","2","10","SID-001","","");



CREATE TABLE `inv_replacerecivesupplierdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rrs_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `rrs_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO inv_replacerecivesupplierdetails VALUES("2","SR-CW001","2022-05-16","01-01-058","432","3","8","1","","2","10");



CREATE TABLE `inv_replacesupplierbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(10) NOT NULL,
  `supplier_id` varchar(10) NOT NULL,
  `party_id` varchar(10) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO inv_replacesupplierbalance VALUES("5","SR-CW001","01-01-058","2022-05-16","0","8","REPLACE RECEIVE","2","10","SID-001","","","0","2022-05-16 12:00:00");
INSERT INTO inv_replacesupplierbalance VALUES("8","SO-CW001","01-01-125","2022-01-05","0","2","REPLACE OUT","2","10","SID-001","","","0","2022-01-05 12:00:00");
INSERT INTO inv_replacesupplierbalance VALUES("9","SO-CW002","01-01-064","2022-01-01","0","2","REPLACE OUT","2","10","SID-001","","","0","2022-01-01 12:00:00");
INSERT INTO inv_replacesupplierbalance VALUES("10","SO-CW003","01-01-060","1970-01-01","0","10","REPLACE OUT","2","10","SID-001","","chk point","0","1970-01-01 12:00:00");
INSERT INTO inv_replacesupplierbalance VALUES("12","SO-CW004","01-01-038","2022-05-26","0","60","REPLACE OUT","2","10","SID-001","","Opening Replace pawna form factory","0","2022-05-26 12:00:00");
INSERT INTO inv_replacesupplierbalance VALUES("13","SO-CW005","01-03-019","2022-06-07","0","65","REPLACE OUT","2","10","SID-002","","battery remarks","0","2022-06-07 12:00:00");



CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `inv_scrap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` varchar(25) NOT NULL,
  `ss_date` date NOT NULL,
  `partner_id` varchar(21) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalamount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO inv_scrap VALUES("1","SS-CW001","2022-05-18","PID-001","","15600","15600","0","","","2","10","","0","","","","","");
INSERT INTO inv_scrap VALUES("2","SS-CW001","2022-05-18","PID-001","","15630","15600","0","","","2","10","","0","","","","","");



CREATE TABLE `inv_scrapdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ss_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO inv_scrapdetail VALUES("1","SS-CW001","2022-05-18","01-03-003","374","19","3","5200","15600","","2","10","PID-001","1","0");
INSERT INTO inv_scrapdetail VALUES("2","SS-CW001","2022-05-18","01-03-003","374","20","3","5200","30","","2","10","PID-001","1","0");
INSERT INTO inv_scrapdetail VALUES("3","SS-CW001","2022-05-18","01-03-019","734","19","6","5","0","","2","10","PID-001","1","0");



CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `receivermode` varchar(150) NOT NULL,
  `paymenttype` varchar(45) NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

INSERT INTO inv_supplierbalance VALUES("1","MRR-CW001","10","2022-05-01","SID-001","0","678000","","","Receive Faruk2","MRR-CW001","0");
INSERT INTO inv_supplierbalance VALUES("2","MRR-CW002","10","2022-05-01","SID-003","0","3220000","",""," NAR","MRR-CW002","0");
INSERT INTO inv_supplierbalance VALUES("3","MRR-CW003","10","2022-05-01","SID-002","0","8400000","",""," NAR","MRR-CW003","0");
INSERT INTO inv_supplierbalance VALUES("4","MRR-CW004","10","2022-05-05","SID-003","0","5640000","",""," NAR","MRR-CW004","0");
INSERT INTO inv_supplierbalance VALUES("5","MRR-CW005","10","2022-04-28","SID-002","0","1790000","",""," NAR","MRR-CW005","0");
INSERT INTO inv_supplierbalance VALUES("6","SPR-001","10","2022-05-05","SID-001","2000000","0","leo","cash","","SPR-001","0");
INSERT INTO inv_supplierbalance VALUES("7","OP","10","2022-05-01","SID-001","0","50000","OP","OP","OP","OP","0");
INSERT INTO inv_supplierbalance VALUES("8","MRR-CW006","10","2022-05-02","SID-001","0","629000","",""," NAR","MRR-CW006","0");
INSERT INTO inv_supplierbalance VALUES("9","MRR-CW007","10","2022-05-04","SID-001","0","768000","",""," NAR","MRR-CW007","0");
INSERT INTO inv_supplierbalance VALUES("10","MRR-CW008","10","2022-05-06","SID-001","0","461000","",""," NAR","MRR-CW008","0");
INSERT INTO inv_supplierbalance VALUES("11","MRR-CW009","10","2022-05-09","SID-001","0","574000","",""," NAR","MRR-CW009","0");
INSERT INTO inv_supplierbalance VALUES("12","MRR-CW010","10","2022-05-18","SID-001","0","1320000","",""," NAR","MRR-CW010","0");
INSERT INTO inv_supplierbalance VALUES("13","MRR-CW011","10","2022-05-20","SID-001","0","2760000","",""," NAR","MRR-CW011","0");
INSERT INTO inv_supplierbalance VALUES("14","OP","","2022-05-25","SID-007","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("15","MRR-CW012","10","2022-05-22","SID-007","0","116000","",""," NAR","MRR-CW012","0");
INSERT INTO inv_supplierbalance VALUES("16","MRR-CW013","10","2022-05-15","SID-003","0","6000000","",""," NAR","MRR-CW013","0");
INSERT INTO inv_supplierbalance VALUES("17","MRR-CW014","10","2022-05-20","SID-007","0","720000","",""," NAR","MRR-CW014","0");
INSERT INTO inv_supplierbalance VALUES("18","OP","","2022-05-28","SID-008","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("19","MRR-CW015","10","2022-05-15","SID-008","0","198400","",""," NAR","MRR-CW015","0");
INSERT INTO inv_supplierbalance VALUES("20","MRR-CW016","10","2022-05-17","SID-003","0","3220000","",""," NAR","MRR-CW016","0");
INSERT INTO inv_supplierbalance VALUES("21","MRR-CW017","10","2022-05-18","SID-002","0","1710000","",""," NAR","MRR-CW017","0");
INSERT INTO inv_supplierbalance VALUES("22","OP","","2022-05-28","SID-009","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("23","MRR-CW018","10","2022-05-20","SID-009","0","8600","",""," NAR","MRR-CW018","0");
INSERT INTO inv_supplierbalance VALUES("24","MRR-CW019","10","2022-05-22","SID-003","0","800000","",""," NAR","MRR-CW019","0");
INSERT INTO inv_supplierbalance VALUES("25","MRR-CW020","10","2022-05-26","SID-007","0","280000","",""," NAR","MRR-CW020","0");
INSERT INTO inv_supplierbalance VALUES("26","MRR-CW021","10","2022-05-24","SID-009","0","74000","",""," NAR","MRR-CW021","0");
INSERT INTO inv_supplierbalance VALUES("27","MRR-CW022","10","2022-05-19","SID-007","0","186000","",""," NAR","MRR-CW022","0");
INSERT INTO inv_supplierbalance VALUES("28","MRR-CW023","10","2022-05-26","SID-002","0","3200000","",""," NAR","MRR-CW023","0");
INSERT INTO inv_supplierbalance VALUES("29","OP","","2022-05-29","SID-010","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("30","MRR-CW024","10","2022-05-19","SID-010","0","24000","",""," NAR","MRR-CW024","0");
INSERT INTO inv_supplierbalance VALUES("31","MRR-CW025","10","2022-05-25","SID-004","0","1840000","",""," NAR","MRR-CW025","0");
INSERT INTO inv_supplierbalance VALUES("32","MRR-CW026","10","2022-05-25","SID-009","0","59000","",""," NAR","MRR-CW026","0");
INSERT INTO inv_supplierbalance VALUES("33","OP","","2022-05-29","SID-011","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("34","MRR-CW027","10","2022-05-25","SID-011","0","31500","",""," NAR","MRR-CW027","0");
INSERT INTO inv_supplierbalance VALUES("35","OP","","2022-05-29","SID-012","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("36","OP","","2022-05-30","SID-013","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("37","MRR-CW028","10","2022-05-08","SID-002","0","1650000","",""," NAR","MRR-CW028","0");
INSERT INTO inv_supplierbalance VALUES("38","MRR-CW029","10","2022-05-10","SID-009","0","1670000","",""," NAR","MRR-CW029","0");
INSERT INTO inv_supplierbalance VALUES("39","MRR-CW030","10","2022-05-11","SID-009","0","240000","",""," NAR","MRR-CW030","0");
INSERT INTO inv_supplierbalance VALUES("40","MRR-CW031","10","2022-05-11","SID-002","0","1770000","",""," NAR","MRR-CW031","0");
INSERT INTO inv_supplierbalance VALUES("41","MRR-CW032","10","2022-05-13","SID-004","0","1840000","",""," NAR","MRR-CW032","0");
INSERT INTO inv_supplierbalance VALUES("42","MRR-CW033","10","2022-05-13","SID-004","0","1740000","",""," NAR","MRR-CW033","0");
INSERT INTO inv_supplierbalance VALUES("43","MRR-CW034","10","2022-05-13","SID-001","0","810000","",""," NAR","MRR-CW034","0");
INSERT INTO inv_supplierbalance VALUES("44","MRR-CW035","10","2022-05-17","SID-002","0","1710000","",""," NAR","MRR-CW035","0");
INSERT INTO inv_supplierbalance VALUES("45","MRR-CW036","10","2022-05-17","SID-002","0","5130000","",""," NAR","MRR-CW036","0");
INSERT INTO inv_supplierbalance VALUES("46","MRR-CW037","10","2022-05-14","SID-005","0","1800000","",""," NAR","MRR-CW037","0");
INSERT INTO inv_supplierbalance VALUES("47","MRR-CW038","10","2022-05-01","SID-003","0","3220000","",""," NAR","MRR-CW038","0");
INSERT INTO inv_supplierbalance VALUES("48","MRR-CW039","10","2022-05-07","SID-001","0","2820000","",""," NAR","MRR-CW039","0");
INSERT INTO inv_supplierbalance VALUES("49","MRR-CW040","10","2022-05-09","SID-001","0","1344000","",""," NAR","MRR-CW040","0");
INSERT INTO inv_supplierbalance VALUES("50","MRR-CW041","10","2022-05-09","SID-001","0","1340000","",""," NAR","MRR-CW041","0");
INSERT INTO inv_supplierbalance VALUES("51","MRR-CW042","10","2022-05-09","SID-008","0","2800000","",""," NAR","MRR-CW042","0");
INSERT INTO inv_supplierbalance VALUES("52","MRR-CW043","10","2022-05-10","SID-002","0","1650000","",""," NAR","MRR-CW043","0");
INSERT INTO inv_supplierbalance VALUES("53","MRR-CW044","10","2022-05-11","SID-001","0","1340000","",""," NAR","MRR-CW044","0");
INSERT INTO inv_supplierbalance VALUES("54","MRR-CW045","10","2022-05-11","SID-003","0","1610000","",""," NAR","MRR-CW045","0");
INSERT INTO inv_supplierbalance VALUES("55","MRR-CW046","10","2022-05-11","SID-003","0","2820000","",""," NAR","MRR-CW046","0");
INSERT INTO inv_supplierbalance VALUES("56","MRR-CW047","10","2022-05-13","SID-001","0","1680000","",""," NAR","MRR-CW047","0");
INSERT INTO inv_supplierbalance VALUES("57","MRR-CW048","10","2022-05-12","SID-003","0","3220000","",""," NAR","MRR-CW048","0");
INSERT INTO inv_supplierbalance VALUES("58","MRR-CW049","10","2022-05-12","SID-003","0","3820000","",""," NAR","MRR-CW049","0");
INSERT INTO inv_supplierbalance VALUES("59","MRR-CW050","10","2022-05-10","SID-009","0","470000","",""," NAR","MRR-CW050","0");
INSERT INTO inv_supplierbalance VALUES("60","MRR-CW051","10","2022-05-31","SID-003","0","2820000","",""," NAR","MRR-CW051","0");
INSERT INTO inv_supplierbalance VALUES("61","MRR-CW052","10","2022-06-06","SID-001","0","1720000","",""," NAR","MRR-CW052","0");
INSERT INTO inv_supplierbalance VALUES("62","MRR-CW053","10","2022-06-07","SID-001","0","1340000","",""," NAR","MRR-CW053","0");
INSERT INTO inv_supplierbalance VALUES("63","MRR-CW054","10","2022-05-16","SID-002","0","890000","",""," NAR","MRR-CW054","0");
INSERT INTO inv_supplierbalance VALUES("64","MRR-CW055","10","2022-05-17","SID-001","0","432500","",""," NAR","MRR-CW055","0");
INSERT INTO inv_supplierbalance VALUES("65","MRR-GA001","18","2022-05-10","SID-001","0","1760000","",""," NAR","MRR-GA001","0");
INSERT INTO inv_supplierbalance VALUES("66","MRR-CW056","10","2022-05-10","SID-007","0","900000","",""," NAR","MRR-CW056","0");
INSERT INTO inv_supplierbalance VALUES("67","MRR-CW057","10","2022-05-10","SID-009","0","780000","",""," NAR","MRR-CW057","0");
INSERT INTO inv_supplierbalance VALUES("68","MRR-CW058","10","2022-05-13","SID-009","0","52000","",""," NAR","MRR-CW058","0");
INSERT INTO inv_supplierbalance VALUES("69","MRR-CW059","10","2022-05-13","SID-009","0","31000","",""," NAR","MRR-CW059","0");
INSERT INTO inv_supplierbalance VALUES("70","MRR-CW060","10","2022-05-13","SID-009","0","110000","",""," NAR","MRR-CW060","0");
INSERT INTO inv_supplierbalance VALUES("71","MRR-CW061","10","2022-05-13","SID-009","0","52000","",""," NAR","MRR-CW061","0");
INSERT INTO inv_supplierbalance VALUES("72","MRR-CW062","10","2022-05-13","SID-001","0","1320000","",""," NAR","MRR-CW062","0");
INSERT INTO inv_supplierbalance VALUES("73","MRR-CW063","10","2022-05-01","SID-009","0","1455250","",""," NAR","MRR-CW063","0");
INSERT INTO inv_supplierbalance VALUES("74","MRR-CW064","10","2022-05-28","SID-007","0","240000","",""," NAR","MRR-CW064","0");
INSERT INTO inv_supplierbalance VALUES("75","MRR-CW065","10","2022-05-28","SID-002","0","1790000","",""," NAR","MRR-CW065","0");
INSERT INTO inv_supplierbalance VALUES("76","MRR-CW066","10","2022-05-29","SID-001","0","1720000","",""," NAR","MRR-CW066","0");
INSERT INTO inv_supplierbalance VALUES("77","MRR-CW067","10","2022-04-01","SID-009","0","50000","",""," NAR","MRR-CW067","0");
INSERT INTO inv_supplierbalance VALUES("78","MRR-CW068","10","2022-04-01","SID-009","0","2128750","",""," NAR","MRR-CW068","0");
INSERT INTO inv_supplierbalance VALUES("79","OP","","2022-06-03","SID-014","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("80","OP","","2022-06-03","SID-015","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("81","OP","","2022-06-04","SID-016","0","0","","","Opening balance","OP","0");
INSERT INTO inv_supplierbalance VALUES("82","MRR-CW069","10","2022-05-01","SID-016","0","72000","",""," NAR","MRR-CW069","0");
INSERT INTO inv_supplierbalance VALUES("83","MRR-CW070","10","2022-05-01","SID-009","0","1710000","",""," NAR","MRR-CW070","0");
INSERT INTO inv_supplierbalance VALUES("84","MRR-CW071","10","2022-05-01","SID-007","0","2250000","",""," NAR","MRR-CW071","0");
INSERT INTO inv_supplierbalance VALUES("85","MRR-CW072","10","2022-05-01","SID-009","0","1950000","",""," NAR","MRR-CW072","0");
INSERT INTO inv_supplierbalance VALUES("86","MRR-CW073","10","2022-05-01","SID-014","0","15000","",""," NAR","MRR-CW073","0");
INSERT INTO inv_supplierbalance VALUES("87","MRR-CW074","10","2022-05-01","SID-009","0","220000","",""," NAR","MRR-CW074","0");
INSERT INTO inv_supplierbalance VALUES("88","MRR-CW075","10","2022-05-01","SID-015","0","141000","",""," NAR","MRR-CW075","0");
INSERT INTO inv_supplierbalance VALUES("89","MRR-CW076","10","2022-05-01","SID-009","0","47500","",""," NAR","MRR-CW076","0");
INSERT INTO inv_supplierbalance VALUES("90","MRR-CW077","10","2022-05-10","SID-002","0","1720000","",""," NAR","MRR-CW077","0");
INSERT INTO inv_supplierbalance VALUES("91","MRR-CW078","10","2022-05-11","SID-009","0","12500","",""," NAR","MRR-CW078","0");
INSERT INTO inv_supplierbalance VALUES("92","MRR-CW079","10","2022-05-21","SID-002","0","17100000","",""," NAR","MRR-CW079","0");
INSERT INTO inv_supplierbalance VALUES("93","MRR-CW080","10","2022-06-08","SID-001","0","5000","",""," NAR","MRR-CW080","0");
INSERT INTO inv_supplierbalance VALUES("94","MRR-TA001","17","2022-06-08","SID-001","0","60","",""," NAR","MRR-TA001","0");
INSERT INTO inv_supplierbalance VALUES("95","MRR-MP002","18","2022-06-09","SID-001","0","200","",""," NAR","MRR-MP002","0");
INSERT INTO inv_supplierbalance VALUES("96","SPR-002","10","2022-06-01","SID-003","900","0","Receiver Hasan. A/c:014785423","cash","g","SPR-002","0");
INSERT INTO inv_supplierbalance VALUES("97","MRR-CW081","10","2022-06-12","SID-003","0","2000","",""," NAR","MRR-CW081","0");



CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

INSERT INTO inv_tranferdetail VALUES("45","WT-CW002","01-03-022","739","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("46","WT-CW002","01-03-022","739","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("47","WT-CW002","01-03-003","374","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("48","WT-CW002","01-03-003","374","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("49","WT-CW002","01-03-019","734","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("50","WT-CW002","01-03-022","739","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("51","WT-CW002","01-03-007","584","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("52","WT-CW002","01-03-022","739","1","19","1","18","10");
INSERT INTO inv_tranferdetail VALUES("70","WT-CW004","01-03-001","369","11","19","1","10","10");
INSERT INTO inv_tranferdetail VALUES("71","WT-CW004","01-03-009","611","10","19","1","10","10");
INSERT INTO inv_tranferdetail VALUES("72","WT-CW001","01-03-003","374","6","19","1","17","10");
INSERT INTO inv_tranferdetail VALUES("73","WT-CW005","01-03-023","783","20","3","1","17","10");
INSERT INTO inv_tranferdetail VALUES("74","WT-CW006","01-03-023","783","30","3","1","18","10");
INSERT INTO inv_tranferdetail VALUES("75","WT-TA001","01-03-023","783","5","3","1","10","17");
INSERT INTO inv_tranferdetail VALUES("76","WT-CW003","01-03-006","583","1","19","1","10","10");
INSERT INTO inv_tranferdetail VALUES("77","WT-CW003","01-03-019","734","1","19","1","10","10");
INSERT INTO inv_tranferdetail VALUES("78","WT-MP001","01-01-001","367","20","3","1","10","18");



CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO inv_transfermaster VALUES("3","WT-CW001","2022-06-08","10","17","hd");
INSERT INTO inv_transfermaster VALUES("4","WT-CW002","2022-06-08","10","18","");
INSERT INTO inv_transfermaster VALUES("5","WT-CW003","2022-06-08","10","10","");
INSERT INTO inv_transfermaster VALUES("6","WT-CW004","2022-06-08","10","10","");
INSERT INTO inv_transfermaster VALUES("7","WT-CW005","2022-06-08","10","17","h");
INSERT INTO inv_transfermaster VALUES("8","WT-CW006","2022-06-08","10","18","");
INSERT INTO inv_transfermaster VALUES("9","WT-TA001","2022-06-08","17","10","");
INSERT INTO inv_transfermaster VALUES("10","WT-MP001","2022-06-09","18","10","H POWER 29KG G");



CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO inv_warehosueinfo VALUES("10","WH-001","CENTRAL WAREHOUSE","CW","2","","","0","2020-09-09 11:04:48","","");
INSERT INTO inv_warehosueinfo VALUES("17","WH-002","Tangail","TA","2","","","0","2022-01-09 15:04:18","","");
INSERT INTO inv_warehosueinfo VALUES("18","WH-003","Masterpara","MP","2","","","0","2022-02-12 16:14:41","","");
INSERT INTO inv_warehosueinfo VALUES("20","WH-004","Gazipur","GP","2","","","0","2022-02-12 16:14:41","","");



CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

INSERT INTO partner VALUES("31","PID-001","ALAMGIR-u-p","","2022-03-25 20:17:27","");
INSERT INTO partner VALUES("32","PID-002","Anower","","2022-03-25 20:17:36","");
INSERT INTO partner VALUES("33","PID-003","Babu","","2022-03-25 20:17:43","");
INSERT INTO partner VALUES("34","PID-004","Faruk","","2022-03-25 20:17:49","");
INSERT INTO partner VALUES("35","PID-005","Rafiq","","2022-03-25 20:18:11","");
INSERT INTO partner VALUES("36","PID-006","Rezaul","","2022-03-25 20:18:16","");
INSERT INTO partner VALUES("37","PID-007","Sabuz","","2022-03-25 20:18:34","");
INSERT INTO partner VALUES("38","PID-008","Shahalam","","2022-03-25 20:18:40","");
INSERT INTO partner VALUES("39","PID-009","Sahadat","","2022-03-25 20:19:04","");
INSERT INTO partner VALUES("40","PID-010","Shapon","","2022-03-25 20:19:39","");
INSERT INTO partner VALUES("41","PID-011","Harun","","2022-03-26 11:27:02","");
INSERT INTO partner VALUES("42","PID-012","Zakir","","2022-05-16 09:59:19","");
INSERT INTO partner VALUES("43","PID-002","Anower-u","","2022-06-06 10:26:16","");
INSERT INTO partner VALUES("44","PID-014","kg","","2022-06-06 10:28:18","");
INSERT INTO partner VALUES("45","PID-015","pabel","","2022-06-07 13:09:57","");



CREATE TABLE `partnerpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tranid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trandate` date NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `expensedesc` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trantype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amountdeposit` float NOT NULL,
  `amountwithdraw` float NOT NULL,
  `warehouse_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO partnerpayment VALUES("1","TRN-001","2022-05-12","38","Battery Baboth Profi","payment/withdraw","0","51","10");
INSERT INTO partnerpayment VALUES("2","TRN-002","2022-05-01","41","Gift Less","Deposit","2500","0","10");
INSERT INTO partnerpayment VALUES("3","TRN-003","2022-05-09","41","(28.04.22-09.05.22)N","Deposit","741","0","10");
INSERT INTO partnerpayment VALUES("4","OP","2022-04-30","41","OP","OP","800000","0","10");
INSERT INTO partnerpayment VALUES("5","TRN-005","2022-05-10","31","Profit less Battery ","Deposit","200","0","10");
INSERT INTO partnerpayment VALUES("6","TRN-006","2022-05-14","31","Profit less Battery","payment/withdraw","300","300","10");
INSERT INTO partnerpayment VALUES("7","TRN-006","2022-05-14","31","Profit less Battery ","payment/withdraw","0","300","10");



CREATE TABLE `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` varchar(100) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `partner_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `serial` int(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2498 DEFAULT CHARSET=utf8;

INSERT INTO party VALUES("2048","PA-001","Alam Nagorpur","31","1","2022-03-25 20:32:34","");
INSERT INTO party VALUES("2049","PA-002","Alamin Sagardighi-p","31","2","2022-03-25 20:33:27","");
INSERT INTO party VALUES("2050","PA-003","Anik Sokhipur","31","3","2022-03-25 20:33:58","");
INSERT INTO party VALUES("2051","PA-004","Arif Gatail","31","4","2022-03-25 20:34:28","");
INSERT INTO party VALUES("2052","PA-005","Arpon Tangil","31","5","2022-03-25 20:35:13","");
INSERT INTO party VALUES("2053","PA-006","Anas sicle Kaliganj","32","1","2022-03-25 20:36:20","");
INSERT INTO party VALUES("2054","PA-007","Harun Sicle Kaligonj","32","2","2022-03-25 20:36:49","");
INSERT INTO party VALUES("2055","PA-008","Islam Boardbazar","32","3","2022-03-25 20:37:50","");
INSERT INTO party VALUES("2056","PA-009","Jalal Majar","32","4","2022-03-25 20:38:29","");
INSERT INTO party VALUES("2057","PA-010","Rumi Boardbazar","32","5","2022-03-25 20:39:00","");
INSERT INTO party VALUES("2058","PA-011","shaharatali Bancharampur","37","1","2022-03-26 11:26:02","");
INSERT INTO party VALUES("2059","PA-012","Race Narayangonj","41","0","2022-03-26 11:28:33","");
INSERT INTO party VALUES("2060","PA-013","Maa Baba Dhoya Mirpur","33","1","2022-03-26 11:29:33","");
INSERT INTO party VALUES("2061","PA-014","Shaha amanot Gouripur","33","2","2022-03-26 11:30:39","");
INSERT INTO party VALUES("2062","PA-015","Bismilla Coxbazar","37","2","2022-03-26 11:34:00","");
INSERT INTO party VALUES("2063","PA-016","SB kapashiya","36","1","2022-03-26 11:34:37","");
INSERT INTO party VALUES("2064","PA-017","MK Mawna","36","2","2022-03-26 11:35:34","");
INSERT INTO party VALUES("2065","PA-018","Yousuf Keraniganj","34","1","2022-03-26 11:36:23","");
INSERT INTO party VALUES("2066","PA-019","Maa Baba Dhoya shilmun","34","2","2022-03-26 11:38:03","");
INSERT INTO party VALUES("2067","PA-020","Sidikiya Majar","35","1","2022-03-26 11:39:32","");
INSERT INTO party VALUES("2068","PA-021","Adunik Liton Hobigonj","39","0","2022-03-29 18:17:47","");
INSERT INTO party VALUES("2069","PA-022","Bismilla B. Baria","39","0","2022-03-29 18:19:01","");
INSERT INTO party VALUES("2070","PA-023","Bismilla Hobigonj","39","0","2022-03-29 18:19:41","");
INSERT INTO party VALUES("2071","PA-024","Doha Auto B.Bariya","39","0","2022-03-29 18:20:51","");
INSERT INTO party VALUES("2072","PA-025","Ershad Hobigonj","39","0","2022-03-29 18:21:40","");
INSERT INTO party VALUES("2073","PA-026","Fahim Suhilpur","39","0","2022-03-29 18:22:43","");
INSERT INTO party VALUES("2074","PA-027","Fariya Hobigonj","39","0","2022-03-29 18:23:43","");
INSERT INTO party VALUES("2075","PA-028","Jesika Voirub","39","0","2022-03-29 18:25:12","");
INSERT INTO party VALUES("2076","PA-029","Khaza Traders Hobigonj","39","0","2022-03-29 18:25:58","");
INSERT INTO party VALUES("2077","PA-030","Khurshed Savar","39","0","2022-03-29 18:28:09","");
INSERT INTO party VALUES("2078","PA-031","Maa Auto Hobigonj","39","0","2022-03-29 18:30:01","");
INSERT INTO party VALUES("2079","PA-032","Nazmul Hobigonj","39","0","2022-03-29 18:30:51","");
INSERT INTO party VALUES("2080","PA-033","New Adunik Hobigonj","39","0","2022-03-29 18:31:44","");
INSERT INTO party VALUES("2081","PA-034","Panch Vai Hobigonj","39","0","2022-03-29 18:33:22","");
INSERT INTO party VALUES("2082","PA-035","Reyead Hobigonj","39","0","2022-03-29 18:34:36","");
INSERT INTO party VALUES("2083","PA-036","Rishan Raipur","39","0","2022-03-29 18:35:21","");
INSERT INTO party VALUES("2084","PA-037","Riya kossba","39","0","2022-03-29 18:36:01","");
INSERT INTO party VALUES("2085","PA-038","Shahajalal (Tanvir) Hobigonj","39","0","2022-03-29 18:37:33","");
INSERT INTO party VALUES("2086","PA-039","Shahaporan Hobigonj","39","0","2022-03-29 18:38:13","");
INSERT INTO party VALUES("2087","PA-040","Sheikh Hobigonj","39","0","2022-03-29 18:39:08","");
INSERT INTO party VALUES("2088","PA-041","Siyam B.Bariya","39","0","2022-03-29 18:40:13","");
INSERT INTO party VALUES("2089","PA-042","Sojib Morjal","39","0","2022-03-29 18:40:47","");
INSERT INTO party VALUES("2090","PA-043","Sun Moon Sayetagonj","39","0","2022-03-29 18:41:36","");
INSERT INTO party VALUES("2091","PA-044","Jamir  Enterprize","40","0","2022-05-02 19:01:50","");
INSERT INTO party VALUES("2092","PA-045","Tamim Narshindi","39","0","2022-05-08 19:12:44","");
INSERT INTO party VALUES("2093","PA-046","Maa Arihazar","41","0","2022-05-08 22:10:10","");
INSERT INTO party VALUES("2094","PA-047","Razia Manikgonj","41","0","2022-05-08 22:27:55","");
INSERT INTO party VALUES("2095","PA-048","Asif Adib Sakhipur","31","0","2022-05-09 18:31:16","");
INSERT INTO party VALUES("2096","PA-049","Babul Auto dewhata","31","0","2022-05-09 18:31:47","");
INSERT INTO party VALUES("2097","PA-050","Bike Natiapara","31","0","2022-05-09 18:32:27","");
INSERT INTO party VALUES("2098","PA-051","Bismillah Silimpur","31","0","2022-05-09 18:32:43","");
INSERT INTO party VALUES("2099","PA-052","Bismillah Takterchala","31","0","2022-05-09 18:33:21","");
INSERT INTO party VALUES("2100","PA-053","Bondhu Nagarpur","31","0","2022-05-09 18:33:46","");
INSERT INTO party VALUES("2101","PA-054","China Bogra","31","0","2022-05-09 18:33:59","");
INSERT INTO party VALUES("2102","PA-055","Faisal Nagarpur","31","0","2022-05-09 18:34:13","");
INSERT INTO party VALUES("2103","PA-056","Haowa Auto Boalibazar","31","0","2022-05-09 18:34:31","");
INSERT INTO party VALUES("2104","PA-057","Jannat Sarishabari","31","0","2022-05-09 18:34:45","");
INSERT INTO party VALUES("2105","PA-058","Jewel Shantahar","31","0","2022-05-09 18:34:59","");
INSERT INTO party VALUES("2106","PA-059","JK Auto Savar","31","0","2022-05-09 18:35:41","");
INSERT INTO party VALUES("2107","PA-060","Kandu Pakulla","31","0","2022-05-09 18:35:57","");
INSERT INTO party VALUES("2108","PA-061","Khan Rajbari","31","0","2022-05-09 18:37:00","");
INSERT INTO party VALUES("2109","PA-062","Maa Janani Sirajganj","31","0","2022-05-09 18:37:13","");
INSERT INTO party VALUES("2110","PA-063","Madopur Auto Madopur","31","0","2022-05-09 18:37:29","");
INSERT INTO party VALUES("2111","PA-064","Mama Pakulla","31","0","2022-05-09 18:37:45","");
INSERT INTO party VALUES("2112","PA-065","Master auto Bhuyapur","31","0","2022-05-09 18:38:12","");
INSERT INTO party VALUES("2113","PA-066","MASUM TANGAIL","31","0","2022-05-09 18:39:08","");
INSERT INTO party VALUES("2114","PA-067","MAYER DOWA .NATIAPARA","31","0","2022-05-09 18:40:36","");
INSERT INTO party VALUES("2115","PA-068","Mayer Dowa Tangail","31","0","2022-05-09 18:40:51","");
INSERT INTO party VALUES("2116","PA-069","Milton Sirajgonj","31","0","2022-05-09 18:41:07","");
INSERT INTO party VALUES("2117","PA-070","Mintu Madhupur","31","0","2022-05-09 18:41:16","");
INSERT INTO party VALUES("2118","PA-071","Moklas gatail","31","0","2022-05-09 18:41:28","");
INSERT INTO party VALUES("2119","PA-072","Monir Tangail","31","0","2022-05-09 18:41:39","");
INSERT INTO party VALUES("2120","PA-073","Nizum Auto Ambag","31","0","2022-05-09 18:41:52","");
INSERT INTO party VALUES("2121","PA-074","NUR NABI KALIAKOUR","31","0","2022-05-09 18:42:07","");
INSERT INTO party VALUES("2122","PA-075","Rafi Sami Sakhipur","31","0","2022-05-09 18:42:25","");
INSERT INTO party VALUES("2123","PA-076","Ranju Sirajgonj","31","0","2022-05-09 18:42:37","");
INSERT INTO party VALUES("2124","PA-077","Razia Sakhipur","31","0","2022-05-09 18:42:53","");
INSERT INTO party VALUES("2125","PA-078","Rifat Auto Sarishabari","31","0","2022-05-09 18:43:11","");
INSERT INTO party VALUES("2126","PA-079","Rushni Sirajgonj","31","0","2022-05-09 18:44:13","");
INSERT INTO party VALUES("2127","PA-080","Sahidul Sirajgonj","31","0","2022-05-09 18:44:27","");
INSERT INTO party VALUES("2128","PA-081","Samiul Elenga","31","0","2022-05-09 18:44:43","");
INSERT INTO party VALUES("2129","PA-082","Shahin Gala","31","0","2022-05-09 18:44:58","");
INSERT INTO party VALUES("2130","PA-083","Shanta Sumaiya Gtl","31","0","2022-05-09 18:45:15","");
INSERT INTO party VALUES("2131","PA-084","Sheikh Rajbari","31","0","2022-05-09 18:45:28","");
INSERT INTO party VALUES("2132","PA-085","Sikder Lawhati","31","0","2022-05-09 18:45:40","");
INSERT INTO party VALUES("2133","PA-086","Talukder Bhuyapur","31","0","2022-05-09 18:45:52","");
INSERT INTO party VALUES("2134","PA-087","Tangail Alomgir Auto","31","0","2022-05-09 18:46:04","");
INSERT INTO party VALUES("2135","PA-088","Tanjila Kirtonkhola","31","0","2022-05-09 18:46:16","");
INSERT INTO party VALUES("2136","PA-089","Three Brothers Silimpur","31","0","2022-05-09 18:46:33","");
INSERT INTO party VALUES("2137","PA-090","Yamin Gorai","31","0","2022-05-09 18:46:46","");
INSERT INTO party VALUES("2138","PA-091","Jahirul Hemayetpur","31","0","2022-05-09 18:51:07","");
INSERT INTO party VALUES("2139","PA-092","Rifat Elachipur","31","0","2022-05-09 18:51:31","");
INSERT INTO party VALUES("2140","PA-093","Maruf Sakhipur","31","0","2022-05-09 18:51:42","");
INSERT INTO party VALUES("2141","PA-094","Hasan-Baipail","31","0","2022-05-09 18:52:10","");
INSERT INTO party VALUES("2142","PA-095","Zahangir Hemayetpur","31","0","2022-05-09 18:56:01","");
INSERT INTO party VALUES("2143","PA-096","Mama Vagina Tangail","31","0","2022-05-09 18:56:18","");
INSERT INTO party VALUES("2144","PA-097","Adnan Gorai","31","0","2022-05-09 18:56:29","");
INSERT INTO party VALUES("2145","PA-098","Maa Sherpur","31","0","2022-05-09 18:56:44","");
INSERT INTO party VALUES("2146","PA-099","Zinnah Goaliah","31","0","2022-05-09 18:56:59","");
INSERT INTO party VALUES("2147","PA-100","Jewel Jamalpur","32","0","2022-05-09 19:07:38","");
INSERT INTO party VALUES("2148","PA-101","MAA ENTERPRISE KALIGANJ","32","0","2022-05-09 19:07:53","");
INSERT INTO party VALUES("2149","PA-102","Samiya Mirerbazar","32","0","2022-05-09 19:08:06","");
INSERT INTO party VALUES("2150","PA-103","Mayer Dowa Narayangonj","32","0","2022-05-09 19:08:19","");
INSERT INTO party VALUES("2151","PA-104","Mithu Gazipur","32","0","2022-05-09 19:08:32","");
INSERT INTO party VALUES("2152","PA-105","Muktajul Kaligonj","32","0","2022-05-09 19:09:06","");
INSERT INTO party VALUES("2153","PA-106","Razib Boardbazar","32","0","2022-05-09 19:09:18","");
INSERT INTO party VALUES("2154","PA-107","Vai Vai Auto Borobari","32","0","2022-05-09 19:09:49","");
INSERT INTO party VALUES("2155","PA-108","Shahalm Boardbazar","32","0","2022-05-09 19:10:04","");
INSERT INTO party VALUES("2156","PA-109","Mukul Boardbazar","32","0","2022-05-09 19:10:16","");
INSERT INTO party VALUES("2157","PA-110","Riya Kaligonj","32","0","2022-05-09 19:10:38","");
INSERT INTO party VALUES("2158","PA-111","AL Aksha Feni","33","0","2022-05-09 19:28:39","");
INSERT INTO party VALUES("2159","PA-112","Alamin Chandpur","33","0","2022-05-09 19:29:08","");
INSERT INTO party VALUES("2160","PA-113","Atik Naogaon","33","0","2022-05-09 19:30:11","");
INSERT INTO party VALUES("2161","PA-114","Barek Narayangonj","33","0","2022-05-09 19:30:29","");
INSERT INTO party VALUES("2162","PA-115","Bismillah Modonpur","33","0","2022-05-09 19:30:45","");
INSERT INTO party VALUES("2163","PA-116","Bondhu Motors Cumilla","33","0","2022-05-09 19:31:01","");
INSERT INTO party VALUES("2164","PA-117","Dhaka auto Gouripur","33","0","2022-05-09 19:32:57","");
INSERT INTO party VALUES("2165","PA-118","Eshan Cumilla","33","0","2022-05-09 19:33:15","");
INSERT INTO party VALUES("2166","PA-119","Feni Motors Feni","33","0","2022-05-09 19:33:28","");
INSERT INTO party VALUES("2167","PA-120","Gausia Cumiila","33","0","2022-05-09 19:33:39","");
INSERT INTO party VALUES("2168","PA-121","Iqbal Karanigonj","33","0","2022-05-09 19:33:51","");
INSERT INTO party VALUES("2169","PA-122","Maruf Sicle Konabari","33","0","2022-05-09 19:34:08","");
INSERT INTO party VALUES("2170","PA-123","Mayer Dowa Rupgonj","33","0","2022-05-09 19:34:31","");
INSERT INTO party VALUES("2171","PA-124","Morium Demra","33","0","2022-05-09 19:34:46","");
INSERT INTO party VALUES("2172","PA-125","S Alom Goripur","33","0","2022-05-09 19:35:11","");
INSERT INTO party VALUES("2173","PA-126","Siddik Kadamtali","33","0","2022-05-09 19:35:27","");
INSERT INTO party VALUES("2174","PA-127","Taher Vai Cumilla","33","0","2022-05-09 19:35:40","");
INSERT INTO party VALUES("2175","PA-128","Vai Vai Kashempur","33","0","2022-05-09 19:35:52","");
INSERT INTO party VALUES("2176","PA-129","Mijan Dohar/Joypara","33","0","2022-05-09 19:36:06","");
INSERT INTO party VALUES("2177","PA-130","Maa Babar Dowa Joypara","33","0","2022-05-09 19:36:24","");
INSERT INTO party VALUES("2178","PA-131","Bahadur Vai Daudpur","33","0","2022-05-09 19:37:01","");
INSERT INTO party VALUES("2179","PA-132","Master Auto Netrokona","33","0","2022-05-09 19:37:15","");
INSERT INTO party VALUES("2180","PA-133","Ahsan Traders Naogao","37","0","2022-05-09 20:47:07","");
INSERT INTO party VALUES("2181","PA-134","Arik Naogao","37","0","2022-05-09 20:47:46","");
INSERT INTO party VALUES("2182","PA-135","Bhuyian Cumilla","37","0","2022-05-09 20:48:01","");
INSERT INTO party VALUES("2183","PA-136","Hasan Gazipur","37","0","2022-05-09 20:49:31","");
INSERT INTO party VALUES("2184","PA-137","Jahangir Auto Cumilla","37","0","2022-05-09 20:49:51","");
INSERT INTO party VALUES("2185","PA-138","Madina Naogao","37","0","2022-05-09 20:50:20","");
INSERT INTO party VALUES("2186","PA-139","Makka Naogao","37","0","2022-05-09 20:50:36","");
INSERT INTO party VALUES("2187","PA-140","MR Bogura","37","0","2022-05-09 20:50:55","");
INSERT INTO party VALUES("2188","PA-141","Rashed Rangpur","37","0","2022-05-09 20:51:10","");
INSERT INTO party VALUES("2189","PA-142","RB Rangpur","37","0","2022-05-09 20:51:24","");
INSERT INTO party VALUES("2190","PA-143","Riya Naogaon","37","0","2022-05-09 20:51:35","");
INSERT INTO party VALUES("2191","PA-144","Ruhul Rangpur","37","0","2022-05-09 20:51:48","");
INSERT INTO party VALUES("2192","PA-145","Setu 2 Bus Stand","37","0","2022-05-09 20:52:21","");
INSERT INTO party VALUES("2193","PA-146","Setu Coxsbazar","37","0","2022-05-09 20:52:34","");
INSERT INTO party VALUES("2194","PA-147","Shumsul Rangpur","37","0","2022-05-09 20:52:56","");
INSERT INTO party VALUES("2195","PA-148","Sukhirani Naogaon","37","0","2022-05-09 20:53:17","");
INSERT INTO party VALUES("2196","PA-149","Sumon Kurigram","37","0","2022-05-09 20:53:31","");
INSERT INTO party VALUES("2197","PA-150","Araf Coxsbazar","37","0","2022-05-09 20:53:43","");
INSERT INTO party VALUES("2198","PA-151","Urmi Bancharampur","37","0","2022-05-09 20:54:06","");
INSERT INTO party VALUES("2199","PA-152","Halima Naogao","37","0","2022-05-09 20:54:27","");
INSERT INTO party VALUES("2200","PA-153","RS Mohadebpur","37","0","2022-05-09 20:54:43","");
INSERT INTO party VALUES("2201","PA-154","Jannat Faria Manikgonj","37","0","2022-05-09 20:55:52","");
INSERT INTO party VALUES("2202","PA-155","Dui Vai Narayangonj","41","0","2022-05-09 22:06:42","");
INSERT INTO party VALUES("2203","PA-156","Abdullah Amtola","35","0","2022-05-10 12:03:03","");
INSERT INTO party VALUES("2204","PA-157","Allah Vorosha Muktagasa","35","0","2022-05-10 12:03:19","");
INSERT INTO party VALUES("2205","PA-158","Arif Mymensingh","35","0","2022-05-10 12:03:32","");
INSERT INTO party VALUES("2206","PA-159","Bithi Savar","35","0","2022-05-10 12:03:49","");
INSERT INTO party VALUES("2207","PA-160","Debnath Mymensingh","35","0","2022-05-10 12:04:02","");
INSERT INTO party VALUES("2208","PA-161","Ehtesham Auto Rajshahi","35","0","2022-05-10 12:04:17","");
INSERT INTO party VALUES("2209","PA-162","Fahim Voirub","35","0","2022-05-10 12:04:31","");
INSERT INTO party VALUES("2210","PA-163","Jabale Noor Ponchoboti","35","0","2022-05-10 12:04:47","");
INSERT INTO party VALUES("2211","PA-164","Jalal Amtola","35","0","2022-05-10 12:05:01","");
INSERT INTO party VALUES("2212","PA-165","Maa Babar Dowa shipahipara","33","0","2022-05-15 09:49:42","");
INSERT INTO party VALUES("2213","PA-166","Maa Motors Hajigonj","41","0","2022-05-15 10:12:45","");
INSERT INTO party VALUES("2214","PA-167","Bismillah Hajigonj","41","0","2022-05-15 11:35:59","");
INSERT INTO party VALUES("2215","PA-168","Jaman Hajigonj","41","0","2022-05-15 12:25:05","");
INSERT INTO party VALUES("2216","PA-169","Sowda Kishorgonj","41","0","2022-05-15 12:26:15","");
INSERT INTO party VALUES("2217","PA-170","Tisha Kishorgonj","41","0","2022-05-15 12:26:47","");
INSERT INTO party VALUES("2218","PA-171","Bismillah Mawna","38","0","2022-05-15 18:00:34","");
INSERT INTO party VALUES("2219","PA-172","Bondhu Auto Isshorgonj","38","0","2022-05-15 18:02:00","");
INSERT INTO party VALUES("2220","PA-173","Sara Isshorgonj","38","0","2022-05-15 18:02:43","");
INSERT INTO party VALUES("2221","PA-174","Allah r dan Auto Fulpur","39","0","2022-05-15 18:04:05","");
INSERT INTO party VALUES("2222","PA-175","Allah r dan Auto Fulpur","38","0","2022-05-15 18:04:59","");
INSERT INTO party VALUES("2223","PA-176","Borkat Chapainawbabgonj","35","0","2022-05-15 19:44:16","");
INSERT INTO party VALUES("2224","PA-177","Alamin Fulpur","35","0","2022-05-15 19:46:23","");
INSERT INTO party VALUES("2225","PA-178","Shohid Haluaghat","35","0","2022-05-15 19:47:45","");
INSERT INTO party VALUES("2226","PA-179","Sadia Gaibandha","35","0","2022-05-15 19:48:46","");
INSERT INTO party VALUES("2227","PA-180","Zakir Mymensingh","35","0","2022-05-15 19:51:30","");
INSERT INTO party VALUES("2228","PA-181","Sumon Mymensingh","35","0","2022-05-15 19:51:54","");
INSERT INTO party VALUES("2229","PA-182","MAA ENTERPRISE Kishorgonj","41","0","2022-05-15 21:36:23","");
INSERT INTO party VALUES("2230","PA-183","Dider Demra","41","0","2022-05-15 21:37:19","");
INSERT INTO party VALUES("2231","PA-184","Yousuf Savar","42","0","2022-05-16 10:03:12","");
INSERT INTO party VALUES("2232","PA-185","Rubel Borua","42","0","2022-05-16 10:03:46","");
INSERT INTO party VALUES("2233","PA-186","Bismillah keranigonj","42","0","2022-05-16 10:05:02","");
INSERT INTO party VALUES("2234","PA-187","RF Kishorgonj","41","0","2022-05-16 20:03:04","");
INSERT INTO party VALUES("2235","PA-188","Sohel Mawna","38","0","2022-05-17 10:55:33","");
INSERT INTO party VALUES("2236","PA-189","Anower Chadpur","41","0","2022-05-23 19:34:46","");
INSERT INTO party VALUES("2237","PA-190","Mamun Auto Majar","41","0","2022-05-23 20:13:08","");
INSERT INTO party VALUES("2238","PA-191","Bismillah Debiddar","33","0","2022-05-25 12:05:09","");
INSERT INTO party VALUES("2239","PA-192","Aditi Kashrmpur","38","0","2022-05-28 10:14:27","");
INSERT INTO party VALUES("2240","PA-193","","38","0","2022-05-28 10:14:39","");
INSERT INTO party VALUES("2241","PA-194","Al Amin Electric Fulpur","38","0","2022-05-28 10:15:17","");
INSERT INTO party VALUES("2242","PA-195","Al Mamun Tarakanda","38","0","2022-05-28 10:15:31","");
INSERT INTO party VALUES("2243","PA-196","Alamgir kendua","38","0","2022-05-28 10:15:43","");
INSERT INTO party VALUES("2244","PA-197","Alamin Mawna","38","0","2022-05-28 10:16:01","");
INSERT INTO party VALUES("2245","PA-198","Allahar Dan Kendua","38","0","2022-05-28 10:16:20","");
INSERT INTO party VALUES("2246","PA-199","Anwar Chandpur","38","0","2022-05-28 10:16:49","");
INSERT INTO party VALUES("2247","PA-200","Ariyan Mymensingh","38","0","2022-05-28 10:17:03","");
INSERT INTO party VALUES("2248","PA-201","Asheke Rasul Isshorgonj","38","0","2022-05-28 10:17:17","");
INSERT INTO party VALUES("2249","PA-202","BROTHERS AUTO MAWNA","38","0","2022-05-28 10:17:38","");
INSERT INTO party VALUES("2250","PA-203","Choice Auto Valuka","38","0","2022-05-28 10:17:54","");
INSERT INTO party VALUES("2251","PA-204","Chowa Motors Mawna","38","0","2022-05-28 10:18:10","");
INSERT INTO party VALUES("2252","PA-205","Dina Rajendrapur","38","0","2022-05-28 10:18:22","");
INSERT INTO party VALUES("2253","PA-206","Ekram Esshorgonj","38","0","2022-05-28 10:18:38","");
INSERT INTO party VALUES("2254","PA-207","GM Electronics ","38","0","2022-05-28 10:18:49","");
INSERT INTO party VALUES("2255","PA-208","Harun Fulpur","38","0","2022-05-28 10:18:59","");
INSERT INTO party VALUES("2256","PA-209","Iqbal Fulpur","38","0","2022-05-28 10:19:08","");
INSERT INTO party VALUES("2257","PA-210","Jaman Chandpur","38","0","2022-05-28 10:19:21","");
INSERT INTO party VALUES("2258","PA-211","Jaman Fulpur","38","0","2022-05-28 10:19:39","");
INSERT INTO party VALUES("2259","PA-212","Jaman Trishal ","38","0","2022-05-28 10:19:51","");
INSERT INTO party VALUES("2260","PA-213","Kamal Fulpur","38","0","2022-05-28 10:20:03","");
INSERT INTO party VALUES("2261","PA-214","Khan Solar Mawna","38","0","2022-05-28 10:20:21","");
INSERT INTO party VALUES("2262","PA-215","Liza Isshorgonj 01718885760","38","0","2022-05-28 10:20:47","");
INSERT INTO party VALUES("2263","PA-216","Loknath Chadpur","38","0","2022-05-28 10:21:05","");
INSERT INTO party VALUES("2264","PA-217","Maa Rajendrapur","38","0","2022-05-28 10:21:15","");
INSERT INTO party VALUES("2265","PA-218","Madina Fulpur","38","0","2022-05-28 10:21:26","");
INSERT INTO party VALUES("2266","PA-219","Masud Mawna","38","0","2022-05-28 10:21:37","");
INSERT INTO party VALUES("2267","PA-220","Mayer Dowa Isshorgonj","38","0","2022-05-28 10:22:00","");
INSERT INTO party VALUES("2268","PA-221","Motlab auto chandpur","38","0","2022-05-28 10:23:27","");
INSERT INTO party VALUES("2269","PA-222","Munshi Chandpur","38","0","2022-05-28 10:23:58","");
INSERT INTO party VALUES("2270","PA-223","Muntahar Mawna","38","0","2022-05-28 10:24:15","");
INSERT INTO party VALUES("2271","PA-224","Nure Alom kanarampur","38","0","2022-05-28 10:25:09","");
INSERT INTO party VALUES("2272","PA-225","Ohi Shamgonj","38","0","2022-05-28 10:25:22","");
INSERT INTO party VALUES("2273","PA-226","Padma Sicle Fulpur","38","0","2022-05-28 10:25:45","");
INSERT INTO party VALUES("2274","PA-227","Poler Bari Fulpur","38","0","2022-05-28 10:26:03","");
INSERT INTO party VALUES("2275","PA-228","Ponir  Fulpur","38","0","2022-05-28 10:26:15","");
INSERT INTO party VALUES("2276","PA-229","Pritom Mawna","38","0","2022-05-28 10:26:28","");
INSERT INTO party VALUES("2277","PA-230","Ripon Auto Fulpur","38","0","2022-05-28 10:27:00","");
INSERT INTO party VALUES("2278","PA-231","Rudra Atharbari","38","0","2022-05-28 10:27:13","");
INSERT INTO party VALUES("2279","PA-232","sagar and Bristy","38","0","2022-05-28 10:27:29","");
INSERT INTO party VALUES("2280","PA-233","Sagar Auto Joinabazar","38","0","2022-05-28 10:27:44","");
INSERT INTO party VALUES("2281","PA-234","Sanjid Seba Ramgopal","38","0","2022-05-28 10:27:59","");
INSERT INTO party VALUES("2282","PA-235","SHARIF MYMENSINGH","38","0","2022-05-28 10:28:12","");
INSERT INTO party VALUES("2283","PA-236","Sirajul Mymensingh","38","0","2022-05-28 10:28:33","");
INSERT INTO party VALUES("2284","PA-237","Tanha (Selim) Shamgonj","38","0","2022-05-28 10:29:02","");
INSERT INTO party VALUES("2285","PA-238","Vai Vai Fulpur ","38","0","2022-05-28 10:29:14","");
INSERT INTO party VALUES("2286","PA-239","Akikul Fulpur ","38","0","2022-05-28 10:37:02","");
INSERT INTO party VALUES("2287","PA-240","National Mymensingh ","38","0","2022-05-28 11:15:14","");
INSERT INTO party VALUES("2288","PA-241","Selim Kasempur","35","0","2022-05-28 12:09:35","");
INSERT INTO party VALUES("2289","PA-242","Riju Mymensingh","35","0","2022-05-28 12:31:30","");
INSERT INTO party VALUES("2290","PA-243","Raton Mymensingh","35","0","2022-05-28 12:44:00","");
INSERT INTO party VALUES("2291","PA-244","Pervez store Natore","35","0","2022-05-28 13:01:58","");
INSERT INTO party VALUES("2292","PA-245","Tanjila Jamalpur","35","0","2022-05-28 13:13:21","");
INSERT INTO party VALUES("2293","PA-246","Boshir Amtola","35","0","2022-05-28 13:43:37","");
INSERT INTO party VALUES("2294","PA-247","Manik Mymensingh","35","0","2022-05-28 16:03:48","");
INSERT INTO party VALUES("2295","PA-248","Kazi Auto Mymensingh","35","0","2022-05-28 16:24:00","");
INSERT INTO party VALUES("2296","PA-249","Maa Enterprise Arshad Noghor","35","0","2022-05-28 17:03:27","");
INSERT INTO party VALUES("2297","PA-250","Jewel Naogah","31","0","2022-05-28 18:14:40","");
INSERT INTO party VALUES("2298","PA-251","Atik Naogaon","42","0","2022-05-29 11:23:43","");
INSERT INTO party VALUES("2299","PA-252","Bismillah Araihajar","42","0","2022-05-29 11:24:00","");
INSERT INTO party VALUES("2300","PA-253","Bismillah Bonosri","42","0","2022-05-29 11:24:15","");
INSERT INTO party VALUES("2301","PA-254","Hafsa Taltola","42","0","2022-05-29 11:24:29","");
INSERT INTO party VALUES("2302","PA-255","Billal Isshorgonj","42","0","2022-05-29 11:24:38","");
INSERT INTO party VALUES("2303","PA-256","Abdullah Savar","42","0","2022-05-29 11:24:51","");
INSERT INTO party VALUES("2304","PA-257","Manju Gazipur","42","0","2022-05-29 11:25:31","");
INSERT INTO party VALUES("2305","PA-258","Motiur Zirani","42","0","2022-05-29 11:25:41","");
INSERT INTO party VALUES("2306","PA-259","Aramn B.Bariya","42","0","2022-05-29 11:25:52","");
INSERT INTO party VALUES("2307","PA-260","Bismillah Savar","42","0","2022-05-29 11:26:04","");
INSERT INTO party VALUES("2308","PA-261","Abdullah Gofurgao","36","0","2022-05-29 11:29:51","");
INSERT INTO party VALUES("2309","PA-262","Ahammed Gazipur","36","0","2022-05-29 11:30:04","");
INSERT INTO party VALUES("2310","PA-263","Altaf Modonpur","36","0","2022-05-29 11:30:15","");
INSERT INTO party VALUES("2311","PA-264","Awal vai/Adil","36","0","2022-05-29 11:30:31","");
INSERT INTO party VALUES("2312","PA-265","Bismillah Munshigonj","36","0","2022-05-29 11:30:47","");
INSERT INTO party VALUES("2313","PA-266","Bithi Kapasia","36","0","2022-05-29 11:30:59","");
INSERT INTO party VALUES("2314","PA-267","Borhan Araihajar","36","0","2022-05-29 11:31:14","");
INSERT INTO party VALUES("2315","PA-268","Dada Nati Hemayatpur","36","0","2022-05-29 11:31:43","");
INSERT INTO party VALUES("2316","PA-269","Diya Manikgonj","36","0","2022-05-29 11:32:04","");
INSERT INTO party VALUES("2317","PA-270","Falan Baluka","36","0","2022-05-29 11:32:14","");
INSERT INTO party VALUES("2318","PA-271","Gazi Motors Munshigonj","36","0","2022-05-29 11:32:24","");
INSERT INTO party VALUES("2319","PA-272","GELMON GAZIPUR","36","0","2022-05-29 11:32:46","");
INSERT INTO party VALUES("2320","PA-273","Hossain Motors Munshigonj","36","0","2022-05-29 11:33:07","");
INSERT INTO party VALUES("2321","PA-274","Emon Auto Bancharampur","36","0","2022-05-29 11:33:39","");
INSERT INTO party VALUES("2322","PA-275","Habib Manikgonj","36","0","2022-05-29 11:33:51","");
INSERT INTO party VALUES("2323","PA-276","Jalil Munshigonj","36","0","2022-05-29 11:34:03","");
INSERT INTO party VALUES("2324","PA-277","Joynal Bancharampur","36","0","2022-05-29 11:34:13","");
INSERT INTO party VALUES("2325","PA-278","Kadija Enterprise Gazipurpur","36","0","2022-05-29 11:35:19","");
INSERT INTO party VALUES("2326","PA-279","Loknath Coxsbazar","36","0","2022-05-29 11:35:32","");
INSERT INTO party VALUES("2327","PA-280","Loknath Coxsbazar","36","0","2022-05-29 11:36:22","");
INSERT INTO party VALUES("2328","PA-281","Maa Auto Araihajar","36","0","2022-05-29 11:36:32","");
INSERT INTO party VALUES("2329","PA-282","Maa babar Dowa Munshigong","36","0","2022-05-29 11:36:41","");
INSERT INTO party VALUES("2330","PA-283","Maa Ent. Gazipur","36","0","2022-05-29 11:36:52","");
INSERT INTO party VALUES("2331","PA-284","Madina Araihazar","36","0","2022-05-29 11:37:03","");
INSERT INTO party VALUES("2332","PA-285","Maa Ent. Mirzapur","36","0","2022-05-29 11:37:14","");
INSERT INTO party VALUES("2333","PA-286","Manik Bancharampur","36","0","2022-05-29 11:37:28","");
INSERT INTO party VALUES("2334","PA-287","Mirzapur Auto Mirzapur","36","0","2022-05-29 11:37:39","");
INSERT INTO party VALUES("2335","PA-288","Mizanor Faridpur","36","0","2022-05-29 11:37:49","");
INSERT INTO party VALUES("2336","PA-289","Monir Auto Mirzapur","36","0","2022-05-29 11:38:13","");
INSERT INTO party VALUES("2337","PA-290","Musshulli Mirzapur","36","0","2022-05-29 11:38:23","");
INSERT INTO party VALUES("2338","PA-291","Nahid Munshigonj","36","0","2022-05-29 11:38:32","");
INSERT INTO party VALUES("2339","PA-292","Nana Savar","36","0","2022-05-29 11:38:42","");
INSERT INTO party VALUES("2340","PA-293","Nazmul vai Mirzapur","36","0","2022-05-29 11:38:51","");
INSERT INTO party VALUES("2341","PA-294","NEW SAGAR BANDORA","36","0","2022-05-29 11:39:01","");
INSERT INTO party VALUES("2342","PA-295","New SB Mawna","36","0","2022-05-29 11:39:08","");
INSERT INTO party VALUES("2343","PA-296","Nure Madina Munshigonj","36","0","2022-05-29 11:39:17","");
INSERT INTO party VALUES("2344","PA-297","Rafiqul Gazipur","36","0","2022-05-29 11:39:31","");
INSERT INTO party VALUES("2345","PA-298","Ratul Kapasia","36","0","2022-05-29 11:39:55","");
INSERT INTO party VALUES("2346","PA-299","Razib Kapasia","36","0","2022-05-29 11:40:05","");
INSERT INTO party VALUES("2347","PA-300","Razzak Manikgonj","36","0","2022-05-29 11:40:12","");
INSERT INTO party VALUES("2348","PA-301","Rezaul  Gazipur","36","0","2022-05-29 11:40:22","");
INSERT INTO party VALUES("2349","PA-302","Sada Vai Dewangonj","36","0","2022-05-29 11:40:30","");
INSERT INTO party VALUES("2350","PA-303","Sadaf Gazipur","36","0","2022-05-29 11:40:40","");
INSERT INTO party VALUES("2351","PA-304","Samith Tarakandi","36","0","2022-05-29 11:40:52","");
INSERT INTO party VALUES("2352","PA-305","Shakil Bandura","36","0","2022-05-29 11:41:09","");
INSERT INTO party VALUES("2353","PA-306","Shapon Gazipur","36","0","2022-05-29 11:41:20","");
INSERT INTO party VALUES("2354","PA-307","Sohag Latapatabazar","36","0","2022-05-29 11:41:33","");
INSERT INTO party VALUES("2355","PA-308","Sohel Vai Gazipur","36","0","2022-05-29 11:41:43","");
INSERT INTO party VALUES("2356","PA-309","Sumi Gazipur","36","0","2022-05-29 11:41:54","");
INSERT INTO party VALUES("2357","PA-310","TAZUDDIN GAZIPUR","36","0","2022-05-29 11:42:04","");
INSERT INTO party VALUES("2358","PA-311","Zakiya Lalmonirhat","36","0","2022-05-29 11:42:17","");
INSERT INTO party VALUES("2359","PA-312","Akash Auto Mazar","40","0","2022-05-29 11:53:34","");
INSERT INTO party VALUES("2360","PA-313","AKOTA ASHULIYA","40","0","2022-05-29 11:54:00","");
INSERT INTO party VALUES("2361","PA-314","Alo and Battery","40","0","2022-05-29 11:54:13","");
INSERT INTO party VALUES("2362","PA-315","Anower Rangpur","40","0","2022-05-29 11:54:26","");
INSERT INTO party VALUES("2363","PA-316","Aziz Bandare","40","0","2022-05-29 11:54:39","");
INSERT INTO party VALUES("2364","PA-317","Babu vai Choity","40","0","2022-05-29 11:54:50","");
INSERT INTO party VALUES("2365","PA-318","Joy Patuakhali","40","0","2022-05-29 11:55:01","");
INSERT INTO party VALUES("2366","PA-319","Chopma Ent Bogra","40","0","2022-05-29 11:55:15","");
INSERT INTO party VALUES("2367","PA-320","Dipok Da ","40","0","2022-05-29 11:55:30","");
INSERT INTO party VALUES("2368","PA-321","Jamir enterprise gazipur","40","0","2022-05-29 11:55:41","");
INSERT INTO party VALUES("2369","PA-322","Jugajug Thakurgaon","40","0","2022-05-29 11:55:51","");
INSERT INTO party VALUES("2370","PA-323","Khurshed Choity","40","0","2022-05-29 11:56:01","");
INSERT INTO party VALUES("2371","PA-324","Maa Babar Dowa barishal","40","0","2022-05-29 11:56:13","");
INSERT INTO party VALUES("2372","PA-325","MB Motors Thakurgao","40","0","2022-05-29 11:56:25","");
INSERT INTO party VALUES("2373","PA-326","Mehedi Barishal","40","0","2022-05-29 11:56:38","");
INSERT INTO party VALUES("2374","PA-327","Mizan Tyre And Battery","40","0","2022-05-29 11:56:48","");
INSERT INTO party VALUES("2375","PA-328","Niloy Enterprise Chalaban","40","0","2022-05-29 11:57:08","");
INSERT INTO party VALUES("2376","PA-329","Rida masterpara","40","0","2022-05-29 11:57:19","");
INSERT INTO party VALUES("2377","PA-330","Ripon Gouripur","40","0","2022-05-29 11:57:34","");
INSERT INTO party VALUES("2378","PA-331","Shanta Elenga","40","0","2022-05-29 11:58:26","");
INSERT INTO party VALUES("2379","PA-332","Shifa Gazipur","40","0","2022-05-29 11:58:56","");
INSERT INTO party VALUES("2380","PA-333","Sohag EPZ","40","0","2022-05-29 11:59:12","");
INSERT INTO party VALUES("2381","PA-334","Vai Vai konabari","40","0","2022-05-29 11:59:31","");
INSERT INTO party VALUES("2382","PA-335","Asif Enterprise Gualihat","31","0","2022-05-29 13:46:43","");
INSERT INTO party VALUES("2383","PA-336","Hashan Baipal","31","0","2022-05-29 15:17:41","");
INSERT INTO party VALUES("2384","PA-337","Dui vai Pakulla","31","0","2022-05-30 10:40:15","");
INSERT INTO party VALUES("2385","PA-338","Mayer Dowa Lawhati","31","0","2022-05-30 23:47:15","");
INSERT INTO party VALUES("2386","PA-339","Abdullah Srinagar","34","0","2022-05-31 11:37:29","");
INSERT INTO party VALUES("2387","PA-340","AL MAdina CHARAGALI","34","0","2022-05-31 11:37:39","");
INSERT INTO party VALUES("2388","PA-341","Al Madina Majar","34","0","2022-05-31 11:37:49","");
INSERT INTO party VALUES("2389","PA-342","Alamin Nawabpur","34","0","2022-05-31 11:38:00","");
INSERT INTO party VALUES("2390","PA-343","Amar Bangla Chapai","34","0","2022-05-31 11:38:08","");
INSERT INTO party VALUES("2391","PA-344","Amin Charagali","34","0","2022-05-31 11:38:22","");
INSERT INTO party VALUES("2392","PA-345","Anik Sicle Charagali","34","0","2022-05-31 11:38:35","");
INSERT INTO party VALUES("2393","PA-346","Anis Ashuliya","34","0","2022-05-31 11:38:46","");
INSERT INTO party VALUES("2394","PA-347","APON ZIABUG","34","0","2022-05-31 11:38:57","");
INSERT INTO party VALUES("2395","PA-348","Babul Natunbazar","34","0","2022-05-31 11:39:07","");
INSERT INTO party VALUES("2396","PA-349","Barek Ruposhi","34","0","2022-05-31 11:39:20","");
INSERT INTO party VALUES("2397","PA-350","Bismillah Charagali","34","0","2022-05-31 11:39:32","");
INSERT INTO party VALUES("2398","PA-351","Chowdhury Nawabpur","34","0","2022-05-31 11:39:46","");
INSERT INTO party VALUES("2399","PA-352","Dhaka Auto Nawabpur","34","0","2022-05-31 11:39:57","");
INSERT INTO party VALUES("2400","PA-353","Farhana Kamlapur","34","0","2022-05-31 11:40:07","");
INSERT INTO party VALUES("2401","PA-354","Fuad Nabinagar","34","0","2022-05-31 11:40:19","");
INSERT INTO party VALUES("2402","PA-355","Habib Shilmoon","34","0","2022-05-31 11:40:28","");
INSERT INTO party VALUES("2403","PA-356","Haque Nawabpur","34","0","2022-05-31 11:40:36","");
INSERT INTO party VALUES("2404","PA-357","Harez Thakurgaon","34","0","2022-05-31 11:40:49","");
INSERT INTO party VALUES("2405","PA-358","HR Nawabpur","34","0","2022-05-31 11:41:01","");
INSERT INTO party VALUES("2406","PA-359","Jaman Majar","34","0","2022-05-31 11:41:10","");
INSERT INTO party VALUES("2407","PA-360","Jannat Bandura","34","0","2022-05-31 11:41:19","");
INSERT INTO party VALUES("2408","PA-361","Jannat Majar","34","0","2022-05-31 11:41:28","");
INSERT INTO party VALUES("2409","PA-362","JIHAD BOARDBAZAR","34","0","2022-05-31 11:41:37","");
INSERT INTO party VALUES("2410","PA-363","JK Auto Chittagong","34","0","2022-05-31 11:41:49","");
INSERT INTO party VALUES("2411","PA-364","Jn Nawabpur","34","0","2022-05-31 11:41:57","");
INSERT INTO party VALUES("2412","PA-365","Khazababa Charagali","34","0","2022-05-31 11:42:10","");
INSERT INTO party VALUES("2413","PA-366","Liton Rajbari","34","0","2022-05-31 11:42:26","");
INSERT INTO party VALUES("2414","PA-367","Luminius Gazipur","34","0","2022-05-31 11:42:35","");
INSERT INTO party VALUES("2415","PA-368","MAA BABAR DOWA SHILMOON","34","0","2022-05-31 11:42:51","");
INSERT INTO party VALUES("2416","PA-369","Mahbub Natunbazar","34","0","2022-05-31 11:43:01","");
INSERT INTO party VALUES("2417","PA-370","Mahid Dhamrai","34","0","2022-05-31 11:43:12","");
INSERT INTO party VALUES("2418","PA-371","Mamun Charagali","34","0","2022-05-31 11:43:20","");
INSERT INTO party VALUES("2419","PA-372","Marof charagali","34","0","2022-05-31 11:43:33","");
INSERT INTO party VALUES("2420","PA-373","Master ponchogarh","34","0","2022-05-31 11:44:05","");
INSERT INTO party VALUES("2421","PA-374","Mayer Dowa Savar","34","0","2022-05-31 11:44:14","");
INSERT INTO party VALUES("2422","PA-375","MK Tongi","34","0","2022-05-31 11:44:28","");
INSERT INTO party VALUES("2423","PA-376","MT Ziabug","34","0","2022-05-31 11:44:39","");
INSERT INTO party VALUES("2424","PA-377","Mukti Charagali","34","0","2022-05-31 11:45:04","");
INSERT INTO party VALUES("2425","PA-378","Nazmul Kamlapur","34","0","2022-05-31 11:45:45","");
INSERT INTO party VALUES("2426","PA-379","Nishad Joinabazar","34","0","2022-05-31 11:46:02","");
INSERT INTO party VALUES("2427","PA-380","NS Nawabpur","34","0","2022-05-31 11:47:11","");
INSERT INTO party VALUES("2428","PA-381","Ohid Charagali","34","0","2022-05-31 11:47:22","");
INSERT INTO party VALUES("2429","PA-382","Rafiq Ashuliya","34","0","2022-05-31 11:47:30","");
INSERT INTO party VALUES("2430","PA-383","Rahim Charagali","34","0","2022-05-31 11:48:00","");
INSERT INTO party VALUES("2431","PA-384","Rasel Shilmoon","34","0","2022-05-31 11:48:12","");
INSERT INTO party VALUES("2432","PA-385","Rifat Gazipura","34","0","2022-05-31 11:48:21","");
INSERT INTO party VALUES("2433","PA-386","RN Nawabpur","34","0","2022-05-31 11:49:27","");
INSERT INTO party VALUES("2434","PA-387","Road King Hemayetpur","34","0","2022-05-31 11:49:38","");
INSERT INTO party VALUES("2435","PA-388","Rubel Charagali","34","0","2022-05-31 11:49:49","");
INSERT INTO party VALUES("2436","PA-389","Ghotok Savar","34","0","2022-05-31 11:50:09","");
INSERT INTO party VALUES("2437","PA-390","Pubail Sicle Pubail","34","0","2022-05-31 11:50:23","");
INSERT INTO party VALUES("2438","PA-391","Sa Tyre & Battery Shilmoon","34","0","2022-05-31 11:51:23","");
INSERT INTO party VALUES("2439","PA-392","Saiful  Sripur","34","0","2022-05-31 11:51:33","");
INSERT INTO party VALUES("2440","PA-393","Saiful Cokoriya","34","0","2022-05-31 11:51:43","");
INSERT INTO party VALUES("2441","PA-394","Sakil Ashuliya","34","0","2022-05-31 11:51:54","");
INSERT INTO party VALUES("2442","PA-395","Shadin Kuturiya","34","0","2022-05-31 11:52:02","");
INSERT INTO party VALUES("2443","PA-396","Shakil Charagali","34","0","2022-05-31 11:52:12","");
INSERT INTO party VALUES("2444","PA-397","Shomsher Bandura","34","0","2022-05-31 11:52:21","");
INSERT INTO party VALUES("2445","PA-398","Sohel Auto Shilmoon","34","0","2022-05-31 11:52:31","");
INSERT INTO party VALUES("2446","PA-399","Sourov Charagali","34","0","2022-05-31 11:53:50","");
INSERT INTO party VALUES("2447","PA-400","SS LAKSHAM","34","0","2022-05-31 11:54:01","");
INSERT INTO party VALUES("2448","PA-401","Sufia Ziabug","34","0","2022-05-31 11:54:10","");
INSERT INTO party VALUES("2449","PA-402","Sumaiya Natunbazar","34","0","2022-05-31 11:54:19","");
INSERT INTO party VALUES("2450","PA-403","Super Trading Nawabpur","34","0","2022-05-31 11:54:28","");
INSERT INTO party VALUES("2451","PA-404","Tania Borobari","34","0","2022-05-31 11:54:38","");
INSERT INTO party VALUES("2452","PA-405","Tanmoy Bogura","34","0","2022-05-31 11:54:48","");
INSERT INTO party VALUES("2453","PA-406","Towhid Kuturiya","34","0","2022-05-31 11:54:57","");
INSERT INTO party VALUES("2454","PA-407","Vision Charagali","34","0","2022-05-31 11:55:06","");
INSERT INTO party VALUES("2455","PA-408","YOUSUF MAZAR","34","0","2022-05-31 11:55:14","");
INSERT INTO party VALUES("2456","PA-409","Zakir Ponchogarh","34","0","2022-05-31 11:55:22","");
INSERT INTO party VALUES("2457","PA-410","Sarder Natunbazar","34","0","2022-05-31 12:03:05","");
INSERT INTO party VALUES("2458","PA-411","Hadi Sayestaganj","34","0","2022-05-31 12:03:16","");
INSERT INTO party VALUES("2459","PA-412","Shahin Natunbazar","34","0","2022-05-31 12:03:26","");
INSERT INTO party VALUES("2460","PA-413","Mac Traders Holan","34","0","2022-05-31 12:03:35","");
INSERT INTO party VALUES("2461","PA-414","Rokomari Nawabpur","34","0","2022-05-31 12:03:46","");
INSERT INTO party VALUES("2462","PA-415","Mahin Atipara","34","0","2022-05-31 12:03:59","");
INSERT INTO party VALUES("2463","PA-416","Khan Faridpur","34","0","2022-05-31 12:04:18","");
INSERT INTO party VALUES("2464","PA-417","Agro Auto Gazipura","34","0","2022-05-31 12:05:03","");
INSERT INTO party VALUES("2465","PA-418","Bhola Dakshinkhan","34","0","2022-05-31 12:05:12","");
INSERT INTO party VALUES("2466","PA-419","Mayer Dowa Nawabpur","34","0","2022-05-31 12:05:23","");
INSERT INTO party VALUES("2467","PA-420","Vai Vai Gopalganj","34","0","2022-05-31 12:05:47","");
INSERT INTO party VALUES("2468","PA-421","Arif Nawabpur","34","0","2022-05-31 12:05:59","");
INSERT INTO party VALUES("2469","PA-422","Khokon Shilmoon","34","0","2022-05-31 12:06:18","");
INSERT INTO party VALUES("2470","PA-423","Soshi Dakshin khan","34","0","2022-05-31 13:01:32","");
INSERT INTO party VALUES("2471","PA-424","Parvez (2) Natore","35","0","2022-05-31 20:10:15","");
INSERT INTO party VALUES("2472","PA-425","Alamin Kaliganj","32","0","2022-05-31 23:57:17","");
INSERT INTO party VALUES("2473","PA-426","Akash Modonpur","41","0","2022-06-01 11:17:10","");
INSERT INTO party VALUES("2474","PA-427","Alamgir Kendua","41","0","2022-06-01 11:17:54","");
INSERT INTO party VALUES("2475","PA-428","Allahar dan Shibchor","41","0","2022-06-01 11:18:36","");
INSERT INTO party VALUES("2476","PA-429","Best Auto Monohordi","41","0","2022-06-01 11:19:13","");
INSERT INTO party VALUES("2477","PA-430","Maa Babar Dowa Kanchan","41","0","2022-06-01 11:22:11","");
INSERT INTO party VALUES("2478","PA-431","Maa Kishoregonj","41","0","2022-06-01 11:22:37","");
INSERT INTO party VALUES("2479","PA-432","Mayer Dowa Sonargoan","41","0","2022-06-01 11:23:04","");
INSERT INTO party VALUES("2480","PA-433","MN Power Chapai","41","0","2022-06-01 11:24:39","");
INSERT INTO party VALUES("2481","PA-434","Monowar Shibchor","41","0","2022-06-01 11:25:00","");
INSERT INTO party VALUES("2482","PA-435","Nava auto Kishoregonj","41","0","2022-06-01 11:25:18","");
INSERT INTO party VALUES("2483","PA-436","Nayem Rupgonj","41","0","2022-06-01 11:25:36","");
INSERT INTO party VALUES("2484","PA-437","Ripon Araihajar","41","0","2022-06-01 11:25:55","");
INSERT INTO party VALUES("2485","PA-438","SA Zirani","41","0","2022-06-01 11:26:17","");
INSERT INTO party VALUES("2486","PA-439","Saidul Kishoregonj","41","0","2022-06-01 11:26:29","");
INSERT INTO party VALUES("2487","PA-440","SARKER MIRZAPUR","41","0","2022-06-01 11:26:43","");
INSERT INTO party VALUES("2488","PA-441","Sharna Narayanganj","41","0","2022-06-01 11:27:02","");
INSERT INTO party VALUES("2489","PA-442","Sicle Hajigonj","41","0","2022-06-01 11:27:22","");
INSERT INTO party VALUES("2490","PA-443","SUMSUL AUTO KASHEMPUR","41","0","2022-06-01 11:27:35","");
INSERT INTO party VALUES("2491","PA-444"," Vai Vai Pachdona","41","0","2022-06-01 11:27:51","");
INSERT INTO party VALUES("2492","PA-445","Zidan Kishoregonj","41","0","2022-06-01 11:28:07","");
INSERT INTO party VALUES("2493","PA-446","Sohor Ali Pubail","41","0","2022-06-01 11:51:43","");
INSERT INTO party VALUES("2494","PA-447","Mijan Manikganj","41","0","2022-06-01 11:51:57","");
INSERT INTO party VALUES("2495","PA-448","Sabbir Kanchan","41","0","2022-06-01 11:52:08","");
INSERT INTO party VALUES("2496","PA-449","Hridoy Boardbzar","32","0","2022-06-02 11:47:51","");
INSERT INTO party VALUES("2497","PA-450","faizan","45","0","2022-06-07 13:10:11","");



CREATE TABLE `party_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `warehouse_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `partyid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `receivermode` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

INSERT INTO party_payment VALUES("1","VID-001","2022-05-15","10","38","PA-175","cash","7800","Battery Cash Paid","");
INSERT INTO party_payment VALUES("2","VID-002","2022-05-01","10","41","PA-166","cash","365500","","");
INSERT INTO party_payment VALUES("3","VID-003","2022-05-01","10","41","PA-167","cash","114000","","");
INSERT INTO party_payment VALUES("4","VID-004","2022-05-01","10","41","PA-155","cash","93000","","");
INSERT INTO party_payment VALUES("5","VID-005","2022-05-01","10","41","PA-168","cash","16600","","Faruk2");
INSERT INTO party_payment VALUES("6","VID-006","2022-05-08","10","41","PA-169","cash","370000","Check Pass","");
INSERT INTO party_payment VALUES("7","VID-007","2022-05-08","10","41","PA-170","cash","141200","","");
INSERT INTO party_payment VALUES("8","VID-008","2022-05-08","10","41","PA-166","cash","240000","","");
INSERT INTO party_payment VALUES("9","VID-009","2022-05-08","10","41","PA-168","cash","122150","","");
INSERT INTO party_payment VALUES("10","VID-010","2022-05-09","10","41","PA-155","cash","65500","","");
INSERT INTO party_payment VALUES("11","VID-011","2022-05-09","10","41","PA-167","cash","86400","","");
INSERT INTO party_payment VALUES("12","VID-012","2022-05-09","10","41","PA-012","cash","312800","","");
INSERT INTO party_payment VALUES("13","VID-013","2022-05-11","10","41","PA-182","cash","10000","","");
INSERT INTO party_payment VALUES("14","VID-014","2022-05-11","10","41","PA-183","cash","98000","","");
INSERT INTO party_payment VALUES("15","VID-015","2022-05-10","10","38","PA-171","cash","43500","","");
INSERT INTO party_payment VALUES("16","VID-016","2022-05-10","10","38","PA-172","cash","29300","","");
INSERT INTO party_payment VALUES("17","VID-017","2022-05-11","10","38","PA-173","cash","140000","IBBL","");
INSERT INTO party_payment VALUES("18","VID-018","2022-05-12","10","38","PA-175","cash","166200","","");
INSERT INTO party_payment VALUES("19","VID-019","2022-05-01","10","35","PA-159","cash","60000","","");
INSERT INTO party_payment VALUES("20","VID-020","2022-05-10","10","35","PA-177","cash","60000","","");
INSERT INTO party_payment VALUES("21","VID-021","2022-05-11","10","35","PA-178","cash","34000","Check pass","Check Pass");
INSERT INTO party_payment VALUES("22","VID-022","2022-05-11","10","35","PA-180","cash","119000","palash","Maruf");
INSERT INTO party_payment VALUES("23","VID-023","2022-05-12","10","35","PA-181","cash","90000","","Maruf");
INSERT INTO party_payment VALUES("24","VID-024","2022-05-12","10","35","PA-180","cash","242000","","Maruf");
INSERT INTO party_payment VALUES("25","VID-025","2022-05-12","10","35","PA-181","cash","127000","","Maruf");
INSERT INTO party_payment VALUES("26","VID-026","2022-05-10","10","31","PA-059","cash","18800","Battery Baboth Cash Paid","");
INSERT INTO party_payment VALUES("27","VID-027","2022-05-14","10","31","PA-059","cash","28200","Battery Baboth Cash paid","Aziz");
INSERT INTO party_payment VALUES("28","VID-028","2022-05-01","10","39","PA-038","cash","180000","","Shahadat");
INSERT INTO party_payment VALUES("29","VID-029","2022-05-01","10","39","PA-045","cash","23000","","Shahadat");
INSERT INTO party_payment VALUES("30","VID-030","2022-05-01","10","39","PA-029","cash","45000","","Shahadat");
INSERT INTO party_payment VALUES("31","VID-031","2022-05-01","10","32","PA-104","cash","5000","","Anower");
INSERT INTO party_payment VALUES("32","VID-032","2022-05-01","10","32","PA-008","cash","2000","","Anower");
INSERT INTO party_payment VALUES("33","VID-033","2022-05-01","10","32","PA-109","cash","14800","","Anower");
INSERT INTO party_payment VALUES("34","VID-034","2022-05-01","10","34","PA-397","cash","175000","","Resel");
INSERT INTO party_payment VALUES("35","VID-035","2022-05-01","10","36","PA-294","cash","88000","","Ohid");
INSERT INTO party_payment VALUES("36","VID-036","2022-05-01","10","35","PA-159","cash","60000","","Maruf");
INSERT INTO party_payment VALUES("37","VID-037","2022-05-01","10","34","PA-406","cash","44500","","Rasel2");
INSERT INTO party_payment VALUES("38","VID-038","2022-05-01","10","34","PA-392","cash","61800","","Rasel2");
INSERT INTO party_payment VALUES("39","VID-039","2022-05-01","10","34","PA-345","cash","20000","","Resel");
INSERT INTO party_payment VALUES("40","VID-040","2022-05-01","10","39","PA-045","cash","29600","","Liton");
INSERT INTO party_payment VALUES("41","VID-041","2022-05-01","10","34","PA-405","credit","50000","","DBBL(H)");
INSERT INTO party_payment VALUES("42","VID-042","2022-05-07","10","32","PA-010","cash","10000","","Anower");
INSERT INTO party_payment VALUES("43","VID-043","2022-05-07","10","34","PA-361","cash","38100","","Rasel2");
INSERT INTO party_payment VALUES("44","VID-044","2022-05-07","10","42","PA-185","cash","29600","","zakir");
INSERT INTO party_payment VALUES("45","VID-045","2022-05-07","10","36","PA-269","cash","84500","","Ohid");
INSERT INTO party_payment VALUES("46","VID-046","2022-05-07","10","31","PA-049","cash","26800","","Aziz");
INSERT INTO party_payment VALUES("47","VID-047","2022-05-07","10","31","PA-066","cash","18000","","Aziz");
INSERT INTO party_payment VALUES("48","VID-048","2022-05-07","10","31","PA-337","cash","96000","","Aziz");
INSERT INTO party_payment VALUES("49","VID-049","2022-05-07","10","34","PA-345","cash","20000","","Rasel2");
INSERT INTO party_payment VALUES("50","VID-050","2022-05-08","10","32","PA-008","cash","29800","","Anower");
INSERT INTO party_payment VALUES("51","VID-051","2022-05-08","10","41","PA-169","credit","370000","","Check Pass");
INSERT INTO party_payment VALUES("52","VID-052","2022-05-08","10","39","PA-040","credit","100000","","IBBL");
INSERT INTO party_payment VALUES("53","VID-053","2022-05-08","10","35","PA-424","credit","15000","","IBBL");
INSERT INTO party_payment VALUES("54","VID-054","2022-05-08","10","35","PA-244","credit","50000","","IBBL");
INSERT INTO party_payment VALUES("55","VID-055","2022-05-08","10","41","PA-155","credit","43000","","Check Pass");
INSERT INTO party_payment VALUES("56","VID-056","2022-05-08","10","41","PA-155","credit","150000","","Check Pass");
INSERT INTO party_payment VALUES("57","VID-057","2022-05-08","10","34","PA-405","credit","80000","","DBBL(H)");
INSERT INTO party_payment VALUES("58","VID-058","2022-05-08","10","31","PA-067","credit","45000","","BBL");
INSERT INTO party_payment VALUES("59","VID-059","2022-05-08","10","31","PA-250","credit","227000","","IBBL(A)");
INSERT INTO party_payment VALUES("60","VID-060","2022-05-08","10","34","PA-365","cash","63000","","Rasel2");
INSERT INTO party_payment VALUES("61","VID-061","2022-05-08","10","41","PA-170","cash","141200","","Saiful");
INSERT INTO party_payment VALUES("62","VID-062","2022-05-08","10","36","PA-296","cash","142000","","Ohid");
INSERT INTO party_payment VALUES("63","VID-063","2022-05-08","10","33","PA-165","cash","206900","","Saiful");
INSERT INTO party_payment VALUES("64","VID-064","2022-05-08","10","42","PA-184","cash","128800","","Zakir");
INSERT INTO party_payment VALUES("65","VID-065","2022-05-08","10","36","PA-300","cash","253500","","Ohid");
INSERT INTO party_payment VALUES("66","VID-066","2022-05-08","10","34","PA-387","cash","40000","","Rasel2");
INSERT INTO party_payment VALUES("67","VID-067","2022-05-08","10","33","PA-130","cash","258100","","Saiful");
INSERT INTO party_payment VALUES("68","VID-068","2022-05-08","10","33","PA-014","cash","200000","","Saiful");
INSERT INTO party_payment VALUES("69","VID-069","2022-05-08","10","40","PA-334","cash","94000","","Miraj");
INSERT INTO party_payment VALUES("70","VID-070","2022-05-08","10","31","PA-085","cash","39200","","Aziz");
INSERT INTO party_payment VALUES("71","VID-071","2022-05-08","10","31","PA-089","cash","80500","","Aziz");
INSERT INTO party_payment VALUES("72","VID-072","2022-05-09","10","40","PA-329","credit","10000","","Miraj");
INSERT INTO party_payment VALUES("73","VID-073","2022-05-09","10","40","PA-329","cash","7140","","Miraj");
INSERT INTO party_payment VALUES("74","VID-074","2022-05-09","10","40","PA-329","cash","2860","Loking Glass","Mamun");
INSERT INTO party_payment VALUES("75","VID-075","2022-05-09","10","34","PA-423","cash","20000","","Resel");
INSERT INTO party_payment VALUES("76","VID-076","2022-05-09","10","40","PA-333","cash","27600","","Miraj");
INSERT INTO party_payment VALUES("77","VID-077","2022-05-09","10","42","PA-185","cash","46800","","");
INSERT INTO party_payment VALUES("78","VID-078","2022-05-09","10","35","PA-178","cash","34000","","Check Pass");
INSERT INTO party_payment VALUES("79","VID-079","2022-05-09","10","34","PA-379","cash","110000","","Check Pass");
INSERT INTO party_payment VALUES("80","VID-080","2022-05-09","10","33","PA-013","cash","41700","","IBBL");
INSERT INTO party_payment VALUES("81","VID-081","2022-05-09","10","40","PA-333","credit","45000","","IBBL");
INSERT INTO party_payment VALUES("82","VID-082","2022-05-09","10","39","PA-034","credit","100000","","IBBL");
INSERT INTO party_payment VALUES("83","VID-083","2022-05-09","10","35","PA-245","credit","90000","","BBL");
INSERT INTO party_payment VALUES("84","VID-084","2022-05-09","10","39","PA-033","credit","50000","","BBL");
INSERT INTO party_payment VALUES("85","VID-085","2022-05-09","10","31","PA-004","credit","180000","","BBL");
INSERT INTO party_payment VALUES("86","VID-086","2022-05-09","10","41","PA-167","cash","100000","","Faruk2");
INSERT INTO party_payment VALUES("87","VID-087","2022-05-09","10","31","PA-062","credit","9300","","BBL");
INSERT INTO party_payment VALUES("88","VID-088","2022-05-09","10","40","PA-329","cash","27600","","Miraj");
INSERT INTO party_payment VALUES("89","VID-089","2022-05-09","10","42","PA-185","cash","29600","","Rasel2");
INSERT INTO party_payment VALUES("90","VID-090","2022-05-09","10","34","PA-345","cash","60000","","Azumul");
INSERT INTO party_payment VALUES("91","VID-091","2022-05-09","10","41","PA-155","cash","65500","","Saiful");
INSERT INTO party_payment VALUES("92","VID-092","2022-05-09","10","33","PA-115","cash","90000","","Saiful");
INSERT INTO party_payment VALUES("93","VID-093","2022-05-09","10","36","PA-267","cash","14400","","Ohid");
INSERT INTO party_payment VALUES("94","VID-094","2022-05-09","10","34","PA-379","cash","10000","","Rasel2");
INSERT INTO party_payment VALUES("95","VID-095","2022-05-10","10","33","PA-132","cash","140000","","Check Pass");
INSERT INTO party_payment VALUES("96","VID-096","2022-05-10","10","41","PA-012","cash","312800","","Check Pass");
INSERT INTO party_payment VALUES("97","VID-097","2022-05-10","10","32","PA-007","credit","150000","","PBL");
INSERT INTO party_payment VALUES("98","VID-098","2022-05-10","10","37","PA-149","cash","50000","","BBL");
INSERT INTO party_payment VALUES("99","VID-099","2022-05-10","10","31","PA-064","cash","43000","","Aziz");
INSERT INTO party_payment VALUES("100","VID-100","2022-05-10","10","34","PA-383","cash","50000","","Azimul");
INSERT INTO party_payment VALUES("101","VID-101","2022-05-10","10","34","PA-372","cash","25000","","Rasel2");
INSERT INTO party_payment VALUES("102","VID-102","2022-05-10","10","34","PA-345","cash","85000","","Azimul");
INSERT INTO party_payment VALUES("103","VID-103","2022-05-10","10","34","PA-412","cash","45000","","Rasel2");
INSERT INTO party_payment VALUES("104","VID-104","2022-05-10","10","41","PA-167","cash","86400","","Saiful");
INSERT INTO party_payment VALUES("105","VID-105","2022-05-10","10","31","PA-059","cash","312300","","Aziz");
INSERT INTO party_payment VALUES("106","VID-106","2022-05-10","10","36","PA-269","cash","28800","","Ohid");
INSERT INTO party_payment VALUES("107","VID-107","2022-05-10","10","31","PA-049","cash","84800","","Aziz");
INSERT INTO party_payment VALUES("108","VID-108","2022-05-10","10","31","PA-060","cash","15600","","Aziz");
INSERT INTO party_payment VALUES("109","VID-109","2022-05-10","10","31","PA-064","cash","27900","","Aziz");
INSERT INTO party_payment VALUES("110","VID-110","2022-05-10","10","35","PA-177","cash","60000","","Maruf");
INSERT INTO party_payment VALUES("111","VID-111","2022-05-10","10","37","PA-011","credit","200000","","AIBL");
INSERT INTO party_payment VALUES("112","VID-112","2022-05-11","10","32","PA-010","cash","20000","","Anower");
INSERT INTO party_payment VALUES("113","VID-113","2022-05-11","10","32","PA-425","cash","110000","","Anower");
INSERT INTO party_payment VALUES("114","VID-114","2022-05-11","10","41","PA-155","cash","100000","","Check Pass");
INSERT INTO party_payment VALUES("115","VID-115","2022-05-11","10","37","PA-149","cash","50000","","BBL");
INSERT INTO party_payment VALUES("116","VID-116","2022-05-11","10","34","PA-411","cash","56000","","IBBL");
INSERT INTO party_payment VALUES("117","VID-117","2022-05-11","10","34","PA-379","cash","100000","","IBBL");
INSERT INTO party_payment VALUES("118","VID-118","2022-05-11","10","31","PA-250","cash","158000","","IBBL");
INSERT INTO party_payment VALUES("119","VID-119","2022-05-11","10","34","PA-410","cash","46000","","Rasel2");
INSERT INTO party_payment VALUES("120","VID-120","2022-05-11","10","34","PA-385","cash","16000","","Rasel2");
INSERT INTO party_payment VALUES("121","VID-121","2022-05-11","10","34","PA-374","cash","89200","","Resel");
INSERT INTO party_payment VALUES("122","VID-122","2022-05-11","10","34","PA-345","cash","20000","","Rasel2");
INSERT INTO party_payment VALUES("123","VID-123","2022-05-11","10","34","PA-383","cash","50000","","Rasel2");
INSERT INTO party_payment VALUES("124","VID-124","2022-05-11","10","34","PA-019","cash","29000","","Rasel2");
INSERT INTO party_payment VALUES("125","VID-125","2022-05-11","10","36","PA-294","cash","264000","","Ohid");
INSERT INTO party_payment VALUES("126","VID-126","2022-05-11","10","34","PA-397","cash","101500","","Rasel2");
INSERT INTO party_payment VALUES("127","VID-127","2022-05-11","10","34","PA-360","cash","101500","","Rasel2");
INSERT INTO party_payment VALUES("128","VID-128","2022-05-11","10","42","PA-186","cash","235000","","Saiful");
INSERT INTO party_payment VALUES("129","VID-129","2022-05-11","10","41","PA-183","cash","98000","","Saiful");
INSERT INTO party_payment VALUES("130","VID-130","2022-05-11","10","31","PA-064","cash","27750","","Aziz");
INSERT INTO party_payment VALUES("131","VID-131","2022-05-12","10","34","PA-408","cash","30000","","Rasel2");
INSERT INTO party_payment VALUES("132","VID-132","2022-05-12","10","35","PA-181","cash","90000","","Maruf");
INSERT INTO party_payment VALUES("133","VID-133","2022-05-12","10","35","PA-180","cash","119000","","Maruf");
INSERT INTO party_payment VALUES("134","VID-134","2022-05-12","10","34","PA-408","cash","20000","","Rasel2");
INSERT INTO party_payment VALUES("135","VID-135","2022-05-12","10","32","PA-105","cash","29200","","Anower");
INSERT INTO party_payment VALUES("136","VID-136","2022-05-12","10","31","PA-088","credit","35000","","BBL");
INSERT INTO party_payment VALUES("137","VID-137","2022-05-12","10","31","PA-071","credit","185000","","BBL");
INSERT INTO party_payment VALUES("138","VID-138","2022-05-12","10","37","PA-149","cash","50000","","BBL");
INSERT INTO party_payment VALUES("139","VID-139","2022-05-12","10","39","PA-021","credit","100000","","PBL");
INSERT INTO party_payment VALUES("140","VID-140","2022-05-12","10","41","PA-435","cash","150000","","Check Pass");
INSERT INTO party_payment VALUES("141","VID-141","2022-05-12","10","37","PA-146","credit","100000","","PBL");
INSERT INTO party_payment VALUES("142","VID-142","2022-05-12","10","31","PA-070","credit","50000","","IBBL(A)");
INSERT INTO party_payment VALUES("143","VID-143","2022-05-12","10","31","PA-080","credit","43000","","IBBL(A)");
INSERT INTO party_payment VALUES("144","VID-144","2022-05-12","10","31","PA-066","credit","300000","","IBBL");
INSERT INTO party_payment VALUES("145","VID-145","2022-05-12","10","39","PA-040","credit","70000","","IBBL");
INSERT INTO party_payment VALUES("146","VID-146","2022-05-12","10","34","PA-343","credit","46000","","IBBL");
INSERT INTO party_payment VALUES("147","VID-147","2022-05-12","10","35","PA-248","credit","50000","","IBBL");
INSERT INTO party_payment VALUES("148","VID-148","2022-05-12","10","38","PA-173","credit","150000","","IBBL");
INSERT INTO party_payment VALUES("149","VID-149","2022-05-12","10","41","PA-182","cash","425000","","Check Pass");
INSERT INTO party_payment VALUES("150","VID-150","2022-05-12","10","38","PA-194","credit","300000","","IBBL");
INSERT INTO party_payment VALUES("151","VID-151","2022-05-12","10","42","PA-185","cash","47000","","Rasel2");
INSERT INTO party_payment VALUES("152","VID-152","2022-05-12","10","38","PA-173","credit","50000","","IBBL");
INSERT INTO party_payment VALUES("153","VID-153","2022-05-12","10","31","PA-082","credit","10000","","Aziz");
INSERT INTO party_payment VALUES("154","VID-154","2022-05-12","10","34","PA-385","cash","19200","","Rasel2");
INSERT INTO party_payment VALUES("155","VID-155","2022-05-12","10","34","PA-344","cash","59600","","Azimul");
INSERT INTO party_payment VALUES("156","VID-156","2022-05-12","10","34","PA-383","cash","50000","","Azimul");
INSERT INTO party_payment VALUES("157","VID-157","2022-05-12","10","34","PA-403","cash","206800","","Rasel2");
INSERT INTO party_payment VALUES("158","VID-158","2022-05-12","10","34","PA-342","cash","95000","","Rasel2");
INSERT INTO party_payment VALUES("159","VID-159","2022-05-12","10","34","PA-356","cash","18400","","Rasel2");
INSERT INTO party_payment VALUES("160","VID-160","2022-05-12","10","34","PA-352","cash","20900","","Rasel2");
INSERT INTO party_payment VALUES("161","VID-161","2022-05-12","10","34","PA-406","cash","20000","","Rasel2");
INSERT INTO party_payment VALUES("162","VID-162","2022-05-12","10","34","PA-355","cash","47500","","Rasel2");
INSERT INTO party_payment VALUES("163","VID-163","2022-05-12","10","36","PA-269","cash","70000","","Ohid");
INSERT INTO party_payment VALUES("164","VID-164","2022-05-12","10","36","PA-292","cash","46500","","Ohid");
INSERT INTO party_payment VALUES("165","VID-165","2022-05-12","10","36","PA-269","cash","78300","","Ohid");
INSERT INTO party_payment VALUES("166","VID-166","2022-05-12","10","38","PA-175","cash","166200","","faruk3");
INSERT INTO party_payment VALUES("167","VID-167","2022-05-12","10","35","PA-181","cash","127000","","faruk3");
INSERT INTO party_payment VALUES("168","VID-168","2022-05-12","10","35","PA-180","cash","242000","","Maruf");
INSERT INTO party_payment VALUES("169","VID-169","2022-05-12","10","31","PA-064","cash","8150","","Aziz");
INSERT INTO party_payment VALUES("170","VID-170","2022-05-12","10","31","PA-067","cash","50000","","Aziz");
INSERT INTO party_payment VALUES("171","VID-171","2022-05-13","10","34","PA-408","cash","38000","","Rasel2");
INSERT INTO party_payment VALUES("172","VID-172","2022-05-13","10","34","PA-385","cash","64000","","Rasel2");
INSERT INTO party_payment VALUES("173","VID-173","2022-05-13","10","34","PA-406","cash","76000","","Rasel2");
INSERT INTO party_payment VALUES("174","VID-174","2022-05-13","10","34","PA-019","cash","20500","","Resel");
INSERT INTO party_payment VALUES("175","VID-175","2022-05-13","10","34","PA-407","cash","46500","","Rasel2");
INSERT INTO party_payment VALUES("176","VID-176","2022-05-13","10","34","PA-383","cash","50000","","Rasel2");
INSERT INTO party_payment VALUES("177","VID-177","2022-05-13","10","41","PA-166","cash","640000","","Saiful");
INSERT INTO party_payment VALUES("178","VID-178","2022-05-13","10","31","PA-070","cash","50000","","Aziz");
INSERT INTO party_payment VALUES("179","VID-179","2022-05-13","10","41","PA-189","cash","138000","","Saiful");
INSERT INTO party_payment VALUES("180","VID-180","2022-05-13","10","41","PA-167","cash","200000","","Saiful");
INSERT INTO party_payment VALUES("181","VID-181","2022-05-13","10","41","PA-442","cash","72000","","Saiful");
INSERT INTO party_payment VALUES("182","VID-182","2022-05-14","10","32","PA-107","cash","27300","","Anower");
INSERT INTO party_payment VALUES("183","VID-183","2022-05-14","10","32","PA-010","cash","15000","","Anower");
INSERT INTO party_payment VALUES("184","VID-184","2022-05-14","10","32","PA-109","cash","1900","","Anower");
INSERT INTO party_payment VALUES("185","VID-185","2022-05-14","10","41","PA-166","cash","26000","","Saiful");
INSERT INTO party_payment VALUES("186","VID-186","2022-05-14","10","31","PA-250","credit","107500","","BBL");
INSERT INTO party_payment VALUES("187","VID-187","2022-05-14","10","34","PA-345","cash","135000","","Azimul");
INSERT INTO party_payment VALUES("188","VID-188","2022-05-14","10","34","PA-383","cash","50000","","Azimul");
INSERT INTO party_payment VALUES("189","VID-189","2022-05-14","10","34","PA-344","cash","56000","","Azimul");
INSERT INTO party_payment VALUES("190","VID-190","2022-05-14","10","34","PA-412","cash","51600","","Rasel2");
INSERT INTO party_payment VALUES("191","VID-191","2022-05-14","10","34","PA-348","cash","10000","","Rasel2");
INSERT INTO party_payment VALUES("192","VID-192","2022-05-14","10","36","PA-296","cash","194000","","Ohid");
INSERT INTO party_payment VALUES("193","VID-193","2022-05-14","10","36","PA-267","cash","7200","","Ohid");
INSERT INTO party_payment VALUES("194","VID-194","2022-05-14","10","36","PA-017","cash","58800","","Ohid");
INSERT INTO party_payment VALUES("195","VID-195","2022-05-14","10","34","PA-397","cash","164000","","Rasel2");
INSERT INTO party_payment VALUES("196","VID-196","2022-05-14","10","36","PA-294","cash","125900","","Ohid");
INSERT INTO party_payment VALUES("197","VID-197","2022-05-14","10","42","PA-260","cash","5000","","Ohid");
INSERT INTO party_payment VALUES("198","VID-198","2022-05-14","10","34","PA-392","cash","60950","","Rasel2");
INSERT INTO party_payment VALUES("199","VID-199","2022-05-14","10","31","PA-070","cash","160000","","Aziz");
INSERT INTO party_payment VALUES("200","VID-200","2022-05-14","10","31","PA-057","cash","21500","","Aziz");
INSERT INTO party_payment VALUES("201","VID-201","2022-05-15","10","32","PA-107","cash","20000","","Anower");
INSERT INTO party_payment VALUES("202","VID-202","2022-05-15","10","39","PA-039","cash","10000","","Bkash");
INSERT INTO party_payment VALUES("203","VID-203","2022-05-15","10","34","PA-361","cash","30000","","Rasel2");
INSERT INTO party_payment VALUES("204","VID-204","2022-05-15","10","42","PA-185","cash","29400","","Ohid");
INSERT INTO party_payment VALUES("205","VID-205","2022-05-15","10","40","PA-321","cash","300000","","Miraj");
INSERT INTO party_payment VALUES("206","VID-206","2022-05-15","10","34","PA-408","cash","3000","","Rasel2");
INSERT INTO party_payment VALUES("207","VID-207","2022-05-15","10","34","PA-403","cash","224400","","Rasel2");
INSERT INTO party_payment VALUES("208","VID-208","2022-05-15","10","34","PA-414","cash","10000","","IBBL");
INSERT INTO party_payment VALUES("209","VID-209","2022-05-15","10","34","PA-412","cash","49800","","Rasel2");
INSERT INTO party_payment VALUES("210","VID-210","2022-05-15","10","34","PA-389","cash","47500","","Rasel2");
INSERT INTO party_payment VALUES("211","VID-211","2022-05-15","10","39","PA-030","cash","141000","","Liton");
INSERT INTO party_payment VALUES("212","VID-212","2022-05-15","10","34","PA-387","cash","28500","","Rasel2");
INSERT INTO party_payment VALUES("213","VID-213","2022-05-15","10","41","PA-167","cash","101500","","Saiful");
INSERT INTO party_payment VALUES("214","VID-214","2022-05-15","10","41","PA-012","cash","9000","","Saiful");
INSERT INTO party_payment VALUES("215","VID-215","2022-05-15","10","34","PA-355","cash","30000","","Rasel2");
INSERT INTO party_payment VALUES("216","VID-216","2022-05-15","10","34","PA-368","cash","20000","","Rasel2");
INSERT INTO party_payment VALUES("217","VID-217","2022-05-15","10","34","PA-345","cash","130000","","Azimul");
INSERT INTO party_payment VALUES("218","VID-218","2022-05-15","10","34","PA-396","cash","70000","","Azimul");
INSERT INTO party_payment VALUES("219","VID-219","2022-05-15","10","34","PA-383","cash","50000","","Rasel2");
INSERT INTO party_payment VALUES("220","VID-220","2022-05-15","10","34","PA-344","cash","28800","","Azimul");
INSERT INTO party_payment VALUES("221","VID-221","2022-05-15","10","34","PA-385","cash","7000","","Rasel2");
INSERT INTO party_payment VALUES("222","VID-222","2022-05-15","10","36","PA-297","cash","47500","","Ohid");
INSERT INTO party_payment VALUES("223","VID-223","2022-05-15","10","36","PA-017","cash","123400","","Ohid");
INSERT INTO party_payment VALUES("224","VID-224","2022-05-15","10","40","PA-334","cash","61000","","Miraj");
INSERT INTO party_payment VALUES("225","VID-225","2022-05-15","10","33","PA-191","cash","236750","","Saiful");
INSERT INTO party_payment VALUES("226","VID-226","2022-05-15","10","33","PA-115","cash","130000","","Saiful");
INSERT INTO party_payment VALUES("227","VID-227","2022-05-15","10","39","PA-022","cash","4100","","Liton");
INSERT INTO party_payment VALUES("228","VID-228","2022-05-15","10","31","PA-055","cash","100000","","Check Pass");
INSERT INTO party_payment VALUES("229","VID-229","2022-05-15","10","35","PA-159","cash","51900","","Check Pass");
INSERT INTO party_payment VALUES("230","VID-230","2022-06-06","10","41","PA-435","cash","191000","","DBBL(H)");
INSERT INTO party_payment VALUES("231","VID-231","2022-06-07","10","45","PA-450","cash","9000","J","HA");
INSERT INTO party_payment VALUES("232","VID-232","2022-06-05","10","45","PA-450","cash","52","fdsf","fsd");
INSERT INTO party_payment VALUES("233","VID-233","2022-06-08","10","31","PA-097","cash","50","n","Receiver Hasan. A/c:014785423");
INSERT INTO party_payment VALUES("234","VID-234","2022-06-12","10","32","PA-425","cash","10","h","Receiver Hasan. A/c:014785423");



CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO projects VALUES("2","PR-001","MA MOTORS","","","","","2020-07-22 12:25:37","","");
INSERT INTO projects VALUES("3","PR-002","Shapon Enterprize","Hasan","Masterpara","","","2022-05-02 18:57:56","","");



CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES("1","","1547629427Saif--Power-tec-Logo-226x48.jpg","1547632780Saif--Power-tec-Logo-favicon.jpg","Saif Inventory Management System","","","","","","","","","","","","","","","","","","","","","","","","","","","","2019-01-15 08:59:40");



CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `receivermode` varchar(150) CHARACTER SET latin1 NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO supplier_payment VALUES("1","SPR-001","2022-05-05","SID-001","cash","2000000","leo","","");
INSERT INTO supplier_payment VALUES("2","SPR-002","2022-06-01","SID-003","cash","900","Receiver Hasan. A/c:014785423","g","");



CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

INSERT INTO suppliers VALUES("196","SID-001","ignite","mohakhalia","palash","8815742","01911139249","cash","40");
INSERT INTO suppliers VALUES("197","SID-002","ZINANI","ZIRANI","","","","cash","40");
INSERT INTO suppliers VALUES("198","SID-003","DK","MAWNA","","","","cash","40");
INSERT INTO suppliers VALUES("199","SID-004","ECO","MAWNA","","","","cash","40");
INSERT INTO suppliers VALUES("200","SID-005","DONG YA","KASHIMPUR","","","","cash","40");
INSERT INTO suppliers VALUES("201","SID-006","Supai","Magnaghat","","","","cash","40");
INSERT INTO suppliers VALUES("202","SID-007","Charger Company","Tongi","","","","cash","48");
INSERT INTO suppliers VALUES("203","SID-008","Luminus ","Gazipur","","","","cash","42");
INSERT INTO suppliers VALUES("204","SID-009","Sk","","","","","cash","42");
INSERT INTO suppliers VALUES("205","SID-010","Meghna Company","Lalbag","","","","cash","51");
INSERT INTO suppliers VALUES("206","SID-011","Khushiara","Nawbabpur","","","","cash","49");
INSERT INTO suppliers VALUES("207","SID-012","RS ","Nawbabpur","Faruk","01654982567","","cash","42");
INSERT INTO suppliers VALUES("208","SID-013","Hazi auto and Bearing","Nawbabpur","","","","cash","42");
INSERT INTO suppliers VALUES("209","SID-014","Air International","Gazipur","","","","cash","49");
INSERT INTO suppliers VALUES("210","SID-015","Hossen Company","Naraongonj","","","","cash","42");
INSERT INTO suppliers VALUES("211","SID-016","Masud Casing","CNG Pump","","","","cash","44");
INSERT INTO suppliers VALUES("212","SID-017","sbl","hyy","435","665645","01111321","cash","40");
INSERT INTO suppliers VALUES("213","SID-018","sbl","hyy","435","665645","01111321","cash","40");
INSERT INTO suppliers VALUES("214","SID-019","atiq hasan","banainii","harun","0189789","123123123","cash","40");



CREATE TABLE `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tranid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trandate` date NOT NULL,
  `partner_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `party_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `trantype` varchar(20) CHARACTER SET latin1 NOT NULL,
  `amount` int(20) NOT NULL,
  `remarks` varchar(200) CHARACTER SET latin1 NOT NULL,
  `warehouse_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO transport VALUES("1","TRN-001","2022-05-12","41","A","cash","0","W(01.05-12.05)","10");
INSERT INTO transport VALUES("2","TRN-002","2022-05-09","41","A","cash","10500","","10");



CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `id2` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `project_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","2","1","3","1","Ma Motors","Ma","Motors","admin","","2","10","admin@mamotors.com","b3c8a5f4fb861eee77d109b79d0a4b55","1","b1970adb3f301c8440c81e45b526060c","1","0","PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr","1","1","2019-01-14 06:17:02","2019-01-21 02:36:38","");
INSERT INTO users VALUES("2","2","1","3","2","Tangail","Tangail","Warehouse","whm","","2","17","tangail@mamotors.com","b3c8a5f4fb861eee77d109b79d0a4b55","1","b1970adb3f301c8440c81e45b526060c","1","0","","1","","2019-01-14 06:17:02","2019-01-14 06:17:02","");
INSERT INTO users VALUES("3","2","1","3","3","Masterpara","Masterpara","Warehouse","whm","","2","18","masterpara@mamotors.com","b3c8a5f4fb861eee77d109b79d0a4b55","1","fe3ae4e0b22211d756922a0bede508cf","1","0","","1","","2019-01-14 06:17:02","2019-01-14 06:17:02","");
INSERT INTO users VALUES("4","1","1","3","4","Super Admin","Super","Admin","superAdmin","16","2","1","superadmin@admin.com","b3c8a5f4fb861eee77d109b79d0a4b55","1","b1970adb3f301c8440c81e45b526060c","1","0","PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr","4","4","","","");
INSERT INTO users VALUES("7","2","1","3","5","Gazipur","gazipur","gazipur","whm","16","2","20","gazipur@mamotors.com","b3c8a5f4fb861eee77d109b79d0a4b55","1","b1970adb3f301c8440c81e45b526060c","1","0","PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr","4","4","","","");

