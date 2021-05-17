CREATE TABLE ddlTbl
(
 Id int NOT NULL PRIMARY KEY,
 name NVARCHAR(20) NOT NULL,
 regDate DATETiME
);

GO

CREATE TABLE prodTBl
(
	prodCode NCHAR(3) NOT NULL PRIMARY KEY,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL
);
GO




-- DDL�� ���̺� ����
ALTER TABLE ddlTbl ADD Id INT IDENTITY (1,1);

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
  Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(20) NOT NULL,
  regDate DATETIME
  );
  GO