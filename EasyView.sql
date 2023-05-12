CREATE VIEW StudentInformation AS
SELECT student_id, name, gender, room_number, phone_number, email, dob, enrollment_date
FROM Student;

CREATE VIEW RoomOccupancy AS
SELECT room_number, room_type, capacity, occupied
FROM Room;

CREATE VIEW TotalPaymentsByStudent AS
SELECT student_id, SUM(amount_paid) AS total_payment
FROM Payments
GROUP BY student_id;

CREATE VIEW EventDetails AS
SELECT Events.event_id, Events.name AS event_name, Events.date, Room.room_number, Staff.staff_id, Staff.name AS staff_name, Events.description
FROM Events
JOIN Room ON Events.room_number = Room.room_number
JOIN Staff ON Events.staff_id = Staff.staff_id;

CREATE VIEW DocumentInformation AS
SELECT document_id, document_name, document_type, student_id
FROM Documents;
