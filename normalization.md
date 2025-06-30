# 📘 Database Normalization Summary

## Objective

The purpose of this document is to explain how normalization principles were applied to the current database schema and confirm that it satisfies **Third Normal Form (3NF)**.

---

## Applied Normalization Process

### ✅ First Normal Form (1NF)

All tables:
- Have a primary key (`user_id`, `property_id`, `booking_id`, etc.)
- Contain atomic (indivisible) values
- Do not have repeating groups or arrays

➡️ **Result**: Every table satisfies 1NF.

---

### ✅ Second Normal Form (2NF)

All non-key attributes are **fully dependent** on the whole primary key. Since all primary keys are single-column (not composite), partial dependencies do not exist.

➡️ Example:  
In the `Booking` table, attributes like `checkin_date`, `status`, and `created_at` depend **only on `booking_id`**.

➡️ **Result**: All tables satisfy 2NF.

---

### ✅ Third Normal Form (3NF)

We ensured that:
- There are no transitive dependencies
- No non-key attribute depends on another non-key attribute

➡️ Example:  
In the `User` table, attributes like `email`, `phone_number`, and `role` depend **directly on `user_id`**, not on each other.

➡️ **Result**: All tables meet 3NF.

---

## 📊 Summary by Table

| Table     | 1NF | 2NF | 3NF | Notes                                  |
|-----------|-----|-----|-----|----------------------------------------|
| User      | ✅  | ✅  | ✅  | Single PK, all attributes atomic       |
| Property  | ✅  | ✅  | ✅  | FK `host_id` references User           |
| Booking   | ✅  | ✅  | ✅  | FK to User and Property                |
| Payment   | ✅  | ✅  | ✅  | FK to Booking                          |
| Message   | ✅  | ✅  | ✅  | FK to User for sender/recipient        |
| Review    | ✅  | ✅  | ✅  | FK to User and Property                |

---

## ✅ Conclusion

All database entities have been normalized up to **Third Normal Form (3NF)**.  
This ensures:
- No data redundancy
- Logical table design
- High data integrity and consistency

