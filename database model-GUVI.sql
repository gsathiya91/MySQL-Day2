-- Creating Student-collection-- 
CREATE TABLE `student-collection` (
    Student_Id int primary key auto_increment,
    Student_Name VARCHAR(255) NOT NULL,
    Mobile_Number VARCHAR(255) UNIQUE,
    E_mail VARCHAR(255) UNIQUE,
    Mentor_Name VARCHAR(255) NOT NULL,
    Batch_Name VARCHAR(255) NOT NULL   
);

SELECT * FROM `student-collection`;

-- Inserting values to the student-collection

insert into `student-collection` (
Student_Name, 
Mobile_Number,  
E_mail, 
Mentor_Name,
Batch_Name
) 
values (
'Crystal Moen',  
'9250079896', 
'Crystal Moen@yahoo.com', 
'Caleb Hickle',
'B04 Tamil' 
);

SELECT * FROM `student-collection`;

-- Creating task collection

CREATE TABLE `Task-collection` (
Task_Id int primary key auto_increment,
Task_name varchar(255) unique,
Student_Id int,
Mentor_name varchar(25) ,
Batch_Name varchar(50),
FOREIGN KEY (Student_Id) REFERENCES `student-collection`(Student_Id)
);

SELECT * FROM `Task-collection`;

insert into `Task-collection`(
Task_name,
Student_Id,
Mentor_name,
Batch_Name
)
values (
'Assignment-33',
'7',
'Roland',
'B02English'
);
SELECT * FROM `Task-collection`;
-- Creating Mentor-collection

create table `Mentor-collection` (
Mentor_Id int primary key auto_increment,
Mentor_Name varchar(50)not null,
E_mail varchar(50) unique not null,
Contact_no varchar(15) unique not null,
Assigned_Batch varchar(100) not null
);

insert into `Mentor-collection`(
Mentor_Name,
E_mail,
Contact_no,
Assigned_Batch
)
values(
'Caleb Hickle',
'CalebHickle@gmail.com',
'91909340342',
'B04Tamil'
);
SELECT * FROM `Mentor-collection`;

create table `Batch-collection` (
Batch_Id int primary key auto_increment,
Batch_Name varchar(255) not null,
Total_Students int not null,
Mentor_Id int not null,
foreign key (Mentor_Id) references `Mentor-collection`(Mentor_Id)
);

insert into `Batch-collection`(
Batch_Name,
Total_Students,
Mentor_Id
)
values(
'B04Tamil',
'3',
'14'
);
SELECT * FROM `student-collection`;
SELECT * FROM `Task-collection`;
SELECT * FROM `Batch-collection`;
SELECT * FROM `Mentor-collection`;

