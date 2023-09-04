create Table Customer_Database (
CustomerID int Primary key,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    Dateofbirth date
	);
	Alter table Customer_Database
	Add Phonenum Varchar(255)



Insert into Customer_Database(CustomerID,Firstname,Lastname,Address,Dateofbirth,Phonenum)
	Values(123459,'James','Success','23 Abuleegba Puposola Lagos','09/06/1990', '09020920490')
	--TASK 6 Write SQL Query Retrieve The List Of All Customers.
	Select * from Customer_Database