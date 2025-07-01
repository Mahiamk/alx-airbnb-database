# Airbnb Seed Data

This script (`seed.sql`) populates the Airbnb database with sample data for testing and demonstration.

## Sample Data Includes:
- 3 users (2 guests, 1 host)
- 2 properties owned by the host
- 2 bookings (linked to users and properties)
- 1 payment
- 2 messages between guests and host
- 2 reviews

## Usage

Run this after creating the schema:

```bash
psql -d your_database_name -f schema.sql
psql -d your_database_name -f seed.sql
