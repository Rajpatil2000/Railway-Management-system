-- Create database and use it
CREATE DATABASE project;
USE Rail;

-- Create user table
CREATE TABLE user (
    id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Middle_name VARCHAR(50),
    Last_name VARCHAR(50),
    Gender CHAR,
    Age INT,
    Mobile_No VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Pin_Code VARCHAR(20)
);
drop table user;
-- Insert values into user table
INSERT INTO user (ID, First_Name, Middle_name, Last_name, Gender, Age, Mobile_No, City, State, Pin_Code) VALUES
(1, 'Anushka', 'Kumari', 'Gupta', 'F', 20, '9890888666', 'Badarpur', 'Delhi', '110044'),
(2, 'Harshita', 'Kumari', 'Prajapati', 'F', 19, '9022336760', 'Roshanara', 'Delhi', '110007'),
(3, 'Khyati', 'Kumari', 'Singh', 'F', 19, '9022336563', 'Rohini', 'Delhi', '110087'),
(4, 'Geeta', 'Singh', 'Rajan', 'F', 22, '9024566760', 'Shahadra', 'Haryana', '11054'),
(5, 'Neha', 'Kumari', 'Sood', 'F', 21, '9992336760', 'Sarita Vihar', 'Haryana', '156007'),
(6, 'Muskaan', 'sharma', 'Ranjan', 'F', 20, '9023676760', 'Dwarka', 'Punjab', '113407');
-- Select all from user table
SELECT * FROM user;

-- Create Station table
CREATE TABLE Station (
    StationID INT NOT NULL PRIMARY KEY,
    StationName VARCHAR(50) NOT NULL
);
drop table Station;
-- Insert values into Station table
INSERT INTO Station (StationID, StationName) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chennai'),
(4, 'Kolkata'),
(5, 'Bangalore'),
(6, 'Hyderabad'),
(7, 'Ahmedabad'),
(8, 'Pune'),
(9, 'Jaipur'),
(10, 'Lucknow'),
(11, 'Kanpur'),
(12, 'Nagpur'),
(13, 'Patna'),
(14, 'Indore'),
(15, 'Thane'),
(16, 'Bhopal'),
(17, 'Visakhapatnam'),
(18, 'Agra');
-- Select all from Station table
SELECT * FROM Station;

-- Create Train table
CREATE TABLE Train (
    train_id INT PRIMARY KEY,
    Train_Name VARCHAR(50),
    Capacity INT,
    TrainDesc VARCHAR(50),
    class VARCHAR(50),
    Destination VARCHAR(50),
    Arrival_Time VARCHAR(50)
);

-- Insert values into Train table
INSERT INTO Train (train_id, Train_Name, Capacity, TrainDesc, class, Destination, Arrival_Time) VALUES
(1, 'AshramExpress', 1021, '700', 'Third Class', 'Kolkata', '21:30:00'),
(2, 'Shatabdi Express', 1089, '600', 'First Class', 'Allahabad', '16:30:00'),
(3, 'Harijan Express', 1290, '3600', 'Second Class', 'Madhya Pradesh', '13:00:00'),
(4, 'Jammu Mail Express', 1345, '4500', 'Third Class', 'Madras', '22:00:00'),
(5, 'Delhi Jaipur Double Decker', 3000, '1234', 'Third Class', 'Jaipur', '22:45:00'),
(6, 'Jaipur Delhi Double Decker', 1453, '8000', 'Third Class', 'Patna', '09:30:00'),
(7, 'Delhi Chandigarh Shatabdi', 1678, '2400', 'Second Class', 'Chandigarh', '20:30:00'),
(8, 'Chandigarh Delhi Shatabdi', 1276, '3000', 'First Class', 'Jammu Kashmir', '14:00:00');

-- Select all from Train table
SELECT * FROM Train;

-- Create Ticket table
CREATE TABLE Ticket (
    Ticket_Id INT PRIMARY KEY,
    firstName VARCHAR(50),
    Ticket_Price VARCHAR(50),
    PNR_No VARCHAR(50),
    Train_No INT,
    ID INT,
    FOREIGN KEY (Train_No) REFERENCES Train(train_id),
    FOREIGN KEY (ID) REFERENCES user(id)
);
drop table Ticket;
-- Insert values into Ticket table
INSERT INTO Ticket (Ticket_Id, firstName, Ticket_Price, PNR_No, Train_No, ID) VALUES
(109900, 'Chandigarh', '200', '2346712891', 7, 1),
(109834, 'Delhi', '300', '4566278123', 2, 2),
(106734, 'Jaipur', '156', '3467345672', 3, 3),
(123235, 'Mumbai', '200', '23434566456', 1, 4),
(434342, 'Diva', '433', '433444334', 6, 5);

-- Select all from Ticket table
SELECT * FROM Ticket;

-- Create Ticket_Status table
CREATE TABLE TicketStatus (
    ticket_ID INT PRIMARY KEY,
    confirmation VARCHAR(50),
    RAC VARCHAR(50),
    Waiting VARCHAR(50),
    id INT,
    FOREIGN KEY (ticket_ID) REFERENCES Ticket(Ticket_Id),
    FOREIGN KEY (id) REFERENCES user(id)
);
drop table Ticket_Status;
-- Insert values into Ticket_Status table
INSERT INTO TicketStatus (ticket_id, confirmation, RAC, Waiting, id) VALUES
(109900, 'Yes', 'No', 'No', 1),
(109834, 'No', 'Yes', 'No', 2),
(106734, 'Yes', 'Yes', 'No', 3),
(123235, 'No', 'Yes', 'No', 4),
(434342, 'Yes', 'Yes', 'Yes', 5);

-- Select all from Ticket_Status table
SELECT * FROM TicketStatus;

-- Create Shows table
CREATE TABLE Shows (
    ticket_id INT NOT NULL,
    id INT NOT NULL,
    FOREIGN KEY (ticket_ID) REFERENCES Ticket_Status(ticket_ID),
    FOREIGN KEY (id) REFERENCES user(id)
);
drop table Shows;

-- Insert values into Shows table
INSERT INTO Shows (ticket_id, id) VALUES
(109900, 1),
(109834, 2),
(106734, 3);

























