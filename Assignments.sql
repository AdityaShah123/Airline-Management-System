CREATE SCHEMA COMPANY7

CREATE TABLE COMPANY7.EMPLOYEE(
	FNAME TEXT NOT NULL,
	MINIT TEXT,
	LNAME TEXT NOT NULL,
	UNIQUE(FNAME,LNAME),
	SSN DECIMAL(10,0) NOT NULL PRIMARY KEY,
	BDATE DATE,
	ADDRESS TEXT,
	SEX CHAR(1) CHECK (SEX in ('M','F','O')),
	SALARY DECIMAL(8,0) CHECK (SALARY>=5000 AND SALARY<=100000),
	SUPERSSN DECIMAL(10,0) REFERENCES EMPLOYEE(SSN)
)

CREATE TABLE COMPANY7.DEPARTMENT(
	DNAME TEXT,
	DNUMBER DECIMAL(5,0) PRIMARY KEY,
	MGRSSN DECIMAL(10,0) REFERENCES EMPLOYEE(SSN) NOT NULL,
	MGRSTARTDATE DATE
)

CREATE TABLE COMPANY7.DEPT_LOCATION(
	DNUMBER DECIMAL(5,0) REFERENCES DEPARTMENT(DNUMBER) ON DELETE CASCADE ON UPDATE CASCADE,
	DLOCATION TEXT,
	PRIMARY KEY(DNUMBER, DLOCATION)
)

CREATE TABLE COMPANY7.PROJECT(
	PNAME TEXT,
	PNUMBER DECIMAL(10,0) PRIMARY KEY,
	PLOCATION TEXT,
	DNUM DECIMAL(5,0) REFERENCES DEPARTMENT(DNUMBER) ON UPDATE cascade
)

CREATE TABLE COMPANY7.WORKS_ON(
	ESSN DECIMAL(10,0) REFERENCES EMPLOYEE(SSN) ON DELETE RESTRICT,
	PNO DECIMAL(10,0) REFERENCES PROJECT(PNUMBER),
	HOURS DECIMAL(12,2) CHECK (HOURS <= 100),
	PRIMARY KEY(ESSN, PNO)
)

CREATE TABLE COMPANY7.DEPENDENT(
	ESSN DECIMAL(10,0) REFERENCES EMPLOYEE(SSN),
	DEPENDENT_NAME TEXT,
	SEX CHAR(1) CHECK (SEX in ('M','F','O')),
	BDATE DATE,
	RELATIONSHIP TEXT,
	PRIMARY KEY(ESSN, DEPENDENT_NAME)
)