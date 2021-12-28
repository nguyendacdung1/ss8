select LEFT('International',5)
go
use AdventureWorks2019
select*from HumanResources.Employee
go
use AdventureWorks2019
select LocationID, CostRate From Production.Location
go

use AdventureWorks2019
select Name+':'+CountryRegionCode+'->'+From Sales.SalesTerritory
go
use AdventureWorks2019
select Name + ':' CountryregionCode +'->' +[Group] AS NameRegionGroup From Sales.SalesTerritory
go
use AdventureWorks2019
select ModifiedDate as 'changedDate' from Person.Person
go
use AdventureWorks2019
select ProductID,StandardCost,StandarCost*0.15 AS Discount From Production.ProductCostHistory
go
use AdventureWorks2019
select distinct standardCost from production.ProductCostHistory
go
use AdventureWorks2019
select productModelID, Name INTO production.productName From Production.ProductModel
go
use AdventureWorks2019
select*from Production.ProductCostHistory where EndDate='2013-05-29 00:00:00.000'
go
use AdventureWorks2019
select * from Person.Address where City='Bothell'
go
use AdventureWorks2019
select*from HumanResources.Department where DepartmentID<10
go
use AdventureWorks2019
select*from Person.Address where AddressID>900 and City='Seattle'
go
use AdventureWorks2019
select*from Person.Address where AddressID>900 or City='Seattle'
go
use AdventureWorks2019
select*from Person.Address where Not AddressID=5
go
select workOrderID,Sum(ActualResourceHrs)from Production.WorkOrderRouting GROUP by WorkOrderID
go
use AdventureWorks2019
select WorkOrderID,Sum(ActualResourceHrs)from Production.WorkOrderRouting GROUP by WorkOrderID having WorkOrderID<50
go
select*from Sales.SalesTerritory Order by SalesLastYear
go
create table person.phoneBilling(
     Bill_ID int primary key,
	 MobileNumber bigint UNIQUE,
	 CallDetails xml
)
go
use AdventureWorks2019
insert into Person.phoneBilling value(100,9833276605,
'<info><Call>Local</Call><time>45minutes</time><charges>200</chargets></info>')
select CallDetails from Person.phoneBilling
go
declare @xml var xml
select @xml var='<Employee name="Joan"/>'
go
create table soccerTeam(
     TeamID int identity not null,
	 TeamInfo xml (SoccerSchemaCollection)
)
go

