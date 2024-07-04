/*
Enter your query here.
*/

SELECT ROUND(S.lat_n, 4) AS median
FROM STATION S
WHERE (
    SELECT COUNT(*) 
    FROM STATION 
    WHERE LAT_N < S.lat_n
) = (
    SELECT COUNT(*) 
    FROM STATION 
    WHERE LAT_N > S.lat_n
);