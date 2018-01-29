CREATE TABLE customer(
	cID VARCHAR2(20) PRIMARY KEY,
	cPW VARCHAR2(20),
	cName VARCHAR2(20),
	cEmail VARCHAR2(30)
);
COMMIT;

CREATE SEQUENCE CUSTOMER_seq;

CREATE TABLE board(
	cID VARCHAR2(20),
	bTitle VARCHAR2(100),
	bContent VARCHAR2(300),
	bDate DATE DEFAULT SYSDATE,
	bHit NUMBER(4) DEFAULT 0,
	bGroup NUMBER(4),
	bStep NUMBER(4),
	bIndent NUMBER(4)
	CONSTRAINT customer_pk_cID PRIMARY KEY (cID),
	CONSTRAINT customer_fk_cID FOREIGN KEY (cID) REFERENCES customer (cID)
	
);
-------------------------------------------------------------------------
board
CREATE TABLE board(
	bID VARCHAR2(20),
	cId VARCHAR2(20),
	bTitle VARCHAR2(100),
	bContent VARCHAR2(300),
	bDate DATE DEFAULT SYSDATE,
	bHit NUMBER(4) DEFAULT 0,
	bGroup NUMBER(4),
	bStep NUMBER(4),
	bIndent NUMBER(4),
	CONSTRAINT board_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID) 
);

COMMIT;
CREATE SEQUENCE BOARD_SEQ;

COMMIT;
---------------------------------------------------------------------------
adopt
CREATE TABLE adopt(
	aID VARCHAR2(20),
	cId VARCHAR2(20),
	abreed VARCHAR2(30),
	aage VARCHAR2(20),
	agender VARCHAR2(10), 
	alocation VARCHAR2(30),
	filename VARCHAR2(30),
	aDate DATE DEFAULT SYSDATE,
	aHit NUMBER(4) DEFAULT 0,
	aGroup NUMBER(4),
	aStep NUMBER(4),
	aIndent NUMBER(4),
	CONSTRAINT adopt_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID) 
);

COMMIT;

CREATE SEQUENCE ADOPT_SEQ;
COMMIT;
----------------------------------------------------------------------
lost
CREATE TABLE lost(
	lID VARCHAR2(20),
	cId VARCHAR2(20),
	lbreed VARCHAR2(30),
	lage VARCHAR2(20),
	lgender VARCHAR2(10), 
	llocation VARCHAR2(30),
	lfilename VARCHAR2(30),
	lcontact VARCHAR2(30),
	lmemo VARCHAR2(100),
	lDate DATE DEFAULT SYSDATE,
	lHit NUMBER(4) DEFAULT 0,
	CONSTRAINT lost_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID) 
);

COMMIT;
CREATE SEQUENCE LOST_SEQ;
COMMIT;
--------------------------------------------------------------------
watch
CREATE TABLE watch(
	wID VARCHAR2(20),
	cId VARCHAR2(20),
	wbreed VARCHAR2(30),
	wage VARCHAR2(20),
	wgender VARCHAR2(10), 
	wlocation VARCHAR2(30),
	wfilename VARCHAR2(30),
	wcontact VARCHAR2(30),
	wmemo VARCHAR2(100),
	wDate DATE DEFAULT SYSDATE,
	wHit NUMBER(4) DEFAULT 0,
	CONSTRAINT watch_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID) 
);

COMMIT;
CREATE SEQUENCE WATCH_SEQ;
COMMIT;
--------------------------------------------------------
dog
CREATE TABLE dog(
	dID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	dFilename VARCHAR2(30),
	dBD VARCHAR2(20),
	dAD VARCHAR2(20),
	dage VARCHAR2(20),
	dbreed VARCHAR2(20),
	dgender VARCHAR2(20),
	dweight VARCHAR2(20),
	didnum VARCHAR2(20),
	CONSTRAINT dog_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID) 
);
COMMIT;
CREATE SEQUENCE DOG_SEQ;
DROP TABLE dog;

-----------------------------------------------------------
weight
CREATE TABLE weight(
	sID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	dweight VARCHAR2(20),
	sDate DATE DEFAULT SYSDATE,
	CONSTRAINT weight_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);
COMMIT;
CREATE SEQUENCE weight_SEQ;
COMMIT;



SELECT DISTINCT * From weight;

-------------------------------------------------------------
1_25 Medicine

CREATE TABLE medicine(
	mID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	mname VARCHAR2(20),
	mdosage VARCHAR2(20),
	mfreq VARCHAR2(20),
	mseff VARCHAR2(20),
	mmemo VARCHAR2(100),
	mDate DATE DEFAULT SYSDATE,
	CONSTRAINT medicine_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);

CREATE SEQUENCE medicine_SEQ;
COMMIT;
DROP TABLE medicine;
------------------------------------------------------------------
vaccine
CREATE TABLE vaccine(
	vID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	vname VARCHAR2(20),
	vinjdate VARCHAR2(20),
	vseff VARCHAR2(20),
	vmemo VARCHAR2(100),
	vDate DATE DEFAULT SYSDATE,
	CONSTRAINT vaccine_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);

CREATE SEQUENCE vaccine_SEQ;
COMMIT;
DROP TABLE vaccine;
------------------------------------------------------------------
allergy
CREATE TABLE allergy(
	alID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	alredate VARCHAR2(20),
	alreason VARCHAR2(20),
	alreaction VARCHAR2(20),
	alseverity VARCHAR2(50),
	almemo VARCHAR2(50),
	alDate DATE DEFAULT SYSDATE,
	CONSTRAINT allergy_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);

CREATE SEQUENCE allergy_SEQ;
COMMIT;
DROP TABLE allergy;
-------------------------------------------------------------------
SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'WEIGHT_SEQ';

ALTER SEQUENCE VACCINE_SEQ INCREMENT BY -81;


-----------------------------------------------------------
1-29
CREATE TABLE allergy(
	alID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	alredate VARCHAR2(20),
	alreason VARCHAR2(20),
	alreaction VARCHAR2(20),
	alseverity VARCHAR2(50),
	almemo VARCHAR2(50),
	alDate DATE DEFAULT SYSDATE,
	CONSTRAINT allergy_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);

CREATE SEQUENCE allergy_SEQ;
COMMIT;
DROP TABLE allergy;

CREATE SEQUENCE medicine_SEQ;
COMMIT;

CREATE TABLE calendar(
	nID VARCHAR2(20),
	cId VARCHAR2(20),
	dName VARCHAR2(20),
	ndate VARCHAR2(20),
	ntime VARCHAR2(20),
	ntype VARCHAR2(20),
	nlmemo VARCHAR2(50),
	writeDate DATE DEFAULT SYSDATE,
	CONSTRAINT calendar_fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
);
CREATE SEQUENCE calendar_SEQ;





