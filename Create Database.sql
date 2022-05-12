Create table employee (
f_name varchar (20) not null,
l_name varchar (20) not null,
id char(9) unique not null,
address varchar (30),
phone char(10) not null,
membership_id number primary key,
job varchar (15),
salary decimal (10,2) not null,
office_id number (9) not null);

Create table office (
ID number(9) primary key,
Phone char(10) not null,
Manager_id number not null,
Location_id number(9) not null);
Create table location(
Id number(9) primary key,
City varchar(20) not null,
Street varchar(20) not null);

Create table customer (
License_id char(7)primary key);
Create table member(
Member_id number primary key,
License_id char(7) not null);

Create table nonmember(
F_name varchar(20) not null,
L_name varchar(20) not null,
Address varchar(30),
Phone char(10) not null,
Id char(9) primary key,
License_id char(7) not null);

Create table car(
Plate_num char(7) primary key,
 VIN char(17) unique,
 color varchar(15),
 brand varchar(15),
 model number,
 date_of_purchase date,
 category_num number,
 office_ID number(9) not null);

Create table nonavailable (plate_num char(7) primary key);

Create table available (To_date date ,
 from_date date,
 plate_num char(7) primary key);

Create table rents (To_date date not null ,
 from_date date not null,
plate_num char(7),
 book_ID varchar(9),
 license_id char(7) ,
primary key(plate_num, book_id, license_id));

Create table category (Category_num number primary key,
 Num_of_persons number ,
 Num_of_luggages number,
 cost_per_day decimal not null);

Create table booking (
Booking_id varchar(9) primary key,
Actual_return_date date not null ,
Insurance_code varchar(20),
Pick_id_location number(9),
Return_id_location number(9),
Bill_id varchar(9));

Create table insurance(
Code varchar(20) primary key,
Coverage_type varchar(30),
Cost_per_day decimal not null);

Create table billing(
Bill_id varchar(9) primary key,
Bill_date date ,
Bill_status varchar(15),
Num_days number not null,
Overbid_days number );

Create table discount(
Code varchar(20) primary key,
Type varchar (30),
Percentage decimal(5,2) not null,
Start_date date,
End_date date);

Create table has_discount (
Discount_Code varchar(20),
Booking_id varchar(9),
Primary key(discount_code,booking_id));




