CREATE SCHEMA AIRLINE_MANAGEMENT_COMPANY1;

set search_path to AIRLINE_MANAGEMENT_COMPANY1;

CREATE TABLE USERS
(
  U_Email_ID TEXT NOT NULL,
  U_Naame TEXT NOT NULL,
  U_Contact_Number BIGINT NOT NULL,
  PRIMARY KEY (U_Email_ID)
);

INSERT    into USERS (U_Email_ID, U_Naame, U_Contact_Number) values ('wackers0@skyrock.com', 'Wye Ackers', '9371885242');
INSERT    into USERS (U_Email_ID, U_Naame, U_Contact_Number) values ('arowdell1@ed.gov', 'Aeriell Rowdell', '7025296616');
INSERT    into USERS (U_Email_ID, U_Naame, U_Contact_Number) values ('fle2@upenn.edu', 'Finley Le Hucquet', '9463201270');
INSERT    into USERS (U_Email_ID, U_Naame, U_Contact_Number) values ('ajohnsee3@cbslocal.com', 'Angie Johnsee', '9829605136');
INSERT    into USERS (U_Email_ID, U_Naame, U_Contact_Number) values ('mmacmechan4@bluehost.com', 'Mike MacMechan', '8758735091');

CREATE TABLE Travel_Agent
(
  T_Company_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  T_Company_Name TEXT NOT NULL,
  Agent_Name TEXT NOT NULL,
  PRIMARY KEY (T_Company_ID, Agent_ID)
);

insert into Travel_Agent (T_Company_ID, AGENT_ID, T_Company_Name, AGENT_NAME) values ('27', '5576', 'ryzen', 'Patton Tillot');
insert into Travel_Agent (T_Company_ID, AGENT_ID, T_Company_Name, AGENT_NAME) values ('47', '3867', 'go power', 'Pearl Bennallck');
insert into Travel_Agent (T_Company_ID, AGENT_ID, T_Company_Name, AGENT_NAME) values ('34', '6056', 'oborois', 'Becka Mumberson');
insert into Travel_Agent (T_Company_ID, AGENT_ID, T_Company_Name, AGENT_NAME) values ('48', '5661', 'hentch', 'Beau Chsteney');
insert into Travel_Agent (T_Company_ID, AGENT_ID, T_Company_Name, AGENT_NAME) values ('10', '3712', 'unknown', 'Nonie Edwick');

CREATE TABLE Traveller
(
  Traveller_ID INT NOT NULL,
  T_Naame TEXT NOT NULL,
  Addres TEXT NOT NULL,
  T_Contact_Number BIGINT NOT NULL,
  PRIMARY KEY (Traveller_ID)
);

insert into TRAVELLER (TRAVELLER_ID, T_Naame, ADDRES, T_Contact_Number) values ('1259516', 'shah aditya', '93 Manufacturers Junction', '9371905242');
insert into TRAVELLER (TRAVELLER_ID, T_Naame, ADDRES, T_Contact_Number) values ('6161265', 'mukesh tiwari', '62330 Donald Parkway', '7025346616');
insert into TRAVELLER (TRAVELLER_ID, T_Naame, ADDRES, T_Contact_Number) values ('2075121', 'hitarth bhatt', '74088 Utah Trail', '9463768270');
insert into TRAVELLER (TRAVELLER_ID, T_Naame, ADDRES, T_Contact_Number) values ('3555237', 'manan joshi', '6 4th Place', '9889005136');
insert into TRAVELLER (TRAVELLER_ID, T_Naame, ADDRES, T_Contact_Number) values ('8769878', 'harsh agarwal', '87 Schmedeman Junction', '8758735999');

CREATE TABLE Airline_Company
(
  Company_ID INT NOT NULL,
  Company_Name TEXT NOT NULL,
  PRIMARY KEY (Company_ID)
);

