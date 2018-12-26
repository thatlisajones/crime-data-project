DROP DATABASE IF EXISTS fbi_data;
CREATE DATABASE fbi_data;
USE fbi_data;

CREATE TABLE victim_sex_2017 (
    sex VARCHAR(10),
    number_of_reported_victims INT,
    percent_of_reported_victims DECIMAL(10,4),
    PRIMARY KEY (sex)
);

INSERT INTO victim_sex_2017 (sex, number_of_reported_victims, percent_of_reported_victims)
VALUES (Male, 196670, 0.510639), (Female, 186742, 0.484862), (Unknown, 1733, 0.0045);

CREATE TABLE offender_sex_2017 (
    sex VARCHAR(10),
    number_of_reported_offenders INT,
    percent_of_reported_offenders DECIMAL(10,4),
    PRIMARY KEY (sex)
);

INSERT INTO offender_sex_2017 (sex, number_of_reported_offenders, percent_of_reported_offenders)
VALUES (Male, 300803, 0.786697), (Female, 64406, 0.168442), (Unknown, 17153, 0.044861);

CREATE TABLE victim_relationship_to_offender_2017 (
    reported_relationship VARCHAR(40),
    number_with_reported_relationship INT,
    PRIMARY KEY (reported_relationship)
);

INSERT INTO victim_relationship_to_offender_2017 (reported_relationship, number_with_reported_relationship)
VALUES (Child, 11836), (Employee, 635), (Employer, 260), (Friend, 12983), (Grandchild, 1019), (Grandparent, 729), (Homosexual_Relationship, 1655), (In_Law, 1346), (Neighbor,6050), (Other_Family_Member, 10318), (Otherwise_Known, 40570), (Parent, 7002), (Relationship_Unknown, 118593), (Sibling, 8147), (Stepchild, 2189), (Spouse, 13572), (Stepparent, 1257), (Stepsibling, 664), (Stranger, 98448), (Offender, 7808), (Ex_Spouse, 2291), (Common_Law_Spouse, 1264);


-- CREATE TABLE estimated_crimes (
-- id_year INT,
-- state_id INT(4),
-- state_abbr VARCHAR(4),
-- state_name VARCHAR(25),
-- population INT,
-- violent_crime INT,
-- homicide INT,
-- rape_legacy INT,
-- rape_revised INT,
-- robbery INT,
-- aggravated_assault INT,
-- property_crime INT,
-- burglary INT,
-- larceny INT,
-- motor_vehicle_theft INT,
-- caveats VARCHAR(2000),
-- PRIMARY KEY (id_year));