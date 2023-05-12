INSERT INTO Student (student_id, name, gender, room_number, phone_number, email, dob, enrollment_date)
VALUES
  (1, 'John Doe', 'Male', 101, 1234567890, 'john.doe@example.com', '2000-01-01', '2022-09-01'),
  (2, 'Jane Smith', 'Female', 102, 9876543210, 'jane.smith@example.com', '2001-02-03', '2022-09-01'),
  (3, 'Michael Johnson', 'Male', 103, 5554443333, 'michael.johnson@example.com', '1999-07-15', '2022-09-01'),
  (4, 'Emily Davis', 'Female', 104, 1112223333, 'emily.davis@example.com', '2002-05-20', '2022-09-01'),
  (5, 'Robert Anderson', 'Male', 105, 4445556666, 'robert.anderson@example.com', '2000-09-10', '2022-09-01'),
  (6, 'Sarah Thompson', 'Female', 106, 9998887777, 'sarah.thompson@example.com', '2001-12-08', '2022-09-01'),
  (7, 'David Wilson', 'Male', 107, 7778889999, 'david.wilson@example.com', '2003-03-25', '2022-09-01'),
  (8, 'Jessica Brown', 'Female', 108, 2223334444, 'jessica.brown@example.com', '1999-04-14', '2022-09-01'),
  (9, 'Matthew Johnson', 'Male', 109, 6667778888, 'matthew.johnson@example.com', '2002-08-18', '2022-09-01'),
  (10, 'Olivia Smith', 'Female', 110, 8889990000, 'olivia.smith@example.com', '2001-06-06', '2022-09-01'),
  (11, 'Andrew Taylor', 'Male', 111, 5556667777, 'andrew.taylor@example.com', '2000-03-12', '2022-09-01'),
  (12, 'Sophia Wilson', 'Female', 112, 3334445555, 'sophia.wilson@example.com', '1998-11-26', '2022-09-01'),
  (13, 'William Davis', 'Male', 113, 1112223333, 'william.davis@example.com', '2003-07-05', '2022-09-01'),
  (14, 'Ava Martin', 'Female', 114, 8889990000, 'ava.martin@example.com', '2001-09-09', '2022-09-01'),
  (15, 'James Thompson', 'Male', 115, 2223334444, 'james.thompson@example.com', '2000-12-17', '2022-09-01'),
  (16, 'Mia Johnson', 'Female', 116, 5556667777, 'mia.johnson@example.com', '1999-02-24', '2022-09-01'),
  (17, 'Benjamin Smith', 'Male', 117, 7778889999, 'benjamin.smith@example.com', '2002-04-03', '2022-09-01'),
  (18, 'Charlotte Davis', 'Female', 118, 3334445555, 'charlotte.davis@example.com', '2001-10-28', '2022-09-01'),
  (19, 'Daniel Johnson', 'Male', 119, 9998887777, 'daniel.johnson@example.com', '2000-07-19', '2022-09-01'),
  (20, 'Sophia Anderson', 'Female', 120, 6667778888, 'sophia.anderson@example.com', '1999-09-30', '2022-09-01');

INSERT INTO Visitors (visitor_id, visitor_name, contact_number, email, arrival_time, student_id)
VALUES
  (1, 'John Johnson', 1112223333, 'john.johnson@example.com', '2023-05-12 10:00:00', 1),
  (2, 'Emily Wilson', 4445556666, 'emily.wilson@example.com', '2023-05-12 11:30:00', 2),
  (3, 'Michael Thompson', 7778889999, 'michael.thompson@example.com', '2023-05-12 14:45:00', 3),
  (4, 'Sarah Davis', 5556667777, 'sarah.davis@example.com', '2023-05-13 09:15:00', 4),
  (5, 'Jessica Anderson', 9998887777, 'jessica.anderson@example.com', '2023-05-13 13:30:00', 5),
  (6, 'David Martin', 2223334444, 'david.martin@example.com', '2023-05-14 10:30:00', 6),
  (7, 'Olivia Wilson', 6667778888, 'olivia.wilson@example.com', '2023-05-14 16:00:00', 7);

INSERT INTO Room (room_number, room_type, capacity, occupied)
VALUES
  (101, 'Single', 1, 'No'),
  (102, 'Double', 2, 'Yes'),
  (103, 'Double', 2, 'No'),
  (104, 'Single', 1, 'No'),
  (105, 'Double', 2, 'Yes'),
  (106, 'Single', 1, 'No'),
  (107, 'Double', 2, 'No'),
  (108, 'Single', 1, 'Yes'),
  (109, 'Double', 2, 'No'),
  (110, 'Single', 1, 'Yes'),
  (111, 'Double', 2, 'Yes'),
  (112, 'Single', 1, 'Yes'),
  (113, 'Double', 2, 'Yes'),
  (114, 'Single', 1, 'No'),
  (115, 'Double', 2, 'Yes'),
  (116, 'Single', 1, 'No'),
  (117, 'Double', 2, 'No'),
  (118, 'Single', 1, 'No'),
  (119, 'Double', 2, 'Yes'),
  (120, 'Single', 1, 'Yes');

