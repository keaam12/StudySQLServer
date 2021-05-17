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
--- 복잡한 쿼리를 한번에 처리할 수 있다.
SELECT * FROM v_userbuyInfo
 ORDER BY price DESC

 DROP VIEW v_userbuyInfo
 DROP VIEW v_userTBl