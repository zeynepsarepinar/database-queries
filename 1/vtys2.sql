create table Categories 
( 
 CategoryID int primary key identity(1,1),
 CategoryName nvarchar(50) not null,
 CategoryCreateDate date not null,
 CategorySize smallint not null,
 isCategoriesAvailable bit not null
 ) 

 create table Products 
 ( 
 ProductID int primary key identity(1,1) , 
 ProductName nvarchar(50) not null, 
 UnitsInStock decimal(12,2) not null, 
 QuantityPerUnit smallint not null,
 isProductsAvailable bit not null,
 CategoryID int foreign key References Categories(CategoryID),
 ) 

 create table Customer
 ( 
   CustomerID int primary key identity(1,1), 
   CompanyName nvarchar(50) not null, 
   ContactName nvarchar(50) not null, 
   City varchar(255) not null, 
   PostalCode nvarchar(10) not null,
   CustomerEntryDate datetime not null,
   isCustomerAvailable bit not null, 
 )
  create table Employees
 ( 
   EmployeeID int primary key identity(1,1),
   LastName nvarchar(50) not null, 
   FirstName nvarchar(50) not null, 
   Gender varchar(3) not null,
   BirthDate smalldatetime not null, 
   HireDate datetime not null,
   Height decimal (3,2) not null,
   isEmployeesAvailable bit not null
 )

  create table Orders
 ( 
   OrderID int primary key identity(1,1) ,
   OrderName nvarchar(50) not null,
   CustomerID int not null, 
   EmployeeID int not null, 
   OrderDate datetime not null, 
   RequiredDate smalldatetime not null,
   IsOrderComplete bit null,
   OrderPrice money not null,
   EmployeeID int foreign key References Employees(EmployeeID),
   CustomerID int foreign key References Customer(CustomerID),
   )
 