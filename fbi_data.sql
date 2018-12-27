DROP DATABASE IF EXISTS fbi_data_2017;
CREATE DATABASE fbi_data_2017;
USE fbi_data_2017;

CREATE TABLE victim_by_sex_2017 (
    sex VARCHAR(10),
    number_of_reported_victims INT,
    percent_of_reported_victims DECIMAL(10,10),
    PRIMARY KEY (sex)
);

INSERT INTO victim_by_sex_2017 (sex, number_of_reported_victims, percent_of_reported_victims)
VALUES (Male, 196670, 0.510639), (Female, 186742, 0.484862), (Unknown, 1733, 0.0045);

CREATE TABLE offender_by_sex_2017 (
    sex VARCHAR(10),
    number_of_reported_offenders INT,
    percent_of_reported_offenders DECIMAL(10,10),
    PRIMARY KEY (sex)
);

INSERT INTO offender_by_sex_2017 (sex, number_of_reported_offenders, percent_of_reported_offenders)
VALUES (Male, 300803, 0.786697), (Female, 64406, 0.168442), (Unknown, 17153, 0.044861);

CREATE TABLE victim_relationship_to_offender_2017 (
    reported_relationship VARCHAR(40),
    number_with_reported_relationship INT,
    PRIMARY KEY (reported_relationship)
);

INSERT INTO victim_relationship_to_offender_2017 (reported_relationship, number_with_reported_relationship)
VALUES (Acquaintance, 69317), (Babysittee, 660), (Boyfriend_or_Girlfriend, 43509), (Child_of_Boyfriend_or_Girlfriend, 1806), (Child, 11836), (Employee, 635), (Employer, 260), (Friend, 12983), (Grandchild, 1019), (Grandparent, 729), (Homosexual_Relationship, 1655), (In_Law, 1346), (Neighbor,6050), (Other_Family_Member, 10318), (Otherwise_Known, 40570), (Parent, 7002), (Relationship_Unknown, 118593), (Sibling, 8147), (Stepchild, 2189), (Spouse, 13572), (Stepparent, 1257), (Stepsibling, 664), (Stranger, 98448), (Offender, 7808), (Ex_Spouse, 2291), (Common_Law_Spouse, 1264);

CREATE TABLE location_of_incident_2017 (
    location_of_incident VARCHAR(40),
    number_of_incidents_in_location INT,
    PRIMARY KEY (location_of_incident)
);

INSERT INTO location_of_incident_2017 (location_of_incident, number_of_incidents_in_location)
VALUES (Residence_Home, 197449), (Parking_Garage_Lot, 24208), (Abandoned_Condemned_Structure, 246), (Air_Bus_Train_Terminal, 1078), (Amusement_Park, 77), (Arena_Stadium_Fairgrounds, 146), (ATM_Separate_From_Bank, 78), (Auto_Dealership, 159), (Bank, 3187), (Bar_Nightclub, 5545), (Campground, 325), (Church_Synagogue_Temple_Mosque, 611), (Commercial_Office_Building, 2413), (Community_Center, 166), (Construction_Site, 232), (Cyberspace, 0), (Daycare_Facility, 176), (Department_Discount_Store, 6397), (Dock_Wharf_Shipping_Terminal, 47), (Drug_Store_Doctor_Office_Hospital, 3624), (Farm_Facility, 71), (Field_Woods, 3428), (Gambling_Facility_Casino_Race_Track, 260), (Government_Public_Building, 1698), (Grocery_Store, 3591), (Highway_Alley_Street_Sidewalk, 80866), (Hotel_Motel, 7328), (Industrial_Site, 190), (Jail_Prison_Corrections_Facility, 2905), (Lake_Waterway_Beach, 348), (Liquor_Store, 1040), (Military_Base, 13), (Unknown, 13568), (Park_Playground, 4017), (Rental_Storage_Facility, 290), (Rest_Area, 199), (Restaurant, 7609), (School_College, 1101), (School_College_University, 939), (School_Elementary_Secondary, 3686), (Gas_Station, 5543), (Mission_Homeless_Shelter, 310), (Shopping_Mall, 561), (Specialty_Store, 3854), (Tribal_Lands, 19), (Convenience_Store, 11481);

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