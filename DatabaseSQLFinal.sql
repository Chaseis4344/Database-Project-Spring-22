
REM   Script: Database_Proj_FINAL
REM   Team Names: Kristen Linares, Michael Chase Townsend, David Carbajal

create table REQUEST 
( 
     
    Request_ID      number, 
    Customer_ID     number, 
    Depart_ID       number, 
    Selection_ID    number, 
    Food            varchar(50), 
    Price           number, 
    Request_Date    date, 
    Request_Time    timestamp, 
        constraint pk_req_ID primary key (Request_ID) 
       
);

create table REGIONAL_DEPARTMENT(   
    Depart_ID       number ,   
    Depart_Area     varchar2(12),   
    Depart_Size     number,   
    Depart_Phone    char(17),   
        constraint pk_Depart_ID primary key (Depart_ID)   ,
        constraint Depart_ID_Range check (Depart_ID >=500000001 and Depart_ID<= 9999999999999999999999999 )
   
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
        Request_ID  number, 
        BCust_Name varchar(40), 
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
    Items           varchar(100),  
    Prices         varchar2(200),  
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


