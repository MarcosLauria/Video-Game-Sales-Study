--What platform has had more global sales throughout the years?

SELECT Platform, MAX(Global_Sales) as Global_Sales
FROM PortfolioProject..vgsales
GROUP BY PLATFORM
ORDER BY 2 DESC

--What are the most common genres of sold video games?

SELECT Genre, MAX(Global_Sales) as Global_Sales
FROM PortfolioProject..vgsales
WHERE Genre is not null
GROUP BY Genre
ORDER BY 2 desc

--Which publisher has sold more in the NA since the 2000's?

SELECT Publisher, MAX(Global_Sales) as Global_Sales
FROM PortfolioProject..vgsales
WHERE Year >= 2000
GROUP BY Publisher
ORDER BY 2 DESC

--What year had the highest amount of global sales?

SELECT Year, MAX(Global_Sales) as Global_Sales
FROM PortfolioProject..vgsales
GROUP BY Year
ORDER BY 2 DESC

--What is Japan's most famous genre based on sales?

SELECT Genre, MAX(JP_Sales) as Japan_Sales
FROM PortfolioProject..vgsales
WHERE Genre is not null
GROUP BY Genre
ORDER BY 2 desc

--Which publishers have Shooter related video games?

SELECT DISTINCT Publisher
FROM PortfolioProject..vgsales
WHERE Genre = 'Shooter'
ORDER BY 1

--Comparing PS3 to XBOX360, which one is more relevant globally?

SELECT Platform, MAX(Global_Sales) as Global_Sales
FROM PortfolioProject..vgsales
WHERE Platform = 'PS3' OR Platform = 'X360'
GROUP BY Platform

--Comparing PS4 to XBOXONE, which one was more relevant in NA?

SELECT Platform, MAX(NA_Sales) as NA_Sales
FROM PortfolioProject..vgsales
WHERE Platform = 'PS4' OR Platform = 'XONE'
GROUP BY Platform

--What are the genre differences between NA and EU? (NA's top 3 are Racing, Shooter and Action while EU's top 3 are Action, Misc and Platform

SELECT Genre, MAX(Global_Sales) as Global_Sales, MAX(NA_Sales) as NA_Sales, MAX(EU_Sales) as EU_Sales
FROM PortfolioProject..vgsales
WHERE Genre is not null
GROUP BY Genre
ORDER BY 2 desc

SELECT Genre, MAX(NA_Sales) as NA_Sales, MAX(EU_Sales) as EU_Sales
FROM PortfolioProject..vgsales
WHERE Genre is not null
GROUP BY Genre
ORDER BY 2 desc

SELECT Genre, MAX(NA_Sales) as NA_Sales, MAX(EU_Sales) as EU_Sales
FROM PortfolioProject..vgsales
WHERE Genre is not null
GROUP BY Genre
ORDER BY 3 desc


