create database LMS;
use LMS;
create table User(
	user_id int  auto_increment PRIMARY KEY,
    email varchar(50),
    first_name varchar(25),
    last_name varchar(25),
    password varchar(25),
    contact_number long,
    verified varchar(10),
    creator_stamp  datetime,
    creator_user varchar(30)
);
insert into User (email, first_name, last_name, password, contact_number, verified, creator_stamp, creator_user) values ("Barsa@gmail.com", "Barsa", "Nayak", "123456", "9876543210", 'True','2019-01-24 15:45:30', "Barsa");


create table HiredCandidates
(
	candidate_id int primary key,
    firstName varchar(25),
    middleName varchar(25),
    lastName varchar(25),
    email varchar(25),
    hiredCity varchar(25),
    hiredDate date,
    mobileNumber long,
    degree varchar(25),	
    hiredLab varchar(25),
    attitudeRemark varchar(25),
    communicationRemark varchar(25),
    knowledgeRemark varchar(25),
    status varchar(25),
    creatorUserId int,
    creatorStamp datetime,
    location varchar(25),
    aggrPer varchar(25),
    permanentPincode long 
);
insert into HiredCandidates values
  ('1004','Prasannna','Jyoti','Nayak','Prasannna@gmail.com','Pune','19-08-14','9876543210','EE','Pune','Positive','good','good','accepted','1253','19-08-14 15:45:30','Bhadrak','60','415705');
  

create table FellowshipCandidate
 (
Candidate_ID int PRIMARY KEY,
CIC_ID varchar(50),
FirstName varchar(225),
MiddleName varchar(225),
LastName varchar(225),
EmailId  varchar(225),
HiredCity varchar(225),
Degree  varchar(225),
HiredDate date,
Mobile_Number bigint,
Permanent_Pincode int,
HiredLab varchar(225),
Attitde varchar(225),
Communication_Remark varchar(225),
Knownledge_Remark varchar(225),
Aggregate_Remark int,
Creator_Stamp date,
Creator_User varchar(225),
BirthDate date,
Is_Birth_Date_Verfied bit,
Parent_Name varchar(225),
Parent_Occupation varchar(225),
Parents_Mobilenumber bigint,
Parents_Annual_Salary bigint,
LocalAddress varchar(225),
Permanent_Address varchar(225),
Photo_Path varchar(225),
Joining_Date date, 
Candidate_Status varchar(225),
Personal_Information varchar(225),
Bank_Information varchar(225),
Educational_Information varchar(225),
Document_Status varchar(225),
Remark varchar(225)
 );
 
  INSERT INTO FellowshipCandidate value('1007','CIC-032022-11339', 'Jeevan','kumar','tippanu', 'Jeevan@gmail.com','vizag','b.tech','2022-04-10','9776443201','530040','mumbai','good','good','good','86','2022-04-10','1','1996-10-09',0,'lakshmanarao','testengg','9427589690','1200000',
 'bangalore','arilova,vizag','img','2022-04-10','accepted','softwer developer techengneer','HDFC','andhra university','yes','good');
 

 INSERT INTO FellowshipCandidate
 value('1008','CIC-032022-11340', 'Adesh','baby','kadali', 'Adesh@gmail.com','vizag','b.tech','2022-05-13','977643203','500036','bangalore','good','good','good','87','2022-04-13','1','1997-06-23',1,'ramrao','testengg','9427589690','1200000',
 'bangalore','kothapeta,hyderbad','img','2022-05-10','accepted','softwer developer techengneer','SBI','SRM university','yes','good');
 
 
  INSERT INTO FellowshipCandidate 
 value('1009','CIC-032022-11341', 'Parvez','devi','chow', 'Parvez@gmail.com','hyderbad','b.tech','2022-05-18','977643203','500054','bangalore','good','good','good','87','2022-04-13','1','1997-06-23',1,'krishna','testengg','9427589690','1200000',
 'bangalore','kothapeta,hyderbad','img','2022-05-10','accepted','softwer developer techengneer','SBI','JNTUH university','yes','good');
 
 
   INSERT INTO FellowshipCandidate 
 value('1010','CIC-032022-11345', 'Piyush','etha','NA', 'priyankaetha@gmail.com','riyadh','b.tech','2022-05-18','977643203','500054','bangalore','good','good','good','87','2022-04-13','1','1997-06-23',1,'krishna','testengg','9427589690','1200000',
 'bangalore','kothapeta,hyderbad','img','2022-05-10','accepted','softwer developer techengneer','SBI','JNTUH university','yes','good');
 
 
    INSERT INTO FellowshipCandidate 
 value('1011','CIC-032022-11343', 'Bicky','NA','lekkala', 'Bicky@gmail.com','vizag','b.tech','2022-05-12','977643203','500054','bangalore','good','good','good','87','2022-04-13','1','1997-06-23',1,'krishna','testengg','9427589690','1200000',
 'bangalore','kothapeta,hyderbad','img','2022-05-10','accepted','softwer developer techengneer','SBI','LPU university','yes','good');
 
 
 
  INSERT INTO FellowshipCandidate 
 value('1012','CIC-032022-11344', 'Sinu','NA','ram', 'Sinu@gmail.com','vizag','b.tech','2022-03-12','9753743203','500036','bangalore','good','good','good','87','2022-04-12','1','1997-03-22',1,'hari','testengg','9427589690','1200000',
 'bangalore','kothapeta,hyderbad','img','2021-03-11','accepted','softwer developer techengneer','Canara','SRM university','yes','good');
 

 create table Candidate_BankDetails
