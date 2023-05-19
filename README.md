# database-queries
1)
Completion of SQL Server installation.
Creation of a database using the provided codes in the document and adding at least 5 tables to this database.
Utilization of at least 5 data types within each created table.
Establishing foreign-key primary-key connections in the tables.
Defining a user for the created database and granting authorization for this user. For authorization using codes, the following permissions will be granted in order:
Insertion and modification.
Modification and insertion.
Deletion and insertion.
Revoking all privileges from the created user and deleting the user.

2)
 A factory has branches in different cities. (1 to many)
Each branch has multiple employees, and employee information including their employee number, name, surname, salary, address, and position should be stored in the database. (1 to many)
Each employee can work in only one branch, but a branch can have multiple employees. (Many to 1)
Each branch consists of attributes: branch_id, branch_name, and address. (1)
Additionally, each branch has one employee who acts as a manager, and an employee can only manage one branch. (1)
The relationship between employees and branches is defined by employee_id in the employee relationship and manager_id in the manager relationship.
The factory also has customers who place product orders from this factory that produces pants. Orders should be distributed and products are shipped to the customer when the order is completed.
 Whenever an order is completed, changes occur in the factory's inventory. Different units are used to measure each product in stock. The stock includes items in both quantity and grams.
To determine the amount of change in stock when an order is placed, a product recipe is used.
The product recipe shows the raw materials required to produce a single unit of a product.

