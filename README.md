# Database-project

1. Conceptual model
Based on the provided database schema, the conceptual model can be represented using an entity-relationship diagram (ERD) as follows:
                              +---------------+
                              |   Room        |
                              +---------------+
                              | room_number   |
                              | room_type     |
                              | capacity      |
                              | occupied      |
                              +---------------+
                                      1
                                      |
                                      n
+---------------+            +----------------+            +-----------------+
|   Student     |            |   Payments     |            |     Visitors     |
+---------------+            +----------------+            +-----------------+
| student_id    |1-----n|    | payment_id     |1-----n|    | visitor_id      |
| name          |       |    | student_id (FK)|       |    | visitor_name   |
| gender        |       |    | payment_date  |       |    | contact_number |
| room_number   |-------+    | amount_paid   |       |    | email          |
| phone_number  |            +----------------+       |    | arrival_time   |
| email         |                                      |    | student_id (FK)|
| dob           |                                      +-----------------+
| enrollment_date|                                               1
+---------------+                                               |
                                                                 n
                             +----------------+             +----------------+
                             |    Staff       |             |    Inventory   |
                             +----------------+             +----------------+
                             | staff_id       |             | item_id        |
                             | name           |             | item_name      |
                             | position       |             | quantity       |
                             | phone_number   |             | room_number (FK)|
                             | email          |             +----------------+
                             +----------------+                
                                       1
                                       |
                                       n
                               +----------------+
                               |    Events      |
                               +----------------+
                               | id             |
                               | name           |
                               | date           |
                               | room_number (FK)|
                               | staff_id (FK)  |
                               | description    |
                               +----------------+

Explaining the relationships between the entities in the conceptual model for this database scheme:

A Room can accommodate many Students, but each Student can only live in one Room at a time. This is a one-to-many relationship between Room and Student.

Each Student can make many Payments, but each Payment is made by only one Student. This is a one-to-many relationship between Student and Payments.

Many Visitors can visit many Rooms, and each Visitor can visit many Rooms, but each Visitor can only be in one Room at a time. This is a many-to-many relationship between Visitors and Room, with an intermediate junction table to resolve the many-to-many relationship.

Many Events can be held in one Room, but each Event can only be held in one Room. This is a one-to-many relationship between Room and Events.

Each Student can have many Documents, but each Document belongs to only one Student. This is a one-to-many relationship between Student and Documents.

Many Inventory items can be located in one Room, but each Inventory item can only be located in one Room at a time. This is a one-to-many relationship between Room and Inventory.

Many Events can be held by one Staff member, but each Event can only be held by one Staff member. This is a one-to-many relationship between Staff and Events.

2. Logical model
Logical model for the Dormitory Manager database. Here is a list of the tables with their attributes and relationships:

Student table

student_id (PK, int)
name (text)
gender (text)
room_number (int, FK)
phone_number (int)
email (text)
dob (date)
enrollment_date (date)
Room table

room_number (PK, int)
room_type (text)
capacity (int)
occupied (text)
Payments table

payment_id (PK, int)
student_id (FK, int)
payment_date (date)
amount_paid (int)
Staff table

staff_id (PK, int)
name (text)
position (text)
phone_number (int)
email (text)
Visitors table

visitor_id (PK, int)
visitor_name (text)
contact_number (int)
email (text)
arrival_time (datetime)
student_id (FK, int)
Inventory table

item_id (PK, int)
item_name (text)
quantity (int)
room_number (FK, int)
Events table

event_id (PK, int)
name (text)
date (datetime)
room_number (FK, int)
staff_id (FK, int)
description (text)
Documents table

document_id (PK, int)
document_name (text)
document_type (text)
student_id (FK, int)
In the logical model, we have added primary keys and foreign keys to establish relationships between tables. The student table has a one-to-many relationship with the room table, payments table, visitors table, and documents table.

3. Physical model
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name TEXT,
    gener TEXT,
    room_number INT,
    phone_number INT,
    email TEXT,
    dob DATE,
    enrollment_date DATE
);

CREATE TABLE Room (
    room_number INT PRIMARY KEY,
    room_type TEXT,
    capacity TEXT,
    occupied TEXT
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    payment_date DATE,
    amount_paid INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name TEXT,
    position TEXT,
    phone_number INT,
    email TEXT
);

CREATE TABLE Visitors (
    visitor_id INT PRIMARY KEY,
    visitor_name TEXT,
    contact_number INT,
    email TEXT,
    arrival_time DATETIME,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Inventory (
    item_id INT PRIMARY KEY,
    item_name TEXT,
    quantity INT,
    room_number INT,
    FOREIGN KEY (room_number) REFERENCES Room(room_number)
);

CREATE TABLE Events (
    id INT PRIMARY KEY,
    name TEXT,
    date DATETIME,
    room_number INT,
    staff_id INT,
    description TEXT,
    FOREIGN KEY (room_number) REFERENCES Room(room_number),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE Documents (
    document_id INT PRIMARY KEY,
    document_name TEXT,
    document_type TEXT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

