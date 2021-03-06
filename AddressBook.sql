--UC1

create database AddressBookService

use AddressBookService

--UC2

create table Address_Book
(
FirstName varchar(25) not null,
LastName varchar(25) not null,
Address varchar(60) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(50) not null,
PhoneNumber varchar(50) not null,
Email varchar(50) not null
)
select * from Address_Book


--UC3

insert into Address_Book values
('Mabel','Christina','NGV colony','Koramangala','Bangalore','560030','8553635345','maybelchristina@gmail.com'),
('Nancy','Padma','Times Square','Brooklyn','Texas','213224','9646857866','padmaNancy@yahoo.com'),
('Joel','Johnson','Broadway','NewYorkCity','Newyork','4521441','140323425611','joel1990@gmail.com'),
('Sachin','Paul','Thambaram','Chennai','TamilNadu','8484512','9449874563','sachu@gmail.com'),
('Joe','Keere','NGV colony','Koramangala','Bangalore','568030','8787853475','jor@gmail.com'),
('Liah','Sharon','Broadway','Manhattan','NewYork','213224','9646857866','padmaNancy@yahoo.com'),
('Joel','Johnson','Broadway','NewYorkCity','Newyork','4521441','140323425611','joel1990@gmail.com')

select * from Address_Book

--UC4

update Address_Book
set PhoneNumber = '7654567885',Zipcode='534260' where FirstName = 'Joel'

select * from Address_Book

--UC5

delete Address_Book
where FirstName = 'Sachin'

select * from Address_Book

--UC6

select * from Address_Book
where City = 'NewYorkCity' or State = 'Texas';

--UC7

-- Count contacts by City in Address_Book  
select City,count(City) from Address_Book group by City;
-- Count contacts by State in Address_Book  
select State,count(State) from Address_Book group by State;

--UC8

select * from Address_Book
where City = 'Koramangala'
order by FirstName asc;

--UC9

-- Add addressbook name and type columns
alter table Address_book add addressbook_name varchar(20), type varchar(20)

-- update records for newly added columns
update address_book set addressbook_name = 'Home',type = 'Family' where FirstName = 'Mabel' or FirstName = 'Nancy'
update address_book set addressbook_name = 'Home',type = 'Friends' where FirstName = 'Joel' or FirstName = 'Liah' or FirstName = 'Sachin'
update address_book set addressbook_name = 'Office',type = 'Profession' where FirstName = 'Joe' or FirstName = 'Mabel'

--UC10

select type, COUNT(FirstName) from address_book group by type

--UC11

Insert into address_book values
('Sam','Victor','1st Block','Indranagar', 'Bangalore','512346','9863224355','sam@gmail.com','Home','Friends')
Insert into address_book values
('Sam','Victor','1st Block','Indranagar', 'Bangalore','512346','9863224355','sam@gmail.com','Home','Family')

