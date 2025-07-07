-- Create indexes for User table
CREATE NONCLUSTERED INDEX IX_User_Email ON User(email);

-- Create indexes for Property table
CREATE NONCLUSTERED INDEX IX_Property_HostId ON Property(host_id);
CREATE NONCLUSTERED INDEX IX_Property_Location ON Property(location);
CREATE NONCLUSTERED INDEX IX_Property_Price ON Property(price);

-- Create indexes for Booking table
CREATE NONCLUSTERED INDEX IX_Booking_UserId ON Booking(user_id);
CREATE NONCLUSTERED INDEX IX_Booking_PropertyId ON Booking(property_id);
CREATE NONCLUSTERED INDEX IX_Booking_StartDate ON Booking(start_date);
CREATE NONCLUSTERED INDEX IX_Booking_EndDate ON Booking(end_date);
CREATE NONCLUSTERED INDEX IX_Booking_Status ON Booking(status);
-- Composite index for queries filtering by start_date and status
CREATE NONCLUSTERED INDEX IX_Booking_StartDate_Status ON Booking(start_date, status);