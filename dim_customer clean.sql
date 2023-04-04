/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	CustomerKey,
--[GeographyKey]
--[CustomerAlternateKey]
--[Title]
      FirstName AS [First Name],
--[MiddleName]
      LastName AS [Last Name],
	  FirstName + ' ' + LastName AS [Full Name],
--[BirthDate]
--[MaritalStatus]
--[Suffix]
		CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
--[EmailAddress]
--[YearlyIncome]
--[TotalChildren]
--[NumberChildrenAtHome]
--[EnglishEducation]
--[SpanishEducation]
--[FrenchEducation]
--[EnglishOccupation]
--[SpanishOccupation]
--[FrenchOccupation]
--[HouseOwnerFlag]
--[NumberCarsOwned]
--[AddressLine1]
--[AddressLine2]
--[Phone]
		[DateFirstPurchase],
--[CommuteDistance]
		g.City AS [Customer City]
  FROM DimCustomer AS c --LEFT
  LEFT JOIN DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY
	CustomerKey ASC