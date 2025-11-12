CREATE DATABASE seat_booking_db;
USE seat_booking_db;
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15)
);
CREATE TABLE Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100),
    total_seats INT NOT NULL
);
CREATE TABLE Seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    is_booked BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    seat_id INT NOT NULL,
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);
SHOW TABLES;
INSERT INTO Users (user_name, email, phone) VALUES
('Chetan Chavan', 'chetan@gmail.com', '9876543210'),
('Riya Sharma', 'riya@gmail.com', '9998877665');
INSERT INTO Events (event_name, event_date, location, total_seats) VALUES
('Avengers Movie', '2025-11-15', 'PVR Cinema', 10),
('Music Concert', '2025-12-05', 'Hyderabad Stadium', 15);
INSERT INTO Seats (event_id, seat_number) VALUES
(1, 'A1'), (1, 'A2'), (1, 'A3'), (1, 'A4'), (1, 'A5'),
(1, 'B1'), (1, 'B2'), (1, 'B3'), (1, 'B4'), (1, 'B5');
-- User 1 books seat A1 for Event 1
INSERT INTO Bookings (user_id, event_id, seat_id)
VALUES (1, 1, 1);

-- Mark that seat as booked
UPDATE Seats SET is_booked = TRUE WHERE seat_id = 1;
SELECT seat_number 
FROM Seats 
WHERE event_id = 1 AND is_booked = FALSE;

-- Delete booking record
DELETE FROM Bookings WHERE booking_id = 1;

-- Mark seat as available again
UPDATE Seats SET is_booked = FALSE WHERE seat_id = 1;
