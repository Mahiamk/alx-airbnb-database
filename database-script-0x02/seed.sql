-- Users (2 guests, 1 host)
INSERT INTO users (first_name, last_name, email, password_hash, phone_number, role)
VALUES
('Alice', 'Smith', 'alice@example.com', 'hashed_pass1', '1234567890', 'guest'),
('Bob', 'Johnson', 'bob@example.com', 'hashed_pass2', '0987654321', 'guest'),
('Charlie', 'Host', 'charlie@example.com', 'hashed_pass3', '5556667777', 'host');

-- Properties (2 owned by Charlie)
INSERT INTO properties (host_id, name, description, location, price_per_night)
VALUES
(3, 'Sunny Apartment', 'A cozy apartment near the beach', 'Barcelona, Spain', 120.00),
(3, 'Downtown Loft', 'Modern loft in the city center', 'New York, USA', 200.00);

-- Bookings (Alice and Bob book properties)
INSERT INTO bookings (user_id, property_id, checkin_date, checkout_date, status)
VALUES
(1, 1, '2025-07-10', '2025-07-15', 'confirmed'),
(2, 2, '2025-08-01', '2025-08-05', 'pending');

-- Payments (one for Alice's confirmed booking)
INSERT INTO payments (booking_id, amount, payment_method)
VALUES
(1, 600.00, 'credit_card');

-- Messages (guests messaging host)
INSERT INTO messages (sender_id, recipient_id, message_body)
VALUES
(1, 3, 'Hi, is the apartment available in July?'),
(2, 3, 'Can I check in early?');

-- Reviews (guests reviewing properties)
INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES
(1, 1, 5, 'Loved it! Great location and clean.'),
(2, 2, 4, 'Very nice but a bit noisy at night.');
