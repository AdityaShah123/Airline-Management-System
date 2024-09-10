# Airline Management System - Database Management Project

## Overview

This project is a **Database Management System** for an **Airline Management System** that allows users to book tickets for any destination from any airport, compare flight prices, and select flights based on various preferences. The system includes flight timings, airport details, and offers options to choose flights with or without junctions.

## Features
- **Flight Booking**: Users can book flights based on their preferred date, compare different airlines, and select flights with or without junctions.
- **Flight Information**: Displays arrival and departure times along with additional airport-related information.
- **Price Comparison**: Allows users to compare prices across different airlines for the same route.
- **Flight Time Details**: Provides flight time details for direct or multi-stop journeys.

## Functional Requirements
1. **Relational Model**: Designed to efficiently store and retrieve all necessary flight, airport, and booking information.
2. **Entity-Relationship Model (ER Model)**: Represents entities like airplanes, airports, travellers, flights, etc., along with their relationships.
3. **Functional Dependencies**: Defined to ensure data integrity and normalization.
4. **SQL Data Definition Language (DDL)**: SQL statements for creating and modifying tables in the relational database.
5. **Views, Queries, and Functions**: Implements views for data abstraction and SQL queries for various booking operations. Custom functions, procedures, and cursors are used to manage complex operations.
6. **Java Integration with JDBC**: Java code is used to interact with the database using the JDBC API for seamless integration of front-end with the back-end database.

## Database Structure
The database is structured around key entities and relationships, including:

- **Airplane** (Weak Entity: Seat)
- **Airport**
- **Flight Trip** (Weak Entity: Fare)
- **Traveller** (Weak Entity)
- **Junction**
- **User**
- **Airline Company**
- **Travel Agent**

### Entity Relationships
- **Airport ↔ Airplane**: Many-to-many relation
- **Airport ↔ Junction**: One-to-many relation (for both arrival and departure)
- **Airplane ↔ Seats**: One-to-many relation
- **Traveller ↔ Seats**: One-to-one relation
- **Traveller ↔ Flight Trip**: Many-to-one relation
- **Flight Trip ↔ Fare**: One-to-one relation
- **User ↔ Flight Trip**: One-to-many relation
- **Travel Agent ↔ Flight Trip**: One-to-many relation
- **Flight Trip ↔ Junction**: Many-to-many relation
- **Fare ↔ Airline Company**: One-to-many relation

## Technologies Used
- **Database**: SQL for defining the relational structure, queries, and data manipulation.
- **Java (JDBC)**: Integration of the database with a Java-based front-end using JDBC API.
  
## How to Run the Project
1. **Database Setup**: Import the SQL DDL scripts provided in the `sql/` folder to set up the database schema.
2. **Java Application**: Compile and run the Java application using the included JDBC code to interact with the database for flight booking operations.
3. **SQL Queries**: Use the provided queries to retrieve and manipulate booking data.

## Future Enhancements
- **User Interface**: A graphical user interface (GUI) can be added for better user experience.
- **Additional Features**: Further development can include support for dynamic pricing, rewards programs, and integration with third-party booking services.

