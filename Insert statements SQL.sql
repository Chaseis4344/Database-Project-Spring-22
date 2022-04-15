
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
values(1 , '1800 FL-559, Polk City, FL 33868' , '36.98 40.64',  '01(780)-555-8776' );


insert into RESTAURANT 
values(2,'1115 N Berkley Rd, Auburndale, FL 33823',  '42.75,33.22' , '+01(780)-981-7432');


insert into RESTAURANT 
values(3, '3427 US Hwy 98 N, Lakeland, FL 33809', '40.44, 20.55' , '+01(863)-539-7742' );


insert into RESTAURANT 
values(4, '330 Denton Ave, Auburndale, FL 33823',   '20.11 , 11.23' , '+01(863)-221-8646');


insert into RESTAURANT 
values(5, '221 Commonwealth Ave N, Polk City, FL 33868' , '23.55, 33.64' , '+01(954)-644-6497');




insert into menu
values (6, 1, 'hamburger and fries, Grilled Chicken Sandwich, Nachos, Chicken nuggets', 
        '6.99, 5.99, 4.99, 8.99, 8.99');

insert into menu
values (7, 2, 'hamburger and fries, Grilled Chicken Sandwich, Nachos, Chicken nuggets', 
        '6.99, 5.99, 4.99, 8.99, 8.99');

insert into menu
values (8, 3, 'hamburger and fries, Grilled Chicken Sandwich, Nachos, Chicken nuggets',
        '6.99, 5.99, 4.99, 8.99, 8.99');

insert into menu
values (9, 4, 'hamburger and fries, Grilled Chicken Sandwich, Nachos, Chicken nuggets', 
        '6.99, 5.99, 4.99, 8.99, 8.99');

insert into menu
values (10, 5, 'hamburger and fries, Grilled Chicken Sandwich, Nachos, Chicken nuggets', 
        '6.99, 5.99, 4.99, 8.99, 8.99');




insert into REQUEST
values (11, 21,500000000000010,51  , 'Hamburger and fries',7.99 , '20-MAR-2022', '20-MAR-2022 12:22:22');

insert into REQUEST
values (12, 22, 500000000000011 ,52 , 'Grilled Chicken Sandwich', 5.99, '21-MAR-2022', '21-MAR-2022 10:09:23');

insert into REQUEST
values (13, 23, 500000000000012, 53, 'Spicy Chicken Sandwich', 4.99, '01-FEB-2022', '01-FEB-2022 11:00:33');

insert into REQUEST
values (14, 24, 500000000000013 , 54, 'Nachos', 8.99, '01-JAN-2022', '01-JAN-2022 11:24:43');

insert into REQUEST
values (15, 25, 500000000000014, 55, 'Chicken nuggets', 8.99, '02-APR-2022',  '02-APR-2022 12:01:11' );



insert into CUSTOMER 
values (21, 41, 11, 'Nicholas', 'Walters', '+01(863)-431-2463');


insert into CUSTOMER 
values (22, 42, 12, 'Tye', 'Warwick', '+01(863)-543-7122');


insert into CUSTOMER 
values (23, 43, 13, 'Lori', 'Bonner', '+01(321)-427-8765');


insert into CUSTOMER 
values (24, 44, 14, 'Marshal', 'Tobias', '+01(954)-652-6363');


insert into CUSTOMER 
values (25, 44 , 14, 'Alissa', 'Sumner', '+01(780)-421-8776');








insert into BCUSTOMER 
values (31, 11, 'Jude Breckenridge', '+01(239)-543-4122' );

insert into BCUSTOMER 
values (32,12, 'Trudie Abram', '+01(321)-865-7341' );

insert into BCUSTOMER 
values (33, 13, 'Marianna Tennyson' , '+01(727)-438-9988' );

insert into BCUSTOMER 
values (34,13, 'Brenden Norton', '+01(941)-325-4312');

insert into BCUSTOMER
values (35, 15, 'Kyro Stephens', '+01(305)-532-8764');






insert into DRIVER
values (41,11, 500000000000010, 'JB9UFEWDYSBYMEUXR', 'Red', 'Tesla Inc.', 'Tesla');

 insert into DRIVER 
values (42, 12, 500000000000011, 'JG9SWUFRGJSGGTSBE', 'Blue', 'Daimler AG', 'Mercedes-Benz');

insert into DRIVER 
values (43, 13, 500000000000012, 'RE9HDUFKLHJAWAFRC', 'White', 'Stelantis', 'Jeep');

insert into DRIVER 
values (44, 14, 500000000000013, 'TY9JFXMNGDKLTYSHR', 'Red', 'Hondar Motor Co.', 'Honda');

insert into DRIVER 
values (45, 15, 500000000000014, 'YR9HKPXHRWURWHWXS', 'Red', 'Ford Motor Co.', 'Ford');







--Records for SELECTION table
insert into SELECTION
values (51, 6, 1, 11);

insert into SELECTION 
values (52, 7,  2, 12);

insert into SELECTION
values (53, 8,  3, 13);

insert into SELECTION 
values (54, 9, 4, 14);
insert into SELECTION 
values (55, 10, 3, 15);
