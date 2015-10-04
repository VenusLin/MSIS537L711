
/*Question #1*/
select CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTBAL FROM common.CUSTOMER ;

/*Question #2*/
select CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTBAL FROM common.CUSTOMER 
where CUSTSTATE = 'CO';

/*Question #3*/
SELECT * 
FROM COMMON.PRODUCT 
where PRODPRICE > 50
order by  PRODMFG,PRODNAME;

/*Question #4*/
SELECT ORDNO,  ORDDATE,    ORDNAME FROM COMMON.ORDERTBL 
where ordcity in ('Denver','Englewood');

/*Question #5*/
select custno, custfirstname, custlastname, custcity,custbal
from common.customer
where custbal > 150 and custcity = 'Denver'
OR custbal > 300 and custcity = 'Seattle';

/*Question #6*/
select distinct (ordcity),ordstate from common.ordertbl;

/*Question #7*/
select * from common.ordertbl
where empno is null
and orddate like '%JAN-13' ;

/*Question #8*/

select * from common.ordertbl
where empno is not null
and orddate like '%FEB-13' ;

/*Question #9*/
select * from common.product
where PRODNAME like '%Ink Jet%';

/*Question #10*/
select ordno, orddate, custno from common.ordertbl
where ordstate = 'WA' and
orddate > '23-JAN-13';

/*Question #11*/
select ordno, orddate, customer.custno, custfirstname, custlastname from common.ordertbl, common.customer
where customer.custno = ordertbl.custno
and ordstate = 'CO'
and orddate like '%JAN-13';

/*Question #12*/
select ordno, orddate, customer.custno, custfirstname, custlastname from common.ordertbl, common.customer
where customer.custno = ordertbl.custno
and ordstate = 'WA'
and custstate = 'CO'
and orddate like '%JAN-13';

/*Question #13*/
select distinct(customer.custno), custfirstname, custlastname, custbal from common.customer, common.ordertbl
where custstate = 'WA'and
customer.custno = ordertbl.custno
and orddate like '%FEB-13';

/*Question #14*/
select ordno, orddate, customer.custno,custfirstname, custlastname,employee.empno,empfirstname,emplastname
from common.ordertbl,common.customer,common.employee
where custstate = 'CO'
and customer.CUSTNO = ordertbl.custno
and employee.EMPNO = ordertbl.empno
and orddate like '%JAN-13';

/*Question #15*/
select employee.empno,empfirstname,emplastname,empphone
from common.ordertbl,common.employee
where  employee.EMPNO = ordertbl.empno
and orddate like '%JAN-13';



