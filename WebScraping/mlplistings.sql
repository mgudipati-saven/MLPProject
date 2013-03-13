DROP TABLE IF EXISTS "MLPListings";
CREATE TABLE MLPListings(
  id            INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  ticker        VARCHAR(16) NOT NULL,
  name          VARCHAR(64) NOT NULL,
  sector        VARCHAR(64),
  yield         FLOAT,
  distr         FLOAT,
  distrincr     INTEGER,
  distrsince    VARCHAR(16),
  sharesout     INTEGER,
  ipo           DATE,
  date          DATE NOT NULL DEFAULT (date('now')));
INSERT INTO "MLPListings" VALUES(1,'ACMP','Access Midstream Partners LP','Gathering & Processing',4.4,0.435,8,'2010 Q4',164000000,'7/28/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(2,'AHGP','Alliance Holdings GP LP','Coal',5.6,0.72,19,'2006 Q2',59900000,'5/9/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(3,'ALDW','Alon USA Partners LP','Other | Refining',19.1,1.3,0,'N/A',62500000,'11/19/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(4,'AMID','American Midstream Partners LP','Gathering & Processing',10.3,0.4325,0,'2011 Q4',9100000,'7/26/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(5,'APL','Atlas Pipeline Partners LP','Gathering & Processing',6.9,0.57,1,'2010 Q4',63800000,'1/28/2000','2013-03-13');
INSERT INTO "MLPListings" VALUES(6,'APU','AmeriGas Partners LP','Propane',0,0.8,0,'1995 Q3',92800000,'4/12/1995','2013-03-13');
INSERT INTO "MLPListings" VALUES(7,'ARLP','Alliance Resource Partners LP','Coal',7,1.085,19,'1999 Q4',36900000,'8/16/1999','2013-03-13');
INSERT INTO "MLPListings" VALUES(8,'ARP','Atlas Resource Partners','Exploration & Production',7.4,0.43,2,'2012 Q2',47500000,'3/13/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(9,'ATLS','Atlas Energy LP','Gathering & Processing',2.6,0.27,1,'2010 Q4',51400000,'7/20/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(10,'BBEP','BreitBurn Energy Partners LP','Exploration & Production',9.6,0.465,12,'2010 Q2',83700000,'10/3/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(11,'BKEP','Blueknight Energy Partners LP','Petroleum Transportation',0,0.1125,1,'2012 Q2',22700000,'7/17/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(12,'BPL','Buckeye Partners LP','Petroleum Transportation',7,1.0375,0,'1987 Q2',98100000,'12/16/1986','2013-03-13');
INSERT INTO "MLPListings" VALUES(13,'BWP','Boardwalk Pipeline Partners LP','Natural Gas Transportation',7.7,0.5325,0,'2006 Q1',230600000,'11/8/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(14,'CEP','Constellation Energy Partners LLC','Exploration & Production',0,0,0,'N/A',23700000,'11/14/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(15,'CLMT','Calumet Specialty Products Partners LP','Other | Refining',6.4,0.62,10,'2008 Q3',57500000,'1/25/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(16,'CMLP','Crestwood Midstream Partners LP','Gathering & Processing',8.1,0.51,1,'2007 Q4',48200000,'8/6/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(17,'CPLP','Capital Product Partners LP','Shipping',12.1,0.2325,0,'2010 Q2',84900000,'3/29/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(18,'CPNO','Copano Energy LLC','Gathering & Processing',6.1,0.575,0,'2004 Q4',91500000,'11/8/2004','2013-03-13');
INSERT INTO "MLPListings" VALUES(19,'CQP','Cheniere Energy Partners LP','Other | Liquefied Natural Gas',7,0.425,0,'2007 Q2',294900000,'3/20/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(20,'DKL','Delek Logistics Partners LP','Petroleum Transportation',5.1,0.375,0,'N/A',24000000,'11/1/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(21,'DMLP','Dorchester Minerals LP','Exploration & Production',0,0.3433,0,'N/A',30700000,'2/3/2003','2013-03-13');
INSERT INTO "MLPListings" VALUES(22,'DPM','DCP Midstream Partners LP','Gathering & Processing',0,0.68,9,'2005 Q4',61100000,'12/1/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(23,'EEP','Enbridge Energy Partners LP','Petroleum Transportation',7.6,0.5435,0,'1992 Q2',278100000,'12/20/1991','2013-03-13');
INSERT INTO "MLPListings" VALUES(24,'EEQ','Enbridge Energy Management LLC (I-Units)','Petroleum Transportation',7.5,0.5435,0,'2002 Q4',41200000,'10/10/2002','2013-03-13');
INSERT INTO "MLPListings" VALUES(25,'ENGY','Central Energy Partners LP','Petroleum Transportation',0,0,0,'N/A',15900000,'10/1/2004','2013-03-13');
INSERT INTO "MLPListings" VALUES(26,'EPB','El Paso Pipeline Partners LP','Natural Gas Transportation',5.5,0.58,20,'2008 Q2',215800000,'11/15/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(27,'EPD','Enterprise Products Partners LP','Natural Gas Transportation',0,0.65,34,'1998 Q3',900200000,'7/27/1998','2013-03-13');
INSERT INTO "MLPListings" VALUES(28,'EQM','EQT Midstream Partners LP','Natural Gas Transportation',3.6,0.35,0,'N/A',34700000,'6/26/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(29,'EROC','Eagle Rock Energy Partners LP','Exploration & Production',9.1,0.22,0,'2009 Q3',147400000,'10/24/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(30,'ETE','Energy Transfer Equity LP','Natural Gas Transportation',4.4,0.625,0,'2006 Q1',280000000,'2/2/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(31,'ETP','Energy Transfer Partners LP','Natural Gas Transportation',0,0.8938,0,'1996 Q3',300500000,'6/25/1996','2013-03-13');
INSERT INTO "MLPListings" VALUES(32,'EVEP','EV Energy Partners LP','Exploration & Production',5.9,0.766,25,'2007 Q1',42300000,'9/26/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(33,'EXLP','Exterran Partners LP','Other | Compression',8,0.5075,25,'2007 Q1',42300000,'10/16/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(34,'FGP','Ferrellgas Partners LP','Propane',9.8,0.5,0,'1994 Q3',79000000,'6/28/1994','2013-03-13');
INSERT INTO "MLPListings" VALUES(35,'GEL','Genesis Energy LP','Petroleum Transportation',4,0.4725,30,'2003 Q2',84700000,'11/26/1996','2013-03-13');
INSERT INTO "MLPListings" VALUES(36,'GLP','Global Partners LP','Other | Wholesale Distribution',5.8,0.5325,3,'2005 Q4',27400000,'9/28/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(37,'GMLP','Golar LNG Partners LP','Shipping',6.2,0.475,5,'2011 Q3',52200000,'4/7/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(38,'GSJK','Compressco Partners LP','Other | Compression',7.9,0.3975,1,'2011 Q3',15500000,'6/14/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(39,'HCLP','Hi-Crush Partners LP','Other | Frac Sand',10.3,0.475,0,'N/A',27300000,'8/15/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(40,'HEP','Holly Energy Partners LP','Petroleum Transportation',8.4,0.925,32,'2004 Q3',28400000,'7/7/2004','2013-03-13');
INSERT INTO "MLPListings" VALUES(41,'KMP','Kinder Morgan Energy Partners LP','Petroleum Transportation',5.9,1.26,3,'1992 Q4',257500000,'7/30/1992','2013-03-13');
INSERT INTO "MLPListings" VALUES(42,'KMR','Kinder Morgan Management LLC (I-Units)','Petroleum Transportation',6.2,1.26,3,'2001 Q2',115100000,'5/14/2001','2013-03-13');
INSERT INTO "MLPListings" VALUES(43,'LGCY','Legacy Reserves LP','Exploration & Production',8.7,0.565,9,'2007 Q3',56800000,'1/11/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(44,'LGP','Lehigh Gas Partners','Other | Wholesale Distribution',7.8,0.4375,0,'N/A',15100000,'10/24/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(45,'LINE','Linn Energy LLC','Exploration & Production',7.7,0.725,0,'2006 Q1',234400000,'1/12/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(46,'LRE','LRR Energy LP','Exploration & Production',11,0.4775,1,'2012 Q1',22400000,'11/10/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(47,'MCEP','Mid-Con Energy Partners LP','Exploration & Production',8.5,0.485,1,'2012 Q1',18900000,'12/14/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(48,'MEMP','Memorial Production Partners LP','Exploration & Production',10.5,0.495,1,'2012 Q1',32799999.999999996,'12/8/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(49,'MMLP','Martin Midstream Partners LP','Other | Diversified Midstream',8.6,0.77,1,'2002 Q4',26600000,'10/31/2002','2013-03-13');
INSERT INTO "MLPListings" VALUES(50,'MMP','Magellan Midstream Partners LP','Petroleum Transportation',3.9,0.485,12,'2001 Q1',226200000,'2/5/2001','2013-03-13');
INSERT INTO "MLPListings" VALUES(51,'MPLX','MPLX LP','Petroleum Transportation',2.8,0.2625,0,'N/A',73900000,'10/25/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(52,'MWE','MarkWest Energy Partners LP','Gathering & Processing',5.5,0.81,9,'2002 Q2',147300000,'5/20/2002','2013-03-13');
INSERT INTO "MLPListings" VALUES(53,'NGL','NGL Energy Partners LP','Propane',7.4,0.45,5,'2011 Q3',53900000,'5/11/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(54,'NGLS','Targa Resources Partners LP','Gathering & Processing',6.1,0.6625,10,'2007 Q2',100100000,'2/8/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(55,'NKA','Niska Gas Storage Partners LLC','Natural Gas Transportation',11.4,0.35,0,'2010 Q3',68300000,'5/11/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(56,'NMM','Navios Maritime Partners LP','Shipping',0,0.4425,0,'2008 Q1',60100000,'11/12/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(57,'NRGM','Inergy Midstream LP','Natural Gas Transportation',6.6,0.385,1,'2012 Q3',85900000,'12/15/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(58,'NRGY','Inergy LP','Propane',5.8,0.29,0,'2012 Q4',131500000,'7/25/2001','2013-03-13');
INSERT INTO "MLPListings" VALUES(59,'NRP','Natural Resource Partners LP','Coal',9.9,0.55,0,'2002 Q4',106000000,'10/10/2002','2013-03-13');
INSERT INTO "MLPListings" VALUES(60,'NS','NuStar Energy LP','Petroleum Transportation',8.7,1.095,0,'2001 Q2',77900000,'4/9/2001','2013-03-13');
INSERT INTO "MLPListings" VALUES(61,'NSH','NuStar GP Holdings LLC','Petroleum Transportation',7.4,0.545,1,'2006 Q3',42600000,'7/13/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(62,'OILT','Oiltanking Partners LP','Petroleum Transportation',3.1,0.375,6,'2011 Q4',38900000,'7/13/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(63,'OKS','ONEOK Partners LP','Natural Gas Transportation',0,0.685,14,'1994 Q1',219800000,'9/24/1993','2013-03-13');
INSERT INTO "MLPListings" VALUES(64,'OXF','Oxford Resource Partners LP','Coal',27.9,0.2,0,'2012Q4',20700000,'7/13/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(65,'PAA','Plains All American Pipeline LP','Petroleum Transportation',4,0.5425,14,'2000 Q1',334000000,'11/17/1998','2013-03-13');
INSERT INTO "MLPListings" VALUES(66,'PDH','PetroLogistics LP','Other | Petrochemicals',5.8,0.21,0,'N/A',139600000,'5/3/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(67,'PNG','PAA Natural Gas Storage LP','Natural Gas Transportation',7,0.3575,0,'2010 Q3',84600000,'4/29/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(68,'PSE','Pioneer Southwest Energy Partners LP','Exploration & Production',9.1,0.52,0,'2008 Q3',35700000,'4/30/2008','2013-03-13');
INSERT INTO "MLPListings" VALUES(69,'PVR','Penn Virginia Resource Partners LP','Natural Gas Transportation',9.4,0.54,8,'2001 Q4',127800000,'10/24/2001','2013-03-13');
INSERT INTO "MLPListings" VALUES(70,'QRE','QR Energy LP','Exploration & Production',11.4,0.4875,0,'2011 Q1',75800000,'12/16/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(71,'RGP','Regency Energy Partners LP','Gathering & Processing',7.6,0.46,0,'2006 Q1',175500000,'1/30/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(72,'RNF','Rentech Nitrogen Partners LP','Other | Nitrogen',8.9,0.85,0,'N/A',38800000,'11/3/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(73,'RNO','Rhino Resource Partners LP','Coal',13,0.445,0,'N/A',27700000,'9/29/2010','2013-03-13');
INSERT INTO "MLPListings" VALUES(74,'RRMS','Rose Rock Midstream LP','Petroleum Transportation',4.3,0.3925,4,'2012 Q1',16800000,'12/8/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(75,'SDLP','Seadrill Partners LLC','Other | Offshore Drilling',5.3,0.3875,0,'N/A',41400000,'10/18/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(76,'SEP','Spectra Energy Partners LP','Natural Gas Transportation',4.9,0.49,13,'2007 Q4',103600000,'6/26/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(77,'SGU','Star Gas Partners LP','Other | Heating Oil Distribution',6.9,0.0775,0,'2009 Q1',60300000,'12/14/1995','2013-03-13');
INSERT INTO "MLPListings" VALUES(78,'SMLP','Summit Midstream Partners LP','Gathering & Processing',6.1,0.4,0,'N/A',48800000,'9/27/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(79,'SPH','Suburban Propane Partners LP','Propane',8,0.8525,0,'1996 Q1',57000000,'2/29/1996','2013-03-13');
INSERT INTO "MLPListings" VALUES(80,'SUSP','Susser Petroleum Partners LP','Other | Wholesale Distribution',5.6,0.4375,0,'N/A',21900000,'9/19/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(81,'SXE','Southcross Energy Partners LP','Gathering & Processing',6.6,0.4,0,'N/A',24400000,'11/1/2012','2013-03-13');
INSERT INTO "MLPListings" VALUES(82,'SXL','Sunoco Logistics Partners LP','Petroleum Transportation',3.1,0.5175,31,'2002 Q1',103600000,'2/4/2002','2013-03-13');
INSERT INTO "MLPListings" VALUES(83,'TCP','TC PipeLines LP','Natural Gas Transportation',6.5,0.78,0,'1999 Q2',53500000,'5/24/1999','2013-03-13');
INSERT INTO "MLPListings" VALUES(84,'TGP','Teekay LNG Partners LP','Shipping',6.9,0.675,0,'2005 Q2',69700000,'5/4/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(85,'TLLP','Tesoro Logistics LP','Petroleum Transportation',0,0.455,7,'2011 Q3',35800000,'4/19/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(86,'TLP','TransMontaigne Partners LP','Petroleum Transportation',5.4,0.64,0,'2005 Q2',14500000,'5/24/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(87,'TNH','Terra Nitrogen Company LP','Other | Nitrogen',7.2,4.12,0,'N/A',18500000,'11/26/1991','2013-03-13');
INSERT INTO "MLPListings" VALUES(88,'TOO','Teekay Offshore Partners LP','Shipping',7.1,0.5125,0,'2007 Q1',80100000,'12/13/2006','2013-03-13');
INSERT INTO "MLPListings" VALUES(89,'UAN','CVR Partners LP','Other | Nitrogen',7.7,0.496,0,'N/A',73000000,'4/7/2011','2013-03-13');
INSERT INTO "MLPListings" VALUES(90,'VNR','Vanguard Natural Resources LLC','Exploration & Production',8.7,0.6075,9,'2008 Q1',58700000,'10/23/2007','2013-03-13');
INSERT INTO "MLPListings" VALUES(91,'WES','Western Gas Partners LP','Gathering & Processing',3.5,0.5,15,'2009 Q2',104700000,'5/8/2008','2013-03-13');
INSERT INTO "MLPListings" VALUES(92,'WPZ','Williams Partners LP','Gathering & Processing',6.6,0.8075,12,'2005 Q3',398000000,'8/17/2005','2013-03-13');
INSERT INTO "MLPListings" VALUES(93,'XTEX','Crosstex Energy LP','Gathering & Processing',7.5,0.33,0,'2010 Q4',81400000,'12/11/2002','2013-03-13');
