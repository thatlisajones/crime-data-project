DROP DATABASE IF EXISTS fbi_data;
CREATE DATABASE fbi_data;
USE fbi_data;

CREATE TABLE crimes_by_state (
id_year INT,
state_id INT(4),
state_abbr VARCHAR(4),
state_name VARCHAR(25),
population INT,
violent_crime INT,
homicide INT,
rape_legacy INT,
rape_revised INT,
robbery INT,
aggravated_assault INT,
property_crime INT,
burglary INT,
larceny INT,
motor_vehicle_theft INT,
caveats VARCHAR(2000),
PRIMARY KEY (id_year));