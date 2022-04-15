-- Statement to check integrity
insert into SELECTION
values ('ACV', 00000000sqi, 700000000, 20000000002018);


-- Statement to check the check constraint
insert into REGIONAL_DEPARTMENT
values (1, 'Lakeland', 19, '+01(954)-652-6355');


-- Statement to check referential integrity
insert into BCUSTOMER 
values (3000000, 10000000001018, 'Jude Breckenridge', '+01(239)-543-4122' );
-- Not Null
insert into REGIONAL_DEPARTMENT
values (null, 'Lakeland', 19, '+01(954)-652-6355');
-- Unique Value
insert into REGIONAL_DEPARTMENT
values (500000000000013, 'Lakeland', 32, '+01(780)-299-3884');

insert into REGIONAL_DEPARTMENT
values (500000000000013, 'Lakeland', 32, '+01(780)-299-3884');
