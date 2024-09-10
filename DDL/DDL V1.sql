CREATE SCHEMA AIRLINE_MANAGEMENT_SYSTEM

SET search_path to AIRLINE_MANAGEMENT_SYSTEM;

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.USERS
(
  Email_ID INT NOT NULL,
  Name INT NOT NULL,
  Contact_Number INT NOT NULL,
  PRIMARY KEY (Email_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Travel_Agent
(
  Company_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  Company_Name INT NOT NULL,
  Agent_Name INT NOT NULL,
  PRIMARY KEY (Company_ID, Agent_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Traveller
(
  Traveller_ID INT NOT NULL,
  Name INT NOT NULL,
  Address INT NOT NULL,
  Contact_Number INT NOT NULL,
  PRIMARY KEY (Traveller_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Airline_Company
(
  Company_ID INT NOT NULL,
  Company_Name INT NOT NULL,
  PRIMARY KEY (Company_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Airplane
(
  Airplane_ID INT NOT NULL,
  Seat_Capacity INT NOT NULL,
  PRIMARY KEY (Airplane_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Airport
(
  Airport_Code INT NOT NULL,
  Airplane_Name INT NOT NULL,
  PRIMARY KEY (Airport_Code)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Airport_Address
(
  Location INT NOT NULL,
  Country INT NOT NULL,
  State INT NOT NULL,
  City INT NOT NULL,
  Airport_Code INT NOT NULL,
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Booked_By
(
  Email_ID INT NOT NULL,
  Company_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  PRIMARY KEY (Email_ID, Company_ID, Agent_ID),
  FOREIGN KEY (Email_ID) REFERENCES USERS(Email_ID),
  FOREIGN KEY (Company_ID, Agent_ID) REFERENCES Travel_Agent(Company_ID, Agent_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Flight_Trip
(
  Journey_ID INT NOT NULL,
  Arrival_Time INT NOT NULL,
  Departure_Time INT NOT NULL,
  Flight_Trip_Duration INT NOT NULL,
  No_of_Travellers INT NOT NULL,
  Email_ID INT NOT NULL,
  Company_ID INT NOT NULL,
  Agent_ID INT NOT NULL,
  PRIMARY KEY (Journey_ID),
  FOREIGN KEY (Email_ID, Company_ID, Agent_ID) REFERENCES Booked_By(Email_ID, Company_ID, Agent_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Fare
(
  Taxes INT NOT NULL,
  Currency INT NOT NULL,
  Amount INT NOT NULL,
  Final_Fare INT NOT NULL,
  Company_ID INT NOT NULL,
  Journey_ID INT NOT NULL,
  PRIMARY KEY (Journey_ID),
  FOREIGN KEY (Company_ID) REFERENCES Airline_Company(Company_ID),
  FOREIGN KEY (Journey_ID) REFERENCES Flight_Trip(Journey_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Seat
(
  Seat_Number INT NOT NULL,
  Class INT NOT NULL,
  Seat_Type INT NOT NULL,
  Availability INT NOT NULL,
  Airplane_ID INT NOT NULL,
  PRIMARY KEY (Seat_Number, Class),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Junction
(
  Junction_Code INT NOT NULL,
  Junction_Name INT NOT NULL,
  Waiting_Time_at_Junction INT NOT NULL,
  Arrival_Time INT NOT NULL,
  Departure_Time INT NOT NULL,
  Arrival_Airport INT NOT NULL,
  Departure_Airport INT NOT NULL,
  Airplane_ID INT NOT NULL,
  Airport_Code INT NOT NULL,
  PRIMARY KEY (Junction_Code),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID),
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Access
(
  Airport_Code INT NOT NULL,
  Airplane_ID INT NOT NULL,
  FOREIGN KEY (Airport_Code) REFERENCES Airport(Airport_Code),
  FOREIGN KEY (Airplane_ID) REFERENCES Airplane(Airplane_ID)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.Journey_plan_of_Traveller
(
  Journey_ID INT NOT NULL,
  Traveller_ID INT NOT NULL,
  Seat_Number INT NOT NULL,
  Class INT NOT NULL,
  FOREIGN KEY (Journey_ID) REFERENCES Flight_Trip(Journey_ID),
  FOREIGN KEY (Traveller_ID) REFERENCES Traveller(Traveller_ID),
  FOREIGN KEY (Seat_Number, Class) REFERENCES Seat(Seat_Number, Class)
)

CREATE TABLE AIRLINE_MANAGEMENT_SYSTEM.With
(
  Junction_Code INT NOT NULL,
  Journey_ID INT NOT NULL,
  FOREIGN KEY (Junction_Code) REFERENCES Junction(Junction_Code),
  FOREIGN KEY (Journey_ID) REFERENCES Fare(Journey_ID)
)