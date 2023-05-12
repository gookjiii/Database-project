CREATE FUNCTION update_room_occupancy_status() RETURNS TRIGGER
AS $$
BEGIN
  UPDATE Room
  SET occupied = 'Yes'
  WHERE room_number = NEW.room_number;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER call_update_room_occupancy_status
AFTER INSERT ON Student
FOR EACH ROW
EXECUTE FUNCTION update_room_occupancy_status();
