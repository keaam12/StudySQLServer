USE sampleDB;	
GO

CREATE TABLE userTBL
(
 userID CHAR(8) NOT NULL PRIMARY KEY,
 name NVARCHAR(10) NOT NULL,
 birthYear INT NOT NULL,
 height SMALLINT
);
-- DDL buyTBL 생성 쿼리문
CREATE TABLE buyTBL
(
 num INT NOT NULL PRIMARY KEY,
 userID CHAR(8) NOT NULL
  FOREIGN KEY REFERENCES userTBL(userID), -- RDB에서 어려운 것중 하나 Relational
  prodNAME NCHAR(6) NOT NULL,
  price INT NOT NULL
)

GO
-- userTBL에 email(유니크제약조건) 추가	
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE;

  --CHECK
 ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND brithYear <= YEAR(GETDATE()));

 SELECT * FROM dbo.userTBL;