/*Opening the database named Chicago. */

USE chicago;


/*SQL query to list the case number, type of crime and community area for all crimes in community area number 18.*/

SELECT A.CASE_NUMBER, A.PRIMARY_TYPE, B.COMMUNITY_AREA_NAME 
FROM chicago_crime_data A INNER JOIN census_data B ON A.COMMUNITY_AREA_NUMBER = B.COMMUNITY_AREA_NUMBER 
WHERE A.COMMUNITY_AREA_NUMBER = 18;


/* SQL query to list all crimes that took place at a school. Including case number, crime type and community name.*/

SELECT A.CASE_NUMBER, A.PRIMARY_TYPE, B.COMMUNITY_AREA_NAME 
FROM chicago_crime_data A INNER JOIN census_data B ON A.COMMUNITY_AREA_NUMBER = B.COMMUNITY_AREA_NUMBER 
WHERE A.LOCATION_DESCRIPTION LIKE "%SCHOOL%"


/* SQL query for the communities of Oakland, Armour Square, Edgewater and CHICAGO 
list all the associated community_area_numbers and the case_numbers.*/

SELECT A.CASE_NUMBER, B.COMMUNITY_AREA_NAME 
FROM chicago_crime_data A INNER JOIN census_data B ON A.COMMUNITY_AREA_NUMBER = B.COMMUNITY_AREA_NUMBER 
WHERE B.COMMUNITY_AREA_NAME IN ('Oakland', 'Armour Square', 'Edgewater', 'CHICAGO');