INSERT INTO Payments (payment_id, student_id, payment_date, amount_paid)
VALUES
  (1, 1, '2022-09-05', 500),
  (2, 2, '2022-09-10', 750),
  (3, 3, '2022-09-03', 1000),
  (4, 4, '2022-09-15', 600),
  (5, 5, '2022-09-08', 900),
  (6, 6, '2022-09-12', 800),
  (7, 7, '2022-09-20', 550),
  (8, 8, '2022-09-17', 700),
  (9, 9, '2022-09-06', 950),
  (10, 10, '2022-09-22', 400),
  (11, 11, '2022-09-11', 850),
  (12, 12, '2022-09-14', 550),
  (13, 13, '2022-09-09', 750),
  (14, 14, '2022-09-16', 600),
  (15, 15, '2022-09-04', 700),
  (16, 16, '2022-09-18', 500),
  (17, 17, '2022-09-07', 900),
  (18, 18, '2022-09-13', 450),
  (19, 19, '2022-09-19', 750),
  (20, 20, '2022-09-02', 550);

INSERT INTO Inventory (item_id, item_name, quantity, room_number)
VALUES
  (1, 'Desk', 5, 101),
  (2, 'Chair', 10, 101),
  (3, 'Bed', 8, 102),
  (4, 'Closet', 4, 102),
  (5, 'Desk', 3, 103),
  (6, 'Chair', 6, 103),
  (7, 'Bed', 10, 104),
  (8, 'Closet', 5, 104),
  (9, 'Desk', 7, 105),
  (10, 'Chair', 12, 105),
  (11, 'Bed', 6, 106),
  (12, 'Closet', 3, 106),
  (13, 'Desk', 4, 107),
  (14, 'Chair', 8, 107),
  (15, 'Bed', 9, 108),
  (16, 'Closet', 5, 108),
  (17, 'Desk', 6, 109),
  (18, 'Chair', 10, 109),
  (19, 'Bed', 4, 110),
  (20, 'Closet', 2, 110);

INSERT INTO Documents (document_id, document_name, document_type, student_id)
VALUES
  (1, 'Transcript', 'Academic', 1),
  (2, 'ID Card', 'Identification', 1),
  (3, 'Transcript', 'Academic', 2),
  (4, 'ID Card', 'Identification', 2),
  (5, 'Transcript', 'Academic', 3),
  (6, 'ID Card', 'Identification', 3),
  (7, 'Transcript', 'Academic', 4),
  (8, 'ID Card', 'Identification', 4),
  (9, 'Transcript', 'Academic', 5),
  (10, 'ID Card', 'Identification', 5),
  (11, 'Transcript', 'Academic', 6),
  (12, 'ID Card', 'Identification', 6),
  (13, 'Transcript', 'Academic', 7),
  (14, 'ID Card', 'Identification', 7),
  (15, 'Transcript', 'Academic', 8),
  (16, 'ID Card', 'Identification', 8),
  (17, 'Transcript', 'Academic', 9),
  (18, 'ID Card', 'Identification', 9),
  (19, 'Transcript', 'Academic', 10),
  (20, 'ID Card', 'Identification', 10);

INSERT INTO Events (event_id, name, date, room_number, staff_id, description)
VALUES
  (1, 'Welcome Party', '2023-05-15 18:00:00', 101, 1, 'Join us for a fun-filled evening to welcome new students.'),
  (2, 'Seminar: Time Management', '2023-05-17 14:00:00', 102, 2, 'Learn effective strategies for managing your time.'),
  (3, 'Movie Night', '2023-05-19 20:00:00', 103, 3, 'Enjoy a movie night with your fellow students.'),
  (4, 'Workshop: Public Speaking', '2023-05-22 16:30:00', 104, 4, 'Develop your public speaking skills in this interactive workshop.'),
  (5, 'Game Tournament', '2023-05-24 19:00:00', 105, 5, 'Compete with other students in various video game tournaments.'),
  (6, 'Career Fair', '2023-05-26 10:00:00', 106, 6, 'Explore job opportunities and network with potential employers.'),
  (7, 'Fitness Class: Yoga', '2023-05-28 09:30:00', 107, 7, 'Join us for a relaxing yoga session to improve your well-being.'),
  (8, 'Guest Speaker: Entrepreneurship', '2023-05-30 15:00:00', 108, 8, 'Listen to a successful entrepreneur share insights and experiences.'),
  (9, 'Community Service Day', '2023-06-02 11:00:00', 109, 9, 'Volunteer together and make a positive impact in the community.'),
  (10, 'Farewell Party', '2023-06-05 19:00:00', 110, 10, 'Celebrate the end of the academic year with a memorable farewell party.');

INSERT INTO Staff (staff_id, name, position, phone_number, email)
VALUES
  (1, 'John Smith', 'Administrator', 1112223333, 'john.smith@example.com'),
  (2, 'Emily Johnson', 'Counselor', 4445556666, 'emily.johnson@example.com'),
  (3, 'Michael Davis', 'Event Coordinator', 7778889999, 'michael.davis@example.com'),
  (4, 'Sarah Wilson', 'Academic Advisor', 5556667777, 'sarah.wilson@example.com'),
  (5, 'Jessica Anderson', 'Residence Manager', 9998887777, 'jessica.anderson@example.com'),
  (6, 'David Thompson', 'Career Services', 2223334444, 'david.thompson@example.com'),
  (7, 'Olivia Martin', 'Fitness Instructor', 6667778888, 'olivia.martin@example.com'),
  (8, 'Daniel Wilson', 'Guest Speaker Coordinator', 8889990000, 'daniel.wilson@example.com'),
  (9, 'Sophia Taylor', 'Community Service Coordinator', 3334445555, 'sophia.taylor@example.com'),
  (10, 'Benjamin Brown', 'Event Planner', 7779998888, 'benjamin.brown@example.com');

