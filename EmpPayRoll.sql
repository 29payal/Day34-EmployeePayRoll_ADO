create table EmpPayRoll
(
EmployeeID int primary key identity,
EmployeeName varchar(255),
PhoneNumber bigint,
Address varchar(200),
Department varchar(200),
Gender char(1),
BasicPay float,
Deduction float,
TaxablePay float,
Tax float,
NetPay float,
City varchar (100),
Country varchar (100)
)
 
create procedure SpAddEmployeedetails
(
@EmployeeName varchar(255),
@PhoneNumber bigint,
@Address varchar(200),
@Department varchar(100),
@Gender char(1),
@BasicPay float,
@Deduction float,
@TaxablePay float,
@Tax float,
@NetPay float,
@City varchar (100),
@Country varchar(100)
)
as
begin
     insert into EmpPayRoll(EmployeeName, PhoneNumber, Address, Department, Gender, 
	 BasicPay, Deduction, TaxablePay, Tax, NetPay, City, Country)
	values ( @EmployeeName,@PhoneNumber ,@Address ,@Department ,@Gender 
	,@BasicPay ,@Deduction ,@TaxablePay ,@Tax ,@NetPay, @City ,@Country)
end

select * from EmpPayRoll