insert into employee values ('Soltan', 'Alshaikh' , '147258369','Nablus','0599248862',
16, 'Accountant', 7624, 1);
Insert into employee values ( 'Wissam', 'Alahmad', '741852963', 'Hebron' ,
'0594621786' , 13, 'Receptionist', 3496, 2);
insert into employee values ('Anas', 'Ibrahim' , '159753654', 'Ramallah', '0598621852',
19, 'Programmer', 2891, 3);
Insert into office values(1, '0598425896', 16, 5);
Insert into office values(2, '0599619375', 13, 6);
Insert into office values( 3, '0592761486', 19, 7);
Insert into location values ( 5 , 'Jenin' , 'AbuBaker street');
Insert into location values ( 6 , 'Nablus' , 'Academy street');
Insert into location values ( 7, 'Ramallah' , 'Tira street');
Insert into customer values ( '9647531');
Insert into customer values ('5486215');
Insert into customer values ( '4987532');
Insert into member values(16, '4987532');
Insert into nonmember values( 'Islam','Mousa','Jenin', '0592331594' , '456321897',
'9647531');
Insert into nonmember values('Moath','Ali','Hebron', '0564561893' , '556674219' ,
'5486215');
insert into car values( '6215894','DFHW5498KLN78541',
'Grey','GMC',2020,to_date('19/10/2020','dd/mm/yyyy'),3, 1);
insert into car values( '3578426','LACK8521WER15943','Black','SKODA
Superb',2019, to_date('26/11/2020','dd/mm/yyyy'),2, 2);
insert into car values( '4569812','OPDF3791FVT64825','White','Seat Leon',2021,
to_date('22/1/2021','dd/mm/yyyy'),1, 3);
insert into car values( '7713863','DFHW5488KLJ78541', 'Red','Rang
rover',2021,to_date('19/10/2021','dd/mm/yyyy'),3, 1);
insert into category values(1,8,4,80);
insert into category values(2,6,5,90);
insert into category values(3,7,3,70);

insert into rents values
(to_date('10/11/2020','dd/mm/yyyy'),to_date('8/11/2020','dd/mm/yyyy'), '6215894',
'47', '9647531');
insert into rents values(to_date('20/4/2020','dd/mm/yyyy'),to_date('18/4/2020'
,'dd/mm/yyyy'), '3578426','48', '5486215');
insert into rents values(to_date('7/3/2021','dd/mm/yyyy'),
to_date('2/3/2021','dd/mm/yyyy') , '4569812' ,'49', '4987532');
insert into nonavailable values('6215894');
insert into nonavailable values('3578426');
insert into nonavailable values('4569812');
insert into available values(to_date('20/12/2020','dd/mm/yyyy'),
to_date('22/10/2020','dd/mm/yyyy'),'7713863');
Insert into booking values('47' ,to_date('12/11/2020','dd/mm/yyyy'),'20', 5, 6,'26');
Insert into booking values('48' ,to_date('22/4/2020','dd/mm/yyyy'),'21', 6, 7,'27');
Insert into booking values('49', to_date('9/3/2021','dd/mm/yyyy'),'22', 7, 7 ,'28');
Insert into insurance values('20','Liability',15);
Insert into insurance values('21','Medical payments',20);
Insert into insurance values('22','Collision' ,25);
Insert into billing values('26', to_date('12/11/2020','dd/mm/yyyy'),'Cash',2,0);
Insert into billing values('27', to_date('23/4/2020','dd/mm/yyyy'),'Cheques',6,2);
Insert into billing values('28', to_date('9/3/2021','dd/mm/yyyy'),'Credit card',7,3);
Insert into discount values ('8f6j191','Membership',0.2 ,null,null);
Insert into discount values
('9r3y61tk','Weekend',0.7,to_date('8/11/2020','dd/mm/yyyy'),
to_date('10/11/20','dd/mm/yyyy'));
Insert into discount values ('9518hzu','Company_Discount',0.3,
to_date('18/4/2020','dd/mm/yyyy'),to_date('20/4/2020','dd/mm/yyyy'));
Insert into has_discount values('8f6j191', '49');
Insert into has_discount values('9518hzu', '48');
Insert into has_discount values('9r3y61tk', '47');



Alter table employee add constraint c1 foreign key (office_id) references office (id)
on delete set null;
Alter table office add constraint c2 foreign key (manager_id) references employee
(membership_id) on delete set null;
Alter table office add constraint c3 foreign key (location_id) references location (id)
on delete set null;
Alter table member add constraint c4 foreign key (member_id) references employee
(membership_id) on delete set null;
Alter table member add constraint c5 foreign key (license_id) references customer
(license_id) on delete set null;
Alter table nonmember add constraint c6 foreign key (license_id) references customer
(license_id) on delete set null;
Alter table car add constraint c7 foreign key (category_num) references category
(category_num) on delete set null;
Alter table car add constraint c8 foreign key (office_id) references office (id) on
delete set null;
Alter table nonavailable add constraint c9 foreign key (plate_num) references car
(plate_num) on delete set null;
Alter table available add constraint c10 foreign key (plate_num) references car
(plate_num) on delete set null;
Alter table rents add constraint c11 foreign key (plate_num) references nonavailable
(plate_num) on delete set null;
Alter table rents add constraint c12 foreign key (book_id) references booking
(booking_id) on delete set null;


Alter table rents add constraint c13 foreign key (license_id) references customer
(license_id) on delete set null;
Alter table booking add constraint c14 foreign key (insurance_code) references
insurance (code) on delete set null;
Alter table booking add constraint c15 foreign key (pick_id_location) references
location (id) on delete set null;
Alter table booking add constraint c16 foreign key (return_id_location) references
location (id) on delete set null;
Alter table booking add constraint c17 foreign key (bill_id) references billing (bill_id)
on delete set null;
Alter table has_discount add constraint c18 foreign key (discount_code) references
discount (code) on delete set null;
Alter table has_discount add constraint c19 foreign key (booking_id) references
booking (booking_id) on delete set null;






