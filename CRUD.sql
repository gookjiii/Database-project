INSERT INTO Student (student_id, name, gender, room_number, phone_number, email, dob, enrollment_date)
VALUES (1, 'John Doe', 'Male', 101, 1234567890, 'john.doe@example.com', '2000-01-01', '2022-09-01');

INSERT INTO Room (room_number, room_type, capacity, occupied)
VALUES (101, 'Single', 1, 'No');

INSERT INTO Payments (payment_id, student_id, payment_date, amount_paid)
VALUES (1, 1, '2022-09-05', 500);

INSERT INTO Staff (staff_id, name, position, phone_number, email)
VALUES (1, 'Jane Smith', 'Coordinator', 9876543210, 'jane.smith@example.com');


SELECT * FROM Student;

SELECT * FROM Room;

SELECT * FROM Payments;

SELECT * FROM Staff;

UPDATE Student
SET phone_number = 9876543210
WHERE student_id = 1;

UPDATE Room
SET capacity = 2
WHERE room_number = 101;

UPDATE Payments
SET amount_paid = 600
WHERE payment_id = 1;

UPDATE Staff
SET position = 'Manager'
WHERE staff_id = 1;

DELETE FROM Student
WHERE student_id = 1;

DELETE FROM Room
WHERE room_number = 101;

DELETE FROM Payments
WHERE payment_id = 1;

DELETE FROM Staff
WHERE staff_id = 1;