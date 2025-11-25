# PL/SQL Collections, Records & GOTO Demonstration
- Name: Musoni Nshuti Sam
- ID: 28857

This repository demonstrates how PL/SQL **Collections**, **Records**, and **GOTO statements** can be used together to solve a real problem.
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

## Problem Summary & Solution

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

## Queries to Run

1. Run [schema.sql](src/01-schema.sql)
2. Run [sample_data.sql](src/02-sample_data.sql)
3. Run [solve_problem.sql](src/03-solve_problem.sql)
4. Run [run_demo.sql](src/04-run_demo.sql) to execute the procedure

## Or see screenshots of query execution
1. Executing `schema.sql` [see screenshot](<screenshots/01-create table.png>)
2. Executing `sample_data.sql` [see screenshot](<screenshots/02-insert data.png>)
3. Executing `solve_problem.sql` [see screenshot](<screenshots/03-run procedure.png>)

NB: `run_demo.sql` is just a shortcut for running the procedure since I used an anonymous procedure to implement our assignment
