insert into AIRLINE_COMPANY (COMPANY_ID, COMPANY_NAME) values ('27436', 'indigo');
insert into AIRLINE_COMPANY (COMPANY_ID, COMPANY_NAME) values ('47731', 'jet airways');
insert into AIRLINE_COMPANY (COMPANY_ID, COMPANY_NAME) values ('34190', 'spice jet');
insert into AIRLINE_COMPANY (COMPANY_ID, COMPANY_NAME) values ('99106', 'qutar');
insert into AIRLINE_COMPANY (COMPANY_ID, COMPANY_NAME) values ('48887', 'air india');

CREATE TABLE Airplane
(
  Airplane_ID INT NOT NULL,
  Seat_Capacity INT NOT NULL,
  PRIMARY KEY (Airplane_ID)
);

insert into AIRPLANE (AIRPLANE_ID, SEAT_CAPACITY) values ('2804719', '220');
insert into AIRPLANE (AIRPLANE_ID, SEAT_CAPACITY) values ('1816867', '540');
insert into AIRPLANE (AIRPLANE_ID, SEAT_CAPACITY) values ('3045236', '250');
insert into AIRPLANE (AIRPLANE_ID, SEAT_CAPACITY) values ('7756181', '800');
insert into AIRPLANE (AIRPLANE_ID, SEAT_CAPACITY) values ('6785008', '350');

CREATE TABLE Airport
(
  Airport_Code BIGINT NOT NULL,
  Airport_Name TEXT NOT NULL,
  PRIMARY KEY (Airport_Code)
);

insert into AIRPORT (AIRPORT_CODE, AIRPORT_NAME) values ('220', 'Amritsar Airport');
insert into AIRPORT (AIRPORT_CODE, AIRPORT_NAME) values ('540', 'Bajpe Airport');
insert into AIRPORT (AIRPORT_CODE, AIRPORT_NAME) values ('250', 'Chennai International Airport');
insert into AIRPORT (AIRPORT_CODE, AIRPORT_NAME) values ('800', 'Chandigarh Airport');
insert into AIRPORT (AIRPORT_CODE, AIRPORT_NAME) values ('350', 'Cochin International Airport');

CREATE TABLE Airport_Address
(
  Loc TEXT NOT NULL,
  Country TEXT NOT NULL,
  Sttate TEXT NOT NULL,
  City TEXT NOT NULL,
  Airport_Code INT NOT NULL,
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code)
);

insert into AIRPORT_ADDRESS (Loc, COUNTRY, Sttate, CITY, AIRPORT_CODE) values ('Ludhiana Airport (LUH), Amritsar', 'INDIA', 'PUNJAB', 'LUDHIANA', '220');
insert into AIRPORT_ADDRESS (Loc, COUNTRY, Sttate, CITY, AIRPORT_CODE) values ('Bajpe Airport (IXE), Airport interior Rd, Mangalore', 'INDIA', 'KARNATAKA', 'MANGLORE', '540');
insert into AIRPORT_ADDRESS (Loc, COUNTRY, Sttate, CITY, AIRPORT_CODE) values ('Chennai International Airport (MAA), Great Southern Trunk Rd, Meenambakkam,', 'INDIA', 'TAMILNADU', 'CHENNAI', '250');
insert into AIRPORT_ADDRESS (Loc, COUNTRY, Sttate, CITY, AIRPORT_CODE) values ('Chandigarh Airport (IXC), Industrial Area Phase II', 'INDIA', 'CHANDIGADH', 'CHANDIGADH', '800');
insert into AIRPORT_ADDRESS (Loc, COUNTRY, Sttate, CITY, AIRPORT_CODE) values ('Cochin International Airport (COK), Nedumbassery', 'INDIA', 'KERALA', 'KOCHI', '350');

CREATE TABLE Booked_By
(
  U_EMAIL_ID TEXT NOT NULL,
  T_COMPANY_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  PRIMARY KEY (U_EMAIL_ID, T_COMPANY_ID, Agent_ID),
  FOREIGN KEY (U_EMAIL_ID) REFERENCES USERS(U_EMAIL_ID),
  FOREIGN KEY (T_COMPANY_ID, Agent_ID) REFERENCES Travel_Agent(T_COMPANY_ID, Agent_ID)
);

