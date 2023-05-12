# Database-project
# 1. Conceptual model
## Dormitory Manager Conceptual Model
![image](https://user-images.githubusercontent.com/107505638/232611452-72b513fe-2bab-4e1a-bde6-4affa478b998.png)

### Entities

- Student
- Room
- Payments
- Staff
- Visitors
- Inventory
- Events
- Documents

### Relationships

- Student{1..n} - live in - {1}Room
- Student{1} - pay - {1..n}Payments
- Visitors{1..n} - visit - {1..n}Room
- Events{1..n} - be held - {1}Room
- Student{1} -- {1..n}Documents
- Inventory{1..n} -- {1}Room
- Events{1..n} - be held by - {1}Staff

Explaining the relationships between the entities in the conceptual model for this database scheme:

A Room can accommodate many Students, but each Student can only live in one Room at a time. This is a one-to-many relationship between Room and Student.

Each Student can make many Payments, but each Payment is made by only one Student. This is a one-to-many relationship between Student and Payments.

Many Visitors can visit many Rooms, and each Visitor can visit many Rooms, but each Visitor can only be in one Room at a time. This is a many-to-many relationship between Visitors and Room, with an intermediate junction table to resolve the many-to-many relationship.

Many Events can be held in one Room, but each Event can only be held in one Room. This is a one-to-many relationship between Room and Events.

Each Student can have many Documents, but each Document belongs to only one Student. This is a one-to-many relationship between Student and Documents.

Many Inventory items can be located in one Room, but each Inventory item can only be located in one Room at a time. This is a one-to-many relationship between Room and Inventory.

Many Events can be held by one Staff member, but each Event can only be held by one Staff member. This is a one-to-many relationship between Staff and Events.

# 2. Logical model

## Logical model for the Dormitory Manager database. Here is a list of the tables with their attributes and relationships:

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

# 3. Physical model
## Student
| Field             | Type       | Null | Key | Default | Extra          |
|-------------------|------------|-------|-----|---------|-----------------|
| student_id         | int        | NO   | PRI | NULL    | auto_increment |
| name              | text       | NO   |     | NULL    |                 |
| gender            | text       | NO   |     | NULL    |                 |
| room_number       | int        | NO   | MUL | NULL    |                 |
| phone_number      | int        | NO   |     | NULL    |                 |
| email             | text       | NO   |     | NULL    |                 |
| dob               | date       | NO   |     | NULL    |                 |
| enrollment_date   | date       | NO   |     | NULL    |                 |

## Room
| Field             | Type       | Null | Key | Default | Extra          |
|-------------------|------------|-------|-----|---------|-----------------|
| room_number       | int        | NO   | PRI | NULL    | auto_increment |
| room_type         | text       | NO   |     | NULL    |                 |
| capacity          | int        | NO   |     | NULL    |                 |
| occupied          | text       | NO   |     | NULL    |                 |

## Payments
| Field             | Type       | Null | Key | Default | Extra          |
|-------------------|------------|-------|-----|---------|-----------------|
| payment_id        | int        | NO   | PRI | NULL    | auto_increment |
| student_id        | int        | NO   | MUL | NULL    |                 |
| payment_date      | date       | NO   |     | NULL    |                 |
| amount_paid       | int        | NO   |     | NULL    |                 |

## Staff
| Field             | Type       | Null | Key | Default | Extra          |
|-------------------|------------|-------|-----|---------|-----------------|
| staff_id          | int        | NO   | PRI | NULL    | auto_increment |
| name              | text       | NO   |     | NULL    |                 |
| position          | text       | NO   |     | NULL    |                 |
| phone_number      | int        | NO   |     | NULL    |                 |
| email             | text       | NO   |     | NULL    |                 |

## Visitors
| Field             | Type       | Null | Key | Default | Extra          |
|-------------------|------------|-------|-----|---------|-----------------|
| visitor_id        | int        | NO   | PRI | NULL    | auto_increment |
| visitor_name      | text       | NO   |     | NULL    |                 |
| contact_number    | int        | NO   |     | NULL    |                 |
| email             | text       | NO   |     | NULL    |                 |
| arrival_time      | datetime   | NO   |     | NULL    |                 |
| student_id        | int        | NO   | MUL | NULL    |                 |

## Inventory
| Column Name | Data Type | Constraints              |
|-------------|-----------|--------------------------|
| item_id     | int       | PRIMARY KEY              |
| item_name   | text      | NOT NULL                 |
| quantity    | int       | NOT NULL                 |
| room_number | int       | FOREIGN KEY (Room)        |

## Events
| Column Name | Data Type | Constraints               |
|-------------|-----------|---------------------------|
| id          | int       | PRIMARY KEY               |
| name        | text      | NOT NULL                  |
| date        | datetime  | NOT NULL                  |
| room_number | int       | FOREIGN KEY (Room)         |
| staff_id    | int       | FOREIGN KEY (Staff)        |
| description | text      | NOT NULL                  |

## Documents
| Column Name  | Data Type | Constraints              |
|--------------|-----------|--------------------------|
| document_id  | int       | PRIMARY KEY              |
| document_name| text      | NOT NULL                 |
| document_type| text      | NOT NULL                 |
| student_id   | int       | FOREIGN KEY (Student)     |

## Payments
| Column Name | Data Type | Constraints              |
|-------------|-----------|--------------------------|
| payment_id  | int       | PRIMARY KEY              |
| student_id  | int       | FOREIGN KEY (Student)     |
| payment_date| date      | NOT NULL                 |
| amount_paid | int       | NOT NULL                 |
