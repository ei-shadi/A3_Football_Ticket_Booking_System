# ⚽ Football Ticket Booking System Database

### PostgreSQL Database Design, ERD Modeling & Advanced SQL Query Solutions

A complete relational database project for managing football match ticket bookings, designed with proper normalization, entity relationships, referential integrity, and advanced SQL query implementation.

---

### ERD Diagram

🔗 [View ERD Diagram](https://drive.google.com/file/d/1RiOCLhcjqi7HxWl_lt-8MeuO0icF6Q0n/view?usp=sharing)
---

## ✨ Project Overview

The **Football Ticket Booking System Database** is designed to manage football fans, tournament matches, and ticket booking transactions.

This project demonstrates database schema design, ERD creation, relationships, referential integrity, SQL querying, joins, aggregations, subqueries, pattern matching, null handling, and pagination.

---

## 🎯 Assignment Objectives

- Designing relational databases
- Building ERD diagrams
- Implementing foreign key relationships
- Writing optimized SQL queries
- Using JOIN operations
- Working with aggregate functions
- Handling NULL values
- Applying subqueries
- Performing data filtering and pagination

---

## 🗄️ Database Schema

### Users Table

| Field Name | Description |
|------------|-------------|
| user_id | Unique user identifier |
| full_name | User's full name |
| email | User email address |
| role | Football Fan or Ticket Manager |
| phone_number | Contact number |

### Matches Table

| Field Name | Description |
|------------|-------------|
| match_id | Unique match identifier |
| fixture | Teams playing the match |
| tournament_category | Competition category |
| base_ticket_price | Standard ticket price |
| match_status | Match availability status |

### Bookings Table

| Field Name | Description |
|------------|-------------|
| booking_id | Unique booking identifier |
| user_id | Reference to Users table |
| match_id | Reference to Matches table |
| seat_number | Reserved seat number |
| payment_status | Booking payment state |
| total_cost | Total booking amount |

---

## 📋 SQL Query Solutions

Includes solutions for:

1. Filtering Champions League matches
2. Pattern matching with ILIKE
3. Handling NULL values with COALESCE
4. INNER JOIN operations
5. FULL JOIN operations
6. Aggregate functions and subqueries
7. Pagination using LIMIT and OFFSET

---

## 👨‍💻 Developed By

**Eftajul Islam Shadi**
