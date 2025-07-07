# Join Queries in Airbnb Database

This document explains the different types of SQL JOINs used in `joins_queries.sql`, their purpose, and real-world examples from the Airbnb database schema.

---

## 1. INNER JOIN

**Definition:**
An INNER JOIN returns only the rows where there is a match in both tables.

**Use Case:**
Retrieve all bookings made by users. We only want results where a booking is associated with a valid user.

**Query:**
```sql
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

# Subqueries in SQL

This README explains the difference between **correlated** and **non-correlated** subqueries, with practical examples from the Airbnb database project.

---

## 🔁 What is a Subquery?

A **subquery** is a query nested inside another SQL query. It can be used to:
- Filter data
- Compute derived values
- Serve as a temporary result set

There are **two main types**:
- **Non-correlated Subquery**
- **Correlated Subquery**

---

## 🔹 Non-Correlated Subquery

### ✅ Definition:
A **non-correlated subquery** is executed **only once** and is **independent** of the outer query.

### 🔍 Use Case:
Find all properties with an average rating greater than 4.0.

### 📌 Example:
```sql
SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

# Aggregations vs. Window Functions in SQL

This README explains the difference between **aggregation functions** and **window functions** in SQL, with examples used in the Airbnb database context.

---

## 📊 What are Aggregation Functions?

### 🔹 Definition:
Aggregation functions operate on **groups of rows** and return a **single result** per group.

### 🧩 Common Functions:
- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`

### Example Use Case:
Count total bookings made by each user.

```sql
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;
