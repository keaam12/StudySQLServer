CREATE SCHEMA production; -- production ��Ű�� ����(�׷�)
GO

CREATE TABLE production.parts (
	 part_id INT NOT NULL,
	 part_name VARCHAR(100)
);
GO

SELECT * FROM production.parts
SELECT  part_id, part_name  FROM production.parts
 WHERE part_id = 89;

