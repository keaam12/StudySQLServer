-- GROUP BY ROLLUP
WITH cte_summary(GRP, SUMM, DIV)
  AS
(
	SELECT groupName AS GRP
    , SUM(price * amount) AS SUMM
	, GROUPING_ID(groupName) AS DIV
	FROM buyTbl
	GROUP BY ROLLUP (groupName)
)

SELECT
	   CASE div
	   WHEN 0 THEN grp
	   when 1 THEN'총합계' END AS [상품그룹]
	 ,  summ AS [그룹별구매금액]
	FROM cte_summary;




