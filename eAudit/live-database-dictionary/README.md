# Live Database Data Dictionary

Database: `AuditManagement_Dev`

Server: `34.80.42.135` (`stg-biams-e-audit\\MSSQLSERVER2022`)

SQL Server version: `16.0.1000.6`

Inspection date: `2026-08-17`

The following files were exported from SQL Server catalog views using read-only metadata queries:

- `tables.csv`: user tables, including schema, creation date and modification date.
- `columns.csv`: table columns, SQL data type, length, precision, scale, nullability, identity, computed flag and default expression.
- `indexes.csv`: indexes, primary keys, unique constraints and indexed columns.
- `foreign-keys.csv`: foreign-key relationships, parent/reference columns and delete/update actions.
- `views.csv`: user views, schema, creation date and modification date.
- `procedures.csv`: user stored procedures, schema, creation date and modification date.
- `dependencies.csv`: dependencies exposed by `sys.sql_expression_dependencies`.

## Live counts

- User tables: `629`
- User views: `603`
- User stored procedures: `315`
- Table columns: `10,665`
- Foreign-key column mappings: `88`

The SQL Server catalog export is authoritative for the connected `AuditManagement_Dev` database at inspection time. It is separate from the repository model dictionary because the checked-in EF model and historical Dev/QA/UAT/Live scripts may not exactly match the live database.

## Important observations

- The database contains an additional `HangFire` schema with Hangfire persistence tables.
- The live database currently contains more tables and views than the generated EF model inventory in the repository.
- Foreign-key metadata is relatively sparse compared with the number of logical ID relationships used by application code. Some relationships are therefore application-enforced, stored-procedure-enforced, or not declared as SQL foreign keys.
- This export contains metadata only; no business-row data was read or exported.

