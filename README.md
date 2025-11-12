# seat-booking-system-sql
A complete SQL-based seat booking database with 4 connected tables and booking operations

# 🎟️ Seat Booking System (SQL Project)

A mini SQL project that manages seat booking operations for events such as movies, concerts, or flights.  
It demonstrates relational database design, foreign key relationships, and CRUD operations.

---

## 🧩 **Database Design**

### Tables:
1. **Users** – stores user details  
2. **Events** – stores event information  
3. **Seats** – stores seat numbers linked to events  
4. **Bookings** – records user seat bookings

---

## 🗄️ **Key SQL Concepts Used**
- Primary & Foreign Keys  
- Joins (INNER JOIN, LEFT JOIN)  
- CRUD operations (INSERT, UPDATE, DELETE, SELECT)  
- Constraints & Relationships  
- Boolean fields and Timestamps  

---

## 🧱 **Schema Overview**

```text
Users (1)──< Bookings >──(1) Events  
                     │  
                     ▼  
                   Seats
