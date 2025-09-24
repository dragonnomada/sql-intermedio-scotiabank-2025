use northwind;

select 
	* 
from Employees E
join EmployeeTerritories ET 
	on E.EmployeeID = ET.EmployeeID;