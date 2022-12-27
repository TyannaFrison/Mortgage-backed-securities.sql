-- home sale prices,overall quality, and overall condition from high to low selling --
SELECT overallcond,overallqual,saleprice 
FROM houseprices 
GROUP BY overallcond,overallqual,saleprice
ORDER BY saleprice DESC ;

-- Average overall house condition rating of high valued homes -- 
 SELECT AVG(overallcond)
 FROM houseprices 
 WHERE saleprice >=185506.1525;

-- Average overall house condition rating of low valued homes -- 
 SELECT AVG(overallcond)
 FROM houseprices 
 WHERE saleprice <185506.1525;
-- Conclusion Sales are not based off of home conditions because low valued homes have a rating of 5.7 which is higher than the homes sold a  a hire value--

-- Average overall house ratings of high sold homes--
 SELECT AVG(overallqual)
 FROM houseprices 
 WHERE saleprice >=185506.1525;

-- Average overall house ratings of homes sold for a low value --
 SELECT AVG(overallqual)
 FROM houseprices 
 WHERE saleprice <=185506.1525;
 -- Conclusion the overall quality rating of the home reflects the higher sale price of the home (higher rated quality = higher rated sale price)--
 -- Average sales per year --
 SELECT AVG(saleprice),yrsold
 FROM houseprices
GROUP BY yrsold 
 ORDER BY AVG(saleprice) DESC;
 -- Top selling homes by neighborhood  --
 SELECT saleprice ,neighborhood
 FROM houseprices 
 ORDER BY saleprice DESC;
 

 