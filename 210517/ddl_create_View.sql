 -- VIEW
 CREATE VIEW v_userTBl
 AS
	SELECT userID, name, addr FROM userTBL;
GO

SELECT userID, name, addr FROM v_userTBl

SELECT * FROM v_userTBl

CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
	  FROM userTBl as u
	 INNER JOIN buytbl as b
        ON u.userID = b.userID;
GO
--- ������ ������ �ѹ��� ó���� �� �ִ�.
SELECT * FROM v_userbuyInfo
 ORDER BY price DESC

 DROP VIEW v_userbuyInfo
 DROP VIEW v_userTBl