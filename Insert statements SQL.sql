

insert into DRIVER
values (100100, 20000000002018, 50000000000001, 'JB9UFEWDYSBYMEUXR', 'Red', 'Tesla Inc.', 'Tesla');

 insert into DRIVER 
values (100101, 20000000002019, 50000000000002, 'JG9SWUFRGJSGGTSBE', 'Blue', 'Daimler AG', 'Mercedes-Benz');

insert into DRIVER 
values (100102, 20000000002020, 50000000000003, 'RE9HDUFKLHJAWAFRC', 'White', 'Stelantis', 'Jeep');

insert into DRIVER 
values (100103, 20000000002021, 50000000000004, 'TY9JFSXMNGDKLTYSHR', 'Red', 'Hondar Motor Co.', 'Honda');

insert into DRIVER 
values (100104, 20000000002022, 50000000000005, 'YR9HKPXHRWURWHWXS', 'Red', 'Ford Motor Co.', 'Ford');









insert into CUSTOMER 
values (3000000, 100100, 20000000002018, 'Nicholas', 'Walters', '+01(863)-431-2463');


insert into CUSTOMER 
values (3000001, 100101, 20000000002019, 'Tye', 'Warwick', '+01(863)-543-7122');


insert into CUSTOMER 
values (3000002, 100102, 20000000002020, 'Lori', 'Bonner', '+01(321)-427-8765');


insert into CUSTOMER 
values (3000003, 100103, 20000000002021, 'Marshal', 'Tobias', '+01(954)-652-6363');


insert into CUSTOMER 
values (3000004, 100104 , 20000000002022, 'Alissa', 'Sumner', '+01(780)-421-8776');







insert into REQUEST
values (20000000002018, 3000000, 500000000000010, 400000000000100  , 'Hamburger and fries', '20-MAR-2022', '03-20-2022 12:22:22');

insert into REQUEST
values (20000000002019, 3000001, 500000000000011 , 400000000000101, 'Grilled Chicken Sandwich', 5.99, '21-MAR-2022', '03-21-2022 13:09:23');

insert into REQUEST
values (20000000002020, 3000002, 500000000000012, 400000000000102, 'Spicy Chicken Sandwich', 4.99, '01-FEB-2022', '02-01-2022 20:00:33');

insert into REQUEST
values (20000000002021, 3000003, 500000000000013 , 400000000000103, 'Nachos', 8.99, '01-JAN-2022', '01-01-2022 11:24:43');

insert into REQUEST
values (20000000002022, 3000004, 500000000000014, 400000000000104, 'Chicken nuggets', 8.99, '02-APR-2022',  '04-02-2022 14:01:11' );




insert into REGIONAL_DEPARTMENT
values (500000000000010, 'Lakeland', 19, '+01(954)-652-6355');

insert into REGIONAL_DEPARTMENT
values (500000000000011, 'Miami', 21, '+01(954)-732-1243');

insert into REGIONAL_DEPARTMENT
values (500000000000012, 'Tampa', 31, '+01(780)-124-8774');

insert into REGIONAL_DEPARTMENT
values (500000000000013, 'Lakeland', 32, '+01(780)-299-3884');

insert into REGIONAL_DEPARTMENT
values (500000000000014 , 'Tallahassee', 20, '+01(863)-541-7142');















insert into RESTAURANT 
values(700000000 , '1800 FL-559, Polk City, FL 33868' , '36.98 40.64',  '01(780)-555-8776' );


insert into RESTAURANT 
values(700000001,'1115 N Berkley Rd, Auburndale, FL 33823',  '42.75,33.22' , '+01(780)-981-7432');


insert into RESTAURANT 
values(700000002, '3427 US Hwy 98 N, Lakeland, FL 33809', '40.44, 20.55' , '+01(863)-539-7742' );


insert into RESTAURANT 
values(700000003, '330 Denton Ave, Auburndale, FL 33823',   '20.11 , 11.23' , '+01(863)-221-8646');


insert into RESTAURANT 
values(700000004, '221 Commonwealth Ave N, Polk City, FL 33868' , '23.55, 33.64' , '+01(954)-644-6497');










insert into BCUSTOMER 
values (3000000, 20000000002018, 'Jude Breckenridge', '+01(239)-543-4122' );

insert into BCUSTOMER 
values (3000001, 20000000002019, 'Trudie Abram', '+01(321)-865-7341' );

insert into BCUSTOMER 
values (3000002, 20000000002020, 'Marianna Tennyson' , '+01(727)-438-9988' );

insert into BCUSTOMER 
values (3000003, 20000000002021, 'Brenden Norton', '+01(941)-3255-4312');

insert into BCUSTOMER
values (3000004, 20000000002022, 'Kyro Stephens', '+01(305)-532-8764');





--Records for SELECTION table
insert into SELECTION
values (400000000000100, 00000000090, 700000000, 20000000002018);

insert into SELECTION 
values (400000000000101, 00000000091,  700000001, 20000000002019);

insert into SELECTION
values (400000000000102, 00000000092,  700000002, 20000000002020);

insert into SELECTION 
values (400000000000103, 00000000093, 700000003, 20000000002021);

insert into SELECTION 
values (400000000000104, 00000000094, 700000004, 20000000002022);