DROP TABLE IF EXISTS "MLPMaster";
CREATE TABLE MLPMaster(
  id            INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  ticker        VARCHAR(16) NOT NULL UNIQUE,
  name          VARCHAR(64) NOT NULL,
  sector        VARCHAR(64),
  yield         FLOAT,
  distr         FLOAT,
  distrincr     INTEGER,
  distrsince    VARCHAR(16),
  sharesout     INTEGER,
  ipo           DATE,
  date          DATE NOT NULL DEFAULT (date('now')));
INSERT INTO "MLPMaster" VALUES(99,'ACMP','Access Midstream Partners LP','Gathering & Processing',4.5,0.45,9,'2010 Q4',189500000,'7/28/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(100,'AHGP','Alliance Holdings GP LP','Coal',5.6,0.74,20,'2006 Q2',59900000,'5/9/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(101,'ALDW','Alon USA Partners LP','Other | Refining',28.9,1.92,0,'N/A',62500000,'11/19/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(102,'AMID','American Midstream Partners LP','Gathering & Processing',9.7,0.4325,0,'2011 Q4',9100000,'7/26/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(103,'APL','Atlas Pipeline Partners LP','Gathering & Processing',6.7,0.58,2,'2010 Q4',64599999.99999999,'1/28/2000','2013-03-31');
INSERT INTO "MLPMaster" VALUES(104,'APU','AmeriGas Partners LP','Propane',7.1,0.8,0,'1995 Q3',92800000,'4/12/1995','2013-03-31');
INSERT INTO "MLPMaster" VALUES(105,'ARLP','Alliance Resource Partners LP','Coal',7,1.1075,20,'1999 Q4',37000000,'8/16/1999','2013-03-31');
INSERT INTO "MLPMaster" VALUES(106,'ARP','Atlas Resource Partners','Exploration & Production',7.9,0.48,3,'2012 Q2',47800000,'3/13/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(107,'ATLS','Atlas Energy LP','Gathering & Processing',2.7,0.3,2,'2010 Q4',51400000,'7/20/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(108,'BBEP','BreitBurn Energy Partners LP','Exploration & Production',9.4,0.47,13,'2010 Q2',99700000,'10/3/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(109,'BKEP','Blueknight Energy Partners LP','Petroleum Transportation',5.4,0.115,2,'2012 Q2',22700000,'7/17/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(110,'BPL','Buckeye Partners LP','Petroleum Transportation',6.8,1.0375,0,'1987 Q2',105300000,'12/16/1986','2013-03-31');
INSERT INTO "MLPMaster" VALUES(111,'BWP','Boardwalk Pipeline Partners LP','Natural Gas Transportation',7.3,0.5325,0,'2006 Q1',230600000,'11/8/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(112,'CEP','Constellation Energy Partners LLC','Exploration & Production',0,0,0,'N/A',23700000,'11/14/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(113,'CLMT','Calumet Specialty Products Partners LP','Other | Refining',7,0.65,11,'2008 Q3',63300000,'1/25/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(114,'CMLP','Crestwood Midstream Partners LP','Gathering & Processing',8.6,0.51,0,'2007 Q4',54800000,'8/6/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(115,'CPLP','Capital Product Partners LP','Shipping',11.2,0.2325,0,'2010 Q2',84900000,'3/29/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(116,'CPNO','Copano Energy LLC','Gathering & Processing',5.7,0.575,0,'2004 Q4',91900000,'11/8/2004','2013-03-31');
INSERT INTO "MLPMaster" VALUES(117,'CQP','Cheniere Energy Partners LP','Other | Liquefied Natural Gas',6.2,0.425,0,'2007 Q2',325800000,'3/20/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(118,'CVRR','CVR Refining LP','Other | Refining',13.6,1.1804,0,'N/A',147600000,'1/16/2013','2013-03-31');
INSERT INTO "MLPMaster" VALUES(119,'DKL','Delek Logistics Partners LP','Petroleum Transportation',4.8,0.375,0,'N/A',24000000,'11/1/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(120,'DMLP','Dorchester Minerals LP','Exploration & Production',7.5,0.4332,0,'N/A',30700000,'2/3/2003','2013-03-31');
INSERT INTO "MLPMaster" VALUES(121,'DPM','DCP Midstream Partners LP','Gathering & Processing',5.9,0.69,10,'2005 Q4',72300000,'12/1/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(122,'EEP','Enbridge Energy Partners LP','Petroleum Transportation',7.2,0.5435,0,'1992 Q2',262000000,'12/20/1991','2013-03-31');
INSERT INTO "MLPMaster" VALUES(123,'EEQ','Enbridge Energy Management LLC (I-Units)','Petroleum Transportation',7.2,0.5435,0,'2002 Q4',52300000,'10/10/2002','2013-03-31');
INSERT INTO "MLPMaster" VALUES(124,'ENGY','Central Energy Partners LP','Petroleum Transportation',0,0,0,'N/A',15900000,'10/1/2004','2013-03-31');
INSERT INTO "MLPMaster" VALUES(125,'EPB','El Paso Pipeline Partners LP','Natural Gas Transportation',5.6,0.61,21,'2008 Q2',215800000,'11/15/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(126,'EPD','Enterprise Products Partners LP','Natural Gas Transportation',4.4,0.66,35,'1998 Q3',912500000,'7/27/1998','2013-03-31');
INSERT INTO "MLPMaster" VALUES(127,'EQM','EQT Midstream Partners LP','Natural Gas Transportation',3.6,0.35,0,'N/A',34700000,'6/26/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(128,'EROC','Eagle Rock Energy Partners LP','Exploration & Production',9,0.22,0,'2009 Q3',147300000,'10/24/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(129,'ETE','Energy Transfer Equity LP','Natural Gas Transportation',4.3,0.635,1,'2006 Q1',280000000,'2/2/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(130,'ETP','Energy Transfer Partners LP','Natural Gas Transportation',7.1,0.8938,0,'1996 Q3',303700000,'6/25/1996','2013-03-31');
INSERT INTO "MLPMaster" VALUES(131,'EVEP','EV Energy Partners LP','Exploration & Production',5.6,0.767,26,'2007 Q1',42600000,'9/26/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(132,'EXLP','Exterran Partners LP','Other | Compression',7.8,0.5125,26,'2007 Q1',42300000,'10/16/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(133,'FGP','Ferrellgas Partners LP','Propane',10.8,0.5,0,'1994 Q3',79000000,'6/28/1994','2013-03-31');
INSERT INTO "MLPMaster" VALUES(134,'GEL','Genesis Energy LP','Petroleum Transportation',4,0.485,31,'2003 Q2',84700000,'11/26/1996','2013-03-31');
INSERT INTO "MLPMaster" VALUES(135,'GLP','Global Partners LP','Other | Wholesale Distribution',6.4,0.57,4,'2005 Q4',27400000,'9/28/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(136,'GMLP','Golar LNG Partners LP','Shipping',6.1,0.5,6,'2011 Q3',56500000,'4/7/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(137,'GSJK','Compressco Partners LP','Other | Compression',8.4,0.42,2,'2011 Q3',15500000,'6/14/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(138,'HCLP','Hi-Crush Partners LP','Other | Frac Sand',10.2,0.475,0,'N/A',31000000,'8/15/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(139,'HEP','Holly Energy Partners LP','Petroleum Transportation',4.7,0.47,33,'2004 Q3',56800000,'7/7/2004','2013-03-31');
INSERT INTO "MLPMaster" VALUES(140,'KMP','Kinder Morgan Energy Partners LP','Petroleum Transportation',5.8,1.29,4,'1992 Q4',263300000,'7/30/1992','2013-03-31');
INSERT INTO "MLPMaster" VALUES(141,'KMR','Kinder Morgan Management LLC (I-Units)','Petroleum Transportation',5.9,1.29,4,'2001 Q2',116900000,'5/14/2001','2013-03-31');
INSERT INTO "MLPMaster" VALUES(142,'LGCY','Legacy Reserves LP','Exploration & Production',8.3,0.57,10,'2007 Q3',57300000,'1/11/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(143,'LGP','Lehigh Gas Partners','Other | Wholesale Distribution',7.7,0.4375,0,'N/A',15100000,'10/24/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(144,'LINE','Linn Energy LLC','Exploration & Production',7.6,0.725,0,'2006 Q1',235100000,'1/12/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(145,'LRE','LRR Energy LP','Exploration & Production',10.9,0.48,2,'2012 Q1',22400000,'11/10/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(146,'MCEP','Mid-Con Energy Partners LP','Exploration & Production',8.6,0.495,2,'2012 Q1',19200000,'12/14/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(147,'MEMP','Memorial Production Partners LP','Exploration & Production',10.3,0.5075,2,'2012 Q1',22300000,'12/8/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(148,'MMLP','Martin Midstream Partners LP','Other | Diversified Midstream',8,0.77,0,'2002 Q4',26600000,'10/31/2002','2013-03-31');
INSERT INTO "MLPMaster" VALUES(149,'MMP','Magellan Midstream Partners LP','Petroleum Transportation',3.7,0.5,13,'2001 Q1',226700000,'2/5/2001','2013-03-31');
INSERT INTO "MLPMaster" VALUES(150,'MPLX','MPLX LP','Petroleum Transportation',2.8,0.2625,0,'N/A',73900000,'10/25/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(151,'MWE','MarkWest Energy Partners LP','Gathering & Processing',5.4,0.82,10,'2002 Q2',149100000,'5/20/2002','2013-03-31');
INSERT INTO "MLPMaster" VALUES(152,'NGL','NGL Energy Partners LP','Propane',6.9,0.4625,6,'2011 Q3',55100000,'5/11/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(153,'NGLS','Targa Resources Partners LP','Gathering & Processing',5.9,0.68,11,'2007 Q2',101800000,'2/8/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(154,'NKA','Niska Gas Storage Partners LLC','Natural Gas Transportation',10.9,0.35,0,'2010 Q3',68300000,'5/11/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(155,'NMM','Navios Maritime Partners LP','Shipping',12.2,0.4425,0,'2008 Q1',65300000,'11/12/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(156,'NRGM','Inergy Midstream LP','Natural Gas Transportation',6.4,0.39,2,'2012 Q3',85900000,'12/15/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(157,'NRGY','Inergy LP','Propane',5.7,0.29,0,'2012 Q4',131699999.99999999,'7/25/2001','2013-03-31');
INSERT INTO "MLPMaster" VALUES(158,'NRP','Natural Resource Partners LP','Coal',9.4,0.55,0,'2002 Q4',109800000,'10/10/2002','2013-03-31');
INSERT INTO "MLPMaster" VALUES(159,'NS','NuStar Energy LP','Petroleum Transportation',8.2,1.095,0,'2001 Q2',77900000,'4/9/2001','2013-03-31');
INSERT INTO "MLPMaster" VALUES(160,'NSH','NuStar GP Holdings LLC','Petroleum Transportation',6.7,0.545,0,'2006 Q3',42600000,'7/13/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(161,'NSLP','New Source Energy Partners LP','Exploration & Production',10.3,0.525,0,'2013 Q1',7400000,'2/7/2013','2013-03-31');
INSERT INTO "MLPMaster" VALUES(162,'NTI','Northern Tier Energy LP','Other | Refining',17,1.27,0,'N/A',91900000,'7/25/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(163,'OILT','Oiltanking Partners LP','Petroleum Transportation',3,0.39,7,'2011 Q4',38900000,'7/13/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(164,'OKS','ONEOK Partners LP','Natural Gas Transportation',5,0.71,15,'1994 Q1',219800000,'9/24/1993','2013-03-31');
INSERT INTO "MLPMaster" VALUES(165,'OXF','Oxford Resource Partners LP','Coal',0,0,0,'2012Q4',20700000,'7/13/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(166,'PAA','Plains All American Pipeline LP','Petroleum Transportation',4,0.5625,15,'2000 Q1',336200000,'11/17/1998','2013-03-31');
INSERT INTO "MLPMaster" VALUES(167,'PDH','PetroLogistics LP','Other | Petrochemicals',8.1,0.28,0,'N/A',139900000,'5/3/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(168,'PNG','PAA Natural Gas Storage LP','Natural Gas Transportation',6.7,0.3575,0,'2010 Q3',84600000,'4/29/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(169,'PSE','Pioneer Southwest Energy Partners LP','Exploration & Production',8.5,0.52,0,'2008 Q3',35700000,'4/30/2008','2013-03-31');
INSERT INTO "MLPMaster" VALUES(170,'PVR','Penn Virginia Resource Partners LP','Natural Gas Transportation',9.1,0.55,9,'2001 Q4',128300000.00000001,'10/24/2001','2013-03-31');
INSERT INTO "MLPMaster" VALUES(171,'QRE','QR Energy LP','Exploration & Production',11,0.4875,0,'2011 Q1',81200000,'12/16/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(172,'RGP','Regency Energy Partners LP','Gathering & Processing',7.3,0.46,0,'2006 Q1',175600000,'1/30/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(173,'RNF','Rentech Nitrogen Partners LP','Other | Nitrogen',8.4,0.75,0,'N/A',38800000,'11/3/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(174,'RNO','Rhino Resource Partners LP','Coal',13.3,0.445,0,'N/A',27800000,'9/29/2010','2013-03-31');
INSERT INTO "MLPMaster" VALUES(175,'RRMS','Rose Rock Midstream LP','Petroleum Transportation',4.1,0.4025,5,'2012 Q1',21500000,'12/8/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(176,'SDLP','Seadrill Partners LLC','Other | Offshore Drilling',5.6,0.3875,0,'N/A',41400000,'10/18/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(177,'SEP','Spectra Energy Partners LP','Natural Gas Transportation',5,0.495,14,'2007 Q4',103600000,'6/26/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(178,'SGU','Star Gas Partners LP','Other | Heating Oil Distribution',6.8,0.0775,1,'2009 Q1',59900000,'12/14/1995','2013-03-31');
INSERT INTO "MLPMaster" VALUES(179,'SMLP','Summit Midstream Partners LP','Gathering & Processing',5.9,0.41,0,'N/A',48800000,'9/27/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(180,'SPH','Suburban Propane Partners LP','Propane',7.9,0.875,1,'1996 Q1',57100000,'2/29/1996','2013-03-31');
INSERT INTO "MLPMaster" VALUES(181,'SUSP','Susser Petroleum Partners LP','Other | Wholesale Distribution',5.4,0.4375,0,'N/A',21900000,'9/19/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(182,'SXCP','SunCoke Energy Partners LP','Other | Coke',7.9,0.4125,0,'2013 Q1',31400000,'1/17/2013','2013-03-31');
INSERT INTO "MLPMaster" VALUES(183,'SXE','Southcross Energy Partners LP','Gathering & Processing',7.9,0.4,0,'N/A',24400000,'11/1/2012','2013-03-31');
INSERT INTO "MLPMaster" VALUES(184,'SXL','Sunoco Logistics Partners LP','Petroleum Transportation',3.3,0.545,32,'2002 Q1',103800000,'2/4/2002','2013-03-31');
INSERT INTO "MLPMaster" VALUES(185,'TCP','TC PipeLines LP','Natural Gas Transportation',6.4,0.78,0,'1999 Q2',53500000,'5/24/1999','2013-03-31');
INSERT INTO "MLPMaster" VALUES(186,'TGP','Teekay LNG Partners LP','Shipping',6.5,0.675,0,'2005 Q2',69700000,'5/4/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(187,'TLLP','Tesoro Logistics LP','Petroleum Transportation',3.5,0.4725,8,'2011 Q3',45500000,'4/19/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(188,'TLP','TransMontaigne Partners LP','Petroleum Transportation',5.1,0.64,0,'2005 Q2',14500000,'5/24/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(189,'TNH','Terra Nitrogen Company LP','Other | Nitrogen',6.6,3.63,0,'N/A',18500000,'11/26/1991','2013-03-31');
INSERT INTO "MLPMaster" VALUES(190,'TOO','Teekay Offshore Partners LP','Shipping',6.8,0.5125,0,'2007 Q1',80100000,'12/13/2006','2013-03-31');
INSERT INTO "MLPMaster" VALUES(191,'UAN','CVR Partners LP','Other | Nitrogen',3.1,0.192,0,'N/A',73100000,'4/7/2011','2013-03-31');
INSERT INTO "MLPMaster" VALUES(192,'USAC','USA Compression Partners LP','Other | Compression',8.5,0.425,0,'2013Q1',29100000,'1/14/2013','2013-03-31');
INSERT INTO "MLPMaster" VALUES(193,'VNR','Vanguard Natural Resources LLC','Exploration & Production',8.6,0.6075,10,'2008 Q1',67900000,'10/23/2007','2013-03-31');
INSERT INTO "MLPMaster" VALUES(194,'WES','Western Gas Partners LP','Gathering & Processing',3.5,0.52,16,'2009 Q2',105100000,'5/8/2008','2013-03-31');
INSERT INTO "MLPMaster" VALUES(195,'WPZ','Williams Partners LP','Gathering & Processing',6.4,0.8275,13,'2005 Q3',412200000,'8/17/2005','2013-03-31');
INSERT INTO "MLPMaster" VALUES(196,'XTEX','Crosstex Energy LP','Gathering & Processing',7.2,0.33,0,'2010 Q4',93700000,'12/11/2002','2013-03-31');