insert into BOOKED_BY (U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('wackers0@skyrock.com', '27', '5576');
insert into BOOKED_BY (U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('arowdell1@ed.gov', '47', '3867');
insert into BOOKED_BY (U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('fle2@upenn.edu', '34', '6056');
insert into BOOKED_BY (U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('ajohnsee3@cbslocal.com', '48', '5661');
insert into BOOKED_BY (U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('mmacmechan4@bluehost.com', '10', '3712');

CREATE TABLE Flight_Trip
(
  Journey_ID INT NOT NULL,
  Arrival_Time VARCHAR NOT NULL,
  Departure_Time VARCHAR NOT NULL,
  Flight_Trip_Duration VARCHAR NOT NULL,
  No_of_Travellers INT NOT NULL,
  U_EMAIL_ID TEXT NOT NULL,
  T_COMPANY_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  PRIMARY KEY (Journey_ID),
  FOREIGN KEY (U_EMAIL_ID, T_COMPANY_ID, Agent_ID) REFERENCES Booked_By(U_EMAIL_ID, T_COMPANY_ID, Agent_ID)
);

insert into FLIGHT_TRIP (JOURNEY_ID, ARRIVAL_TIME, DEPARTURE_TIME, FLIGHT_TRIP_DURATION, NO_OF_TRAVELLERS, U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('022014611', '11H 00M PM', '7H 45M AM', '8H 45M', '200', 'wackers0@skyrock.com', '27', '5576');
insert into FLIGHT_TRIP (JOURNEY_ID, ARRIVAL_TIME, DEPARTURE_TIME, FLIGHT_TRIP_DURATION, NO_OF_TRAVELLERS, U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('188379463', '4H 00M PM', '1H 00M AM', '9H', '300', 'arowdell1@ed.gov', '47', '3867');
insert into FLIGHT_TRIP (JOURNEY_ID, ARRIVAL_TIME, DEPARTURE_TIME, FLIGHT_TRIP_DURATION, NO_OF_TRAVELLERS, U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('282980792', '8H 00M AM', '3H 00M PM', '7H', '250', 'fle2@upenn.edu', '34', '6056');
insert into FLIGHT_TRIP (JOURNEY_ID, ARRIVAL_TIME, DEPARTURE_TIME, FLIGHT_TRIP_DURATION, NO_OF_TRAVELLERS, U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('293916738', '8H 00M PM', '12H 20M AM', '4H 20M', '500', 'ajohnsee3@cbslocal.com', '48', '5661');
insert into FLIGHT_TRIP (JOURNEY_ID, ARRIVAL_TIME, DEPARTURE_TIME, FLIGHT_TRIP_DURATION, NO_OF_TRAVELLERS, U_EMAIL_ID, T_COMPANY_ID, AGENT_ID) values ('508403540', '1H 00M AM', '12H 40M PM', '10H 40M', '475', 'mmacmechan4@bluehost.com', '10', '3712');

CREATE TABLE Fare
(
  Taxes VARCHAR NOT NULL,
  Currency TEXT NOT NULL,
  Amount BIGINT NOT NULL,
  Final_Fare INT NOT NULL,
  COMPANY_ID INT NOT NULL,
  Journey_ID INT NOT NULL,
  PRIMARY KEY (Journey_ID),
  FOREIGN KEY (COMPANY_ID) REFERENCES Airline_Company(COMPANY_ID),
  FOREIGN KEY (Journey_ID) REFERENCES Flight_Trip(Journey_ID)
);

insert into FARE (TAXES, CURRENCY, AMOUNT, FINAL_FARE, COMPANY_ID, JOURNEY_ID) values ('5%', 'RUPEE', '100000','95000' , '27436', '022014611');
insert into FARE (TAXES, CURRENCY, AMOUNT, FINAL_FARE, COMPANY_ID, JOURNEY_ID) values ('10%', 'RUPEE', '200000', '180000', '47731', '188379463');
insert into FARE (TAXES, CURRENCY, AMOUNT, FINAL_FARE, COMPANY_ID, JOURNEY_ID) values ('7%', 'DOLLAR', '1000', '930', '34190', '282980792');
insert into FARE (TAXES, CURRENCY, AMOUNT, FINAL_FARE, COMPANY_ID, JOURNEY_ID) values ('5%', 'RUPEE', '125000', '118750', '99106', '293916738');
insert into FARE (TAXES, CURRENCY, AMOUNT, FINAL_FARE, COMPANY_ID, JOURNEY_ID) values ('10%', 'RUPEE', '150000', '135000', '48887', '508403540');

CREATE TABLE Seat
(
  Seat_Number INT NOT NULL,
  Cllass TEXT NOT NULL,
  Seat_Type TEXT NOT NULL,
  Available TEXT NOT NULL,
  Airplane_ID INT NOT NULL,
  PRIMARY KEY (Seat_Number, Cllass),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID)
);

insert into SEAT (SEAT_NUMBER, Cllass, SEAT_TYPE, Available, AIRPLANE_ID) values ('33', 'GENERAL', 'W','AVAILABLE', '2804719');
insert into SEAT (SEAT_NUMBER, Cllass, SEAT_TYPE, Available, AIRPLANE_ID) values ('55', 'GENERAL', 'M', 'AVAILABLE', '1816867');
insert into SEAT (SEAT_NUMBER, Cllass, SEAT_TYPE, Available, AIRPLANE_ID) values ('42', 'BUSINESS', 'O', 'AVAILABLE', '3045236');
insert into SEAT (SEAT_NUMBER, Cllass, SEAT_TYPE, Available, AIRPLANE_ID) values ('03', 'GENERAL', 'W', 'AVAILABLE', '7756181');
insert into SEAT (SEAT_NUMBER, Cllass, SEAT_TYPE, Available, AIRPLANE_ID) values ('19', 'GENERAL', 'M', 'AVAILABLE', '6785008');

CREATE TABLE Junction
(
  Junction_Code INT NOT NULL,
  Junction_Name TEXT NOT NULL,
  Waiting_Time_at_Junction VARCHAR NOT NULL,
  Arrival_Time VARCHAR NOT NULL,
  Departure_Time VARCHAR NOT NULL,
  Arrival_Airport TEXT NOT NULL,
  Departure_Airport TEXT NOT NULL,
  Airplane_ID INT NOT NULL,
  Airport_Code INT NOT NULL,
  PRIMARY KEY (Junction_Code),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID),
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code)
);

insert into JUNCTION (JUNCTION_CODE, JUNCTION_NAME, WAITING_TIME_AT_JUNCTION, ARRIVAL_TIME, DEPARTURE_TIME, ARRIVAL_AIRPORT, DEPARTURE_AIRPORT, AIRPLANE_ID, AIRPORT_CODE) values ('98359972', 'AHEMDABAD', '2H', '10:36 PM', '1:05 PM', 'Amritsar Airport', 'Bajpe Airport', '2804719', '220');
insert into JUNCTION (JUNCTION_CODE, JUNCTION_NAME, WAITING_TIME_AT_JUNCTION, ARRIVAL_TIME, DEPARTURE_TIME, ARRIVAL_AIRPORT, DEPARTURE_AIRPORT, AIRPLANE_ID, AIRPORT_CODE) values ('76121096', 'MUMBAI', '3H', '4:21 AM', '11:21 AM', 'Chennai International Airport', 'MiAmritsar Airportles', '1816867', '540');
insert into JUNCTION (JUNCTION_CODE, JUNCTION_NAME, WAITING_TIME_AT_JUNCTION, ARRIVAL_TIME, DEPARTURE_TIME, ARRIVAL_AIRPORT, DEPARTURE_AIRPORT, AIRPLANE_ID, AIRPORT_CODE) values ('45066376', 'SURAT', '1H', '9:33 AM', '8:07 PM', 'Chennai International Airport', 'Bajpe Airport', '3045236', '250');
insert into JUNCTION (JUNCTION_CODE, JUNCTION_NAME, WAITING_TIME_AT_JUNCTION, ARRIVAL_TIME, DEPARTURE_TIME, ARRIVAL_AIRPORT, DEPARTURE_AIRPORT, AIRPLANE_ID, AIRPORT_CODE) values ('63994935', 'INDORE', '3H', '6:02 PM', '6:56 PM', 'Amritsar Airport', 'Cochin International Airport', '7756181', '800');
insert into JUNCTION (JUNCTION_CODE, JUNCTION_NAME, WAITING_TIME_AT_JUNCTION, ARRIVAL_TIME, DEPARTURE_TIME, ARRIVAL_AIRPORT, DEPARTURE_AIRPORT, AIRPLANE_ID, AIRPORT_CODE) values ('36496688', 'GOA', '2H', '10:01 PM', '7:13 PM', 'Chandigarh Airport', 'Cochin International Airport', '6785008', '350');

CREATE TABLE Acces
(
  Airport_Code INT NOT NULL,
  Airplane_ID INT NOT NULL,
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID)
);

insert into Acces (AIRPORT_CODE, AIRPLANE_ID) values ('220', '2804719');
insert into Acces (AIRPORT_CODE, AIRPLANE_ID) values ('540', '1816867');
insert into Acces (AIRPORT_CODE, AIRPLANE_ID) values ('250', '3045236');
insert into Acces (AIRPORT_CODE, AIRPLANE_ID) values ('800', '7756181');
insert into Acces (AIRPORT_CODE, AIRPLANE_ID) values ('350', '6785008');

CREATE TABLE Journey_plan_of_Traveller
(
  Journey_ID INT NOT NULL,
  Traveller_ID INT NOT NULL,
  Seat_Number INT NOT NULL,
  Cllass TEXT NOT NULL,
  FOREIGN KEY (Journey_ID) REFERENCES Flight_Trip(Journey_ID),
  FOREIGN KEY (Traveller_ID) REFERENCES Traveller(Traveller_ID),
  FOREIGN KEY (Seat_Number, Cllass) REFERENCES Seat(Seat_Number, Cllass)
);

insert into JOURNEY_PLAN_OF_TRAVELLER (JOURNEY_ID, TRAVELLER_ID, SEAT_NUMBER, Cllass) values ('022014611', '1259516', '33', 'GENERAL');
insert into JOURNEY_PLAN_OF_TRAVELLER (JOURNEY_ID, TRAVELLER_ID, SEAT_NUMBER, Cllass) values ('188379463', '6161265', '55', 'GENERAL');
insert into JOURNEY_PLAN_OF_TRAVELLER (JOURNEY_ID, TRAVELLER_ID, SEAT_NUMBER, Cllass) values ('282980792', '2075121', '42', 'BUSINESS');
insert into JOURNEY_PLAN_OF_TRAVELLER (JOURNEY_ID, TRAVELLER_ID, SEAT_NUMBER, Cllass) values ('293916738', '3555237', '03', 'GENERAL');
insert into JOURNEY_PLAN_OF_TRAVELLER (JOURNEY_ID, TRAVELLER_ID, SEAT_NUMBER, Cllass) values ('508403540', '8769878', '19', 'GENERAL');

CREATE TABLE Withs
(
  Junction_Code INT NOT NULL,
  Journey_ID INT NOT NULL,
  FOREIGN KEY (Junction_Code) REFERENCES Junction(Junction_Code),
  FOREIGN KEY (Journey_ID) REFERENCES Fare(Journey_ID)
);

insert into Withs (JUNCTION_CODE, JOURNEY_ID) values ('98359972', '022014611');
insert into Withs (JUNCTION_CODE, JOURNEY_ID) values ('76121096', '188379463');
insert into Withs (JUNCTION_CODE, JOURNEY_ID) values ('45066376', '282980792');
insert into Withs (JUNCTION_CODE, JOURNEY_ID) values ('63994935', '293916738');
insert into Withs (JUNCTION_CODE, JOURNEY_ID) values ('36496688', '508403540');