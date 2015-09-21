insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C0954327','Sheri','Gordon','Littleton','CO','80129-5543',230.00);
insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C1010398','Jim','Glussman','Denver','CO','80111-0033',200.00);
insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C2388597','Beth','Taylor','Seattle','WA','98103-1121',500.00);
insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C3340959','Betty','Wise','Seattle','WA','98178-3311',200.00);
insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C3499503','Bob','Mann','Monroe','WA','98013-1095',0.00);
insert into CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,Custzip,CustBal) VALUES('C8543321','Ron','Thompson','Renton','WA','98666-1289',85.00);

insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E1329594','Landi','Santos','(303)789-1234','LSantos@bigco.com');
insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E8544399','Joe','Jenkins','(303)221-9875','JJenkins@bigco.com');
insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E8843211','Amy','Tang','(303)556-4321','ATang@bigco.com');
insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E9345771','Colin','White','(303)221-4453','CWhite@bigco.com');
insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E9884325','Thomas','Johnson','(303)556-9987','TJohnson@bigco.com');
insert into Employee (EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail) VALUES ('E9954302','Mary','Hill','(303)556-9871','MHill@bigco.com');

insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O1116324',TO_DATE('01/23/2013', 'MM/DD/YYYY'),'C0954327','E8544399');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O2334661',TO_DATE('01/14/2013', 'MM/DD/YYYY'),'C0954327','E1329594');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O3331222',TO_DATE('01/13/2013', 'MM/DD/YYYY'),'C1010398',NULL);
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O2233457',TO_DATE('01/12/2013', 'MM/DD/YYYY'),'C2388597','E9884325');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O4714645',TO_DATE('01/11/2013', 'MM/DD/YYYY'),'C2388597','E1329594');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O5511365',TO_DATE('01/22/2013', 'MM/DD/YYYY'),'C3340959','E9884325');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O7989497',TO_DATE('01/16/2013', 'MM/DD/YYYY'),'C3499503','E9345771');
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O1656777',TO_DATE('02/11/2013', 'MM/DD/YYYY'),'C8543321',NULL);
insert into OrderTbl(OrdNo,OrdDate,CUSTOMER_CustNo,EMPLOYEE_EMPNO) values ('O7959898',TO_DATE('02/19/2013', 'MM/DD/YYYY'),'C8543321','E8544399');


