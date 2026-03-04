# Animal Shelter Management System

## General Description
This project represents an **information system for managing the activities of an animal shelter**, developed for a **Databases** course. 
The primary goal is to track data regarding animals, employees, clients, adoptions, medical treatments, vaccines, and other administrative tasks.

The system allows for:
* Efficient organization of animal records and their health status.
* Monitoring of veterinary procedures and treatments applied by doctors.
* Management of employees assigned to various branches with specific roles.
* Complete tracking of the adoption process and history.
* Public communication through weekly magazines featuring shelter animals.

---

## Project Structure
* **`table_creation_data_population.sql`**: SQL commands for table creation, primary/foreign keys, constraints, sequences, and data insertion.
* **`queries.sql`**: Complex SQL queries including JOINs, subqueries, and advanced functions.
* **`Presentation.docx`**: Theoretical documentation covering the conceptual model and normalization.

---

## Conceptual Model

<img width="487" height="331" alt="Screenshot 2026-03-04 215802" src="https://github.com/user-attachments/assets/bd1887ab-3b00-4fa4-b36d-a25449ccc880" />

The system is built around several key entities:

* **Employee**: Includes sub-entities such as *Veterinarians*, *Caretakers*, and *Notaries*.
* **Branch**: Physical locations of the shelter across the country.
* **Cage**: Specific housing units within branches.
* **Animal**: Residents identified by a unique microchip (CIP).
* **Client**: Registered individuals who adopt or subscribe to the magazine.
* **Procedure**: Medical actions performed by specialized staff.
* **Magazine**: The shelter's publications.
* **History**: Tables that store the evolution of interactions (e.g., `medical history`, `cage history`, `adoption history`, `publication history`, etc.).
---

## Rules and Constraints

* Every animal is identified by a **unique microchip code (CIP)**.
* A cage can hold only one animal at any given time.
* Only **Veterinarians** are permitted to administer medications and procedures.
* Only **Notaries** are authorized to handle and sign adoption contracts.
* Only **Caretakers** manage the maintenance and history of the cages.
* Animals can be returned and readopted by different clients, but **never twice by the same client**.
* Every branch has **at least one employee and one cage**.

---

## Implemented SQL Queries

The project includes advanced SQL implementations found in `queries.sql`:

* Synchronized and unsynchronized subqueries (involving 3+ tables).
* String and calendar functions.
* Aggregations and group functions (AVG, COUNT, MAX, etc.)
* Conditional logic using `CASE`, `NVL`, and `DECODE` clauses.
* Outer Joins and WITH clauses.
* Division and Top-N analysis queries.
* Update and Delete operations performed through subqueries.
* Complex View creation including examples of allowed and restricted DML operations.

---

## Normalization
The database design adheres to professional standards to ensure data integrity:

* **1NF, 2NF, 3NF**: All attributes are atomic, fully dependent on the primary key, and free of transitive dependencies.
* **BCNF, 4NF, 5NF**: Advanced analysis to eliminate redundancy and handle multi-valued dependencies.
* **Justified Denormalization**: Applied in specific cases (e.g., medical history) to optimize query performance.
