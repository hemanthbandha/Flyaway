create table login(username varchar2(20) unique, password varchar2(20) unique);

create table company(cmpname varchar2(20) unique);

create table sd(source varchar2(20) not null, destination varchar2(20) not null);

create table master(source varchar2(20) not null, destination varchar2(20) not null,Airline varchar2(20) not null , price number not null,doj varchar2(20) not null);
 
insert into login values('admin','pass');

insert into company values('AirAsia');
insert into company values('AirIndia');
insert into company values('AmericanAirlines');
insert into company values('Emirates');
insert into company values('British Airways');
insert into company values('Indigo');
insert into company values('Lufthansa');
insert into company values('Qatar');
insert into company values('Quantus');
insert into company values('Spicejet');
insert into company values('Vistara');


insert into sd values('Vijayawada','Dubai');
insert into sd values('Dubai','Vijayawada');
insert into sd values('Hyderabad','United States');
insert into sd values('United States','Hyderabad');
insert into sd values('Hyderabad','Agra');
insert into sd values('Agra','Hyderabad');


insert into master values('Vijayawada','Dubai','AirAsia',2000,'02/27/2021');
insert into master values('Dubai','Vijayawada','AirIndia',2000,'02/28/2021');
insert into master values('Hyderabad','Agra','AirAsia',3000,'02/29/2021');
insert into master values('Hyderabad','United States','Lufthansa',80000,'03/10/2021');
insert into master values('Hyderabad','Goa','Vistara',5000,'03/30/2021');

commit;