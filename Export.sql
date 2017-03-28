--------------------------------------------------------
--  File created - Monday-March-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOQUET_FLOWERS
--------------------------------------------------------

  CREATE TABLE "JSP"."BOQUET_FLOWERS" 
   (	"P_ID" NUMBER, 
	"F_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "JSP"."CART" 
   (	"ID" NUMBER, 
	"CLIENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART_DETAILS
--------------------------------------------------------

  CREATE TABLE "JSP"."CART_DETAILS" 
   (	"ID" NUMBER, 
	"CLIENT_ID" NUMBER, 
	"PRODUCT_ID" NUMBER, 
	"QUANTITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART_DETAILS_EXTRAS
--------------------------------------------------------

  CREATE TABLE "JSP"."CART_DETAILS_EXTRAS" 
   (	"E_ID" NUMBER, 
	"CD_ID" NUMBER, 
	"QUANTITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JSP"."CATEGORY" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CAT_PRO
--------------------------------------------------------

  CREATE TABLE "JSP"."CAT_PRO" 
   (	"CATEGORY_ID" NUMBER(*,0), 
	"PRODUCT_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "JSP"."CLIENT" 
   (	"ID" NUMBER(*,0), 
	"FNAME" VARCHAR2(50 BYTE), 
	"LNAME" VARCHAR2(50 BYTE), 
	"MAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"BIRTHDAY" DATE, 
	"JOB" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(50 BYTE), 
	"CRIDETLIMIT" NUMBER(35,0), 
	"ADDRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT_INTERESS
--------------------------------------------------------

  CREATE TABLE "JSP"."CLIENT_INTERESS" 
   (	"CLIENT_ID" NUMBER(*,0), 
	"INTEREST_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT_INTERESTS
--------------------------------------------------------

  CREATE TABLE "JSP"."CLIENT_INTERESTS" 
   (	"CLIENT_ID" NUMBER(*,0), 
	"FLOWER_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT_ORDERS
--------------------------------------------------------

  CREATE TABLE "JSP"."CLIENT_ORDERS" 
   (	"CLIENT_ID" NUMBER, 
	"ORDER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EXTRAS
--------------------------------------------------------

  CREATE TABLE "JSP"."EXTRAS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"PRICE" FLOAT(126), 
	"QUANTITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EXTRAS_IMAGES
--------------------------------------------------------

  CREATE TABLE "JSP"."EXTRAS_IMAGES" 
   (	"ID" NUMBER, 
	"URL" VARCHAR2(200 BYTE), 
	"EXTRAID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FLOWERS
--------------------------------------------------------

  CREATE TABLE "JSP"."FLOWERS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FLOWER_IMAGES
--------------------------------------------------------

  CREATE TABLE "JSP"."FLOWER_IMAGES" 
   (	"ID" NUMBER, 
	"URL" VARCHAR2(200 BYTE), 
	"FLOWERID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INTERESTS
--------------------------------------------------------

  CREATE TABLE "JSP"."INTERESTS" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "JSP"."ORDERS" 
   (	"ID" NUMBER(*,0), 
	"CLIENT_ID" NUMBER(*,0), 
	"DATEORDERED" DATE, 
	"PRICE" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_DETAILS
--------------------------------------------------------

  CREATE TABLE "JSP"."ORDER_DETAILS" 
   (	"ORDER_ID" NUMBER, 
	"PRODUCT_ID" NUMBER, 
	"QUANTITY" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_EXTRADETAIL
--------------------------------------------------------

  CREATE TABLE "JSP"."ORDER_EXTRADETAIL" 
   (	"ORDER_ID" NUMBER, 
	"EXTRA_ID" NUMBER, 
	"QUANTITY" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "JSP"."PRODUCT" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"PRICE" FLOAT(100), 
	"QUANTITY" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"RATING" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_IMAGES
--------------------------------------------------------

  CREATE TABLE "JSP"."PRODUCT_IMAGES" 
   (	"ID" NUMBER, 
	"URL" VARCHAR2(200 BYTE), 
	"PRODUCTSID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VOUCHER
--------------------------------------------------------

  CREATE TABLE "JSP"."VOUCHER" 
   (	"ID" NUMBER, 
	"VALUE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence CART_DETAILS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."CART_DETAILS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."CART_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."CATEGORY_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 140 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CLIENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."CLIENT_SEQ"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EXTRAS_IMAGES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."EXTRAS_IMAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EXTRAS_IMAGES_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."EXTRAS_IMAGES_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EXTRAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."EXTRAS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FLOWERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."FLOWERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 140 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FLOWER_IMAGES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."FLOWER_IMAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INTERESTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."INTERESTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_IMAGES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."PRODUCT_IMAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 160 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 160 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERORDER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."USERORDER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VOUCHER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JSP"."VOUCHER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into JSP.BOQUET_FLOWERS
SET DEFINE OFF;
Insert into JSP.BOQUET_FLOWERS (P_ID,F_ID) values (122,2);
REM INSERTING into JSP.CART
SET DEFINE OFF;
Insert into JSP.CART (ID,CLIENT_ID) values (2,7);
Insert into JSP.CART (ID,CLIENT_ID) values (21,22);
Insert into JSP.CART (ID,CLIENT_ID) values (22,23);
Insert into JSP.CART (ID,CLIENT_ID) values (23,24);
Insert into JSP.CART (ID,CLIENT_ID) values (41,41);
Insert into JSP.CART (ID,CLIENT_ID) values (42,42);
Insert into JSP.CART (ID,CLIENT_ID) values (43,43);
Insert into JSP.CART (ID,CLIENT_ID) values (44,44);
Insert into JSP.CART (ID,CLIENT_ID) values (45,45);
Insert into JSP.CART (ID,CLIENT_ID) values (61,61);
Insert into JSP.CART (ID,CLIENT_ID) values (62,62);
Insert into JSP.CART (ID,CLIENT_ID) values (63,63);
Insert into JSP.CART (ID,CLIENT_ID) values (64,64);
Insert into JSP.CART (ID,CLIENT_ID) values (65,65);
REM INSERTING into JSP.CART_DETAILS
SET DEFINE OFF;
REM INSERTING into JSP.CART_DETAILS_EXTRAS
SET DEFINE OFF;
REM INSERTING into JSP.CATEGORY
SET DEFINE OFF;
Insert into JSP.CATEGORY (ID,NAME) values (5,'Mother''s Day');
Insert into JSP.CATEGORY (ID,NAME) values (1,'Funeralasda');
Insert into JSP.CATEGORY (ID,NAME) values (3,'Love and Romance');
Insert into JSP.CATEGORY (ID,NAME) values (4,'Birthday');
Insert into JSP.CATEGORY (ID,NAME) values (6,'Friendship');
Insert into JSP.CATEGORY (ID,NAME) values (7,'Get Well');
Insert into JSP.CATEGORY (ID,NAME) values (8,'Spring');
Insert into JSP.CATEGORY (ID,NAME) values (9,'Thank You');
Insert into JSP.CATEGORY (ID,NAME) values (10,'I am Sorry');
Insert into JSP.CATEGORY (ID,NAME) values (11,'Wedding');
REM INSERTING into JSP.CAT_PRO
SET DEFINE OFF;
REM INSERTING into JSP.CLIENT
SET DEFINE OFF;
Insert into JSP.CLIENT (ID,FNAME,LNAME,MAIL,PASSWORD,BIRTHDAY,JOB,PHONE,CRIDETLIMIT,ADDRESS) values (7,'adel','ahmed','test@test.test','pwd',to_date('01-FEB-00','DD-MON-RR'),'Developer','1234567890',17,'Cairo');
REM INSERTING into JSP.CLIENT_INTERESS
SET DEFINE OFF;
Insert into JSP.CLIENT_INTERESS (CLIENT_ID,INTEREST_ID) values (7,1);
Insert into JSP.CLIENT_INTERESS (CLIENT_ID,INTEREST_ID) values (7,4);
Insert into JSP.CLIENT_INTERESS (CLIENT_ID,INTEREST_ID) values (7,5);
REM INSERTING into JSP.CLIENT_INTERESTS
SET DEFINE OFF;
REM INSERTING into JSP.CLIENT_ORDERS
SET DEFINE OFF;
REM INSERTING into JSP.EXTRAS
SET DEFINE OFF;
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (2,'zabzooommmob',1010,1100);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (3,'zabzoooob',100,100);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (1,'Brown Teddy Bear With Heart',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (4,'Dark Teddy Bear',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (5,'Groom Teddy Bear',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (6,'Birthday Balloons',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (7,'White Teddy Bear',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (9,'Heart Chocolate',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (10,'Get Well Balloons',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (8,'Sweets',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (11,'Box Chocolate',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (12,'Thank you Balloons',10,10);
Insert into JSP.EXTRAS (ID,NAME,PRICE,QUANTITY) values (13,'Thank you Chocolate',10,10);
REM INSERTING into JSP.EXTRAS_IMAGES
SET DEFINE OFF;
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (1,'assets\img\extras\BrownTeddyBearWithHeart.jpg',1);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (2,'assets\img\extras\PinkTeddyBear.jpg',2);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (3,'assets\img\extras\ThinkingOfYouBalloons.jpg',3);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (4,'assets\img\extras\DarkTeddyBear.jpg',4);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (5,'assets\img\extras\GroomTeddyBear.jpg',5);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (6,'assets\img\extras\BirthdayBalloons.jpg',6);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (7,'assets\img\extras\WhiteTeddyBear.jpg',7);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (8,'assets\img\extras\Sweets.jpg',8);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (9,'assets\img\extras\HeartChocolate.jpg',9);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (10,'assets\img\extras\GetWellBalloons.jpg',10);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (11,'assets\img\extras\BoxChocolate.jpg',11);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (12,'assets\img\extras\ThankyouBalloons.jpg',12);
Insert into JSP.EXTRAS_IMAGES (ID,URL,EXTRAID) values (13,'assets\img\extras\thankyouchocolate.jpg',13);
REM INSERTING into JSP.FLOWERS
SET DEFINE OFF;
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (1,'yasmeen','USA');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (2,'Aster','North America.');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (3,'Calla','Southern Africa');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (4,'Chrysanthemum',' Asia ');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (5,'Sun Flower','Eurpe');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (6,'Rose','North Africa');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (7,'Lily','America');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (8,'Protea','Africa');
Insert into JSP.FLOWERS (ID,NAME,COUNTRY) values (9,'Tulip','Aemrica');
REM INSERTING into JSP.FLOWER_IMAGES
SET DEFINE OFF;
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (1,'assets\img\flowers\Alstroemeria.jpg',1);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (2,'assets\img\flowers\Aster.jpg',2);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (3,'assets\img\flowers\Call.jpg',3);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (4,'assets\img\flowers\Chrysanthemum.jpg',4);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (5,'assets\img\flowers\Sunflower.jpg',5);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (6,'assets\img\flowers\Rose.jpg',6);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (7,'assets\img\flowers\LILY_ASIATIC.jpg',7);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (8,'assets\img\flowers\Protea_pin_cushion.jpg',8);
Insert into JSP.FLOWER_IMAGES (ID,URL,FLOWERID) values (9,'assets\img\flowers\Tulip.jpg',9);
REM INSERTING into JSP.INTERESTS
SET DEFINE OFF;
Insert into JSP.INTERESTS (ID,NAME) values (1,'Reading');
Insert into JSP.INTERESTS (ID,NAME) values (2,'Writing');
Insert into JSP.INTERESTS (ID,NAME) values (3,'Music');
Insert into JSP.INTERESTS (ID,NAME) values (4,'Playing Chess');
Insert into JSP.INTERESTS (ID,NAME) values (5,'Football');
Insert into JSP.INTERESTS (ID,NAME) values (6,'Travelling');
Insert into JSP.INTERESTS (ID,NAME) values (7,'Sleeping');
Insert into JSP.INTERESTS (ID,NAME) values (8,'Eating');
Insert into JSP.INTERESTS (ID,NAME) values (9,'Drawing');
Insert into JSP.INTERESTS (ID,NAME) values (10,'Singing');
REM INSERTING into JSP.ORDERS
SET DEFINE OFF;
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (18,7,to_date('21-MAR-17','DD-MON-RR'),456);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (19,7,to_date('21-MAR-17','DD-MON-RR'),456);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (20,7,to_date('21-MAR-17','DD-MON-RR'),0);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (21,7,to_date('21-MAR-17','DD-MON-RR'),0);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (22,7,to_date('21-MAR-17','DD-MON-RR'),0);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (23,7,to_date('21-MAR-17','DD-MON-RR'),266);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (24,7,to_date('21-MAR-17','DD-MON-RR'),266);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (25,7,to_date('21-MAR-17','DD-MON-RR'),266);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (26,7,to_date('21-MAR-17','DD-MON-RR'),266);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (27,7,to_date('21-MAR-17','DD-MON-RR'),294);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (28,7,to_date('21-MAR-17','DD-MON-RR'),316);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (29,7,to_date('21-MAR-17','DD-MON-RR'),247);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (30,7,to_date('21-MAR-17','DD-MON-RR'),2091.2);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (31,7,to_date('21-MAR-17','DD-MON-RR'),1002.4);
Insert into JSP.ORDERS (ID,CLIENT_ID,DATEORDERED,PRICE) values (32,7,to_date('21-MAR-17','DD-MON-RR'),216);
REM INSERTING into JSP.ORDER_DETAILS
SET DEFINE OFF;
REM INSERTING into JSP.ORDER_EXTRADETAIL
SET DEFINE OFF;
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,3,2);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,6,6);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,5,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,4,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,1,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,2,2);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,3,2);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,6,6);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,5,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (19,4,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,1,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (18,2,2);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (27,1,4);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (27,2,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (27,3,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (28,1,1);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (28,2,3);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (28,3,2);
Insert into JSP.ORDER_EXTRADETAIL (ORDER_ID,EXTRA_ID,QUANTITY) values (31,1,5);
REM INSERTING into JSP.PRODUCT
SET DEFINE OFF;
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (2,'Anything for You',72.95,9,'Peach roses, white alstroemeria, pale green carnations and peach hypericum are mixed with bright green bupleurum in an elegant Couture Vase.',3);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (3,'Beauty In Bloom',77.95,9,'Light orange and hot pink roses, pink asiatic lilies, dark pink alstroemeria, orange snapdragons, delicate pink heather and parvifolia eucalyptus.',8);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (4,'Heart''s Delight',58.95,0,'Feminine shades of pink, purple and white are seen in flowers including lisianthus, alstroemeria, stock, carnations and daisies.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (5,'Simply Sweet',59.95,0,'Yellow Serendipity vase is decorated with satin ribbon and filled with lilies, daisies, roses, alstroemeria and carnations.',2);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (6,'Fall in Love',59.95,10,'Dark red roses with pink asiatic lilies, hot pink matsumoto asters, purple cushion mums, lavender waxflower, burgundy copper beech leaves and green variegated pittosporum.',6);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (7,'Sunny Day Pitcher of Cheer',62.95,10,'Yellow gerbera daisies, roses, alstroemeria and carnations are mixed with white monte cassino asters and green variegated pittosporum in yellow ceramic Sunny Day Pitcher.',7);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (8,'Sending Joy',72.95,10,'A dark, handled basket delivers a mix of orange roses, maroon carnations, purple alstroemeria, burgundy button mums and yellow yarrow.',5);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (9,'Pretty Pink Present',49.95,10,'Pink roses, lilies and alstroemeria are contrasted with pops of green mums and foliage.',4);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (10,'Daisy Daydreams',39.59,10,'Dark purple Matsumoto asters, lavender cushion spray chrysanthemums and purple Monte Cassino asters accented with fresh greenery.',7);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (11,'Lovely Lavender Present',39.95,10,'Dainty flowers including daisies, spray roses and alstroemeria.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (12,'Make a Wish',32.95,10,'Yellow, purple, orange and red flowers such as carnations, daisy spray chrysanthemums, Matsumoto asters and alstroemeria.',6);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (13,'Sweet Tranquility Basket',59.95,10,'Orange and yellow roses, pink matsumoto asters, white daisies, green button mums, white monte cassino asters, delicate solidago and fresh greens.',8);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (14,'Grand Gesture',77.95,10,'Two white calla lilies are mixed with kale, aspidistra, brown flax, pitta negra and galax leaves in a natural bamboo dish.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (15,'Ticket to Paradise',97.95,10,'Lavender hydrangea, lavender roses, light pink miniature calla lilies, hot pink roses, purple carnations, green viburnum, green button spray mums, purple statice',4);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (16,'My Fair Lady',122.95,10,'Eleven large white calla lilies are mixed with small aralia leaves, variegated aspidistra leaves and delicate lily grass in a clear glass vase.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (17,'Bamboo Getaway',102.95,10,'Flowers including yellow roses, orange asiatic lilies, miniature red gerberas, orange pin cushion protea.',7);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (18,'Tropical Bliss',87.95,10,'Dark red roses, orange asiatic lilies, green leucadendron, red ginger and yellow button spray mums are accented',5);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (19,'Ducky Delight',49.95,10,'Cheerful flowers including bright yellow spray roses, happy white daisies and assorted greens are displayed in a Just Ducky keepsake, exclusively from Teleflora.',3);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (21,'Beautiful in Blue',54.95,10,'Blooms such as blue hydrangea, crème roses, graceful white oriental lilies, white alstroemeria, a white disbud mum, purple statice',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (22,'Baby Wow Wagon',49.95,10,'Delivered in a shiny metal wagon overflowing with flowers and greens including red miniature gerberas, yellow spray roses and daisies.',6);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (23,'Pure Happiness',79.95,8,'Bold red roses and stunning sunflowers are mixed with miniature red carnations, bronze daisies .',8);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (24,'You are Golder',59.95,7,'Bold, bright sunflowers are arranged with delicate oregonia, magnolia leaves, lemon leaf and moss.',4);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (25,'SunShine',49.95,6,'This sunny bouquet is made up of orange alstroemeria, small yellow sunflowers, yellow Viking daisy spray chrysanthemums.',6);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (26,'Cupid''s Creation with Red Rose',87.95,5,'The lush bouquet includes red roses, pink roses, white spray roses and light pink spray roses accented with assorted greenery.',7);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (27,'Polka Dots and Posies',39.95,9,'Crisp white daisies and hot pink roses are delivered in a pink glass cube vase that''s adorned with a polka dot print ribbon.',3);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (28,'Make me Plush',72.95,10,'Two dozen pink roses are gathered with white limonium and rich green salal in a classic trumpet vase she''ll use again and again.',8);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (29,'Precious Pink Tulips',42.95,10,'Thirty delicate light pink Tulips arranged in a clear glass vase.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (30,'Passionate Purple Tulips',42.95,10,'Ten deep purple tulips are gathered into a simple cylinder vase that''s tied with a bow.',4);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (31,'Tulip Treasure',67.95,6,'Twenty-one tulips - in yellow, white and pink - are very simply and elegantly presented in Teleflora''s clear glass Couture Vase.',9);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (32,'Fiery Lily and Rose',62.95,5,'Dark orange roses and asiatic lilies are mixed with fresh green bupleurum and variegated pittosporum.',5);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (33,'Yellow Fellow',49.95,5,'This topiary-style arrangement features tall yellow lilies in a terra-cotta pot of assorted greens, yellow roses .',5);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (122,'Golden Bouquet',70,2,'This is the bet sdf',5);
Insert into JSP.PRODUCT (ID,NAME,PRICE,QUANTITY,DESCRIPTION,RATING) values (1,'Sweetest Sunrise Bouquet',49.95,9,'The bright bouquet includes white hydrangea, light yellow roses, crème roses and yellow alstroemeria accented with fresh greenery.',5);
REM INSERTING into JSP.PRODUCT_IMAGES
SET DEFINE OFF;
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (2,'assets/img/bouques/Alstroemeria-Sweetest Sunrise Bouquet.1.jpg',1);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (3,'assets/img/bouques/Alstroemeria-AnyThing For You.jpg',2);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (4,'assets/img/bouques/Alstroemeria-Beauty In Bloom.jpg',3);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (5,'assets/img/bouques/Alstroemeria-Beauty In Bloom.1.jpg',3);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (10,'assets/img/bouques/Alstroemeria-Fall in Love.1.jpg',6);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (9,'assets/img/bouques/Alstroemeria-Fall in Love.jpg',6);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (8,'assets/img/bouques/Alstroemeria-Simply Sweet.1.jpg',5);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (7,'assets/img/bouques/Alstroemeria-Simply Sweet.jpg',5);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (6,'assets/img/bouques/Alstroemeria-Hearts Delight.jpg',4);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (11,'assets/img/bouques/Alstroemeria-Sunny Day Pitcher of Cheer.jpg',7);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (12,'assets/img/bouques/Alstroemeria-Sending Joy.jpg',8);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (13,'assets/img/bouques/T19-1A.jpg',9);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (14,'assets/img/bouques/T11Z105A.jpg',10);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (15,'assets/img/bouques/T11Z105A_ENV.jpg',10);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (16,'assets/img/bouques/T16-2A.jpg',11);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (17,'assets/img/bouques/T213-2A.jpg',13);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (18,'assets/img/bouques/TEV13-6A.jpg',12);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (19,'assets/img/bouques/T78-1A.jpg',14);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (20,'assets/img/bouques/T81-3A.jpg',15);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (21,'assets/img/bouques/T83-1A.jpg',16);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (22,'assets/img/bouques/T85-3A.jpg',17);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (23,'assets/img/bouques/T85-1A.jpg',18);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (24,'assets/img/bouques/T34-3A.jpg',19);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (25,'assets/img/bouques/T18-1A.jpg',5);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (26,'assets/img/bouques/T209-3A.jpg',21);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (27,'assets/img/bouques/T35-1A.jpg',22);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (28,'assets/img/bouques/T171-1C.jpg',23);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (29,'assets/img/bouques/TEV32-1B.jpg',24);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (30,'assets/img/bouques/T14G100C.jpg',25);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (31,'assets/img/bouques/T6-1C.jpg',26);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (32,'assets/img/bouques/T6-1C_ENV.jpg',26);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (33,'assets/img/bouques/T52-3C.jpg',27);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (34,'assets/img/bouques/T52-3C_ENV.jpg',27);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (35,'assets/img/bouques/T4-1C.jpg',28);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (36,'assets/img/bouques/T4-1C_ENV.jpg',28);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (37,'assets/img/bouques/T11Z106C.jpg',29);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (38,'assets/img/bouques/T148-2C.jpg',30);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (39,'assets/img/bouques/T142-1A.jpg',31);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (40,'assets/img/bouques/T47-2C.jpg',32);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (41,'assets/img/bouques/T56-1C.jpg',33);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (125,'assets\img\bouques\pic_635149575.jpg',122);
Insert into JSP.PRODUCT_IMAGES (ID,URL,PRODUCTSID) values (1,'assets/img/bouques/Alstroemeria-Sweetest Sunrise Bouquet.jpg',1);
REM INSERTING into JSP.VOUCHER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index EXTRAS_IMAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."EXTRAS_IMAGES_PK" ON "JSP"."EXTRAS_IMAGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CATEGORY_UK1" ON "JSP"."CATEGORY" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FLOWERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."FLOWERS_UK1" ON "JSP"."FLOWERS" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ORDER_DETAILS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."ORDER_DETAILS_UK1" ON "JSP"."ORDER_DETAILS" ("PRODUCT_ID", "ORDER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."PRODUCT_PK" ON "JSP"."PRODUCT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_IMAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."PRODUCT_IMAGES_PK" ON "JSP"."PRODUCT_IMAGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_INTERESS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CLIENT_INTERESS_UK1" ON "JSP"."CLIENT_INTERESS" ("CLIENT_ID", "INTEREST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FLOWER_IMAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."FLOWER_IMAGES_PK" ON "JSP"."FLOWER_IMAGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."PRODUCT_UK1" ON "JSP"."PRODUCT" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CLIENT_PK" ON "JSP"."CLIENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."USERORDER_PK" ON "JSP"."ORDERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CART_PK" ON "JSP"."CART_DETAILS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CART_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CART_UK1" ON "JSP"."CART_DETAILS" ("ID", "CLIENT_ID", "PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CATEGORY_PK" ON "JSP"."CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CAT_PRO_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CAT_PRO_UK1" ON "JSP"."CAT_PRO" ("CATEGORY_ID", "PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_ORDERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CLIENT_ORDERS_UK1" ON "JSP"."CLIENT_ORDERS" ("CLIENT_ID", "ORDER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CLIENT_UK1" ON "JSP"."CLIENT" ("MAIL", "PHONE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INTERESTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."INTERESTS_PK" ON "JSP"."INTERESTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INTERESTS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."INTERESTS_UK1" ON "JSP"."INTERESTS" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CART_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."CART_PK1" ON "JSP"."CART" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FLOWERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."FLOWERS_PK" ON "JSP"."FLOWERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EXTRAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."EXTRAS_PK" ON "JSP"."EXTRAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index VOUCHER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."VOUCHER_PK" ON "JSP"."VOUCHER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger CART_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."CART_DETAILS_TRG" 
BEFORE INSERT ON CART_DETAILS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CART_DETAILS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."CART_DETAILS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CART_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."CART_TRG" 
BEFORE INSERT ON CART 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CART_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JSP"."CART_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CATEGORY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."CATEGORY_TRG" 
BEFORE INSERT ON CATEGORY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.NAME IS NULL THEN
      SELECT CATEGORY_SEQ.NEXTVAL INTO :NEW.NAME FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."CATEGORY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CATEGORY_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."CATEGORY_TRG1" 
BEFORE INSERT ON CATEGORY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CATEGORY_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."CATEGORY_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLIENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."CLIENT_TRG" 
BEFORE INSERT ON CLIENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CLIENT_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;



/
ALTER TRIGGER "JSP"."CLIENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EXTRAS_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."EXTRAS_IMAGES_TRG" 
BEFORE INSERT ON EXTRAS_IMAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.EXTRAID IS NULL THEN
      SELECT EXTRAS_IMAGES_SEQ.NEXTVAL INTO :NEW.EXTRAID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."EXTRAS_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EXTRAS_IMAGES_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."EXTRAS_IMAGES_TRG1" 
BEFORE INSERT ON EXTRAS_IMAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT EXTRAS_IMAGES_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."EXTRAS_IMAGES_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EXTRAS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."EXTRAS_TRG" 
BEFORE INSERT ON EXTRAS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT EXTRAS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "JSP"."EXTRAS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FLOWERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."FLOWERS_TRG" 
BEFORE INSERT ON FLOWERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT FLOWERS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JSP"."FLOWERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FLOWER_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."FLOWER_IMAGES_TRG" 
BEFORE INSERT ON FLOWER_IMAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT FLOWER_IMAGES_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."FLOWER_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INTERESTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."INTERESTS_TRG" 
BEFORE INSERT ON INTERESTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT INTERESTS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JSP"."INTERESTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."PRODUCT_IMAGES_TRG" 
BEFORE INSERT ON PRODUCT_IMAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT PRODUCT_IMAGES_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."PRODUCT_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."PRODUCT_TRG" 
BEFORE INSERT ON PRODUCT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT PRODUCT_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;



/
ALTER TRIGGER "JSP"."PRODUCT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERORDER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."USERORDER_TRG" 
BEFORE INSERT ON ORDERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
 IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT USERORDER_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JSP"."USERORDER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VOUCHER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JSP"."VOUCHER_TRG" 
BEFORE INSERT ON VOUCHER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT VOUCHER_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "JSP"."VOUCHER_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table EXTRAS
--------------------------------------------------------

  ALTER TABLE "JSP"."EXTRAS" ADD CONSTRAINT "EXTRAS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."EXTRAS" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "JSP"."EXTRAS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "JSP"."EXTRAS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JSP"."EXTRAS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_EXTRADETAIL
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDER_EXTRADETAIL" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDER_EXTRADETAIL" MODIFY ("EXTRA_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDER_EXTRADETAIL" MODIFY ("QUANTITY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDERS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDERS" MODIFY ("DATEORDERED" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDERS" ADD CONSTRAINT "USERORDER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAT_PRO
--------------------------------------------------------

  ALTER TABLE "JSP"."CAT_PRO" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CAT_PRO" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CAT_PRO" ADD CONSTRAINT "CAT_PRO_UK1" UNIQUE ("CATEGORY_ID", "PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FLOWERS
--------------------------------------------------------

  ALTER TABLE "JSP"."FLOWERS" ADD CONSTRAINT "FLOWERS_UK1" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."FLOWERS" ADD CONSTRAINT "FLOWERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."FLOWERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JSP"."FLOWERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT_INTERESS
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT_INTERESS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT_INTERESS" MODIFY ("INTEREST_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT_INTERESS" ADD CONSTRAINT "CLIENT_INTERESS_UK1" UNIQUE ("CLIENT_ID", "INTEREST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "JSP"."CART" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_DETAILS
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDER_DETAILS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDER_DETAILS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDER_DETAILS" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "JSP"."ORDER_DETAILS" ADD CONSTRAINT "ORDER_DETAILS_UK1" UNIQUE ("PRODUCT_ID", "ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART_DETAILS
--------------------------------------------------------

  ALTER TABLE "JSP"."CART_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART_DETAILS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART_DETAILS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART_DETAILS" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART_DETAILS" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."CART_DETAILS" ADD CONSTRAINT "CART_UK1" UNIQUE ("ID", "CLIENT_ID", "PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOQUET_FLOWERS
--------------------------------------------------------

  ALTER TABLE "JSP"."BOQUET_FLOWERS" MODIFY ("F_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."BOQUET_FLOWERS" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JSP"."CATEGORY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."CATEGORY" ADD CONSTRAINT "CATEGORY_UK1" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INTERESTS
--------------------------------------------------------

  ALTER TABLE "JSP"."INTERESTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."INTERESTS" ADD CONSTRAINT "INTERESTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."INTERESTS" ADD CONSTRAINT "INTERESTS_UK1" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VOUCHER
--------------------------------------------------------

  ALTER TABLE "JSP"."VOUCHER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."VOUCHER" ADD CONSTRAINT "VOUCHER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."PRODUCT_IMAGES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."PRODUCT_IMAGES" MODIFY ("URL" NOT NULL ENABLE);
  ALTER TABLE "JSP"."PRODUCT_IMAGES" ADD CONSTRAINT "PRODUCT_IMAGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FLOWER_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."FLOWER_IMAGES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."FLOWER_IMAGES" MODIFY ("URL" NOT NULL ENABLE);
  ALTER TABLE "JSP"."FLOWER_IMAGES" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."FLOWER_IMAGES" MODIFY ("FLOWERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT" MODIFY ("FNAME" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT" MODIFY ("MAIL" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT" MODIFY ("CRIDETLIMIT" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT" ADD CONSTRAINT "CLIENT_UK1" UNIQUE ("MAIL", "PHONE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."CLIENT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "JSP"."PRODUCT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."PRODUCT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JSP"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."PRODUCT" ADD CONSTRAINT "PRODUCT_UK1" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART_DETAILS_EXTRAS
--------------------------------------------------------

  ALTER TABLE "JSP"."CART_DETAILS_EXTRAS" MODIFY ("CD_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CART_DETAILS_EXTRAS" MODIFY ("E_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT_INTERESTS
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT_INTERESTS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT_INTERESTS" MODIFY ("FLOWER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT_ORDERS
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT_ORDERS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT_ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "JSP"."CLIENT_ORDERS" ADD CONSTRAINT "CLIENT_ORDERS_UK1" UNIQUE ("CLIENT_ID", "ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXTRAS_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."EXTRAS_IMAGES" ADD CONSTRAINT "EXTRAS_IMAGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."EXTRAS_IMAGES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOQUET_FLOWERS
--------------------------------------------------------

  ALTER TABLE "JSP"."BOQUET_FLOWERS" ADD CONSTRAINT "BOQUET_FLOWERS_FK1" FOREIGN KEY ("F_ID")
	  REFERENCES "JSP"."FLOWERS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."BOQUET_FLOWERS" ADD CONSTRAINT "BOQUET_FLOWERS_FK2" FOREIGN KEY ("P_ID")
	  REFERENCES "JSP"."PRODUCT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART_DETAILS
--------------------------------------------------------

  ALTER TABLE "JSP"."CART_DETAILS" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "JSP"."CLIENT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."CART_DETAILS" ADD CONSTRAINT "CART_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "JSP"."PRODUCT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART_DETAILS_EXTRAS
--------------------------------------------------------

  ALTER TABLE "JSP"."CART_DETAILS_EXTRAS" ADD CONSTRAINT "CART_DETAILS_EXTRAS_FK2" FOREIGN KEY ("E_ID")
	  REFERENCES "JSP"."EXTRAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAT_PRO
--------------------------------------------------------

  ALTER TABLE "JSP"."CAT_PRO" ADD CONSTRAINT "CAT_PRO_FK1" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "JSP"."CATEGORY" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."CAT_PRO" ADD CONSTRAINT "CAT_PRO_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "JSP"."PRODUCT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENT_INTERESS
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT_INTERESS" ADD CONSTRAINT "CLIENT_INTERESS_FK1" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "JSP"."CLIENT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."CLIENT_INTERESS" ADD CONSTRAINT "CLIENT_INTERESS_FK2" FOREIGN KEY ("INTEREST_ID")
	  REFERENCES "JSP"."INTERESTS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENT_ORDERS
--------------------------------------------------------

  ALTER TABLE "JSP"."CLIENT_ORDERS" ADD CONSTRAINT "CLIENT_ORDERS_FK1" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "JSP"."CLIENT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."CLIENT_ORDERS" ADD CONSTRAINT "CLIENT_ORDERS_FK2" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "JSP"."ORDERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXTRAS_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."EXTRAS_IMAGES" ADD CONSTRAINT "EXTRAS_IMAGES_FK1" FOREIGN KEY ("EXTRAID")
	  REFERENCES "JSP"."EXTRAS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FLOWER_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."FLOWER_IMAGES" ADD CONSTRAINT "FLOWER_IMAGES_FK1" FOREIGN KEY ("FLOWERID")
	  REFERENCES "JSP"."FLOWERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDERS" ADD CONSTRAINT "USERORDER_FK1" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "JSP"."CLIENT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_DETAILS
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDER_DETAILS" ADD CONSTRAINT "ORDER_DETAILS_FK1" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "JSP"."ORDERS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "JSP"."ORDER_DETAILS" ADD CONSTRAINT "ORDER_DETAILS_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "JSP"."PRODUCT" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_EXTRADETAIL
--------------------------------------------------------

  ALTER TABLE "JSP"."ORDER_EXTRADETAIL" ADD CONSTRAINT "ORDER_EXTRADETAIL_FK1" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "JSP"."ORDERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_IMAGES
--------------------------------------------------------

  ALTER TABLE "JSP"."PRODUCT_IMAGES" ADD CONSTRAINT "PRODUCT_IMAGES_FK1" FOREIGN KEY ("PRODUCTSID")
	  REFERENCES "JSP"."PRODUCT" ("ID") ON DELETE CASCADE ENABLE;
