-- Indexing User Table
CREATE INDEX idx_user_id ON User(user_id);  -- For faster lookup by user_id

-- Indexing Booking Table
CREATE INDEX idx_booking_user_id ON Booking(user_id);  -- For faster JOINs between Booking and User tables
CREATE INDEX idx_booking_property_id ON Booking(property_id);  -- For faster JOINs between Booking and Property tables
CREATE INDEX idx_booking_date ON Booking(booking_date);  -- For faster date range queries on booking_date

-- Indexing Property Table
CREATE INDEX idx_property_location ON Property(location);  -- For faster filtering by location
CREATE INDEX idx_property_price_location ON Property(price, location);  -- For optimized filtering and sorting by price and location