( 
Id int auto_increment PRIMARY KEY,
Candidate_ID int,
Name varchar(225),
Account_Number bigint, 
Ifsc_code bigint, 
pan_number varchar(225), 
addhaar_num bigint,
creator_stamp date,
creator_user varchar(225),
foreign key (Candidate_ID) references HiredCandidates (Candidate_ID)
);
INSERT INTO Candidate_BankDetails value('1008','1008','sachin Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
INSERT INTO Candidate_BankDetails value('1009','1009','virat Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
INSERT INTO Candidate_BankDetails value('1010','1010','rohit Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
INSERT INTO Candidate_BankDetails value('1011','1011','msd Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
INSERT INTO Candidate_BankDetails value('1012','1012','bumrah Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
INSERT INTO Candidate_BankDetails value('1013','1013','pant Nayak', '33156029212', '10000036','AYYPN9670P','254233634229','2022-03-12', 'Taj Thapa');
describe Candidate_BankDetails;


create table CandidateQualification
(  
Id int auto_increment PRIMARY KEY,
Candidate_ID int,
Diploma varchar(60),
Degree_Name varchar(60), 
Employee_Decipline varchar(60), 
Passing_Year date, 
Aggr_Per float, 
Final_Year_Per date, 
Training_Institute varchar(60), 
Training_Duration_Month varchar(60), 
Other_Training varchar(60), 
Creator_Stamp date, 
Creator_User varchar(60),
Foreign key (Candidate_ID) references HiredCandidates (Candidate_ID)
);
desc CandidateQualification;

create table LMS.Candidate_Documents
(
ID int auto_increment PRIMARY KEY,
Candidate_ID int,
Doc_Type varchar(60),
Doc_Path varchar(60), 
Doc_Status varchar(60),
Creator_Stamp date,
Creator_User varchar(60),
Foreign key (Candidate_ID) references HiredCandidates (Candidate_ID)
);
desc Candidate_Documents;

create table Company
(
ID int auto_increment PRIMARY KEY,
Name varchar(60),
Address varchar(225),
Location varchar(60),
status varchar(60),
Creator_Stamp date, 
Creator_User varchar(60) 
);
desc Company;

create table Tech_Stack
(
Id int auto_increment PRIMARY KEY,
Tech_Name varchar(60), 
Image_Path varchar(260), 
Framework varchar(60), 
Cur_Status varchar(60),
Creator_Stamp date, 
Creator_User varchar(60)
);
desc Tech_Stack;

create table Tech_Type
(
Tech_Type_Id int auto_increment PRIMARY KEY,
Type_Name varchar(60),
Cur_Status varchar(60),
Creator_Stamp date, 
Creator_User varchar(60)
);
desc Tech_Type;

create table MakerProgram
(
Id int auto_increment PRIMARY KEY,
Program_Name varchar(60),
Program_Type varchar(60), 
Program_Link varchar(2548),
Tech_Stack_Id int, 
Tech_Type_Id int, 
Description varchar(60), 
Status varchar(60),
Creator_Stamp date,
Creator_User varchar(60),
Foreign key (Tech_Stack_Id) references Tech_Stack (Id),
Foreign key (Tech_Type_Id) references Tech_Type (Tech_Type_Id)
);
desc MakerProgram;

create table Lab
(
Lab_ID int auto_increment PRIMARY KEY,
Name varchar(60),
Location varchar(60),
Address varchar(60), 
Status varchar(60),
Creator_Stamp date, 
Creator_User varchar(60)
);

desc Lab;

create table Mentor
(
Mentor_ID int auto_increment PRIMARY KEY, 
Name varchar(60),
Mentor_Type varchar(60),
Lab_ID int,
Status varchar(60),
Creator_Stamp date,
Creator_User varchar(60),
Foreign key (Lab_ID) references Lab (Lab_ID)
);

desc Mentor;

create table MentorTechStack
(
Mentor_Tech_Stack_ID int auto_increment PRIMARY KEY,
Mentor_Id int, 
Tech_Stack_Id int, 
Status varchar(60),
Creator_Stamp datetime, 
Creator_User varchar(60),
Foreign key (Mentor_Id) references Mentor (Mentor_ID),
Foreign key (Tech_Stack_Id) references Tech_Stack (Id)
);
desc MentorTechStack;

create table LabThreshold
(
Thresgold_Id int auto_increment PRIMARY KEY,
Lab_Id int,
Lab_Capacity int,
Lead_Threshold int,
Tdeation_Engg_Threshold varchar(60),
Buddy_Engg_Threshold varchar(60),
Status varchar(60),
Creator_Stamp date,
Creator_User varchar(60),
Foreign key (Lab_Id) references Lab (Lab_ID)
);
desc LabThreshold;

create table MentorIdeationMap
(
Id int auto_increment PRIMARY KEY, 
Parent_Mentor_Id int,
Mentor_Id int,
Status varchar(60),
Creator_Stamp date, 
Creator_User varchar(60),
Foreign key (Parent_Mentor_Id) references MakerProgram (Id),
Foreign key (Mentor_Id) references Mentor (Mentor_ID)
);
desc MentorIdeationMap;

create table Company_Requirement
(
ID int auto_increment PRIMARY KEY,
Company_Id int,
Requested_Month date, 
City varchar(60), 
Is_Doc_Verifrication boolean,
Requirement_Doc_Path nvarchar(260), 
No_of_Engg int,
Tech_Stack_Id int,
Tech_Type_Id int,
Maker_Program_Id int,
Lead_Id int,
Ideation_Engg_Id int,
Buddy_Engg_Id int,
Special_Remark varchar(60),
Status varchar(60),  
Creator_Stamp date,
Creator_User varchar(60),
Foreign key (Tech_Stack_Id) references Tech_Stack (Id),
Foreign key (Company_Id) references Company (ID),
Foreign key (Tech_Type_Id) references Tech_Type (Tech_Type_Id),
Foreign key (Maker_Program_Id) references MakerProgram (Id),
Foreign key (Lead_Id) references Mentor (Mentor_ID),
Foreign key (Ideation_Engg_Id) references MentorIdeationMap (Id),
Foreign key (Buddy_Engg_Id) references Mentor (Mentor_ID)
);
desc Company_Requirement;

create table Candidate_Stack_Assignment 
(
Id int primary key, 
Requirement_Id int,
Candidate_Id int, 
assign_date date, 
complete_date date,
Status varchar(60),
creator_stamp date,
creator_user varchar(50),
Foreign key (Requirement_Id) references Company_Requirement (ID),
Foreign key (Candidate_Id) references HiredCandidates (Candidate_ID)
);
desc Candidate_Stack_Assignment;