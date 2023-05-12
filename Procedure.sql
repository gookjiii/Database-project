CREATE FUNCTION calculate_age(dob DATE) RETURNS INTEGER
BEGIN
  RETURN EXTRACT(YEAR FROM age(current_date, dob));
END;

CREATE FUNCTION get_staff_position(staff_id INT) RETURNS TEXT
BEGIN
  DECLARE position TEXT;
  SELECT position INTO position
  FROM Staff
  WHERE staff_id = staff_id;
  
  RETURN position;
END;
