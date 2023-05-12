CREATE VIEW StudentRoomOccupancy AS
SELECT s.student_id, s.name, s.room_number, r.room_type, r.capacity
FROM Student s
JOIN Room r ON s.room_number = r.room_number;

CREATE VIEW StudentPaymentDetails AS
SELECT s.student_id, s.name, p.payment_id, p.payment_date, p.amount_paid
FROM Student s
LEFT JOIN Payments p ON s.student_id = p.student_id;

CREATE VIEW RoomInventoryStatus AS
SELECT r.room_number, r.room_type, r.capacity, i.item_id, i.item_name, i.quantity
FROM Room r
LEFT JOIN Inventory i ON r.room_number = i.room_number;

CREATE VIEW EventAttendees AS
SELECT e.event_id, e.name AS event_name, e.date, r.room_number, s.name AS staff_name, COUNT(v.visitor_id) AS attendee_count
FROM Events e
JOIN Room r ON e.room_number = r.room_number
JOIN Staff s ON e.staff_id = s.staff_id
LEFT JOIN Visitors v ON e.event_id = v.event_id
GROUP BY e.event_id, r.room_number, s.staff_id;
