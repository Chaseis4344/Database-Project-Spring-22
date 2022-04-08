REM   Script: Database_Proj_FINAL
REM   aaaaa

create table REQUEST 
( 
     
    Request_ID      number, 
    Customer_ID     number, 
    Depart_ID       number, 
    Selection_ID    number, 
    Food            varchar(20), 
    Price           number, 
    Request_Date    date, 
    Request_Time    timestamp, 
        constraint pk_req_ID primary key (Request_ID) 
       --constraint fk_Customer_ID_req   foreign key (Customer_ID)   references CUSTOMER(Customer_ID), 
       -- constraint fk_Depart_ID_req     foreign key (Depart_ID)     references REGIONAL_DEPARTMENT(Depart_ID), 
       --constraint fk_Selection_ID_req  foreign key (Selection_ID)  references SELECTION (Selection_ID) 
);

create table REGIONAL_DEPARTMENT(   
    Depart_ID       number,   
    Depart_Area     varchar2(12),   
    Depart_Size     number,   
    Depart_Phone    char(17),   
        constraint pk_Depart_ID primary key (Depart_ID)   
   
);

create table RESTAURANT(  
    Restaurant_ID        number,  
    Restaurant_Address   varchar2(50),  
    Restaurant_GPS       varchar2(42),  
    Restaurant_Phone     char(17),  
        constraint pk_Restaurant_ID primary key (Restaurant_ID)  
);

create table BCUSTOMER( 
        Customer_ID number, 
        BCust_Name varchar(40), 
        Request_ID  number, 
        BCust_Phone char(17), 
            constraint pk_BCust_ID primary key (Customer_ID), 
            constraint fk_Req_ID_BCust foreign key (Request_ID) references REQUEST(Request_ID) 
    );

create table  CUSTOMER ( 
     
    Customer_ID     number, 
    Driver_ID       number, 
    Request_ID      number, 
    Customer_FName  varchar(20), 
    Customer_LName  varchar(20), 
    Customer_Phone  char(17), 
        constraint pk_custID primary key (Customer_ID), 
        constraint fk_RequestID_cust foreign key (Request_ID) references REQUEST(Request_ID) 
        -- constraint fk_driveID_cust   foreign key (Driver_ID) references DRIVER(Driver_ID), 
);

create table DRIVER( 
    Driver_ID  number, 
    Request_ID number, 
    Depart_ID number, 
    Driver_VIN char(17), 
    Driver_Color char(20), 
    Driver_Make char(20), 
    Driver_Model char(20), 
        constraint pk_DriverID primary key (Driver_ID), 
        constraint fk_Requst_ID_driver foreign key (Request_ID) references REQUEST(Request_ID), 
        constraint fk_Depart_ID_driver foreign key (Depart_ID)  references REGIONAL_DEPARTMENT(Depart_ID) 
);

create table MENU(  
    Menu_ID         number,  
    Restaurant_ID   number,  
    Items           char(15),  
    Prices          number,  
        constraint pk_Menu_ID primary key (Menu_ID),  
        constraint fk_Restaurant_ID_Menu foreign key (Restaurant_ID) references RESTAURANT(Restaurant_ID)   
      
);

create table SELECTION( 
    Selection_ID    number, 
    Menu_ID         number, 
    Restaurant_ID   number, 
    Request_ID      number, 
        constraint pk_Selection_ID primary key (Selection_ID), 
        constraint fk_Menu_ID_select        foreign key (Menu_ID)       references MENU(Menu_ID), 
        constraint fk_Restaurant_ID_select  foreign key (Restaurant_ID) references RESTAURANT(Restaurant_ID), 
        constraint fk_Request_ID_select     foreign key (Request_ID)    references REQUEST(Request_ID) 
 
);

alter table "REQUEST" add constraint fk_Customer_ID_req   foreign key (Customer_ID)   references CUSTOMER(Customer_ID);

alter table "REQUEST" add constraint fk_Depart_ID_req     foreign key (Depart_ID)     references REGIONAL_DEPARTMENT(Depart_ID);

alter table "REQUEST" add constraint fk_Selection_ID_req  foreign key (Selection_ID)  references SELECTION (Selection_ID) ;

alter table "CUSTOMER" add constraint fk_driveID_cust   foreign key (Driver_ID) references DRIVER(Driver_ID);

 insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12893, 70511, 23492, ’JG9SWUFRGJSGGTSBE’, ‘Blue’, ‘Daimler AG’, ‘Mercedes-Benz’);

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12894, 70512, 23493, ‘RE9HDUFKLHJAWAFRC’, White’, ‘Stelantis’, ‘Jeep’);

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12895, 70513, 23494, ‘TY9JFSXMNGDKLTYSHR’, ’Red’, ‘Hondar Motor Co. ’, ‘Honda’);

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12896, 70514, 23495, ‘YR9HKPXHRWURWHWXS’, ‘Red’, ‘Ford Motor Co.’, ‘Ford’);

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24500, 5936, 4588320794758, ‘Nicholas’, ‘Walters’, +01(863)-431-2463);

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24501, 5937, 4588320794759, ‘Tye’, ‘Warwick’, +01(863)-543-7122);

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24502, 5938, 4588320794760, ‘Lori’, ‘Bonner’, +01(321)-427-8765);

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24502, 5939, 4588320794761, ‘Marshal’, ‘Tobias’, +01(954)-652-6363);

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24503, 5940, 4588320794762, ‘Alissa’, ‘Sumner’, +01(780)-421-8776);

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12892, 3323133, 7730533, 'JB9UFEWDYSBYMEUXR', 'Red', 'Tesla Inc.', 'Tesla');

 insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12893, 70511, 23492, 'JG9SWUFRGJSGGTSBE', 'Blue', 'Daimler AG', 'Mercedes-Benz');

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12894, 70512, 23493, 'RE9HDUFKLHJAWAFRC', 'White', 'Stelantis', 'Jeep');

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12895, 70513, 23494, 'TY9JFSXMNGDKLTYSHR', 'Red', 'Hondar Motor Co. ', 'Honda');

insert into DRIVER (Driver_ID, Request_ID, Depart_ID, Driver_VIN, Driver_Color, Driver_Make, Driver_Model) 
values (12896, 70514, 23495, 'YR9HKPXHRWURWHWXS', 'Red', 'Ford Motor Co.', 'Ford');

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24500, 5936, 4588320794758, 'Nicholas', 'Walters', '+01(863)-431-2463');

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24501, 5937, 4588320794759, 'Tye', 'Warwick', '+01(863)-543-7122');

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24502, 5938, 4588320794760, 'Lori', 'Bonner', '+01(321)-427-8765');

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24502, 5939, 4588320794761, 'Marshal', 'Tobias', '+01(954)-652-6363');

insert into CUSTOMER (Customer_ID, Driver_ID, Request_ID, Customer_FName, Customer_LName, Customer_Phone) 
values (24503, 5940, 4588320794762, 'Alissa', 'Sumner', '+01(780)-421-8776');

