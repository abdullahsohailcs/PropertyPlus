create database website
use website

create table signup
(
username varchar(50) Not null ,
 passwords varchar(50) not null,
 phone varchar(50) not null,
 email varchar(25) not null PRIMARY KEY
);
                

ALTER TABLE signup                    --0 for normal , 1 for prime , 2 for admin 
ADD isprime int NOT NULL 
CONSTRAINT abc DEFAULT 0;

--Adding root/admin
INSERT INTO signup
VALUES ('root', 'root', 'root', 'root',2);

UPDATE signup SET isprime = 0 where email ='q'

select*from signup
truncate table signup
drop table signup

create table property (
Property_id int IDENTITY(1,1) PRIMARY KEY,
Title varchar(50),
Locations varchar(50),
Descriptions varchar(200),
Proper_type varchar(10),
Bookmarked int,
Boosted int,
Username varchar(50) Not null, 
img varchar(50)
);


INSERT INTO property(Title,Locations,Descriptions,Proper_type,Bookmarked,Boosted,Username,img)
VALUES (  '2', '2', '2','Sell',0,0,'1','~/imgs/Capsture.PNG');

select*from property
truncate table property
drop table property

create table chattable(
ChatNumber int IDENTITY(1,1) PRIMARY KEY,
UserName varchar(50) Not null ,
 Email varchar(25) not null,
 Chat varchar(1000) not null
);

select*from chattable
truncate table chattable
drop table chattable