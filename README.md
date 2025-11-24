# PL/SQL Collections, Records & GOTO Demonstration
- Name: Musoni Nshuti Sam
- ID: 28857

This repository demonstrates how PL/SQL **Collections**, **Records**, and **GOTO statements** can be used together to solve a real problem.

## Problem Summary

A company wants to process employees’ monthly sales and assign each employee a performance grade:

- If Sales ≥ 1,000 → **Grade A**
- If Sales ≥ 500 → **Grade B**
- Else → **Grade C**

However:
- Any employee whose data is missing should be skipped.
- If a negative sales value is encountered, the program should **jump** to an error handler using `GOTO`.

The solution uses:
- PL/SQL **records** to store employee rows  
- **Nested tables** collection to process rows in memory  
- **GOTO** statement for error handling flow  

## How to Run

1. Run [schema.sql](src/schema.sql)
2. Run [sample_data.sql](src/sample_data.sql)
3. Run [solve_problem.sql](src/solve_problem.sql)
4. Run [run_demo.sql](src/run_demo.sql) to execute the packaged procedure

## Problem Description

A company stores employee monthly sales in a table. You must write a PL/SQL program that:

### 1. Reads all employees into a **collection**
Use a nested table of records to hold all employees.

### 2. Calculates performance grade
- A: ≥ 1000  
- B: ≥ 500  
- C: < 500

### 3. Handles invalid data
If an employee has negative sales:
- Jump immediately to an error handler using **GOTO**

### 4. Output results
Print:
- employee ID  
- name  
- sales  
- grade  

The script should demonstrate:
- Composite **RECORD** types  
- **COLLECTIONS** (nested table)  
- **GOTO** usage inside loops  
