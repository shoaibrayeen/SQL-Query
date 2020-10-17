# Creating a Table
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

# adding a column in the table
ALTER TABLE Persons
ADD Email varchar(255);

# delete a column in the table
ALTER TABLE Persons
DROP COLUMN Email;

# deleting the table
DROP TABLE Persons;

