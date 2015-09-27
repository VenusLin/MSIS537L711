select * from customer;
select * from ORDERTBL;
select * from employee;

/*1.	What are the Customers First and Last Names?*/
Select CUSTFIRSTNAME,CUSTLASTNAME from CUSTOMER; 

/*2.	Which customer number has the highest Balance?*/
select CUSTNO from 
(select CUSTNO,CUSTBAL from CUSTOMER order by CUSTBAL desc) 
where rownum = 1;

/*3.	Which customer number has the lowest Balance?*/
select CUSTNO 
from (select CUSTNO,CUSTBAL from CUSTOMER order by CUSTBAL asc) 
where rownum = 1;

/*4.	How many orders has Landi Santos taken? (I’d like a count of the rows returned)*/
select count(*)from ORDERTBL inner join(select EMPNO  from employee where EMPFIRSTNAME = 'Landi' and  EMPLASTNAME = 'Santos')
on EMPNO = ORDERTBL.EMPLOYEE_EMPNO; 

/*5.	Using the same question as #4, what were the order numbers? (hint: select the order numbers, not a count)*/
select ORDNO from ORDERTBL inner join(select EMPNO  from employee where EMPFIRSTNAME = 'Landi' and  EMPLASTNAME = 'Santos')
on EMPNO = ORDERTBL.EMPLOYEE_EMPNO;

/*6.	Write a query that will return back the Customer First and Last Name along with the Employee First and Last Name 
if an Employee helped them with the Order?*/
/*Method # 1*/
select CUSTFIRSTNAME,CUSTLASTNAME,EMPFIRSTNAME,EMPLASTNAME from 
     ( 
     (select ORDNO as cutordno, CUSTFIRSTNAME,CUSTLASTNAME from CUSTOMER 
      inner join 
      (select * from ordertbl where EMPLOYEE_EMPNO is not null) 
      on CUSTOMER_CUSTNO = CUSTNO )
   inner join
      (select ORDNO as empordno,EMPFIRSTNAME,EMPLASTNAME from EMPLOYEE 
      inner join 
      (select * from ordertbl where EMPLOYEE_EMPNO is not null) on EMPLOYEE_EMPNO = EMPNO)
      on cutordno = empordno
      );
/* Method # 2 */
select CUSTFIRSTNAME,CUSTLASTNAME,EMPFIRSTNAME,EMPLASTNAME from
customer, employee,ordertbl
where ordertbl.CUSTOMER_CUSTNO = customer.CUSTNO
and ordertbl.EMPLOYEE_EMPNO = employee.EMPNO;

/*7.	Which order numbers have no Employee associated with them?*/
select ordno from ordertbl where EMPLOYEE_EMPNO is null;

/*8.	Listing the First and Last name of the customer, how many orders did they make?*/
select CUSTLASTNAME,CUSTFIRSTNAME, OrderTimes
from (select customer_custno,count(customer_custno) as OrderTimes from customer
inner join ordertbl on CUSTOMER_CUSTNO=custno
group by customer_custno)
inner join
customer
on CUSTOMER_CUSTNO=custno;


/*9.	Return the name and email address of the Employee(s) who have not helped with an order.*/
select EMPFIRSTNAME,EMPLASTNAME,EMPEMAIL from employee 
minus
(select distinct (EMPFIRSTNAME),EMPLASTNAME,EMPEMAIL from employee, ORDERTBL
where empno = ordertbl.employee_empno);

/* Questions for Professor about question # 9: When I run this script it does not work, and why is that? 
select empfirstname, emplastname, empphon, employee_empno ,count(employee_empno) as OrderTimes 
from EMPLOYEE
inner join ordertbl on employee_empno = empno
group by employee_empno; )*/

/*10.	Using the OrderTbl, determine the count of orders by date to determine which date had the most orders.*/
select orddate, count (orddate) from ordertbl
group by orddate
order by count(orddate) desc;
/*so the first row returning is 