--Problem Statement
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Print the median of Northern Latitude values up to 4 decimal places.
*/

--Solution

SELECT ROUND(S1.LAT_N, 4) 
FROM STATION AS S1 
WHERE (SELECT ROUND(COUNT(S1.ID)/2) - 1 
       FROM STATION) = (SELECT COUNT(S2.ID) 
       FROM STATION AS S2 
       WHERE S2.LAT_N > S1.LAT_N);
