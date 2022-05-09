-- Creating Student-collection-- 
CREATE TABLE `student-collection` (
    Batch_Id int  auto_increment,
    Student_Name VARCHAR(255) NOT NULL,
    Mobile_Number INT UNIQUE,
    E_mail VARCHAR(255) UNIQUE,
    Mentor_Id VARCHAR(255) NOT NULL,
    PRIMARY KEY (Batch_Id)
);

SELECT * FROM `student-collection`;

-- Inserting values to the student-collection
insert into `student-collection` (

Student_Name, 
Mobile_Number,  
E_mail, 
Mentor_Id) 
values (
'Scott Tromp',  
'1705465401', 
'ScottTromp@yahoo.com', 
'B01' 
);

-- Creating batch collection

CREATE TABLE `Mentor-collection` (
Task_Id int auto_increment,
Task_name varchar(255) unique,
Batch_Id int,
Mentor_name varchar(255) NOT NULL,
primary key (Task_Id),
foreign key (Batch_Id) references `student-collection`(Batch_Id)
);

SELECT * FROM `Mentor-collection`;
drop table `student-collection`;








