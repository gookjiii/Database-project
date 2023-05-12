-- to get the data of free rooms
SELECT room_number, room_type, capacity
FROM Room
WHERE occupied = 'No';

-- to show the staff, who hold event
SELECT Events.event_id, Events.name AS event_name, Staff.name AS staff_name, Staff.staff_id
FROM Events
JOIN Staff ON Events.staff_id = Staff.staff_id;

-- to get the total amount of payment for each student
SELECT student_id, SUM(amount_paid) AS total_payment
FROM Payments
GROUP BY student_id;

-- to get top 5 student who invited the most visitors, sort by descending
SELECT student_id, COUNT(visitor_id) AS visitor_count
FROM Visitors
GROUP BY student_id
ORDER BY visitor_count DESC
LIMIT 5;
