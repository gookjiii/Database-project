-- Create the Student table
CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  name TEXT,
  gender TEXT,
  room_number INT,
  phone_number INT,
  email TEXT,
  dob DATE,
  enrollment_date DATE,
  FOREIGN KEY (room_number) REFERENCES Room(room_number)
);

-- Create the Room table
CREATE TABLE Room (
  room_number INT PRIMARY KEY,
  room_type TEXT,
  capacity INT,
  occupied TEXT
);

-- Create the Payments table
CREATE TABLE Payments (
  payment_id INT PRIMARY KEY,
  student_id INT,
  payment_date DATE,
  amount_paid INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Create the Staff table
CREATE TABLE Staff (
  staff_id INT PRIMARY KEY,
  name TEXT,
  position TEXT,
  phone_number INT,
  email TEXT
);

-- Create the Visitors table
CREATE TABLE Visitors (
  visitor_id INT PRIMARY KEY,
  visitor_name TEXT,
  contact_number INT,
  email TEXT,
  arrival_time DATETIME,
  student_id INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

-- Create the Inventory table
CREATE TABLE Inventory (
  item_id INT PRIMARY KEY,
  item_name TEXT,
  quantity INT,
  room_number INT,
  FOREIGN KEY (room_number) REFERENCES Room(room_number)
);

-- Create the Events table
CREATE TABLE Events (
  event_id INT PRIMARY KEY,
  name TEXT,
  date DATETIME,
  room_number INT,
  staff_id INT,
  description TEXT,
  FOREIGN KEY (room_number) REFERENCES Room(room_number),
  FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Create the Documents table
CREATE TABLE Documents (
  document_id INT PRIMARY KEY,
  document_name TEXT,
  document_type TEXT,
  student_id INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
