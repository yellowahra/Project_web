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
