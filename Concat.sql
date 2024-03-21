SELECT CONCAT(NAME,'(',LEFT(Occupation,1),')') 
FROM 
    OCCUPATIONS 
ORDER BY 
    NAME;
SELECT 
    CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS Occupation_Count
FROM 
    OCCUPATIONS
GROUP BY 
    occupation
ORDER BY 
    COUNT(occupation), occupation;
