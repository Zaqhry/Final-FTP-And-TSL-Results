



--#### FINAL FTP & TSL RESULTS ####



--FTP & TSL RESULTS

SELECT * 
FROM TOTALFTP ftp
INNER JOIN TOTALTSL tsl
	ON ftp.session = tsl.session 

--Most Profitable Confluences for each session FTP

SELECT DISTINCT(Session),
		Confluence,
		ProfitLossFTP
FROM AUDJPY 
	GROUP BY Session,
	         Confluence,
	         ProfitLossFTP
	ORDER BY 1,
		 3 DESC

--Most Profitable Confluences for each session TSL

SELECT DISTINCT(Session),
		Confluence,
		ProfitLossTSL
FROM AUDJPY 
	GROUP BY Session,
	         Confluence,
	         ProfitLossTSL
	ORDER BY 1,
		 3 DESC

--POSITIVE & NEGATIVE FTP For Each Confluence

SELECT ProfitLossFTP,
       Confluence,
       COUNT(ProfitLossFTP) FTPOccurence
FROM AUDJPY 
	GROUP BY ProfitLossFTP,
		 Confluence
	ORDER BY FTPOccurence DESC;

--POSITIVE & NEGATIVE TSL For Each Confluence

SELECT ProfitLossTSL,
       Confluence,
       COUNT(ProfitLossTSL) TSLOccurence
FROM AUDJPY 
	GROUP BY ProfitLossTSL,
		 Confluence
	ORDER BY TSLOccurence DESC;
	
	
	
