# join_set_aggregation
This SQL project builds on the `Country` and `Persons` tables to demonstrate advanced SQL queries involving JOIN operations, set operations (UNION), and value transformations.

## SQL Concepts Demonstrated

### 1. **Joins**
- **INNER JOIN**: Combines records with matching `Country_Id`
- **LEFT JOIN**: Includes all records from `Persons` with matching `Country`
- **RIGHT JOIN**: Includes all records from `Country` with matching `Persons`

### 2. **Set Operations**
- `UNION`: Lists all distinct `Country_name` values from both tables
- `UNION ALL`: Lists all `Country_name` values, including duplicates

### 3. **Aggregation**
- `ROUND()`: Rounds off `Rating` values in `Persons` to the nearest integer
