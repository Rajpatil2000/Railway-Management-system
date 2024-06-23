
CREATE TABLE Station (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(50) NOT NULL
);


INSERT INTO Station (StationID,StationName)
VALUES
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




select * from Station;



describe Station;
drop table station;

 
create table user(
ID int primary key,
First_Name varchar(50),
Middle_name varchar(50),
Last_name varchar(50),
Gender char,
Age int,
Mobile_No varchar(50),
City varchar(50),
State varchar(50),
Pin_Code varchar(20));
insert into user (ID, First_Name ,Middle_name , Last_name , Gender, Age, Mobile_No,City , State, Pin_Code)VALUES
(1,'Anushka', 'Kumari', 'Gupta', 'F','20', '9890888666', 'Badarpur', 'Delhi','110044'),
(2, 'Harshita', 'Kumari', 'Prajapati', 'F','19','9022336760', 'Roshanara', 'Delhi', '110007'),
(3, 'Khyati', 'Kumari', 'Singh', 'F', '19','9022336563', 'Rohini', 'Delhi', '110087'),
(4, 'Geeta', 'Singh', 'Rajan','F','22','9024566760', 'Shahadra', 'Haryana', '11054'),
(5,'Neha', 'Kumari', 'Sood','F','21','9992336760', 'Sarita Vihar', 'Haryana', '156007'),
(6, 'Muskaan', 'sharma', 'Ranjan','F','20','9023676760', 'Dwarka', 'Punjab', '113407'),
(7,'Aditi', 'Yadav', 'Pran', 'F', '34','9022336444', 'Lajpat Nagar', 'Punjab', '114507'),
(8,'Akash', 'Kumar', 'Baghel', 'M','24','9342336760', 'Nehru place', 'Delhi', '112307'),
(9,'Sarthak', 'Sinha', 'Dagar', 'M','20','8042336760', 'Sangam Vihar', 'Haryana', '101007'),
(10, 'Shiv', 'Kumar', 'Bharti', 'M', '19','9022356112', 'Dwarka', 'Delhi', '110067');
select * from user;

describe user;

drop table user;

show tables;

Create table Train (
train_id int primary key,
Train_Name varchar(50),
Capacity int,
TrainDesc Varchar(50),
class varchar(50),
Destination varchar(50),
Arrival_Time varchar(50));

insert into Train (train_id, Train_Name,Capacity, TrainDesc, class,Destination, Arrival_Time ) VALUES
(1,'AshramExpress', 1021, 700,'Third Class', 'Kolkata', '21:30:00'),
(2,'Shatabdi Express', 1089,600, 'First Class', 'Allahabad', '16:30:00' ),
(3,'Harijan Express', 1290, 3600,'Second Class', 'Madhya Pradesh', '13:00:00' ),
(4,'Jammu Mail Express', 1345,4500,'Third Class', 'Madras', '22:00:00'),
(5,'Delhi Jaipur Double Decker',3000,1234, 'Third Class', 'Jaipur', '22:45:00' ),
(6,'Jaipur Delhi Double Decker', 1453,8000, 'Third Class', 'Patna', '09:30:00' ),
(7,'Delhi Chandigarh Shatabdi', 1678,2400, 'Second Class', 'Chandigarh', '20:30:00'),
(8,'Chandigarh Delhi Shatabdi', 1276,3000,'First Class', 'Jammu Kashmir', '14:00:00');
select * from train;
drop table train;
describe train;


drop table train;
drop table train;
drop table train;
drop table train;

Create table Ticket(
Ticket_Id int primary key,
firstName varchar(50),
Ticket_Price varchar(50),
PNR_No varchar (50),
Train_No int,
ID int
);
insert into ticket (Ticket_Id, firstName,Ticket_Price,PNR_No,Train_No,ID) values
(109900, 'Chandigarh', '200', '2346712891','1678',1),
(109834,'Delhi', '300' ,'4566278123' ,'2341',2),
(106734, 'Jaipur', '156','3467345672','9043',3);

select * from ticket;
describe ticket;
drop table ticket;

create table ticket_status(
ticket_ID int primary key,
confirmation varchar (50),
RAC varchar (50),
Wating varchar (50),
id int
);
insert into ticket_status(ticket_id, confirmation,RAC,Wating,id) values
(109900, 'Yes','No', 'No', 1),
(109834,'No', 'Yes', 'No',2),
(106734, 'yes', 'Yes', 'No',3);

select * from ticket_status;
drop table ticket_status;
describe ticket_status;
select * from ticket_status;


select * from  shows;
show tables;
drop table shows;


create table shows (
ticket_id int not null,
id int not null,
foreign key (ticket_ID) references ticket_status(ticket_ID)
);

insert into shows (ticket_id,id) values
(109900,1),
(109834,2),
(106734,3);
describe shows;
select * from shows;

select * from user;
select * from ticket_status;

create table booking_cancel (
id int not null,
ticket_ID int NOT NULL,
First_name varchar(50) NOT NULL,
FOREIGN KEY (ID) REFERENCES User(ID),
FOREIGN KEY (ticket_ID) REFERENCES Ticket(Ticket_Id)
);

INSERT INTO booking_cancel(id,ticket_ID,First_Name) VALUES
(1,109900,'Chandigarh'),
(2,109834,'Delhi'),
(3,106734,'Jaipur');
select * from booking_cancel;

insert into user value (11, 'RAJ', 'patil', 'anurag', 'M', '24','9022356114', 'Diva', 'thane', '1100688');
select * from user;

insert into train values (14,'MumbaiExpress', 1024, 800,'Third Class', 'jaipur','21:39:00');
select * from train;

update user set last_name= 'joshi'where id =2;
select * from user;
update user set city= 'dadar'where id =4;
select * from user;
update user set state= 'karjat'where id =5;
select * from user;

delete from user where id ='4';
select * from user;


select count (id),state
from user
group by state
having count (id)>5
order by count (id);

select * from user;

SELECT CONCAT (NAME,'', SURNAME) AS user_Fullname,GENDER
first_name;
SELECT * FROM ticket_status
WHERE wating =109834 AND confiration=YES;

select * from ticket_status;

SELECT * from user;
select* from train;
select* from stion





SELECT CONCAT (first_name,' ',last_name ) AS Fullname,GENDER
FROM user 
where GENDER = 'M';

SELECT CONCAT(first_name,' ',last_name) AS FULL_NAME,GENDER
from user
WHERE CONCAT(first_name,' ',last_name) LIKE 'J%F';

SELECT ticket_ID, confirmation
FROM ticket_status;
SELECT ticket_ID, confirmation
FROM ticket_status
WHERE confirmation = 'no';

SELECT MAX(Ticket_Price) AS max_ticket_cost
FROM ticket;

select * from Station;










